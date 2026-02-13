# C124 Execution: Promote S85 Wilsonian shell derivation into rg-fundamental

Date: 2026-02-13

## What was promoted
- `Derivation RG-D1.2a (Wilsonian shell integration: explicit semigroup composition)` inserted at the end of Section 5.2, before Section 5.3.

## Source
- `blackboards/2026-02-13-wilsonian-shell-2d-delta.md` (Sections 2–5, 7)

## Content summary
1. Split the loop integral at two cutoffs; exact threshold shell integral.
2. Defined Wilsonian effective coupling by matching T-matrix form.
3. Semigroup composition as additivity of logarithms.
4. Beta function β(g) = (m/πℏ²)g² recovered by differentiation.
5. Non-invertibility and connection to Section 6 (Schur complement).

## Guard checks
- `rg -n 'C[0-9]{2,3}' papers/rg-fundamental/main.md` → no matches ✓
- `rg -n 'conv_patched' papers/rg-fundamental/main.md` → no matches ✓

## Diffstat
```
paper-diffstat (cached): TOTAL +27 -0 (1 files)
  +27 -0 papers/rg-fundamental/main.md
```

## PDF rebuild
- pandoc + pdflatex → 16 pages, clean build. No errors or warnings.
