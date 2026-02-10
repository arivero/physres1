#!/usr/bin/env python3
from __future__ import annotations

import argparse
import re
import sys
from collections import OrderedDict
from pathlib import Path


REFERENCE_SECTIONS = (
    "## Sources",
    "## A. Rivero ArXiv Queue",
    "## A. Rivero Local Notes",
)


def _split_body_and_references(md: str) -> tuple[str, str | None]:
    lines = md.splitlines(keepends=True)
    for idx, line in enumerate(lines):
        if re.match(r"^#{1,6}\s+References\s*$", line.strip()):
            body = "".join(lines[:idx]).rstrip() + "\n"
            refs = "".join(lines[idx:]).lstrip()
            return body, refs
    return md.rstrip() + "\n", None


def _parse_reference_entries(bib_path: Path) -> tuple[list[str], dict[str, str]]:
    bib = bib_path.read_text(encoding="utf-8")
    lines = bib.splitlines()

    entries_in_order: list[str] = []
    entries_by_key: dict[str, str] = OrderedDict()

    active = False
    for raw_line in lines:
        line = raw_line.rstrip("\n")

        if line.startswith("## "):
            active = line in REFERENCE_SECTIONS
            continue

        if not active:
            continue

        m = re.match(r"^\s*\d+\.\s+`?\[([^\]]+)\]`?\s*(.*)$", line)
        if not m:
            continue

        key = m.group(1).strip()
        rest = m.group(2).strip()
        if not key:
            continue

        entry = f"[{key}] {rest}".rstrip()
        if key in entries_by_key:
            raise ValueError(
                f"Duplicate bibliography key in reference sections: {key!r} ({bib_path})"
            )
        entries_by_key[key] = entry
        entries_in_order.append(key)

    if not entries_by_key:
        raise ValueError(
            f"Failed to parse any reference entries from {bib_path} under sections: "
            + ", ".join(REFERENCE_SECTIONS)
        )

    return entries_in_order, entries_by_key


def _find_unknown_citation_candidates(md_body: str, known_keys: set[str]) -> list[str]:
    # Guardrail: avoid false positives from math notations like [g], [q], [C], etc.
    # Only treat bracketed tokens with length >= 6 as citation candidates.
    candidates = set(re.findall(r"\[([A-Za-z][A-Za-z0-9]{5,})\]", md_body))
    unknown = sorted(k for k in candidates if k not in known_keys)
    return unknown


def _update_one_file(path: Path, order: list[str], entries_by_key: dict[str, str]) -> None:
    original = path.read_text(encoding="utf-8")
    body, _old_refs = _split_body_and_references(original)

    used_keys = [k for k in order if f"[{k}]" in body]
    known_keys = set(entries_by_key.keys())
    unknown = _find_unknown_citation_candidates(body, known_keys)
    if unknown:
        raise ValueError(
            f"{path}: unknown citation key(s): " + ", ".join(f"[{k}]" for k in unknown)
        )

    if not used_keys:
        updated = body.rstrip() + "\n"
    else:
        ref_lines = ["# References", ""]
        for i, key in enumerate(used_keys, start=1):
            ref_lines.append(f"{i}. {entries_by_key[key]}")
        updated = body.rstrip() + "\n\n" + "\n".join(ref_lines).rstrip() + "\n"

    if updated != original:
        path.write_text(updated, encoding="utf-8")


def main(argv: list[str]) -> int:
    parser = argparse.ArgumentParser(
        description="Append/update per-manuscript References from paper/bibliography.md"
    )
    parser.add_argument(
        "paths",
        nargs="+",
        help="Markdown manuscript paths to update (e.g. paper/main.md papers/*/main.md).",
    )
    parser.add_argument(
        "--bibliography",
        default="paper/bibliography.md",
        help="Bibliography ledger path (default: paper/bibliography.md).",
    )
    args = parser.parse_args(argv)

    bib_path = Path(args.bibliography)
    order, entries_by_key = _parse_reference_entries(bib_path)

    # Resolve globs from the shell; accept directories accidentally passed.
    paths: list[Path] = []
    for p in args.paths:
        path = Path(p)
        if path.is_dir():
            paths.extend(sorted(path.rglob("*.md")))
        else:
            paths.append(path)

    for path in paths:
        if not path.exists():
            raise FileNotFoundError(path)
        _update_one_file(path, order, entries_by_key)

    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main(sys.argv[1:]))
    except Exception as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        raise

