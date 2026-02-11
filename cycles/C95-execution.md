# C95 Execution: Clarify reader-map symbol definitions + update future-work note

Date: 2026-02-11

## Summary
- Clarified the Section 2.5 reader map so early operator symbols point to their definition location.
- Updated Future Work to treat a consolidated navigation figure as an optional upgrade (not a missing basic aid).

## Work log
- Updated the Section 2.5 reader map footer line to explicitly point readers to Appendix 10.3 for symbol definitions.
- Updated Section 9.5 Future Work to treat a consolidated navigation figure as an optional upgrade (the compact reader map is already present).
- Regenerated TeX:
  - `pandoc -f markdown+tex_math_single_backslash -s paper/main.md -o paper/main.tex`
- Built PDF (pdflatex-safe-build skill):
  - `~/.codex/skills/pdflatex-safe-build/scripts/build_pdflatex_safe.sh paper/main.tex /tmp/pdflatex-paper-main-C95`
  - Copied `/tmp/pdflatex-paper-main-C95/main.pdf` to `paper/main.pdf`.

## Diffstat
```text
paper-diffstat (cached): TOTAL +2 -2 (1 files)
  +2 -2 paper/main.md
```

## Guard checks (required before finalizing)
- No cycle IDs leaked into manuscripts:
  - `rg -n 'C[0-9]{2}' paper/main.md`
- Manuscript does not cite transcripts:
  - `rg -nF 'conv_patched' paper/main.md`

## Outputs
- Manuscripts edited:
  - `paper/main.md`
- PDFs rebuilt (if applicable):
  - `paper/main.pdf`

## Spawned cycles
- `Q52`: referee pass on this promotion wave (`C95`)
