# Follow-up Papers (Drafts)

This repository’s publishable manuscript is `paper/main.md`.
This `papers/` folder holds follow-up drafts that **depend on** (and cite) the main paper’s narrative and bibliography ledger.

## Manuscripts
- `papers/delta-objects/main.md`: identity delta kernel, stationary-set delta, and point interactions (draft).
- `papers/half-density-qft/main.md`: half-densities in QFT propagators and densitized fields (draft).
- `papers/planck-area/main.md`: Planck area / half-density scaling program (draft).
- `papers/rg-fundamental/main.md`: RG as fundamental compatibility principle (draft).

## Bibliography + Sources
- Citation keys are tracked in `paper/bibliography.md`.
- Source captures live in `sources/` (OA-first; local PDFs ok).

## Build (Markdown -> TeX -> PDF)
Use the same pandoc math extension as the main paper:

```bash
pandoc -f markdown+tex_math_single_backslash -s papers/<paper>/main.md -o papers/<paper>/main.tex
pdflatex -interaction=nonstopmode -halt-on-error -output-directory papers/<paper> papers/<paper>/main.tex
pdflatex -interaction=nonstopmode -halt-on-error -output-directory papers/<paper> papers/<paper>/main.tex
rm -f papers/<paper>/main.aux papers/<paper>/main.log
```
