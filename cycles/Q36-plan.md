# Q36 Plan: Quality Pass on Introduction Heuristics (H0.2 / H0.2a)

## Goal
Referee-style check of `paper/main.md` Introduction around:
- Zeno/refinement framing,
- `Heuristic H0.2` (three failure modes),
- `Heuristic H0.2a` (no Lebesgue/Haar measure on path space),
for tone, claim hygiene, and reader flow.

## Checks
1. Read Introduction end-to-end for smooth transitions.
2. Verify `Heuristic H0.2a` is stated with correct hypotheses (σ-finite / translation-invariant) and does not imply "classical inconsistency".
3. Confirm citations exist in `paper/bibliography.md` and are used consistently.
4. Guardrail scan:
   - `rg -n 'C[0-9]{2}' paper/main.md`

## Acceptance Tests
- Either no edits required, or a focused `C` cycle is spawned with concrete edits.
- Guardrail scan remains clean.

