# C29 Plan

## Goal
Apply the low-friction Q02 cleanup items to the Planck-area draft:
1. reduce potential redundancy friction between D1.2a and D1.2b by adding a short cross-pointer,
2. add a one-sentence disclaimer that “canonical normalization” is a convention knob in the admissible-couplings rule.

## Scope
1. `papers/planck-area/main.md`
2. `docs/research-log.md`
3. `cycles/index.md`

## Non-Goals
- No changes to `paper/main.md`.
- No bibliography ingestion.

## Acceptance Tests
1. The Planck-area draft remains concise; changes are ≤ a few sentences.
2. `rg -n 'C[0-9]{2}' paper/main.md` returns nothing.

