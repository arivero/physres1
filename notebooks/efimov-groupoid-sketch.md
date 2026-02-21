# Efimov Limit Cycles as Tangent Groupoid: Conceptual Sketch

**Status:** Exploratory thinking note (Philosophenweg)
**Date:** 2026-02-21, 17:15 CET
**Agent:** Student
**Context:** Self-directed extension of Efimov/PSL(2,R) exploration

## Overview

Can the Efimov RG limit cycle be formulated as a **tangent groupoid** that naturally encodes the interaction of RCP's three channels (partition, representation, scale)?

## Tentative Structure

### Objects
- Base space: coupling constants {H_n} for three-body systems
- Fibers: at each H_n, the space of SAE phases θ ∈ ℝ/2πℤ (boundary condition choices)
- Total space: configurations (H, θ)

### Morphisms
- **RG transformation T:** (H_n, θ_n) → (H_{n+1}, θ_{n+1})
- **Limit cycle:** Periodic orbit where T^N ≈ identity for integer N related to s₀
- **Tangent deformation:** Transition from discrete steps to continuous RG flow as Λ → ∞

### Composition Law

**Product of two RG steps:**
- First step: (H₀, θ₀) → (H₁, θ₁) via T with specific partition basis {Y₁ₘ}
- Second step: (H₁, θ₁) → (H₂, θ₂) via T with specific basis {Y₂ₘ}
- Composition must ensure bases are **compatible** and flow respects **chosen representation**

## Connection to RCP Channels

### 1. Partition Channel
- Hyperspherical harmonics decomposition {Y_{ℓ₀,ℓ}}
- RG flow mixes different hyperradial channels
- **Constraint:** Partition must remain orthonormal under flow

### 2. Representation Channel
- Choice of SAE phase θ = which PSL(2,ℝ) UIR branch we're on
- Different θ values give different spectral patterns
- **Constraint:** Representation must align with RG generating transformations

### 3. Scale Channel
- Momentum scale Λ evolution
- RG transformation acts on coupling constants
- **Constraint:** Scale must be consistent with eigenvalue structure

### Groupoid Multiplication Enforcing Compatibility

The requirement that:
```
(Partition_new ⊗ Representation_new ⊗ Scale_new)
= groupoid_multiply((Partition₁, Rep₁, Scale₁), (Partition₂, Rep₂, Scale₂))
```

enforces that **all three channels must compose coherently** under the RG flow.

## Speculative Hypothesis

**The Bedaque-Hammer-vanKolck Structure is the Minimal Coupling for Groupoid Closure**

The requirement that exactly **one three-body force** appears at leading order (BHK result) might emerge from:
- Demanding that the groupoid multiplication is associative
- Requiring that partition refinement, representation choice, and scale evolution are mutually compatible
- Forcing compositional closure under the RG limit cycle

In other words: Given the three-channel RCP structure, what's the minimal set of interactions needed for the groupoid to close? Answer: one 3-body force.

## Open Questions

1. **Rigorous formulation:** Can this be made precise? What are the groupoid axioms (associativity, identity, inverses) for this structure?

2. **Infinitesimal generator:** What is the tangent space groupoid? Can we get a Lie algebra description?

3. **Character theory connection:** How does PSL(2,ℝ) character theory emerge from groupoid representation theory?

4. **Uniqueness:** Is the BHK three-body force FORCED by groupoid axioms, or just one possible solution?

5. **Extensions:** Does this framework generalize to N-body problems? Four-body Efimov?

## Strategic Value

If formalized, this could:
- Provide rigorous justification for BHK effective field theory structure
- Show that RCP (composition + refinement) is not just descriptive but **predictive**
- Connect renormalization group theory to abstract groupoid algebra
- Potentially generate new insights about which interactions are "allowed" by fundamental principles

## Notes for Future Work

- This is a bridge between physics (RG flows) and abstract algebra (groupoid composition)
- Requires collaboration between physicist and mathematician
- If successful, could elevate from phenomenological EFT to principle-based derivation
- Key test: Can groupoid axioms **predict** (not just postdict) the BHK one-three-body-force structure?

## Relation to Current Tasks

- Efimov/PSL(2,R) investigation: This sketch is a natural continuation
- Provides direction for groupoid lifting (mentioned as speculative in original proposal)
- Concrete enough to potentially formalize into a mathematician task
- Fits spirit of RCP universality principle: compositional closure forces structure

---

**Status:** Exploratory note (Part 1), with verified numerics (Part 2, promoted from BB6).

---

## Part 2: Verified Efimov/PSL(2,R) Numerics

**Promoted from:** blackboards/6.md (THREE-AGENT: computationalist + critic + physicist, 2026-02-21)
**Status:** VERIFIED (Q1+Q2 confirmed; Q3 overclaim — see scope note)

### Efimov Parameter s0

Transcendental equation (Efimov 1970, Braaten-Hammer 2006):
s0 cosh(pi s0/2) = (8/sqrt(3)) sinh(pi s0/6)

Numerical solution (Brent method, xtol=1e-15): **s0 = 1.006237825102782**, residual 8.88e-16.

### Scaling Ratios

| Quantity | Value |
|---|---|
| lambda = exp(pi/s0) | 22.6943825954 |
| lambda^2 = exp(2pi/s0) | 515.035001 |
| E_1/E_0 = exp(-2pi/s0) | 1.9416e-03 |

Experimental (Kraemer et al. 2006, Cs-133): lambda ~ 22.7. Agreement 0.02%.

### SL(2,R) Identification

Effective hyperradial coupling: alpha = s0^2 + 1/4 = 1.2625 (Casimir of PSL(2,R) principal series at spectral parameter s0).

Conformal weight: Delta = 1/2 + i*s0 = 0.5 + 1.006i (on the critical line).

Mobius rotation angle: theta = pi/s0 = 3.12212 rad.
Trace: tr(M) = 2 cos(theta) = -1.99962. |tr| < 2 => ELLIPTIC element of SL(2,R).

SAE angle evolution: phi' = phi + s0 ln(Lambda'/Lambda) (mod pi). Period: pi/s0 = theta. Consistent.

### THREE-AGENT Verdict

**Q1 (PSL(2,R) <-> Efimov tower): CONFIRMED.** s0 = PSL(2,R) spectral parameter. Limit cycle = elliptic SL(2,R) orbit.

**Q2 (exp(pi/s0) representation-theoretic): CONFIRMED with CAVEAT.** Scaling ratio = exp(SL(2,R) rotation angle). But s0 requires STM physics input (the transcendental equation) — not purely group-theoretic.

**Q3 (RCP forces limit cycle): OVERCLAIM.** RCP accommodates the limit cycle (it IS a scale-channel semigroup orbit), but does NOT force it. The limit cycle is forced by resonant interactions + UV incompleteness (Camblong et al. 2000), which are physical inputs independent of RCP. Safe language: "The Efimov limit cycle realizes discrete scale invariance within the RCP scale channel."

### Prior Art

- de Alfaro, Fubini, Furlan (1976): SO(2,1) ~ SL(2,R) dynamical symmetry of 1/R^2 potential
- Camblong, Ordonez et al. (2000-2003): explicit connection to Efimov
- Braaten-Hammer (2006): review of Efimov universality
- arXiv:2509.04746: three-body limit cycle as Mobius transformation (universal regulator independence)

### References

- blackboards/6.md (source — THREE-AGENT verified)
- sources/efimov-effect-discrete-scaling-rg.md
- sources/2509-04746-three-body-limit-cycle.md
- meta/anomalies.md (Efimov entry: RESOLVED at Level 2)
