# C74 Plan: Promote "No Lebesgue Measure on Path Space" Heuristic

## Goal
Promote a short, claim-hygienic statement into `paper/main.md` making explicit that path-space integration is not a naive Newtonian limit, because there is no canonical Lebesgue/Haar measure in infinite dimensions.

## Tasks
1. Insert `Heuristic H0.2a` near `Heuristic H0.2` in `paper/main.md` (2-3 sentences).
2. Keep the phrasing conditional and non-overclaiming ("obstruction to a refinement program", not "classical inconsistency").
3. Run guardrails:
   - `rg -n 'C[0-9]{2}' paper/main.md`
4. Stage and record diffstat in `cycles/C74-execution.md`:
   - `scripts/paper-diffstat.sh --cached`

## Acceptance Tests
- `paper/main.md` reads smoothly with the new heuristic and does not overpromise.
- Guardrail scan is clean.
- `cycles/C74-execution.md` includes the diffstat output and a one-sentence interpretation.

