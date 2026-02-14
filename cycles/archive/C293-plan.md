# C293 Plan: Package A quantitative error-control extension

Date: 2026-02-14

## Goal
Strengthen Package A by adding explicit error bounds for the first-order potential-perturbed composition witness in Appendix 10.6.

## Target manuscripts
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Add a quantitative remainder bound for bounded potentials on top of `Derivation D12.2`.
- Add an explicit composition-defect bound for the first-order approximation.
- Update Package A status line in Section 9.5.

Out of scope:
- Full nonperturbative constructive path-space theory.
- New bibliography ingestion.
- Companion-paper edits.

## Acceptance criteria
- At least one new numbered statement in Appendix 10.6 with explicit bound(s).
- Bounds are scoped with assumptions (`V` bounded, semigroup norm setting).
- Diffstat recorded in `cycles/C293-execution.md`.
- Guard checks pass.
