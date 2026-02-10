# Q08 Plan: Quality Pass After S15/C44 Promotions

## Goal
Run a short referee-style quality pass focused on the changes promoted in C44:
- ensure the RG draft’s updated calculus micro-model is accurate, not oversold, and internally consistent,
- ensure the delta-objects note’s new \(\delta'\) point-splitting identity is correct (signs, wording, and no conflation with \(\delta(f')\)),
- confirm manuscript-policy guardrails are still satisfied (no cycle labels in `paper/main.md`).

## Checks
1. Guardrail scan: `rg -n 'C[0-9]{2}' paper/main.md`.
2. Consistency scan in touched drafts:
   - `papers/rg-fundamental/main.md` (Abstract + Section 3),
   - `papers/delta-objects/main.md` (Section 3.1a/3.1b).
3. Quick “reader experience” pass: are cross-links to blackboards clear and not overbearing?

## Acceptance Tests
- No new guardrail violations.
- Any discovered issues are fixed within this cycle (or written as a concrete follow-up task).

