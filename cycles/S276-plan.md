# S276 Plan: Generalized marginal map beyond monomial A(L)

Date: 2026-02-14

## Goal
Generalize the marginal map from monomial `A(L)=aL^nu` to broader asymptotic forms and identify which parts of the `L_crit` logic survive.

## Focus questions
1. What minimal conditions on `A(L)` preserve a single-threshold picture?
2. When do multiple threshold branches appear?

## Intended outputs
- Update `paper/notes/main-paper-threshold-bridge.md` with a generalized marginal-map subsection.
- Command-backed toy examples (monotone vs non-monotone `A(L)`).

## Acceptance criteria
- One clear “single-threshold sufficient condition” statement.
- One explicit counterexample where threshold uniqueness fails.

## Iteration extension (append-only)
- Add range-coverage criterion to avoid false "unique threshold" claims for saturating monotone families.

## Policy addendum (session rule)
- Further S276 work must avoid `paper/notes/`; use `blackboards/` and notebook promotion.

## Iteration 3 extension (append-only)
- Add a windowed uniqueness criterion for non-monotone global families: enforce monotonicity + range coverage on the physical `L` window.
