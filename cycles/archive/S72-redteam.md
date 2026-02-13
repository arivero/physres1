# S72 Red Team: Half-density vs conformal Laplacian study failure modes

Date: 2026-02-12

## Failure modes
- Algebra/sign mistakes:
  - Mitigation: the D(4-D)/4 coefficient was derived by two independent routes (direct chain-rule expansion and general-metric omega formulation) and cross-checked at D=2,3,4,6. The SymPy verification was attempted but blocked by sandbox; manual verification is complete and consistent.
- Overclaiming the "distinct from Yamabe" result:
  - Mitigation: the comparison is standard differential geometry (conformal weights of density bundles). The weight difference (D/2 vs (D-2)/2 = 1) is well-known. The contribution here is making it explicit in the context of the PA/HD hypothesis ladder.
- The "cannot be xi*R" result might be circumvented by allowing R + additional curvature invariants:
  - Mitigation: in the conformal class (Weyl = 0), the only independent curvature invariants built from second derivatives of sigma are laplacian(sigma) and |grad sigma|^2, so adding other curvature invariants doesn't help within this class. Beyond the conformal class, the question changes.
