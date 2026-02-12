# S82 Red Team: Free-propagator composition closes the half-density normalization loop

Date: 2026-02-13

## Failure modes

### 1. "You only showed flat space"
- Risk: the free-propagator computation is trivial because det(∂x/∂x') = 1 in Cartesian coordinates, so there's no real coordinate-invariance test.
- Mitigation: the half-density pairing mechanism (|dy|^{1/2} × |dy|^{1/2} = |dy|) is generic and does not depend on flatness. The d/2 cancellation in the prefactors is also generic: it follows from the d-dimensional Gaussian integral volume. A curved-space version would replace (m/t)^d with det(−∂²S/∂x∂z), but the d/2 square root and the d/2 in the Gaussian integral remain the same. The flat case is a witness, not the full claim.

### 2. "The tangent-groupoid section is heuristic"
- Risk: the rescaling k_ε = ε^{d/2} · k with ε² ↔ t is a formal analogy, not a rigorous groupoid construction.
- Mitigation: this is acknowledged by writing "connection (for promotion)" rather than "derivation." The rescaling formula is exact for the free propagator. A rigorous tangent-groupoid treatment would require Connes' machinery ([Connes1994]), which is in the bibliography as OA. Keeping this as a heuristic is appropriate for a blackboard note.

### 3. "Scalarization is just dimensional analysis"
- Risk: the scalarization argument (Section 5) is the same PA-P1.2 dressed in a specific example.
- Mitigation: correct — the scalarization step is not new. What is new is showing *concretely* how the d/2 exponent enters composition and why it is forced by the semigroup property. The scalarization argument then inherits concreteness from the composition computation.
