#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root_dir"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "ERROR: pandoc not found in PATH" >&2
  exit 1
fi

if ! command -v rg >/dev/null 2>&1; then
  echo "ERROR: rg (ripgrep) not found in PATH" >&2
  exit 1
fi

# Guardrail: cycle labels must not appear in rendered manuscript prose.
if rg -n 'C[0-9]{2}' paper/main.md >/dev/null; then
  echo "ERROR: cycle labels found in paper/main.md; remove before building." >&2
  rg -n 'C[0-9]{2}' paper/main.md >&2 || true
  exit 1
fi

python3.12 scripts/update_references.py paper/main.md

build_one() {
  local md_path="$1"
  local tex_path="${md_path%.md}.tex"
  local out_dir
  out_dir="$(dirname "$tex_path")"

  echo "==> pandoc: $md_path -> $tex_path"
  pandoc -f markdown+tex_math_single_backslash -s "$md_path" -o "$tex_path"

  local tmp_build
  tmp_build="/tmp/pdflatex-safe-build-$(echo "$tex_path" | tr '/.' '--')"
  rm -rf "$tmp_build"
  mkdir -p "$tmp_build"

  echo "==> pdflatex-safe-build: $tex_path (tmp: $tmp_build)"
  ~/.codex/skills/pdflatex-safe-build/scripts/build_pdflatex_safe.sh "$tex_path" "$tmp_build"

  local pdf_name
  pdf_name="$(basename "$tex_path" .tex).pdf"
  echo "==> copy PDF: $tmp_build/$pdf_name -> $out_dir/$pdf_name"
  cp "$tmp_build/$pdf_name" "$out_dir/$pdf_name"
}

build_one paper/main.md
for md in papers/*/main.md; do
  build_one "$md"
done

echo "Done."

