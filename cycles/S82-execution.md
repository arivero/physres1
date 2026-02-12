# S82 Execution: Free-propagator composition closes the half-density normalization loop

Date: 2026-02-13

## Work done

Wrote a self-contained blackboard note (`blackboards/2026-02-13-free-propagator-half-density-composition.md`) that:

1. **Semigroup computation.** Composed two free-particle propagators on R^d by Gaussian integration. Showed the d/2 exponent cancellation is exact: prefactors (m/(2πiℏt₁))^{d/2} × (m/(2πiℏt₂))^{d/2} combine with the Gaussian volume factor (2πiℏt₁t₂/(m(t₁+t₂)))^{d/2} to produce (m/(2πiℏ(t₁+t₂)))^{d/2}.

2. **Half-density origin of d/2.** Identified two independent derivations:
   - Van Vleck: det(−∂²S/∂x∂z)^{1/2} = (m/t)^{d/2}, a bi-half-density factor (PA-D1.4).
   - Near-diagonal scaling: ε = ℏt/m gives prefactor ∝ ε^{-d/2}, matching PA-D1.2a.

3. **Scalarization.** Showed f = k/(σ_*(x)σ_*(z)) is dimensionless iff L_* has dimension length, so the scalarization constant has dimension length^{d/2}. For d=4: area.

4. **Tangent-groupoid connection.** The rescaling k_ε(x,v) = ε^{d/2} · k(x,x+εv;ε²T) absorbs the half-density Jacobian. For the free propagator, this gives an ε-independent symbol on TM, confirming the rescaling is a change of half-density trivialization.

## Key result

The semigroup property of the free propagator is structurally equivalent to half-density composition: the d/2 exponent is forced (not conventional), and scalarization unavoidably introduces a length^{d/2} constant. This addresses Planck-area Open Problem #1 with a concrete, fully worked model.

## Promotion candidate
A condensed version of sections 2–5 could become a new Derivation PA-D1.4a or an expanded subsection in planck-area Section 4. Needs a C cycle.
