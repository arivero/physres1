# Q71 Red Team: What a referee would attack in PA-E5b

Date: 2026-02-12

## Likely referee objections
- **Objection**: "The Lippmann–Schwinger factorization G = G₀ + G₀TG₀ is specific to rank-1 (contact) perturbations. For extended interactions, T becomes a kernel, not a scalar. How general is the 'structural independence' claim?"
  - Mitigation: PA-E5b explicitly says "the 2D delta interaction" — it does not claim generality beyond this example. For extended interactions, T(x,y;E) is itself a bi-half-density, and the factorization is more intricate. The remark is correctly scoped to the 2D delta witness. No overclaim.

- **Objection**: "Saying κ* 'supplies the scalarization constant' is a conceptual leap — κ* is a parameter of T(E), not a choice of reference half-density σ*."
  - Mitigation: PA-E5b says κ* "supplies the scalarization constant needed to extract dimensionless amplitudes," which is a dimensional observation (κ*^{-1} has the right dimension to serve as L* in σ* = L*^{-d/2}|dx|^{1/2}), not a claim that the theory automatically selects σ*. The hypothesis ladder (PA-H2.2–H2.4) is correctly cited as the framework under which this identification becomes meaningful.
