# Q40 Plan: Quality Pass on Introduction After Adding `Heuristic H0.3`

## Goal
Referee-style check that adding `Heuristic H0.3` ("constants as control parameters") did not:
- bloat the Introduction,
- introduce overclaims,
- or break the flow into the "third anchor" paragraph.

## Checks
1. Read Introduction end-to-end through the Contributions list.
2. Verify H0.3 is explicitly framed as "in this program" and does not claim derivability.
3. Guardrail scan:
   - `rg -n 'C[0-9]{2}' paper/main.md`

## Acceptance Tests
- No edits required, or spawn a focused `C` wording tweak.

