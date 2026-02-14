# S278 Plan: Potential-channel drift and effective exponent diagnostics

Date: 2026-02-14

## Goal
Characterize how logarithmic/non-power corrections in the potential channel alter threshold intuition and what minimum diagnostic should be retained.

## Focus questions
1. What minimal diagnostic captures drift in effective attraction exponent?
2. Can we phrase a robust “do not overapply qcrit” caveat from this branch?

## Intended outputs
- Extend `paper/notes/main-paper-threshold-bridge-sanity-grid.md` with one diagnostic recipe.
- Command-backed sample over several correction strengths.

## Acceptance criteria
- One compact diagnostic definition.
- One robust caution sentence suitable for eventual promotion.

## Iteration extension (append-only)
- Add one alternative correction-family check to verify diagnostic robustness beyond logarithmic corrections.

## Policy addendum (session rule)
- Further S278 work must avoid `paper/notes/`; use `blackboards/` and notebook promotion.

## Iteration 3 extension (append-only)
- Add a windowed max-drift gate (`Delta m_max`) with family-comparison evidence, so "small drift" is checkable on finite radial ranges.
