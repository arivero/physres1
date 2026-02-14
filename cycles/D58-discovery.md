# D58 Discovery: Composition = master axiom as categorical functor (Atiyah-Segal)

Date: 2026-02-14
Parent: D53 (single-axiom P4.2)

## Novelty target
Does the single-axiom P4.2 have a categorical interpretation?

## Categorical formulation

### Category of time intervals (source)
- Objects: times t ∈ ℝ
- Morphisms: intervals [t₁, t₂] with t₂ > t₁
- Composition: [t₁,t₂] · [t₂,t₃] = [t₁,t₃]
- Identity: [t,t]

### Category of kernel operators (target)
- Objects: L²(ℝ^d) at each time
- Morphisms: integral operators K(x,y;t₁,t₂) : L²_t₁ → L²_t₂
- Composition: (K₂₃ ∘ K₁₂)(x,y) = ∫ K₂₃(x,z) K₁₂(z,y) d^d z
- Identity: δ(x-y) : L²_t → L²_t

### The functor
P4.2's composition axiom (C) says: the assignment [t₁,t₂] ↦ K(·,·;t₁,t₂)
is a **functor** from time intervals to kernel operators.

This is precisely the **Atiyah-Segal axiom** for quantum field theory (restricted
to 0+1 dimensions = quantum mechanics):
$$Z(\Sigma_1 \circ \Sigma_2) = Z(\Sigma_1) \circ Z(\Sigma_2)$$

### D53 in categorical language
**P4.2 = the unique functor** from the category of time intervals to kernel
operators, satisfying the physical setup conditions (ℝ^d configuration space,
action-based dynamics, minimal dimensional basis).

"Composition is the master axiom" = **functoriality is the master axiom.**

## What the categorical viewpoint adds

1. **The identity limit (I)** is the functor's behavior on identity morphisms:
   Z([t,t]) = id_{L²}. This is PART OF the functor definition — a functor must
   map identity to identity. So D53's result (I derives from C) is automatic
   in categorical language.

2. **Anomalies (D57)** are obstructions to functoriality of SYMMETRIES — the
   functor Z works, but a symmetry group action fails to be natural.

3. **The two-layer picture (D54)**: QM = functor on 0+1d manifolds (A1);
   QFT = functor on d+1d manifolds (A1+A4). The "extra" A4 controls
   the infinite-dimensional target category.

## Verdict
**YES — the composition axiom IS the functoriality axiom.** This is the
Atiyah-Segal framework applied to quantum mechanics. The categorical formulation
makes D53's identity-limit derivation trivially obvious (functors preserve
identities by definition).

## Novelty assessment
**MINOR (repackaging).** The Atiyah-Segal axioms are well-known. The novelty is
the explicit connection to P4.2's axiom reduction: the ENTIRE theorem is a
consequence of functoriality. Could inform a sentence in the cornerstone
conclusion referencing the TQFT axiom framework.

## Spawned cycles
None. Record connection for potential cornerstone remark.
