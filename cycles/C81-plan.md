# C81 Plan: Promote "Constants as Control Parameters" Heuristic into the Introduction

## Goal
Add a short, claim-hygienic heuristic to `paper/main.md` Introduction explaining (in this program’s language) why \(\hbar\), \(c\), and \(G\) appear as control parameters for three compatibility limits.

## Tasks
1. Insert `Heuristic H0.3` after `Heuristic H0.2a` in `paper/main.md`.
2. Run guardrails:
   - `rg -n 'C[0-9]{2}' paper/main.md`
3. Stage and record diffstat:
   - `scripts/paper-diffstat.sh --cached`

## Acceptance Tests
- The heuristic is one paragraph and explicitly framed as "in this program" (not a theorem).
- Guardrail scan is clean.
- `cycles/C81-execution.md` includes diffstat output.

