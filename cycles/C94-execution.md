# C94 Execution: Add a reader map for the refinement-compatibility chain

Date: 2026-02-11

## Work performed
- Inserted a compact “Reader map” boxed block at the end of Section 2.5, pointing to where partition/representation/scale compatibilities are treated (Sections 3--4, 6--7, 8) and to the formal summary (Appendix 10.3).
- Aligned the Appendix 10.3 bridge bullets (`Derivation D10.1`) to use the same operator symbols \(\mathcal C_t,\mathcal Q_\hbar,\mathcal R_\Lambda\).

## Diffstat
```text
paper-diffstat (cached): TOTAL +10 -3 (1 files)
  +10 -3 paper/main.md
```

## Build
- Regenerated TeX:
  - `pandoc -f markdown+tex_math_single_backslash -s paper/main.md -o paper/main.tex`
- Built PDF (pdflatex-safe-build skill):
  - `~/.codex/skills/pdflatex-safe-build/scripts/build_pdflatex_safe.sh paper/main.tex /tmp/pdflatex-paper-main-C94`
  - Copied `/tmp/pdflatex-paper-main-C94/main.pdf` to `paper/main.pdf`.

## Guard checks
- `rg -n 'C[0-9]{2}' paper/main.md` → no matches
- `rg -n 'conv_patched' paper/main.md` → no matches

## Result
- Readers get a one-screen orientation for the manuscript’s compatibility spine at the moment the paper transitions from setup into Section 3’s Newtonian refinement chain.
