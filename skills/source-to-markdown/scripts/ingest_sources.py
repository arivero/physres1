#!/usr/bin/env python3.12
from __future__ import annotations

import argparse
from pathlib import Path
import subprocess
import sys


def load_list(path: Path) -> list[str]:
    if not path.exists():
        raise FileNotFoundError(f"List file not found: {path}")
    items: list[str] = []
    for raw in path.read_text(encoding="utf-8", errors="ignore").splitlines():
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        items.append(line)
    return items


def main() -> None:
    parser = argparse.ArgumentParser(description="Batch ingest URLs/files into Markdown sources.")
    parser.add_argument("inputs", nargs="*", help="Input URLs or local files.")
    parser.add_argument("--list", dest="list_file", help="Text file with one source per line.")
    parser.add_argument("--sources-dir", default="sources", help="Output directory (default: sources).")
    parser.add_argument("--kind", choices=["auto", "pdf", "html"], default="auto")
    args = parser.parse_args()

    all_sources: list[str] = []
    all_sources.extend(args.inputs)
    if args.list_file:
        all_sources.extend(load_list(Path(args.list_file)))
    if not all_sources:
        raise RuntimeError("No sources provided. Add inputs or use --list.")

    out_dir = Path(args.sources_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    converter = Path(__file__).with_name("source_to_md.py")

    ok = 0
    failed = 0
    for source in all_sources:
        cmd = [
            sys.executable,
            str(converter),
            source,
            "--sources-dir",
            str(out_dir),
            "--kind",
            args.kind,
        ]
        proc = subprocess.run(cmd, text=True, capture_output=True, check=False)
        if proc.returncode == 0:
            print(proc.stdout.strip())
            ok += 1
        else:
            err = proc.stderr.strip() or proc.stdout.strip() or "unknown error"
            print(f"FAILED: {source} :: {err}", file=sys.stderr)
            failed += 1

    print(f"summary: ok={ok} failed={failed}")
    if failed:
        sys.exit(1)


if __name__ == "__main__":
    try:
        main()
    except Exception as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        sys.exit(1)
