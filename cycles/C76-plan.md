# C76 Plan: Promote a Concrete Ordering-Ambiguity Witness into the Introduction

## Goal
Make the "non-uniqueness" obstruction in `Heuristic H0.2` as concrete as the measure obstruction by adding a minimal explicit ordering example in `paper/main.md`.

## Tasks
1. Add a short parenthetical witness to `Heuristic H0.2` item 2 (endpoint evaluation of \(H=pq\) yields \(-\hat p\hat q\) vs \(-\hat q\hat p\)).
2. Run guardrails:
   - `rg -n 'C[0-9]{2}' paper/main.md`
3. Stage and record diffstat:
   - `scripts/paper-diffstat.sh --cached`

## Acceptance Tests
- The witness is short (one parenthetical) and does not derail the Introduction.
- Guardrail scan is clean.
- `cycles/C76-execution.md` includes diffstat output.

