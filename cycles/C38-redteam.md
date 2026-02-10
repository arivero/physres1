# C38 Red Team

## Failure Modes
1. Flipping the sign in \(I_3\) but forgetting to update downstream formulas (3D \(T\) parameterization).
2. Introducing a new convention mismatch between §5.8.1 and §5.9 of the RG draft.
3. Leaving the S12 blackboard note internally inconsistent (1D vs 3D factors).

## Mitigations
- Update all appearances of \(I_3\) in the RG draft in one pass.
- Keep the 3D amplitude written “up to conventions” and ensure the \(ik\) term is consistent with the corrected \(I_3\).
- Re-derive prefactors from the common definition \(I_d=\int d^dq/(2\pi)^d\,(E-\hbar^2 q^2/2m+i0)^{-1}\).

