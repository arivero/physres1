# Referee Report: Renormalization Group as a Fundamental Compatibility Principle

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/rg-fundamental/main.md

---

## Summary

The paper argues that the renormalization group (RG) is not a calculational afterthought but a structural *compatibility condition* forced whenever a continuum theory is defined as a regulator-independent limit of composed local refinements. It develops this thesis through four complementary threads: (1) an abstract semigroup composition principle (Proposition RG-P1.1); (2) a calculus micro-model in which the derivative is obtained by "counterterm subtraction" of a divergent difference quotient; (3) the 2D delta-potential contact interaction as the cleanest quantum-mechanical instance of RG necessity, including a Wilsonian shell-integration derivation and a boundary-condition (self-adjoint extension) interpretation; and (4) rooted-tree / Hopf-algebra bookkeeping linking Runge-Kutta composition to the Connes-Kreimer structure of perturbative renormalization. The paper locates itself within a larger "Refinement Compatibility Principle" (RCP) framework described in companion satellites.

---

## Strengths

- The central thesis — that RG is definitional, not phenomenological — is stated clearly and the logical chain (regulate → subtract → impose scale invariance → obtain beta function) is made explicit at each level.
- The calculus micro-model (Section 3) is genuinely illuminating as pedagogical scaffolding; it makes the counterterm-subtraction grammar visible without any field theory.
- The 2D delta-potential model (Section 5) is an excellent choice: exactly solvable, non-trivial RG running, dimensional transmutation, and explicit semigroup composition (RG-D1.2a). The Wilsonian shell-integration derivation (Section 5.2, RG-D1.2a) is a concrete and checkable instance of the abstract semigroup statement in Section 2.
- The cross-dimensional comparison (1D/2D/3D contact interactions, Section 5.8) provides useful calibration for the compatibility thesis and is handled with appropriate care.
- The scheme-dependence section (Section 5.4) is honest and precise: it shows exactly what changes (transmutation scale) and what does not (beta function) under finite-subtraction shifts.
- The Hopf coproduct computations for trees of order 1, 2, 3 (RG-D1.8) are given explicitly and are correct.
- The Euler step-doubling calculation (RG-D1.0) is fully worked out with explicit Taylor remainders and correctly identified in B-series / rooted-tree language.
- The semigroup-vs-group distinction (Section 6) is conceptually important and the Gaussian / Schur-complement toy model (RG-D1.7) is an excellent, fully explicit witness.
- References cover the essential primary literature (Connes-Kreimer, Brouder, Boya-Rivero, Manuel-Tarrach, Jackiw).

---

## Weaknesses

### MAJOR

- **M1. The composition test in Section 4.2 contains a gap that could mislead readers about what it establishes.** In RG-D1.0b the author computes
  $$M_{h/2}^{\mathrm{expl}} \circ M_{h/2}^{\mathrm{expl}}(y) = y + h f(y) + \tfrac{h^2}{2} f'(y)[f(y)] + O(h^3)$$
  and notes this equals $M_h^{\mathrm{expl}}(y)$ to $O(h^2)$, calling this "the leading correction is the same in both cases, confirming the order-2 structure." But the claim in the surrounding text (and the title of §4.2) is "two half-steps equal one step at leading order," which requires actually checking that the *discrepancy* $M_{h/2}^{\mathrm{expl}} \circ M_{h/2}^{\mathrm{expl}}(y) - M_h^{\mathrm{expl}}(y) = O(h^3)$ is shown to vanish at $O(h^2)$. The paper states but does not prove this; the intermediate computation of $M_{h/2}^{\mathrm{expl}} \circ M_{h/2}^{\mathrm{expl}}(y)$ at full $O(h^3)$ detail is omitted. The reader must trust the claim. A four-line calculation would complete it. This gap is minor in practice (the result is standard) but matters because this section is presented as an explicit "composition test" witnessing the semigroup property — the very core of the paper's thesis.

