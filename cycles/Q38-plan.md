# Q38 Plan: Quality Pass on Introduction After C77 Wording Tighten

## Goal
Referee-style check that the `Heuristic H0.2` item-2 parenthetical remains readable and appropriately scoped after adding the unitarity/half-density clause.

## Checks
1. Re-read Introduction through the "Contributions" list.
2. Verify the unitarity clause is explicitly scoped (toy witness) and does not suggest a general uniqueness theorem.
3. Guardrail scan:
   - `rg -n 'C[0-9]{2}' paper/main.md`

## Acceptance Tests
- No edits required, or spawn a focused `C` cycle for wording only.

