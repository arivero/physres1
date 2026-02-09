#!/usr/bin/env python3.12
from __future__ import annotations

import argparse
import datetime as dt
import os
from pathlib import Path
import platform
import shutil
import subprocess
import tempfile


BINARIES = [
    "pdflatex",
    "latex",
    "xelatex",
    "lualatex",
    "bibtex",
    "tlmgr",
    "kpsewhich",
]

PACKAGE_FILES = [
    "article.cls",
    "amsmath.sty",
    "amssymb.sty",
    "geometry.sty",
    "hyperref.sty",
    "natbib.sty",
    "biblatex.sty",
    "tikz.sty",
    "pgfplots.sty",
    "latexmk",
]


def run(cmd: list[str], env: dict[str, str] | None = None) -> subprocess.CompletedProcess[str]:
    return subprocess.run(cmd, text=True, capture_output=True, env=env, check=False)


def first_nonempty_line(text: str) -> str:
    for line in text.splitlines():
        s = line.strip()
        if s:
            return s
    return ""


def get_cmd_version(cmd: str) -> str:
    if shutil.which(cmd) is None:
        return "missing"
    proc = run([cmd, "--version"])
    if proc.returncode != 0:
        return f"error ({proc.returncode})"
    return first_nonempty_line(proc.stdout) or "ok"


def kpse_var(name: str) -> str:
    if shutil.which("kpsewhich") is None:
        return ""
    proc = run(["kpsewhich", f"-var-value={name}"])
    if proc.returncode != 0:
        return ""
    return proc.stdout.strip()


def package_present(filename: str) -> bool:
    if shutil.which("kpsewhich") is None:
        return False
    proc = run(["kpsewhich", filename])
    return proc.returncode == 0 and bool(proc.stdout.strip())


def compile_smoke(engine: str, tex_path: Path, out_dir: Path, texmfvar: Path | None = None) -> tuple[bool, str]:
    cmd = [
        engine,
        "-interaction=nonstopmode",
        "-halt-on-error",
        "-output-directory",
        str(out_dir),
        str(tex_path),
    ]
    env = os.environ.copy()
    if texmfvar is not None:
        env["TEXMFVAR"] = str(texmfvar)
    proc = run(cmd, env=env)
    if proc.returncode == 0:
        return True, "ok"
    tail = "\n".join((proc.stdout + "\n" + proc.stderr).splitlines()[-8:])
    return False, tail.strip()


def detect_basictex(texmfroot: str, tlmgr_install: str) -> bool:
    blob = f"{texmfroot} {tlmgr_install}".lower()
    return "basic" in blob


def write_report(output_path: Path) -> None:
    output_path.parent.mkdir(parents=True, exist_ok=True)
    now = dt.datetime.now(dt.timezone.utc).strftime("%Y-%m-%d %H:%M:%SZ")

    binary_rows: list[tuple[str, str, str]] = []
    for cmd in BINARIES:
        binary_rows.append((cmd, shutil.which(cmd) or "missing", get_cmd_version(cmd)))

    texmfroot = kpse_var("TEXMFROOT")
    texmfdist = kpse_var("TEXMFDIST")
    tlmgr_install = ""
    if shutil.which("tlmgr") is not None:
        proc = run(["tlmgr", "--version"])
        for line in proc.stdout.splitlines():
            if "using installation:" in line:
                tlmgr_install = line.split("using installation:", 1)[1].strip()
                break
    is_basic = detect_basictex(texmfroot, tlmgr_install)

    pkg_rows: list[tuple[str, str]] = []
    for pkg in PACKAGE_FILES:
        pkg_rows.append((pkg, "present" if package_present(pkg) else "missing"))

    smoke_rows: list[tuple[str, str, str]] = []
    with tempfile.TemporaryDirectory(prefix="tex-smoke-", dir=str(Path.cwd())) as td:
        tdir = Path(td)
        tex = tdir / "smoke.tex"
        tex.write_text(
            "\\documentclass{article}\n"
            "\\begin{document}\n"
            "TeX smoke test.\n"
            "\\end{document}\n",
            encoding="utf-8",
        )

        for engine in ("pdflatex", "xelatex", "lualatex"):
            if shutil.which(engine) is None:
                smoke_rows.append((engine, "missing", "binary not found"))
                continue
            ok, msg = compile_smoke(engine, tex, tdir)
            if not ok and engine == "lualatex":
                texmfvar = tdir / "texmf-var"
                texmfvar.mkdir(parents=True, exist_ok=True)
                ok2, msg2 = compile_smoke(engine, tex, tdir, texmfvar=texmfvar)
                status = "ok-with-TEXMFVAR" if ok2 else "failed"
                smoke_rows.append((engine, status, msg2 if not ok2 else "cache fixed via TEXMFVAR"))
            else:
                smoke_rows.append((engine, "ok" if ok else "failed", msg if not ok else "compiled"))

    lines: list[str] = []
    lines.append("# TeX Environment Report")
    lines.append("")
    lines.append(f"- Generated (UTC): `{now}`")
    lines.append(f"- Host: `{platform.platform()}`")
    lines.append(f"- Python: `{platform.python_version()}`")
    lines.append("")
    lines.append("## TeX Live Footprint")
    lines.append("")
    lines.append(f"- `TEXMFROOT`: `{texmfroot or 'unknown'}`")
    lines.append(f"- `TEXMFDIST`: `{texmfdist or 'unknown'}`")
    lines.append(f"- `tlmgr install root`: `{tlmgr_install or 'unknown'}`")
    lines.append(f"- Detected profile: `{'BasicTeX/minimal' if is_basic else 'Full/unknown'}`")
    lines.append("")
    lines.append("## Binary Inventory")
    lines.append("")
    lines.append("| Binary | Path | Version |")
    lines.append("|---|---|---|")
    for cmd, path, version in binary_rows:
        lines.append(f"| `{cmd}` | `{path}` | `{version}` |")
    lines.append("")
    lines.append("## Package Availability (kpsewhich)")
    lines.append("")
    lines.append("| File | Status |")
    lines.append("|---|---|")
    for pkg, status in pkg_rows:
        lines.append(f"| `{pkg}` | `{status}` |")
    lines.append("")
    lines.append("## Smoke Tests")
    lines.append("")
    lines.append("| Engine | Status | Detail |")
    lines.append("|---|---|---|")
    for engine, status, detail in smoke_rows:
        brief = detail.replace("|", "\\|").replace("\n", " ")
        lines.append(f"| `{engine}` | `{status}` | `{brief}` |")
    lines.append("")
    lines.append("## Notes")
    lines.append("")
    lines.append("- Baseline compile works if `pdflatex` or `xelatex` smoke test passes.")
    lines.append("- If `lualatex` fails in restricted environments, set `TEXMFVAR` to a writable directory.")
    lines.append("- Missing packages can be installed later via `tlmgr install <package>`.")
    lines.append("")

    output_path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser(description="Audit local TeX install and generate a Markdown report.")
    parser.add_argument(
        "output",
        nargs="?",
        default="docs/tex-env-report.md",
        help="Output Markdown report path.",
    )
    args = parser.parse_args()
    out = Path(args.output)
    write_report(out)
    print(str(out))


if __name__ == "__main__":
    main()
