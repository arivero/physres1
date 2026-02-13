# C75 Plan: Cite the Path-Space Measure Obstruction

## Goal
Make `Heuristic H0.2a` in `paper/main.md` properly source-anchored by inserting an inline citation that matches the stated hypotheses.

## Tasks
1. Edit `paper/main.md` `Heuristic H0.2a` to cite `[Velhinho2017InfDimMeasure]`.
2. Run guardrails:
   - `rg -n 'C[0-9]{2}' paper/main.md`
3. Stage and record diffstat:
   - `scripts/paper-diffstat.sh --cached`

## Acceptance Tests
- The heuristic statement matches the reference wording at the hypothesis level (\(\sigma\)-finite, translation-invariant).
- Guardrail scan is clean.
- `cycles/C75-execution.md` includes diffstat output.

