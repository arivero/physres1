# Q39 Plan: Quality Pass on Introduction After Divergence Witness Addition

## Goal
Referee-style check that the new toy divergence witness parenthetical in `Heuristic H0.2` item 3 does not clutter the Introduction or invite misleading analogies.

## Checks
1. Re-read the Introduction through the "Contributions" list.
2. Ensure the new parenthetical is clearly marked as a toy witness and does not conflate calculus with QFT renormalization.
3. Guardrail scan:
   - `rg -n 'C[0-9]{2}' paper/main.md`

## Acceptance Tests
- No edits required, or spawn a focused wording-only `C` cycle.