- **M2. Remark RG-R1.1 (Borel singularity / self-completion) overreaches its support in this paper.** The remark states that "the identification of the UV coupling divergence (Landau pole) with the leading Borel singularity in renormalized gauge theories has been established in [Maiezza-Vasquez2023]" and then extrapolates to the 2D delta model and "multi-instanton models such as CP(N-1)." The 2D delta model has an exactly solvable T-matrix; its perturbative series is geometric and its Borel properties are elementary. But the paper's claim that "the Borel residue at the multi-instanton position $n s_*$ evaluates to $\kappa_\ast^{2n}$" and the assertion that this "is $\mu$-independent" and "conjectured to extend to genuine multi-instanton models" is a significant claim that is neither derived in this paper nor traced to a specific result in the existing literature beyond [Maiezza-Vasquez2023], which concerns gauge theories, not quantum-mechanical delta models. The "FOUR-AGENT result: ... BB6; sev-3" tag at the end signals this is an internal working conjecture, not an established result. A referee report cannot certify internal blackboard results as publishable claims. Either (a) supply a self-contained derivation of the Borel residue claim for the 2D delta model, or (b) demote the statement to a heuristic clearly flagged as speculative, or (c) remove the multi-instanton extension entirely. The "sev-3" internal severity tag is also not appropriate in a manuscript submitted for publication.

- **M3. The 3D loop integral formula (Section 5.8.1) has a dimensional inconsistency.** The paper writes
  $$I_{3D}(E;\Lambda) = -\frac{m}{\pi^2\hbar^2}\Lambda - i\,\frac{m}{2\pi\hbar^2}k + O(k^2/\Lambda).$$
  In the convention used throughout (Equation in Section 5.9), the loop integral is
  $$I_d(E;\Lambda) = \int_{|q|<\Lambda}\frac{d^dq}{(2\pi)^d}\,\frac{1}{E - \hbar^2q^2/(2m) + i0}.$$
  A direct power-counting check: for $d=3$, $[I_{3D}] = [q^3 / (q^2)] \cdot [1/(\hbar^2/m)] = [q \cdot m/\hbar^2]$, so the linear cutoff term should carry units of $m\Lambda/\hbar^2$ and the imaginary (on-shell) term units of $mk/\hbar^2$. The on-shell imaginary part for $d=3$ reads $-i(m/2\pi\hbar^2)k$ in the paper, but the standard $d^3q/(2\pi)^3$ evaluation gives $-i(m/4\pi\hbar^2)k$ (from the solid-angle integral $4\pi$ and the on-shell residue). The prefactor on the imaginary part is off by a factor of 2. The real (linear) term should be $-m\Lambda/(\pi^2\hbar^2)$ from the $\int_0^\Lambda q^2\,dq/(E - \hbar^2q^2/(2m))$ principal-value integral; at $E=0$ this gives $-m\Lambda/(\pi^2\hbar^2)$, which matches the paper. The imaginary term is the issue. This error does not propagate elsewhere in the text (the 3D case is not used further), but it must be corrected as the convention map in Section 5.9 is supposed to be the definitive reference.

### MINOR

- **m1. Notation clash between $\kappa$ in two contexts.** In Section 5.3, $\kappa$ is defined via $E = -\hbar^2\kappa^2/(2m)$ (bound-state wave number). In Section 5.7 and the Example RG-E1.1 (1D delta), $\kappa := mg/\hbar^2$ (scattering strength). Both appear in proximity and use the same symbol. One should be renamed (e.g., use $\kappa_b$ for the bound-state wave number in the 2D context).

- **m2. Internal cross-reference tags present in the submitted manuscript.** Remark RG-R1.1 ends with "(FOUR-AGENT result: computationalist + mathematician + physicist + critic, BB6; sev-3.)" This is internal workflow metadata and must not appear in a publication. Remove entirely.

- **m3. Claim about $\tau_1 \otimes \tau_1 = 2\tau_2$ (Remark RG-D1.0c) is under-explained.** The statement "composing two 'tree $\tau_1$' steps produces twice the order-2 tree coefficient" is presented as an algebraic identity, but the notation $\tau_1 \otimes \tau_1 = 2\tau_2$ is not standard B-series notation, and the factor of 2 appears without the computation that generates it. A reader unfamiliar with Butcher series will be lost. A one-sentence explanation of the composition rule for B-series coefficients would suffice.

