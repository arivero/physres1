# S277 Plan: Scale-window validity for mixed kinetic exponents

Date: 2026-02-14

## Goal
Quantify where a single asymptotic kinetic degree is a good approximation in relativistic interpolation.

## Focus questions
1. For `Ekin=sqrt(p^2+m^2)-m`, what `p/m` window makes `nu_eff` close enough to 1 or 2?
2. How should this window condition be phrased for manuscript caveats?

## Intended outputs
- Update `paper/notes/main-paper-threshold-bridge-sanity-grid.md` with window table.
- Numeric command producing `nu_eff(p)` tolerance bands.

## Acceptance criteria
- Explicit tolerance table (e.g. `|nu_eff-1|<eps`, `|nu_eff-2|<eps`).
- One proposed “window-validity” sentence.

## Iteration extension (append-only)
- Add an analytic closure for the tolerance-window bounds, not only numeric scans.

## Policy addendum (session rule)
- Further S277 work must avoid `paper/notes/`; use `blackboards/` and notebook promotion.

## Iteration 3 extension (append-only)
- Add a decade-drift gate (`Delta nu_10`) to quantify when a local fixed-exponent approximation is defensible on finite momentum windows.

## Iteration 4 extension (append-only)
- Generalize decade drift to arbitrary scale factor `b`, derive a closed-form peak location, and add asymptotic boundary estimates for safe windows.
