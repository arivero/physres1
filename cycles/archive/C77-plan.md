# C77 Plan: Tighten the Ordering-Witness Wording (Control-Map / Unitarity Clause)

## Goal
Adjust the `Heuristic H0.2` item-2 parenthetical in `paper/main.md` so it matches the manuscript's "control map" language by adding a short unitarity/half-density selection clause (scoped to the \(H=pq\) toy witness).

## Tasks
1. Edit `paper/main.md` `Heuristic H0.2` item 2 parenthetical:
   - keep the \(-\hat p\hat q\) vs \(-\hat q\hat p\) witness,
   - add one short clause: unitarity selects a symmetric (half-density) convention.
2. Run guardrails:
   - `rg -n 'C[0-9]{2}' paper/main.md`
3. Stage and record diffstat:
   - `scripts/paper-diffstat.sh --cached`

## Acceptance Tests
- The added clause is explicitly scoped (toy witness) and does not overclaim.
- Intro remains readable.
- `cycles/C77-execution.md` includes diffstat output.

