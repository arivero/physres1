# C80 Plan: Promote an Explicit \(\tau\) Witness (Step-Halving) into `paper/main.md`

## Goal
Add a short explicit derivation in `paper/main.md` Section 8.4 showing a concrete control map \(\tau_b\) induced by refinement comparison (two half-steps vs one full step).

## Tasks
1. Insert `Derivation D6.2a` (toy ODE step-halving) into Section 8.4.
2. Run guardrails:
   - `rg -n 'C[0-9]{2}' paper/main.md`
3. Stage and record diffstat:
   - `scripts/paper-diffstat.sh --cached`

## Acceptance Tests
- Derivation is short, correct to \(O(h^2)\), and clearly framed as a micro-model.
- Guardrail scan is clean.
- `cycles/C80-execution.md` includes diffstat output.

