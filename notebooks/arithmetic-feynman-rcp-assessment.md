# Arithmetic of Feynman Integrals: RCP Connection Assessment

**Date:** 2026-02-20
**Agents:** Critic (analysis, proposals/critic-arithmetic-feynman.md), Computationalist (write-up)
**Sources:** sources/brown2017-feynman-amplitudes-cosmic-galois.md, sources/connesmarcolli2004-renorm-galois.md

---

## 1. The Arithmetic Program (Brown/Schnetz/Panzer)

**Setting:** Feynman integrals in perturbative QFT are *periods* in the sense of Kontsevich-Zagier:
integrals of algebraic differential forms over algebraic domains.

**Key structures:**
- **Feynman periods:** Graph-theoretic invariants (Schnetz census); kinematic-independent at massless limit
- **Multiple zeta values (MZVs):** ζ(n₁,...,nₖ) = Σ 1/(k₁^{n₁}···kₘ^{nₘ}) appear at low loop orders
- **Motivic periods:** Lifts of Feynman periods to motivic cohomology; richer algebraic structure
- **Cosmic Galois group G:** Pro-algebraic group (Connes-Marcolli 2004) acting on the space of amplitudes
- **Coaction Δ:** H → H_dR ⊗ H_B (de Rham × Betti decomposition of period integrals)

---

## 2. The Three-Level Hierarchy

### Level A: Composition → RG Existence (our result)

**P4.2 / D6.4b:** The composition axiom (C) — K_{t₁+t₂}(x,y) = ∫K_{t₁}(x,z)K_{t₂}(z,y)d^dz —
forces the existence of a one-parameter flow (the renormalization group) whenever the naive limit
diverges. Composition forces RG to EXIST (as a semigroup on coupling space), but does not constrain
which theory (which β-function) the flow describes.

**What (C) achieves:** Structural existence. The RG is forced to be a semigroup; its generator (β-function) is not forced.

### Level B: RG as Subgroup of Cosmic Galois Group (Connes-Marcolli 2004)

**Theorem (Connes-Marcolli, arXiv:hep-th/0411114):** In the minimal subtraction (MS-bar) scheme with
dimensional regularization, the renormalization group embeds as a one-parameter subgroup of the cosmic
Galois group:

    RG ↪ G  [as 1-parameter subgroup via Birkhoff decomposition]

Precisely: the loop γ_ε: ℂ → G_CK (group-valued connection on the deformation space) Birkhoff-decomposes
as γ_ε = γ_-^{-1} · γ_+ where γ_- encodes counterterms and γ_+ encodes renormalized values. The
RG generator μ∂/∂μ = residue of the flat equisingular connection associated to γ_-.

G is constructed as a pro-unipotent semi-direct product: G = G_m ⋉ U where G_m is the grading
(= RG) and U contains all "higher structure" (amplitude arithmetic).

### Level C: G Constrains Amplitude Arithmetic (Brown 2015/2017)

**Coaction principle (Brown, arXiv:1512.06409):** For Feynman amplitudes in massless ϕ⁴ theory:

    Δ(A(G)) = Σ_{γ⊂G superficially divergent} A(G/γ) ⊗ A(γ)

This is a motivic coaction: both factors lie in the motivic cohomology ring, and A(G) is a period.
The cosmic Galois group G acts on all periods via the coaction, constraining which number-theoretic
classes (MZVs, elliptic polylogarithms, etc.) the amplitudes can populate.

---

## 3. What (C) Does and Does NOT Force

| Level | What composition (C) forces | What it does NOT force |
|-------|----------------------------|----------------------|
| A | RG semigroup EXISTS | Form of β-function; specific theory |
| B | (Not forced by (C) directly) | Birkhoff structure; equisingularity; MS-bar scheme |
| C | (Not forced by (C) at all) | Number-theoretic class of loop integrals; coaction; MZVs |

The three levels are logically independent:
- A → B: once RG exists, Connes-Marcolli shows it embeds in G (requires Lagrangian + dim-reg, not just (C))
- B → C: the embedding G ⊂ G constrains which periods can appear (arithmetic consequence)
- (C) → A only: (C) forces structural existence at Level A; arithmetic at Levels B-C requires additional axioms

---

## 4. The Direct Connection: Connes-Kreimer Hopf Algebra

**Identity (not analogy):** Our rooted-tree-bookkeeping satellite (papers/rooted-tree-bookkeeping/main.md §6.2)
computes the Connes-Kreimer coproduct Δ on rooted trees:

    Δ(τ) = Σ_{admissible cuts c} P_c(τ) ⊗ R_c(τ)

This IS the CK Hopf algebra H_CK — not an analogy, the same object. The CK algebra is the algebraic
backbone of the Birkhoff decomposition in Connes-Marcolli (Level B) and appears as a substructure
in Brown's motivic framework (Level C).

**Chain:** rooted-tree-bookkeeping → H_CK ⊂ G (via Connes-Marcolli) → Brown coaction.

The first arrow is explicit in our satellite paper. The second arrow is Connes-Marcolli Theorem 1.
The third arrow is the main content of Brown 2015/2017.

---

## 5. What NOT to Claim

Based on Critic assessment (proposals/critic-arithmetic-feynman.md):

1. **Do NOT claim:** RCP forces the number-theoretic type of loop integrals.
2. **Do NOT claim:** Composition (C) implies the coaction principle.
3. **Do NOT claim:** P4.2 forces MZVs to appear.
4. **Do NOT claim:** "Refinement compatibility" is the same as "regularization."
5. **Do NOT conflate:** Our temporal composition semigroup with Brown's algebraic coaction on periods.
   Both use the word "composition" but in different senses.

---

## 6. Recommended Paper-Edit (Pending Orchestrator Dispatch)

**Target:** papers/rg-fundamental/main.md, Section 7 Conclusion.

**Proposed Remark RG-R7.1 (Critic draft, proposals/critic-arithmetic-feynman.md):**

> *Remark RG-R7.1 (Cosmic Galois group).* The renormalization group embeds as a 1-parameter
> subgroup of the cosmic Galois group [ConnesMarcolli2004], a motivic Galois group acting on the
> space of Feynman amplitudes [Brown2017]. Composition forces the RG to exist (D6.4b); the motivic
> framework constrains which number-theoretic classes (multiple zeta values, elliptic polylogarithms)
> the amplitudes can populate. The two levels — structural (composition) and arithmetic (motivic) —
> are logically independent.

**Status:** Sev-3 (enrichment). Requires orchestrator dispatch for paper-edit.

---

## 7. References

- Brown, F. "Feynman Amplitudes, Coaction Principle, and Cosmic Galois Group." CNTP 11 (2017).
  arXiv:1512.06409. → sources/brown2017-feynman-amplitudes-cosmic-galois.md
- Connes, A. and Marcolli, M. "From Physics to Number Theory via Noncommutative Geometry, Part II."
  arXiv:hep-th/0411114 (2004). → sources/connesmarcolli2004-renorm-galois.md
- Connes, A. and Marcolli, M. "Renormalization and motivic Galois theory." arXiv:math/0409306 (2004).
- Schnetz, O. "Quantum periods: a census of φ⁴-transcendentals." CNTP 4 (2010). arXiv:0801.2856.
- Brown, F. and Schnetz, O. "A K3 in φ⁴." arXiv:1006.4064 (2010).
- papers/rooted-tree-bookkeeping/main.md §6.2: CK coproduct (our computation, identity not analogy)
- proposals/critic-arithmetic-feynman.md: full Critic assessment
