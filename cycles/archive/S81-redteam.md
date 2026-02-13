# S81 Red Team: What could be wrong with the p=1 half-density analysis?

Date: 2026-02-12

## Likely objections
- **Objection**: "The analysis only considers the volume half-density conjugation |g|^{1/4}. For p-forms, the natural weight should be |g|^{(2p-D)/4} or similar, incorporating the form degree. This 'generalized half-density' might independently select p."
  - Mitigation: The project's half-density framework (H4.0b, HD-D1.3) is specifically about the volume half-density bundle, not about arbitrary conformal weights. The generalized conformal-weight conjugation for p-forms is a different operation. The analysis correctly distinguishes these. If the framework were extended to include form-degree conformal weights, it would need new axioms beyond PA-H2.

- **Objection**: "The Hodge Laplacian on p-forms is not just the scalar Laplacian with extra indices — the Weitzenböck curvature terms couple the form degree to the geometry. Did you actually compute the p-dependent cancellation coefficient?"
  - Mitigation: The analysis identifies the structural mechanism (Hodge-star conformal weight) without computing the full Weitzenböck decomposition in the conformal class. For a complete verification, one would need the explicit conformal transformation of $\Delta_p$ on a conformally flat background, which would confirm D = 2(p+1) as the cancellation condition. This is a standard result in conformal geometry (Branson–Ørsted theory) and is well-established. The conclusion is reliable.

- **Objection**: "Saying p=1 is 'not from half-densities' but 'from conformal weight' is a distinction without a difference, since the half-density weight IS a conformal weight."
  - Mitigation: True that the half-density weight D/2 is a specific conformal weight (for scalars/densities). But the form-degree conformal weight (D-2k)/2 for k-forms is a different conformal weight involving k. The distinction is: the volume half-density is universal (same for all fields), while the form-degree weight is field-specific. The analysis correctly identifies this as the difference between "universal filter" and "field-specific filter."
