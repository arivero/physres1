# Caustics and the Maslov Index in the Half-Density Framework
Promoted from: blackboards/2.md
Date promoted: 2026-02-14

## Context
Example 3.5b in delta-objects notes that sqrt(D) -> infinity at omega*Delta_t = pi (caustic).
What does the half-density formalism say about this?

## Key Insight
The divergence of sqrt(D) at caustics is a **projection artifact**, not an
intrinsic singularity. The semiclassical state lives on a Lagrangian
submanifold L in T*M, where it is a smooth half-density. The caustic
occurs when the projection pi: L -> M develops a fold -- the pushforward
of a smooth density on L becomes singular on M.

## The Maslov Index
At each caustic crossing, the Van Vleck determinant D changes sign.
The square root sqrt(D) is not single-valued along paths through caustics.
Resolution: lift from the symplectic group Sp(2n) to its double cover,
the **metaplectic group** Mp(2n). Half-densities on L transform under
Mp(2n), and the double-cover structure compensates the sign flip at
each caustic. The Maslov index mu counts the number of conjugate points
(with multiplicity) -- equivalently, the winding number in Mp(2n).

The corrected propagator:
  K_sc proportional to |D|^{1/2} exp(iS_cl/hbar - i*pi*mu/2)

Each caustic contributes a phase shift of -pi/2.

## Connection to Bates-Weinstein
Bates-Weinstein (1997, section 4.2) shows that a solution of the homogeneous
transport equation is geometrically a half-density on L invariant under
X_H. The Maslov correction to Bohr-Sommerfeld quantization arises from
the H^1(L_Grassmannian, Z) class of the metalinear bundle.

## Draft Remark 3.5c

> Remark 3.5c (Caustics and the Maslov index).
> At caustics (conjugate points where D -> infinity), the semiclassical
> approximation appears to break down: the amplitude |D|^{1/2}
> diverges and sqrt(D) changes sign. In the half-density framework the
> singularity is a projection artifact: the semiclassical state is
> a smooth half-density on the Lagrangian submanifold L in T*M, and
> the caustic occurs because the projection pi: L -> M develops a
> fold [BatesWeinstein1997]. The sign ambiguity of sqrt(D) is resolved by
> the metaplectic structure: half-densities transform under the
> double cover Mp(2n) of Sp(2n), and the Maslov index mu -- counting
> conjugate points along the classical path -- records the accumulated
> phase correction exp(-i*pi*mu/2). This makes the "amplitudes are
> half-densities" pattern of Section 3.3 precise: the Van Vleck
> prefactor is not a scalar but a section of a metalinear bundle,
> globally well-defined even through caustics.

~8 lines. Reference: [BatesWeinstein1997] already in delta-objects bib.

## Honest Verdict
- The physics is standard (Maslov 1965, Arnold 1967, Bates-Weinstein 1997).
- The remark adds genuine value: it resolves the tension flagged by
  Example 3.5b ("sqrt(D) -> infinity means breakdown") and shows it's a feature
  of the half-density formalism, not a bug.
- No new claims, just connecting existing dots.

## Cross-Reference: Philosophenweg Literature Survey (2026-02-20, Critic)

The Blattner half-form correction in geometric quantization (Blattner 1975, Woodhouse 1992)
provides independent mathematical justification for this notebook's central observation.
Key connection: the BKS (Blattner-Kostant-Sternberg) pairing between different polarizations
uses half-forms to define an integral kernel — structurally analogous to the propagator.
The metaplectic correction (half-form bundle delta_P) is exactly the metalinear structure
described above in the Maslov context. P4.2's t^{-d/2} extends the half-density interpretation
from the semiclassical limit (where it is the van Vleck determinant) to the exact quantum level
(where it is forced by composition alone). See sources/blattner-half-form-literature.md and
notebooks/philosophenweg-literature-survey.md §2 for the full analysis.

---

## BKS Pairing as Proto-Composition: Structural Parallel Verified (Mathematician, R29)

**Task:** Verify whether the BKS (Blattner-Kostant-Sternberg) pairing on Lagrangian intersections formalizes as path integral kernel composition via half-densities. Source: student-proposed (BB2 §1(b), Chitan arXiv:2509.17656).

### Setup: Two Operations Compared

**BKS pairing (geometric quantization).**
Given a symplectic manifold (M, ω) with Lagrangian submanifolds L₁, L₂:
- Half-densities ρ₁ ∈ Γ(|Λ^{top}T*L₁|^{1/2}), ρ₂ ∈ Γ(|Λ^{top}T*L₂|^{1/2}).
- Pairing: ρ̄₁ ⊗ ρ₂ is a density on L₁ ∩ L₂ (when transverse), yielding ⟨ρ₁, ρ₂⟩ = ∫_{L₁∩L₂} ρ̄₁ ⊗ ρ₂.
- In Chitan's framework (arXiv:2509.17656): L_{H₁}, L_{H₂} ⊂ S_g (moduli of flat connections), with stratified half-densities from the bi-invariant metric. Z(N,k) = ∫_{L_{H₁}∩L_{H₂}} e^{ikCS} τ ⊗ v^{-2}.

**Kernel composition (half-density form).**
Given half-density kernels K̃₁(x,z;s), K̃₂(z,y;t) on M:
- K̃ᵢ ∈ Γ(|Λ^{top}T*M|^{1/2}_x ⊗ |Λ^{top}T*M|^{1/2}_y).
- Composition: K̃(x,y;s+t) = ∫_M K̃₁(x,z;s) · K̃₂(z,y;t) dz.
- The half-density property: K̃(x,z) · K̃(z,y) pairs the |dz|^{1/2} factor from each kernel to produce a full |dz| density, enabling integration without an external measure.