- **m4. The Remark RG-H1.12 (point interaction as rank-one half-density kernel) is disconnected from the surrounding text.** It appears at the end of the convention map (Section 5.9) without motivation or consequence. If it is meant to preview the companion paper on half-densities, say so; otherwise it reads as an orphaned formal remark.

- **m5. Section 7 Remarks RG-H1.15 and RG-H1.16 (RCP three-channel framework) are presented in substantial detail, including a falsifiability criterion with formal notation.** The bulk of this material belongs in [RCPFoundations], not here. As written, the conclusion section expands into a second paper's thesis and dilutes the focus of this paper's argument. The paper should reduce this to 2-3 sentences pointing to [RCPFoundations] and remove the full RCP axiom statement and the "three crown witnesses" table.

- **m6. Remark RG-R7.1 (cosmic Galois group) is appropriate in scope but the reference [ConnesMarcolli2004] uses an arXiv preprint identifier only.** The paper has a published version (Connes and Marcolli, "Quantum Fields and Motives," J. Geom. Phys. 56 (2006) 55-85 or the IHES proceedings volume); cite the published form or at minimum add the DOI.

- **m7. The paper claims [RCPFoundations] and [RootedTreeBookkeeping] as companion satellite papers but provides no arXiv numbers or publication details, only "(2026)."** Either insert working internal cross-references or note explicitly that these papers are companion satellites in the same series. As formatted, they look like cited but non-existent references to an external reader.

- **m8. The abstract mentions "deformation quantization" and "renormalization" as part of the chain from Newton to path integral, but the paper's body does not develop the deformation-quantization connection at all.** The abstract over-promises. Either add a paragraph on this connection or revise the abstract to match what the paper actually delivers.

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** Two of the three major issues are concrete: M2 contains an unpublished internal conjecture (with internal metadata tags) incorrectly presented as an established result; M3 contains a factor-of-2 error in the 3D imaginary part of the loop integral. M1 is a gap in an explicitly presented "composition test" that is central to the paper's thesis. All three must be resolved before acceptance. The minor issues are mostly editorial and can be addressed without re-review, but M2 in particular requires either a new derivation or a significant tonal and structural change to the remark.

---

## Detailed Comments

### Section 2 (RG-P1.1)

The proposition is stated correctly and the derivation (or lack thereof — it is presented as a formal statement) is appropriate for this note's level. However, the differentiability hypothesis for the existence of an "infinitesimal generator" is mentioned but not given any content. A forward pointer to where differentiability is verified in the worked examples (e.g., the delta model beta function derived explicitly in RG-D1.2) would help the reader trust that this is not vacuous.

### Section 3 (Calculus micro-model)

