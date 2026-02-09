#!/usr/bin/env python3.12
from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import html.parser
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
import urllib.parse
import urllib.request

BLOCKED_DOMAINS = ("sci-hub",)
PROVIDER_DOMAINS = {
    "arxiv": ("arxiv.org", "www.arxiv.org"),
    "inspire": ("inspirehep.net", "inspirehep.org"),
    "kek": ("kek.jp", "www-lib.kek.jp", "ccdb5fs.kek.jp"),
}
DEFAULT_HEADERS = {
    "User-Agent": "physarticle-source-ingest/1.0 (+https://a.rivero.nom.es)",
    "Accept": "*/*",
}


def is_url(value: str) -> bool:
    p = urllib.parse.urlparse(value)
    return p.scheme in {"http", "https"}


def is_blocked_source(value: str) -> bool:
    if not is_url(value):
        return False
    host = (urllib.parse.urlparse(value).netloc or "").lower()
    return any(token in host for token in BLOCKED_DOMAINS)


def detect_provider(value: str) -> str:
    if not is_url(value):
        return "local"
    host = (urllib.parse.urlparse(value).netloc or "").lower()
    for provider, domains in PROVIDER_DOMAINS.items():
        if any(host == dom or host.endswith(f".{dom}") for dom in domains):
            return provider
    return "web"


def open_url(url: str, timeout: int = 30):
    req = urllib.request.Request(url, headers=DEFAULT_HEADERS)
    return urllib.request.urlopen(req, timeout=timeout)


def slugify(value: str) -> str:
    slug = re.sub(r"[^a-zA-Z0-9]+", "-", value.strip().lower()).strip("-")
    return slug[:80] if slug else "source"


def derive_base_name(source: str) -> str:
    if is_url(source):
        parsed = urllib.parse.urlparse(source)
        tail = Path(parsed.path).name
        if tail:
            return Path(tail).stem or parsed.netloc
        return parsed.netloc or "source"
    return Path(source).stem or "source"


def default_output_path(source: str, sources_dir: Path, name_override: str | None) -> Path:
    base = name_override.strip() if name_override else derive_base_name(source)
    safe_base = slugify(base)
    digest = hashlib.sha1(source.encode("utf-8")).hexdigest()[:8]
    return sources_dir / f"{safe_base}-{digest}.md"


