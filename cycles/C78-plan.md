# C78 Plan: Add a Toy Divergence Witness to `Heuristic H0.2` Item 3

## Goal
Make the "divergence" obstruction in `Heuristic H0.2` slightly more concrete without pulling the Introduction into the full RG computation section.

## Tasks
1. Add a short "(Toy witness ...)" parenthetical to `Heuristic H0.2` item 3 in `paper/main.md` using the difference-quotient subtraction idea.
2. Run guardrails:
   - `rg -n 'C[0-9]{2}' paper/main.md`
3. Stage and record diffstat:
   - `scripts/paper-diffstat.sh --cached`

## Acceptance Tests
- Parenthetical is one line and clearly marked "toy witness".
- Guardrail scan is clean.
- `cycles/C78-execution.md` includes diffstat output.

