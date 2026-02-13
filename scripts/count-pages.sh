#!/usr/bin/env bash
# Count compiled pages for all satellite papers using elsarticle (PLB 3p twocolumn).
# Usage: scripts/count-pages.sh [papers/specific-paper/main.md ...]
# If no arguments given, counts all satellite papers + main paper.
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root_dir"

TEMPLATE="$root_dir/scripts/elsarticle.template.tex"
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

count_one() {
  local md_path="$1"
  local name
  name="$(basename "$(dirname "$md_path")")"
  local tex_path="$TMPDIR/${name}.tex"

  pandoc -f markdown+tex_math_single_backslash \
         --template="$TEMPLATE" \
         "$md_path" -o "$tex_path" 2>/dev/null

  local pages
  cd "$TMPDIR"
  TEXINPUTS="$root_dir//:" pdflatex -interaction=nonstopmode "${name}.tex" >/dev/null 2>&1 || true
  # Run twice for cross-references
  TEXINPUTS="$root_dir//:" pdflatex -interaction=nonstopmode "${name}.tex" >/dev/null 2>&1 || true
  cd "$root_dir"

  # Parse "Output written on ... (N pages, ...)" from pdflatex log
  pages=$(grep 'Output written on' "$TMPDIR/${name}.log" 2>/dev/null \
    | sed 's/.*(\([0-9]*\) page.*/\1/' || echo "?")
  if [ -z "$pages" ]; then pages="?"; fi
  local lines
  lines=$(wc -l < "$md_path" | tr -d ' ')
  # Token count via Claude tokenizer (if available)
  local tokens
  tokens=$(python3 "$root_dir/scripts/count-tokens.py" "$md_path" 2>/dev/null \
    | grep -oE '[0-9]+ tokens' | head -1 | grep -oE '[0-9]+' || echo "?")
  printf "%-45s %3s pp  %4s lines  %6s tok\n" "$name" "$pages" "$lines" "$tokens"
}

if [ $# -gt 0 ]; then
  targets=("$@")
else
  targets=()
  for md in papers/*/main.md; do
    targets+=("$md")
  done
  targets+=("paper/main.md")
fi

echo "=== Page counts (elsarticle 3p twocolumn = PLB format) + token counts (Claude tokenizer) ==="
echo ""
for md in "${targets[@]}"; do
  count_one "$md"
done
