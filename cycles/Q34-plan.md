# Q34 Plan: Quality Pass on Remark E4a (String-Tension Branch Clarification)

## Goal
Check that `Remark E4a` in `papers/planck-area/main.md` is coherent, correctly scoped, and does not introduce bibliography debt.

## Checks
1. Read Example E4 through Heuristic H2.13 flow.
2. Verify E4a clearly separates UV \(\alpha_\ast\) from emergent \(\sigma^{-1}\) without overclaiming confinement diagnostics.
3. Ensure the remark remains hypothesis bookkeeping (branch placement) rather than a detailed physical claim.
4. Guardrail scan:
   - `rg -n 'C[0-9]{2}' paper/main.md`

## Acceptance Tests
- No edits required, or edits are clearly actionable for a `C` cycle.
- Guardrail scan remains clean.
