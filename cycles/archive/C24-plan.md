# C24 Plan

## Goal
Promote the stable S02 “scalarization running ↔ \(Z(\mu)\)” insight into the Planck-area draft, and add a short branch-summary paragraph to Section 3.2 to keep the hypothesis ladder readable.

## Scope
1. `papers/planck-area/main.md`
   - Add a short branch-summary paragraph at the end of Section 3.2.
   - Add a short labeled derivation/heuristic clarifying: a scale-dependent scalarization \(\sigma_\ast(\mu)\) is formally equivalent to a wavefunction renormalization factor \(Z(\mu)\) acting on scalar representatives.
   - Add a one-sentence guardrail separating geometric half-density weights from anomalous RG scaling.

## Non-Goals
- No new external sources (use existing bibliography only).
- No changes to `paper/main.md` in this cycle.

## Acceptance Tests
1. `papers/planck-area/main.md` contains the branch-summary paragraph and the \(Z(\mu)\) scalarization note.
2. No cycle IDs appear in `paper/main.md` (guardrail: `rg -n 'C[0-9]{2}' paper/main.md`).

