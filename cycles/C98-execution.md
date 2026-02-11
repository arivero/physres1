# C98 Execution: Promote a minimal step-doubling/rooted-tree witness into RG note

Date: 2026-02-11

## Summary
- What changed in manuscripts (high level):
  - added a compact worked step-doubling computation to make the rooted-tree/Butcher bookkeeping analogy checkable.

## Work log
- Expanded `papers/rg-fundamental/main.md` Section 4 with an explicit Euler step-doubling discrepancy through \(O(h^2)\).
- Identified the leading correction term with the order-2 rooted-tree elementary differential \(f'(f)\).
- Added a short modified-equation remark to show the simplest “effective data runs with scale \(h\)” pattern in the same toy setting.
- Regenerated TeX:
  - `pandoc -f markdown+tex_math_single_backslash -s papers/rg-fundamental/main.md -o papers/rg-fundamental/main.tex`
- Built PDF (pdflatex-safe-build skill):
  - `~/.codex/skills/pdflatex-safe-build/scripts/build_pdflatex_safe.sh papers/rg-fundamental/main.tex /tmp/pdflatex-safe-rg-fundamental`
  - Copied `/tmp/pdflatex-safe-rg-fundamental/main.pdf` to `papers/rg-fundamental/main.pdf`.

## Diffstat
```text
paper-diffstat (cached): TOTAL +26 -0 (1 files)
  +26 -0 papers/rg-fundamental/main.md
```

## Guard checks (required before finalizing)
- No cycle IDs leaked into manuscripts:
  - `rg -n 'C[0-9]{2}' papers/rg-fundamental/main.md`
- Manuscript does not cite transcripts:
  - `rg -nF 'conv_patched' papers/rg-fundamental/main.md`

## Outputs
- Manuscripts edited:
  - `papers/rg-fundamental/main.md`
- PDFs rebuilt (if applicable):
  - `papers/rg-fundamental/main.pdf`
- TeX regenerated (tracked):
  - `papers/rg-fundamental/main.tex`

## Spawned cycles
- `Q55`: referee pass on this `C98`