### Structural Comparison

| Feature | BKS Pairing | Kernel Composition |
|---------|------------|-------------------|
| Objects paired | Half-densities on L₁, L₂ | Half-density kernels on M×M |
| Integration domain | L₁ ∩ L₂ | M (intermediate variable z) |
| Half-density mechanism | √K_P (metaplectic correction) | |g|^{1/4} conjugation (P4.2) |
| Result | Number (partition function) | Half-density kernel (propagator) |
| Maslov correction | Phase correction at caustics | Subleading terms in stationary phase |

### Verification: The Parallel Is Real

**Claim (BB2 §1(b)):** BKS pairing is the symplectic-geometric version of kernel composition.

**Verdict: CONFIRMED with precision.** The unifying framework is the **pair groupoid** M × M equipped with the symplectic structure π₁*ω − π₂*ω.

**The formal correspondence:**
1. A kernel K(x,y) on M is a function on the pair groupoid G = M × M. Kernel composition K₁ * K₂(x,y) = ∫ K₁(x,z)K₂(z,y)dz is the **groupoid convolution product**.
2. A Lagrangian submanifold L ⊂ (M,ω) defines a Lagrangian bisection of the pair groupoid via L₁ × L₂ ⊂ M × M. The BKS pairing ⟨ρ₁,ρ₂⟩ = ∫_{L₁∩L₂} ρ̄₁ ⊗ ρ₂ is the **geometric quantization of the groupoid convolution** restricted to Lagrangian bisections.
3. In both cases, the half-density is the **canonical coefficient system** for the groupoid convolution: the pair groupoid has no canonical measure (no Haar measure for a non-group groupoid), but it does have a canonical half-density system. This is why half-densities appear in BOTH geometric quantization (BKS) and path integrals (P4.2).

**The mathematical theorem (Weinstein 1987, Guillemin-Sternberg):** Quantization of a symplectic manifold = representation of the convolution algebra of the symplectic groupoid. The convolution algebra uses half-densities as coefficients (Connes 1994, §II.5).

### Where the Parallel Is Imprecise

1. **Scope:** BKS pairs sections over a single symplectic manifold M. Kernel composition acts on sections of a bundle over M × M. The correspondence requires embedding the BKS data into the pair groupoid framework.
2. **Regularity:** BKS is defined for transverse Lagrangian intersections (or with Maslov corrections at caustics). Kernel composition is defined for all L² kernels. The groupoid framework unifies these via distributional half-densities.
3. **Quantization level:** BKS is a semiclassical construction (WKB-exact in many cases). Kernel composition is exact quantum. The passage from semiclassical BKS to exact quantum composition involves the full deformation quantization tower (Connes tangent groupoid: ℏ=0 is BKS, ℏ>0 is full quantum).

### Connection to Existing Notebooks

- **tangent-groupoid-quantization-bridge.md:** The pair groupoid G = M × M with composition = kernel convolution is the central structure. BKS pairing is the ℏ → 0 limit of the groupoid convolution.
- **caustics-maslov-half-density.md (this notebook), §Cross-Reference:** "BKS pairing between different polarizations uses half-forms to define an integral kernel — structurally analogous to the propagator." CONFIRMED and sharpened: the analogy is the groupoid convolution algebra.
- **Chitan (arXiv:2509.17656):** The stratified BKS pairing extends to singular Lagrangian intersections. This corresponds to composition of distributional kernels (e.g., at caustics).

### Formalization Statement

**Proposition M7.1.** Let (M, ω) be a compact symplectic manifold, G = M × M the pair groupoid with symplectic structure π₁*ω − π₂*ω. Then:

(a) The BKS pairing of half-densities on transverse Lagrangian submanifolds L₁, L₂ is the restriction of the groupoid convolution to Lagrangian bisections.

(b) The path integral composition law K̃₁ * K̃₂ = K̃₁₂ (in half-density form) is the full groupoid convolution.

(c) The half-density coefficient system is canonical: it is the unique coefficient system making the groupoid convolution well-defined without a choice of measure (Connes II.5).

**Proof sketch.** (a) follows from the identification of Lagrangian bisections with generating functions of canonical transformations (Weinstein 1977), and the BKS pairing as the integral of their product. (b) is the standard groupoid convolution (Connes 1994). (c) follows from the transformation law of half-densities under groupoid automorphisms. □

**Status:** (a) is well-known in the geometric quantization literature (Guillemin-Sternberg, Woodhouse). (b) is the Lackman/Connes framework already cited in our tangent-groupoid notebook. (c) is the structural reason half-densities appear in P4.2 — it is NOT coincidence but a consequence of groupoid theory.

**Significance for the project:** The BKS-composition parallel provides an independent mathematical argument that **half-densities are forced by any composition-compatible quantization scheme**, not just by the specific functional equation in P4.2. This strengthens the case that the half-density measure choice is universal, not an artifact of the scalar-field setting.

**STATUS: TWO-AGENT (mathematician R29 + critic R29). Critic review (BB2 §9): Prop M7.1(a,b) APPROVED. (c) APPROVED with sev-3 (say "*-algebra" not just "convolution"). BB2 §7 D=4 claim NOT APPROVED (conflates group-as-manifold with group-as-gauge; not a D=4 coincidence).**

