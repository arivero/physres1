# Q01 Plan

## Goal
Run a fast “post-promotion” quality pass after `B01`/`S01`/`C23`, focusing on:
1. claim hygiene (derived vs hypothesized),
2. citation correctness (no mis-anchoring),
3. dimension/notation clarity (\(d\) vs \(D\)),
4. cross-paper pointers staying minimal.

## Targets
1. `paper/main.md`
2. `papers/planck-area/main.md`
3. `papers/rg-fundamental/main.md`

## Acceptance Tests
1. `cycles/Q01-execution.md` records one short review per target with ≥3 actionable items tagged `C`/`S`/`B`.
2. Manuscript policy guardrail still passes:
   - `rg -n 'C[0-9]{2}' paper/main.md` returns no matches.

