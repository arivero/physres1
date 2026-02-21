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

---

## 8. Why Modular Forms? Mathematician's Assessment (Single-Agent, 2026-02-21)

**Source:** anomalies.md (Modular forms as forced structure in Feynman integrals — OPEN entry).
**Status:** Sev-3, single-agent. Addresses the mechanism question; not addressed by critic/computationalist assessment above.

### 8.1 The Question

Brown-Schnetz (arXiv:1304.5342): Feynman amplitudes in massless ϕ⁴ theory match Fourier coefficients of modular forms (weights ≤ 8, levels ≤ 17). Why modular forms specifically, rather than some other special functions?

### 8.2 The Mechanism: Genus-1 Integration Cycles

**Key geometric fact:** The modular group SL(2,ℤ) / {±1} = PSL(2,ℤ) is the mapping class group of the torus (genus-1 surface). Modular forms are sections of line bundles on the moduli space M_{1,1} = H / PSL(2,ℤ).

**Why Feynman integrals land there:**

- At loop order L, the integration domain is a simplex Δ^{4L-1} in parametric space (Schwinger/Feynman parameters).
- The algebraic variety defined by the Symanzik polynomials (U, F) has genus ≥ 1 starting at L=2 (sunrise diagram = elliptic curve).
- The period integral ∫_{Δ} ω / (U^{d/2} F^{d/2 - L}) integrates an algebraic form over this variety.
- When the variety is an ELLIPTIC CURVE (genus 1): periods are elliptic integrals; the monodromy group of the period matrix IS a subgroup of SL(2,ℤ); hence the periods are modular forms.

**Conclusion on mechanism:** Modular forms appear because (a) the Symanzik variety has genus 1 for certain diagrams (elliptic/banana-type), and (b) the period integral on a genus-1 curve is inherently modular. This is algebraic geometry, not composition per se.

### 8.3 Does Composition Force Modular Structure?

**Direct answer: NO, for the same reason as MZVs.**

The chain is:

(C) → RG exists [Level A]
     ↓ (Connes-Marcolli, requires dim-reg + Lagrangian)
RG ⊂ G_cosmic [Level B]
     ↓ (Brown, requires specific diagram topology)
A(G) ∈ periods of Symanzik variety [Level C]
     ↓ (algebraic geometry, requires genus-1 variety)
A(G) ∈ modular forms if genus(Symanzik) = 1

Each arrow requires substantial additional structure beyond (C). Composition forces Level A only.

**What determines genus(Symanzik)?** The loop number L and the specific graph topology:
- L=1: genus 0 (rational → MPLs/MZVs)
- L=2, specific diagrams (sunrise): genus 1 (→ elliptic polylogarithms → modular forms)
- L≥3, specific diagrams (banana): K3 surfaces (genus 2 in appropriate sense)

The genus is a TOPOLOGICAL property of the graph, not forced by composition.

### 8.4 What RCP Does Contribute (Structural Role)

**Partition channel (A1):** The Symanzik coproduct Δ(G) = Σ_{γ} A(G/γ) ⊗ A(γ) IS a partition-channel operation (subdivide graph = subdivide amplitude). This is Level C of the arithmetic program. So RCP's partition channel is REALISED by the coaction — but realised, not forced. The coaction exists because of the Hopf algebra structure; that Hopf algebra is an independent mathematical object.

**Scale channel (A4):** The cosmic Galois group G acts on amplitudes as the "arithmetic RG." The scale channel A4 is realized by the G_m factor (grading by loop order). Again: realized, not forced from A4 alone.

**Representation channel (A3):** Different regularization schemes (DR vs cutoff vs Pauli-Villars) give different representatives of the same motivic period. Scheme independence = representation-channel equivalence. This IS A3 in action at the arithmetic level — the most direct RCP-arithmetic connection.

### 8.5 Summary for Anomaly Entry

| Question | Answer |
|----------|--------|
| Does (C) force modular forms? | NO — requires L≥2 + genus-1 Symanzik variety (algebraic geometry, independent) |
| Why modular forms and not other functions? | Because elliptic curves (genus 1) have PSL(2,ℤ) monodromy → their periods are modular |
| Is there an RCP connection? | Yes at Level C: A3 ↔ scheme independence; A1 ↔ coaction/Hopf subdivision. But these are realizations, not derivations. |
| Is composition + integrability enough? | (C) + algebraic integrability (isomonodromy, see BB2) → genus-1 → modular, but this is a chain with independent inputs. |
| Level of claim for paper? | Sev-3: "RCP channels are realized in the arithmetic program" (factual). NOT: "composition forces modular structure" (wrong). |

### 8.6 Connection to BB2 (Painlevé)

The Painlevé isomonodromy equations (BB2) connect directly: the τ-function of Painlevé VI is a theta function of an elliptic curve, hence a modular form of weight 0. So the chain:

(C) + (I_int) [isomonodromy] → Painlevé τ-function → theta function → modular form

This is the closest thing to "composition (partially) forces modular forms" — but it requires (I_int) as an independent integrability axiom, not derivable from (C). Sev-3 connection, single-agent.

**Refs for this section:**
- Brown-Schnetz arXiv:1304.5342 (modular forms in ϕ⁴)
- Bloch-Kerr-Vanhove arXiv:1412.0459 (elliptic curves in Feynman integrals)
- Broedel et al. arXiv:1902.09971 (elliptic polylogarithms)
- anomalies.md modular forms entry (OPEN → PARTIALLY ASSESSED, see update below)
- blackboards/2.md (Painlevé isomonodromy, single-agent mathematician)