The presentation is clear and the heuristic is vivid. One small issue: Heuristic RG-H1.1a introduces the "scheme ambiguity" $z_0$ and then fixes $z_0 = 0$ by the condition $D(1) = 0$. But the condition $D(1) = 0$ is a property of the derivative of the *constant function* 1, not just a "normalization condition" — it follows from linearity of $D$ applied to $f(x) = 1$ (which has $f'(x) = 0$). The presentation correctly gives the result but gives the wrong motivation: "$D(1) = 0$" should be stated as "the renormalization condition that the derivative of a constant vanishes," which is then a physical input fixing the scheme, not just one possible choice. As written, $z_0 = 0$ looks unjustified.

### Section 4.3 (Hopf Coproduct, RG-D1.8)

The coproduct formula for $[\bullet, \bullet]$ (order-3 branch tree) writes:
$$\Delta([\bullet,\bullet]) = [\bullet,\bullet] \otimes 1 + 1 \otimes [\bullet,\bullet] + \bullet \otimes [\bullet] + \bullet \otimes [\bullet] + \bullet^2 \otimes \bullet$$

The notation $\bullet^2$ for a forest of two disjoint $\bullet$ trees is non-standard. In the standard Connes-Kreimer convention, this would be written $\bullet \cdot \bullet$ or $1_1 \cdot 1_1$ using forest multiplication. Using $\bullet^2$ could be confused with a tree of order 2. This should be clarified or a notation key added.

### Section 5.1 — Convention for $I(E)$

The paper writes $I(E) = \langle 0 | (E - H_0 + i0)^{-1} | 0 \rangle$, which is the free resolvent at the origin. This is a physically clear notation but the bra-ket here refers to position eigenstates, not normalizable states — the expression is actually an integral kernel (a distribution). A brief comment that this is a regularized kernel evaluated at $x = y = 0$ would prevent confusion.

### Section 5.2 (RG-D1.2, beta function sign)

The sign of the beta function $\beta(g_R) = (m/\pi\hbar^2) g_R^2 > 0$ is correctly positive (the 2D delta coupling is marginally relevant in the UV, Landau pole in the UV). The paper is consistent with itself on this sign. Good.

### Section 5.2 (RG-D1.2a, Wilsonian derivation)

This is one of the strongest additions. The explicit identity $\ln(\Lambda/\Lambda_1) + \ln(\Lambda_1/\Lambda_2) = \ln(\Lambda/\Lambda_2)$ making the semigroup property visible is exactly the right level of explicitness for this paper. The non-invertibility statement at the end of RG-D1.2a is also well-placed and well-stated.

### Section 5.8.1 (3D loop integral — MAJOR issue M3)

As noted above, the imaginary part of $I_{3D}$ should be $-i(m/4\pi\hbar^2)k$ rather than $-i(m/2\pi\hbar^2)k$. The calculation: for $d=3$ and $E = \hbar^2k^2/(2m)$, the on-shell imaginary part comes from the residue at $q = k$, giving $(1/2\pi)^2 \cdot (-i\pi) \cdot (m/\hbar^2) \cdot k = -i(mk)/(4\pi\hbar^2)$. Please recheck against the convention in Section 5.9.

### Section 5.9 (Convention map)

The convention map is a valuable service to readers. One gap: the paper lists $I_2$ and $I_3$ with cutoff $\Lambda$ but does not state the integration measure orientation convention (Euclidean vs. Minkowski, Wick rotation). Since this is a Schrodinger-equation context (not a Lorentzian QFT), the $+i0$ prescription is the retarded/advanced choice, which is correctly used. A one-sentence statement to that effect (e.g., "all integrals are in Euclidean-like convention with the $+i0$ causal prescription for the free propagator") would prevent confusion for QFT readers accustomed to $i\epsilon$ in a different sign convention.

### Remark RG-R1.1 (Borel / self-completion — MAJOR issue M2)

The claim "The Borel residue at the multi-instanton position $ns_*$ evaluates to $\kappa_\ast^{2n}$, which is $\mu$-independent; this rigidity of residues is analytically exact in the 2D delta model (single-instanton sector) and conjectured to extend to genuine multi-instanton models such as CP(N-1)" introduces a conjecture without prior literature support. The geometric series $T = \sum_n g_B^{n+1} I^n$ does have a Borel transform, but the multi-instanton interpretation of the poles requires careful analysis not given here. The internal metadata tag "(FOUR-AGENT result: ... sev-3)" must be removed; it reveals draft-process provenance, not a published result. This entire remark requires either a derivation or a substantial softening.

### Section 7, Remarks RG-H1.15 and RG-H1.16

The "Refinement Compatibility Principle" material here (including the falsifiability criterion with formal notation $\mathcal{O}_{h,\theta} = \mathcal{O}_{h',\tau(\theta)} \circ \mathcal{T}$) is too developed for a conclusion section and duplicates the content of [RCPFoundations]. Reduce to a 2-3 sentence pointer. The "three crown witnesses" table is better placed in [RCPFoundations] where it has contextual support. As it stands, the conclusion section is longer than the core Sections 2-4, which distorts the paper's structure.

### References

- [ConnesMarcolli2004]: Add published citation details.
- [RootedTreeBookkeeping] and [RCPFoundations]: Add a note that these are companion satellites in the same series; without arXiv numbers they read as missing references.
- [Maiezza-Vasquez2023]: arXiv:2311.10393 is correctly cited; add published journal details if accepted.
- The self-citation [BoyaRivero1994Contact] is appropriate and correctly cited. Good practice to include it.
