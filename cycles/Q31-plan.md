# Q31 Plan: Quality Pass on Doubling Remark in half-density-qft

## Goal
Check that `Remark D4.1` in `papers/half-density-qft/main.md` is coherent, scoped, and does not create bibliography debt.

## Checks
1. Read Section 4 flow into the new remark and transition into Section 5.
2. Verify remark is self-contained (minimal definitions, clear slots, no hidden measures).
3. Ensure no specific QFT formalism is asserted as an anchor without sources.
4. Guardrail scan:
   - `rg -n 'C[0-9]{2}' paper/main.md`

## Acceptance Tests
- No edits required, or if edits are needed they are clearly actionable for a `C` cycle.
- Guardrail scan remains clean.
