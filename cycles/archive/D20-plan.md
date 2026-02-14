# D20 Plan: Go/No-Go gate for optional C300

Date: 2026-02-14

## Goal
Decide whether to open `C300` now or keep current manuscript wording frozen until later review.

## Inputs
- `S272`: coefficient-aware marginal caveat.
- `S273`: assumption-break boundaries.
- `S274`: compact parameter map (`L_crit`).
- `S275`: compressed sentence candidates.

## Decision criteria
1. Is there a correctness bug in current `Remark P1.1a`? If yes -> open C.
2. Is there a significant clarity gain from compression? If yes -> optional C.
3. If gains are marginal -> defer C and keep notes ready.

## Acceptance criteria
- Explicit decision with rationale.
- If deferred, next trigger condition for C is named.

## Iteration extension (same ID)
- Re-evaluate decision if later S-cycle metrics show large readability gain with preserved caveat coverage.
