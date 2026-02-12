# RCP Structural Predictions: Enumeration and Falsifiability Assessment

Date: 2026-02-12 (S71)

## Context
The DX01 anomaly register flags a tautology risk: RCP (Refinement Compatibility Principle, P10.1) could explain both anomalies and their absence, making it unfalsifiable. The escape is that RCP generates specific structural predictions — consequences that would fail if the compatibility conditions were violated. This note enumerates them.

## Prediction taxonomy

RCP has three legs (partition, representation, scale). Each leg generates checkable consequences.

### Leg 1: Partition compatibility (C_t)

**P1. Semigroup normalization exponent.** Demanding that short-time kernels compose into a kernel of the same family forces A(t) ∝ t^{-d/2} (D4.1a). Any other power (e.g. t^{-α} with α ≠ d/2) breaks the semigroup convolution closure. This is the manuscript's simplest explicit witness (cited in D10.1a).

**P2. Exponential weighting from additivity.** If the discrete action is additive under interval concatenation (S_N = sum of slice contributions) and each slice factor depends only on local data, then the composition weight is multiplicative → exponential → e^{iS/ℏ} form (Section 6.2). An additive-but-non-exponential weighting would violate partition compatibility.

**P3. Area-law exactness.** In the polygonal central-impulse model, the equal-area law is exact at each finite step (Section 3). This is a partition-compatible invariant: the conservation law holds at every refinement level, not just in the continuum limit.

### Leg 2: Representation compatibility (Q_ℏ)

**P4. Poisson-bracket recovery.** Deformation quantization requires the antisymmetric part of B_1 to match i{f,g} (D5.1). Any ordering/discretization scheme that fails to reproduce the Poisson bracket at O(ℏ) violates representation compatibility. Different star products related by formal automorphism T_ℏ share the same classical bracket (P5.2).

**P5. Ordering as deformation equivalence.** Left/right/midpoint discretizations differ by O(ℏ) corrections but agree at leading order (H5.1). If two discretizations gave different Poisson brackets in the ℏ→0 limit, representation compatibility would fail.

### Leg 3: Scale compatibility (R_Λ)

**P6. Counterterm algebra / RG semigroup.** The effective-parameter map W_{Λ→κ} must form a semigroup: W_{Λ→κ} = W_{μ→κ} ∘ W_{Λ→μ} (P6.2). A theory where coarse-graining from Λ to κ directly disagrees with the composed two-step route violates scale compatibility.

**P7. Beta function from subtraction-scale independence.** In the 2D delta model (D11.2), demanding dT/d(ln μ) = 0 yields the beta function β(g_R) = (m/πℏ²)g_R². If the T-matrix depended on the subtraction scale, the theory would lack scale compatibility.

**P8. Dimensional transmutation as RG-invariant scale.** The bound-state energy E_B = -(ℏ²/2m)μ² exp(-2πℏ²/(mg_R)) is independent of μ — an emergent physical scale from the RG flow (P11.1). This is a nontrivial consequence: a scale-incompatible regularization would produce μ-dependent bound-state predictions.

**P9. Counterterm subtraction as difference quotient.** The elementary identity f'(x) = lim_{ε→0} [f(x+ε) - f(x)]/ε (D6.3) models the counterterm mechanism: each regulated piece diverges, but the difference is finite. This is the simplest model of the structural requirement that divergent refinement limits can be tamed by local subtractions.

### Cross-leg predictions

**P10. Control map existence (τ).** D6.0 and D10.1a formalize the requirement: for each refinement operation, there must exist an update map τ such that O_{h,θ} = O_{h,τ(θ)} ∘ R. If no admissible θ' exists, the theory is not RCP-compatible. The step-halving ODE toy model (D6.2a) provides an explicit example: τ_2(a) = a/2 + 1/4 with fixed point a* = 1/2.

**P11. Rooted-tree / Butcher-group bookkeeping.** The comparison between composed steps and a single step organizes into rooted-tree expansions (H6.2). The Butcher group for formal method composition mirrors the Connes-Kreimer Hopf algebra in perturbative renormalization. This is a structural prediction: the same combinatorial bookkeeping should appear whenever refinement composition is iterated.

## Falsifiability assessment

**Strong predictions (directly checkable against the manuscript):**
- P1 (t^{-d/2}): a different normalization exponent would break kernel composition. This is verified by Gaussian integration (D4.1a).
- P4 (Poisson bracket): the ℏ→0 limit of the star-product commutator must give {f,g}. Standard textbook verification.
- P6 (RG semigroup): transitive composition of coarse-graining maps. Verified in the 2D delta example.
- P7 (beta function): subtraction-scale independence yields the RG flow. Explicitly computed.

**Medium predictions (structurally constrained but not yet independently tested in manuscript):**
- P2 (exponential weighting): the argument relies on locality + additivity → multiplicativity. Could in principle fail for nonlocal actions.
- P10 (control map existence): the toy model demonstrates it; the full field-theory case relies on Wilsonian RG existence.

**Weak/organizational (hard to distinguish from framework definitions):**
- P3 (area-law exactness): this is more of a geometric observation than a falsifiable prediction.
- P5 (ordering equivalence): known from deformation quantization theory; hard to see what would count as a violation within the deformation framework itself.
- P11 (rooted trees): this is a structural observation about combinatorics, not a physical prediction per se.

## Resolution of tautology risk

RCP is not tautological because:
1. **Closure can fail.** D10.1a explicitly states this: "compatibility is falsifiable: closure can fail when no admissible θ' exists." P1 is the explicit witness: t^{-α} with α ≠ d/2 is a valid ansatz that breaks closure.
2. **Predictions are enumerable.** The list above gives 11 concrete consequences. Each can be independently checked.
3. **The "anomaly" objection dissolves.** Quantum anomalies are not RCP violations — they are obstructions to lifting a *classical* symmetry through the representation/scale refinement operations. RCP predicts that the anomaly structure itself must be compatible (anomaly-matching conditions, 't Hooft anomalies). A theory where anomalies appeared/disappeared under RG flow *would* violate RCP.
4. **Scope limitation.** RCP does not predict *which* theories are physical — it constrains the *form* of admissible theories. Like the principle of general covariance, it is restrictive (eliminates non-covariant theories) without being uniquely selective (many theories are covariant).

## Promotion candidate
A remark in the D10.1a vicinity could add: "The structural content of RCP is that closure can fail, and the list of consequences (normalization exponent, Poisson bracket recovery, counterterm algebra, dimensional transmutation) constitutes a set of independently checkable structural predictions." However, this may be too meta for the manuscript — the existing D10.1a already makes the falsifiability point with the t^{-d/2} witness. Defer to a future C cycle if the anomaly register is satisfied with this resolution.

## Status
Anomaly entry "RCP falsifiability / tautology risk" → RESOLVED: RCP is falsifiable because closure can fail (explicit witnesses exist), and it generates an enumerable list of structural predictions across all three legs.
