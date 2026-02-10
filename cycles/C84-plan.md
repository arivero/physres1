# C84 Plan: Add a Newton-Limit Paradox Witness Tied to \(\hbar\)

## Goal
Add one explicit witness in `paper/main.md` (Section 6.4) showing why a finite deformation/control parameter is needed:
hard "take the extremum" is not the stable primitive under refinement-composition, but arises as a limit of a composing quantity.

## Target
Insert a short derivation block near `Derivation D4.2`:
- Euclidean (finite-dimensional) "log-sum-exp" / Laplace-principle witness:
  \(-\hbar\log\int e^{-S/\hbar}\) composes and tends to \(\inf S\) as \(\hbar\to0\).
- Mention the real-time stationary-phase analogue without overclaiming measure existence.

## Acceptance
1. `paper/main.md` gains a new `Derivation D4.2a` block with the above witness.
2. `cycles/C84-execution.md` records manuscript diffstat via `scripts/paper-diffstat.sh --cached`.
3. Commit and push.

