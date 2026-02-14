# D29 Plan: Can hypothesis (L) be weakened?

Date: 2026-02-14
Track: D-triage (discovery planning)
Parent: (follow-up to C309 crown jewel theorem)

## Question
**Can P4.2's hypothesis (L) (local exponential weight exp(c₀·S)) be weakened or generalized?**

Specifically: Does the composition semigroup force the **single-exponential form**, or only constrain its **asymptotics**? Could multi-exponential, stochastic, or polymer formulations satisfy (C)+(I)+(D) while relaxing (L)?

## Context from Haiku search (sources/)
**Key findings** (agent ada951a):

**Evidence for non-uniqueness:**
- de Gosson (2018): "Feynman path integral theory does NOT lead to uniquely defined quantization" — discretization freedom (Born-Jordan vs Weyl)
- Rivero (9803035): exp(iS/ℏ) emerges from **convergence conditions**, not fundamental principle
- Rivero (0302285): Different star products ↔ different orderings ↔ different discretizations; classical limit universal, quantum differs

**Major bibliography gaps:**
- Stochastic quantization (Parisi-Wu): achieves QM via Langevin equation, **no imaginary exponential**
- Loop quantum gravity: sum-over-spin-networks, not continuous path integrals
- Polymer quantization: Bohr compactification, different measures than Lebesgue
- Bohmian mechanics: deterministic trajectories, no path integrals

## Hypothesis
P4.2's composition semigroup (hypothesis C) + identity limit (I) + dimensional homogeneity (D) might allow:
1. **Multi-sector exponentials**: K = Σᵢ Nᵢ exp(cᵢ·Sᵢ) with different sectors
2. **Stochastic formulation**: Langevin evolution with diffusion constant κ
3. **Polymer/discrete**: Different measure (Bohr vs Lebesgue)
4. **Generalized weighting**: f(S/κ) with f ≠ single exponential but same asymptotics

The key test: does **composition** uniquely select exp(iS/κ), or just constrain the functional form?

## In scope
1. Identify which aspect of (L) is load-bearing: single exponential? local action? c₀ constant?
2. Test if composition forces uniqueness or only asymptotic behavior
3. Assess whether multi-exponential (e.g., κ-sectors from D32) violates (L) or generalizes it
4. Survey alternative formulations (stochastic, polymer, LQG) for composition compatibility

## Out of scope
- Full stochastic quantization derivation (that's S-cycle if needed)
- Bibliography acquisition for Parisi-Wu, Ashtekar (that's B-cycle)
- Manuscript promotion (that's C-cycle after resolution)

## Success criteria
**Sharp verdict on one of these:**
1. (L) is **necessary**: composition + identity + dimensional forces single exponential
2. (L) can be **weakened** to asymptotic form: f(S/κ) ~ exp(iS/κ) as κ→ℏ suffices
3. (L) can be **generalized**: multi-exponential or stochastic formulations satisfy (C)+(I)+(D)
4. (L) is **over-specified**: composition only constrains phase structure, not amplitude

## Technical approach
- Start from composition: K₁₂ = ∫ K₁ K₂
- Assume general form K = N(t) W(S,κ) with unknown weight function W
- Derive functional equation for W from composition closure
- Check if W = exp(c₀·S) is unique solution or one of many

## Spawned cycles (expected)
- S288: Composition test with generalized weight function W(S,κ)
- Bnn: Parisi-Wu stochastic quantization (if load-bearing for multi-approach comparison)