def run(cmd: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(cmd, text=True, capture_output=True, check=False)


def detect_kind(source: str, forced: str) -> str:
    if forced != "auto":
        return forced
    lower = source.lower()
    if lower.endswith(".pdf"):
        return "pdf"
    if lower.endswith(".html") or lower.endswith(".htm"):
        return "html"
    if is_url(source):
        try:
            with open_url(source, timeout=20) as resp:
                ctype = (resp.headers.get("Content-Type") or "").lower()
            if "pdf" in ctype:
                return "pdf"
            if "html" in ctype:
                return "html"
        except Exception:
            pass
    return "html"


def download_to_temp(url: str, suffix: str) -> Path:
    fd, tmp_name = tempfile.mkstemp(prefix="source-to-md-", suffix=suffix)
    Path(tmp_name).unlink(missing_ok=True)
    out = Path(tmp_name)
    with open_url(url, timeout=45) as resp:
        out.write_bytes(resp.read())
    return out


def fetch_url_text(url: str, max_bytes: int = 1_500_000) -> str:
    with open_url(url, timeout=30) as resp:
        data = resp.read(max_bytes)
    return data.decode("utf-8", errors="ignore")


def resolve_provider_pdf_url(url: str, provider: str) -> str | None:
    if provider == "arxiv":
        parsed = urllib.parse.urlparse(url)
        path = parsed.path
        if "/pdf/" in path and path.endswith(".pdf"):
            return url
        if path.startswith("/abs/"):
            identifier = path[len("/abs/") :]
            if identifier:
                return f"https://arxiv.org/pdf/{identifier}.pdf"
        return None
    if provider not in {"inspire", "kek"}:
        return None
    try:
        html = fetch_url_text(url)
    except Exception:
        return None
    hrefs = re.findall(r"""href\s*=\s*['"]([^'"]+)['"]""", html, flags=re.IGNORECASE)
    for href in hrefs:
        candidate = urllib.parse.urljoin(url, href.strip())
        c = candidate.lower()
        if c.endswith(".pdf") or "/pdf" in c or "downloadpdf" in c or "format=pdf" in c or "/files/" in c:
            if is_url(candidate):
                return candidate
    return None


class HTMLTextExtractor(html.parser.HTMLParser):
    BLOCK_TAGS = {"p", "div", "section", "article", "li", "ul", "ol", "h1", "h2", "h3", "h4", "h5", "h6", "br"}

    def __init__(self) -> None:
        super().__init__()
        self.parts: list[str] = []

    def handle_starttag(self, tag: str, attrs) -> None:
        if tag in self.BLOCK_TAGS:
            self.parts.append("\n")

    def handle_endtag(self, tag: str) -> None:
        if tag in self.BLOCK_TAGS:
            self.parts.append("\n")

    def handle_data(self, data: str) -> None:
        txt = data.strip()
        if txt:
            self.parts.append(txt + " ")

    def get_text(self) -> str:
        raw = "".join(self.parts)
        lines = [ln.strip() for ln in raw.splitlines()]
        compact: list[str] = []
        last_blank = False
        for line in lines:
            blank = line == ""
            if blank and last_blank:
                continue
            compact.append(line)
            last_blank = blank
        return "\n".join(compact).strip() + "\n"


def html_to_md(input_path: Path, output_path: Path) -> None:
    if shutil.which("pandoc"):
        proc = run(["pandoc", "-f", "html", "-t", "gfm", str(input_path), "-o", str(output_path)])
        if proc.returncode == 0:
            return
    data = input_path.read_text(encoding="utf-8", errors="ignore")
    parser = HTMLTextExtractor()
    parser.feed(data)
    txt = parser.get_text()
    md = "\n".join(line for line in txt.splitlines())
    output_path.write_text(md + "\n", encoding="utf-8")


def pdf_to_md(input_path: Path, output_path: Path) -> None:
    if not shutil.which("pdftotext"):
        raise RuntimeError("pdftotext is required for PDF conversion.")
    with tempfile.NamedTemporaryFile(prefix="source-to-md-", suffix=".txt", delete=False) as tf:
        tmp_txt = Path(tf.name)
    proc = run(["pdftotext", "-layout", str(input_path), str(tmp_txt)])
    if proc.returncode != 0:
        tmp_txt.unlink(missing_ok=True)
        raise RuntimeError(proc.stderr.strip() or "pdftotext failed")
    text = tmp_txt.read_text(encoding="utf-8", errors="ignore")
    tmp_txt.unlink(missing_ok=True)
    if shutil.which("pandoc"):
        with tempfile.NamedTemporaryFile(prefix="source-to-md-", suffix=".txt", delete=False) as tf2:
            tmp_plain = Path(tf2.name)
        tmp_plain.write_text(text, encoding="utf-8")
        proc2 = run(["pandoc", "-f", "plain", "-t", "gfm", str(tmp_plain), "-o", str(output_path)])
        tmp_plain.unlink(missing_ok=True)
        if proc2.returncode == 0:
            return
    lines = [ln.rstrip() for ln in text.splitlines()]
    output_path.write_text("\n".join(lines).strip() + "\n", encoding="utf-8")


def prepend_frontmatter(
    output_path: Path,
    source: str,
    kind: str,
    provider: str,
    resolved_source: str | None = None,
) -> None:
    body = output_path.read_text(encoding="utf-8", errors="ignore")
    now = dt.datetime.now(dt.timezone.utc).strftime("%Y-%m-%d %H:%M:%SZ")
    resolved_line = f"resolved_source: \"{resolved_source}\"\n" if resolved_source and resolved_source != source else ""
    frontmatter = (
        "---\n"
        f"source: \"{source}\"\n"
        f"{resolved_line}"
        f"provider: \"{provider}\"\n"
        f"kind: \"{kind}\"\n"
        f"converted_at_utc: \"{now}\"\n"
        "converter: \"skills/source-to-markdown/scripts/source_to_md.py\"\n"
        "---\n\n"
    )
    output_path.write_text(frontmatter + body, encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser(description="Convert PDF/HTML sources to Markdown.")
    parser.add_argument("input", help="Local path or URL.")
    parser.add_argument("output", nargs="?", help="Markdown output path.")
    parser.add_argument("--kind", choices=["auto", "pdf", "html"], default="auto")
    parser.add_argument(
        "--sources-dir",
        default="sources",
        help="Directory used when output is omitted (default: sources).",
    )
    parser.add_argument(
        "--name",
        default=None,
        help="Base name override when output is omitted (extension added automatically).",
    )
    args = parser.parse_args()

    source = args.input
    if is_blocked_source(source):
        raise RuntimeError("Blocked domain. Use only lawful/open-access sources.")
    provider = detect_provider(source)
    kind = detect_kind(source, args.kind)
    resolved_source: str | None = None
    if is_url(source) and args.kind == "auto":
        resolved_source = resolve_provider_pdf_url(source, provider)
        if resolved_source:
            kind = "pdf"
    output = Path(args.output) if args.output else default_output_path(source, Path(args.sources_dir), args.name)
    output.parent.mkdir(parents=True, exist_ok=True)

    temp_download: Path | None = None
    try:
        if is_url(source):
            fetch_source = resolved_source or source
            suffix = ".pdf" if kind == "pdf" else ".html"
            temp_download = download_to_temp(fetch_source, suffix)
            input_path = temp_download
        else:
            input_path = Path(source)
            if not input_path.exists():
                raise FileNotFoundError(f"Input does not exist: {source}")

        if kind == "pdf":
            pdf_to_md(input_path, output)
        else:
            html_to_md(input_path, output)
        prepend_frontmatter(
            output,
            source=source,
            kind=kind,
            provider=provider,
            resolved_source=resolved_source,
        )
        print(str(output))
    finally:
        if temp_download is not None:
            temp_download.unlink(missing_ok=True)


if __name__ == "__main__":
    try:
        main()
    except Exception as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        sys.exit(1)
