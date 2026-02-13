# C28 Plan

## Goal
Promote the `S06` “admissible couplings” clarification into the Planck-area draft so H2.5 is no longer vulnerable to the “you can always rename a root as a coupling” objection.

## Scope
1. `papers/planck-area/main.md`
   - After `Heuristic H2.7`, add a short clarification:
     - H2.5a is coordinate dependent unless we fix an admissibility rule,
     - H2.5b (analyticity at a base point) is the invariant reading under analytic reparametrizations,
     - exclude \(\mu\), cutoffs, finite-subtraction constants, and scalarization gauges from the admitted coupling set.
   - Add a labeled heuristic stating the intended admissibility rule (Rule A).

2. `docs/research-log.md`
   - Add a dated entry recording the promotion.

## Non-Goals
- No changes to `paper/main.md`.
- No bibliography changes.

## Acceptance Tests
1. `papers/planck-area/main.md` contains the admissibility rule and the H2.5a vs H2.5b invariance clarification.
2. `rg -n 'C[0-9]{2}' paper/main.md` returns nothing.

