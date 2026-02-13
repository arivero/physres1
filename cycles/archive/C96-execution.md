# C96 Execution: Remove repo-internal path references from the half-density QFT note

Date: 2026-02-11

## Summary
- Removed/rephrased repo-internal file-path references in `papers/half-density-qft/main.md` to improve publication safety.
- Rebuilt the TeX/PDF artifacts for the note.

## Work log
- Rephrased the abstract “dependency” sentence to remove repo path references while preserving intent (this is a dependent follow-up + points to companion threads).
- Removed repo-path pointers to `blackboards/...` where the remarks are already self-contained; replaced one with a simple “symbolic check performed” sentence.
- Regenerated TeX:
  - `pandoc -f markdown+tex_math_single_backslash -s papers/half-density-qft/main.md -o papers/half-density-qft/main.tex`
- Built PDF (pdflatex-safe-build skill):
  - `~/.codex/skills/pdflatex-safe-build/scripts/build_pdflatex_safe.sh papers/half-density-qft/main.tex /tmp/pdflatex-papers-half-density-qft-C96`
  - Copied `/tmp/pdflatex-papers-half-density-qft-C96/main.pdf` to `papers/half-density-qft/main.pdf`.

## Diffstat
```text
paper-diffstat (cached): TOTAL +6 -8 (1 files)
  +6 -8 papers/half-density-qft/main.md
```

## Guard checks
- No cycle IDs leaked into manuscripts:
  - `rg -n 'C[0-9]{2}' papers/half-density-qft/main.md`
- Manuscripts do not cite transcripts:
  - `rg -nF 'conv_patched' papers/half-density-qft/main.md`

## Outputs
- Manuscripts edited:
  - `papers/half-density-qft/main.md`
- PDFs rebuilt (tracked):
  - `papers/half-density-qft/main.pdf`

## Spawned cycles
- `Q53`: referee pass on this promotion wave (`C96`)
