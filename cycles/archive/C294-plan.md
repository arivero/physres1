# C294 Plan: Package A solvable nontrivial kernel witness (Euclidean HO)

Date: 2026-02-14

## Goal
Add an exact closed-form nontrivial kernel composition witness (Euclidean harmonic oscillator) to strengthen Package A beyond free and first-order bounded-potential levels.

## Target manuscripts
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Add derivation with Mehler-kernel semigroup closure for confining quadratic potential.
- Thread regulator form (`t -> t+eps`) consistently with Appendix 10.6.
- Update Package A status line.

Out of scope:
- General anharmonic closed forms.
- Spectral-theorem proof details beyond witness level.
- New references ingestion.

## Acceptance criteria
- At least one new numbered derivation in Appendix 10.6 with explicit composition identity.
- Assumptions/scope explicit (`omega>0`, Euclidean/confining case).
- Diffstat recorded in `cycles/C294-execution.md`.
- Guard checks pass.
