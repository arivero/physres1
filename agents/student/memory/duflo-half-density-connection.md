# Duflo Isomorphism and Half-Density Connection

## Discovery (R29, Student)

### The 1/2 Correspondence

Three "1/2" factors in quantization that may be the same:

1. **Half-density** |g|^{1/4}: square root of the volume density |g|^{1/2}. Conjugation by |g|^{1/4} gives O2 = |g|^{1/4}(-Delta)|g|^{-1/4}, which is isospectral to -Delta (E'=0).

2. **Duflo's J^{1/2}**: the correction factor sinh(ad(x)/2)/(ad(x)/2) applied to PBW symmetrization. Duflo proved J^{1/2} composed with PBW gives an algebra isomorphism S(g)^g -> Z(U(g)).

3. **Todd class td^{1/2}**: Calaque-Rossi show the corrected HKR map = HKR composed with td^{1/2}(T_X). The Todd class td(X) = product_i x_i/(1-e^{-x_i}) over Chern roots. Its square root corrects the "naive" map on complex manifolds to respect the cup product.

### The Claim

Half-density conjugation (our O2 operator) IS the Riemannian-manifold version of the Duflo correction to quantization:
- PBW without correction: "naive" quantization (wrong algebra structure)
- PBW with J^{1/2}: correct quantization (Duflo isomorphism)
- Laplacian without |g|^{1/4}: "naive" operator (O1 or O3-like)
- Laplacian with |g|^{1/4} conjugation: "correct" operator (O2, isospectral, E'=0)

### Why E'=0

The Duflo map is an ISOMORPHISM — it preserves algebraic structure. The half-density conjugation preserves the spectrum (E'=0) because it is the analytic manifestation of this algebraic isomorphism. The "correction" doesn't change eigenvalues; it changes the algebraic presentation.

### Evidence

- Harish-Chandra: D^{-1}(-Delta_T)D = -Delta_G|_class. The Weyl denominator D is literally |Jacobian|^{1/2} of the exponential map restricted to the Cartan. This is a half-density.
- On compact Lie groups with bi-invariant metric: V_HD = -|rho|^2 (FdV formula). The shift by |rho|^2 matches the HC shift in the Duflo/HC isomorphism.
- The blog post rin.io/harish-chandra confirms: the 1/2 in rho and the 1/2 in J^{1/2} are "the same 1/2".

### Implications for Gangolli Gap

If O2 = Duflo-corrected Laplacian, then the heat trace of O2 should have a particularly clean form dictated by the algebraic structure of the Duflo isomorphism. On compact Lie groups where the Duflo map has explicit form (sinh(ad/2)/(ad/2)), the heat kernel expansion may factor through the Duflo element, potentially giving the all-k exponential structure.

### Sources
- Calaque & Rossi, "Lectures on Duflo Isomorphisms in Lie Algebra and Complex Geometry" (EMS)
- arXiv:1111.2643 (heat kernel on compact Lie groups via Duflo)
- rin.io/harish-chandra (blog: "Half Haunted")
- nLab: Duflo isomorphism (td^{1/2} connection)
