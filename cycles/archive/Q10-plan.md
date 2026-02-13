# Q10 Plan: Quality Pass After Promoting Delta-Kernel Derivative Algebra (C47)

## Goal
Referee-style check of the new contact-term algebra material added to `papers/half-density-qft/main.md` and the supporting S18 note:
- correctness of the Lie-derivative identity and its interpretation,
- avoid confusion between pullback/pushforward and between Lie vs covariant derivatives,
- verify guardrails (no cycle labels in `paper/main.md`).

## Checks
1. Guardrail scan: `rg -n 'C[0-9]{2}' paper/main.md`.
2. Read-through:
   - `papers/half-density-qft/main.md` Section 5 (Remarks D5.1/D5.2),
   - `blackboards/2026-02-10-derivatives-of-diagonal-delta-kernel.md` Section 2 (diffeomorphism invariance statement).
3. Cross-link existence:
   - S18 and S15 blackboards referenced from the draft.

## Acceptance Tests
- No guardrail violations.
- Any wording/sign/notation issues are corrected within this cycle.

