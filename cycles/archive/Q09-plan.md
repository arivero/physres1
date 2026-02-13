# Q09 Plan: Quality Pass After Adding the Conformal D=4 Filter to Planck-Area Draft

## Goal
Referee-style check of the new “operator-simplicity” D=4 filter (H2.6a) added in C46:
- mathematical correctness of the displayed formula and coefficient \(D(4-D)/4\),
- wording/caveats: no overclaim; clearly separated from H2.5 sieve,
- cross-links resolve to existing notes/drafts.

## Checks
1. Guardrail scan: `rg -n 'C[0-9]{2}' paper/main.md`.
2. Read-through:
   - `papers/planck-area/main.md` around `Heuristic H2.6a`,
   - confirm links to `papers/half-density-qft/main.md` Derivation D1.3 and S17 blackboard note.
3. Spot-check sign conventions vs the S16/S17 notes.

## Acceptance Tests
- No guardrail violations.
- Any ambiguity/overclaim in H2.6a is corrected.

