# C120 Execution: Promote S82 free-propagator computation into planck-area Section 4

Date: 2026-02-13

## Parent study
- `S82`

## Edit summary
One insertion after PA-D1.4 (Van Vleck prefactor):
- **New Derivation PA-D1.4a** (~18 lines): free-particle semigroup property as concrete witness for half-density composition. Three-way d/2 cancellation (two kernel prefactors + Gaussian volume). Tangent-groupoid near-diagonal connection (ε = ℏt/m gives ε^{-d/2}).

## Diffstat
```
paper-diffstat (cached): TOTAL +19 -1 (1 files)
  +19 -1 papers/planck-area/main.md
```
Plus +32 in main.tex (pandoc rebuild).

## Guard checks
- No cycle tags in manuscript: PASS
- No conv_patched mentions: PASS
- No internal repo references: PASS

## Build
- .tex rebuilt via pandoc (markdown+tex_math_dollars+tex_math_single_backslash)
- pdflatex: 22 pages, no errors
