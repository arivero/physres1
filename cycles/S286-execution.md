# S286 Execution: Two-particle composition test for κ universality
Date: 2026-02-14
Parent: D32

## Work done
1. Wrote explicit tensor-product kernel K₁⊗K₂ with (m₁,κ₁) and (m₂,κ₂).
2. Verified decoupled semigroup: Fresnel convolution closes factor by factor. Each factor uses only its own (mᵢ,κᵢ). No cross-talk. Composition succeeds with κ₁≠κ₂.
3. Analyzed coupled case: P4.2 assumption (L) requires exp(c₀ S_total) with a single c₀=i/κ. When V(q₁,q₂)≠0, the action is non-separable, so the exponential cannot factorize into independent κ₁,κ₂ contributions. This forces κ₁=κ₂.
4. Identified mechanism: the single-exponential-weight assumption (L) in P4.2, applied to the composite system's total Lagrangian, is the constraint source. Coupling prevents factorization of the weight, forcing universality.

## Blackboard
Slot 4 (`blackboards/4.md`), overwriting previous S207 content.

## Verdict
**Composition forces κ₁=κ₂ for coupled systems; decoupled sectors can have independent κ.**

Universality follows from P4.2 + any interaction. Transitivity of coupling makes κ universal across all interacting sectors (hence all of physics, given gravity).

## D32 status
D32 can close with this verdict. The decoupled case is trivial (tensor product). The coupled case gives a clean universality result. No need for a follow-up S287 unless the user wants an explicit perturbative calculation of the composition failure with κ₁≠κ₂ and V≠0.
