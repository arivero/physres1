# Referee Report (Round 2): Renormalization Group as a Fundamental Compatibility Principle

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/rg-fundamental/main.md
**Round 1 report:** papers/rg-fundamental/referee-1.md

---

## Summary of Revision

Round 1 assigned MAJOR REVISION based on three MAJOR weaknesses and six MINOR weaknesses. The authors have submitted a substantially revised version. I have checked each issue against the revised text. The assessment below proceeds issue by issue.

---

## Round 1 Issues: Status

### MAJOR Issues

**M1. RG-P1.1 unproven (semigroup-to-generator step).**
RESOLVED. Section 2 now contains an explicit Taylor-expansion argument: the paper writes W_{Λ→Λ-δΛ} as the identity plus an O(δΛ) correction, applies the semigroup law, and derives the beta function as the O(δΛ) coefficient — exactly the argument I requested. The Hille–Yosida theorem is cited for the infinite-dimensional operator case. The cross-reference to RG-D1.2a (Wilsonian shell integration) is now explicit in the statement of RG-P1.1 itself, not just in a later section. The logical chain from semigroup axiom to infinitesimal generator is now traceable by an independent reader.

**M2. Derivative-counterterm analogy mathematically misleading.**
RESOLVED. Heuristic RG-H1.1 now contains the following sentence verbatim: "The micro-model divergence is weaker than genuine UV divergences in QFT: here, each quantity is finite at fixed ε > 0 and the divergence is merely a limit-sequence divergence as ε→0, whereas loop integrals can diverge at fixed cutoff (an integral rather than limit-of-sequence divergence). The value of the analogy is structural rather than quantitative: it isolates the regulate-subtract-normalize-limit grammar shared by both contexts." This is precisely the clarification I requested. The analogy is now framed honestly as structural rather than quantitative, without abandoning the pedagogical content that made Section 3 a strength.

**M3. Rooted-tree section defers entirely to companion paper.**
RESOLVED. Section 4 has been comprehensively rebuilt. The revision adds:
- RG-D1.0: Explicit Euler step-doubling computation with elementary differentials labeled in rooted-tree language (chain tree and branch tree at order 2 and 3).
- Section 4.1 modifier RG-D1.0a: The "modified equation / running with scale h" remark showing effective data runs with the refinement scale, a direct pre-QFT analogue of running couplings.
- Section 4.2 RG-D1.0b: Explicit composition test for midpoint RK2 showing the O(h²) match, with RG-D1.0c providing the B-series composition identity for τ₂ from the coproduct formula — demonstrated algebraically, not deferred.
- Section 4.3 RG-D1.8: Explicit Hopf coproduct formulas for trees of order 1, 2, 3 (including the branch tree with the now-clarified "•·•" forest notation).
- Section 4.4: Tree proliferation table through order 6.
- Table RG-H1.2a: A concrete minimal Butcher/RG dictionary at order 2, with the explicit statement that "the coproduct formula is literally identical in both settings" and a precise description of what differs (the characters). This is the minimal working instance of the dictionary that Round 1 found missing.

Section 4 now has independent content. The companion paper [RootedTreeBookkeeping] is appropriately flagged as providing a full development, not as carrying the entire substance.

---

### MINOR Issues

**m1. Internal workflow tag in Remark RG-R1.1.**
RESOLVED. The "FOUR-AGENT result: computationalist + mathematician + physicist + critic, BB6; sev-3" annotation has been removed from the published text.

**m2. Attribution of U(2) fixed-point structure in Section 5.8.2.**
RESOLVED. The revision now contains an explicit attribution sentence: "As shown in [BoyaRivero1994Contact], this yields a nontrivial fixed-point set (including a circle of fixed points in the time-reversal-invariant sector)..." and adds the independent anchoring note: "The underlying 'U(2) family of point interactions' classification is standard and can be anchored independently via the self-adjoint extension and connection-condition literature [BonneauFarautValent2001SAE] [TsutsuiFulopCheon2002Connection]." The prior art is clearly attributed and the claim is independently verifiable.

**m3. 3D imaginary part reconciliation.**
PARTIALLY RESOLVED. Section 5.9 now provides explicit convention-anchored formulas for both I₂ and I₃. The imaginary parts in the body text (Section 5.8.1: −i(m/4πℏ²)k for 3D) and in the convention map (Section 5.9: same formula) are now consistent. However, the brief optical-theorem cross-check I suggested — explaining why the factors of π differ between the d=2 and d=3 imaginary parts as a consequence of angular integration — was not added. This is a minor residual: the formulas are now self-consistent and the reader can verify the factors, but the explanatory sentence would still improve clarity. I do not consider this a blocking issue for acceptance.

**m4. κ_* invariance: explicit computation.**
RESOLVED. Proposition RG-P1.2 now contains the one-line explicit verification: "differentiating ln κ_*² = 2 ln μ + (2πℏ²/m)(1/g_R(μ)) with respect to ln μ gives d ln κ_*²/d ln μ = 2 + (2πℏ²/m)·(−m/πℏ²) = 0." The proposition is now self-contained.

**m5. Speculative gravitational extension remark in Section 7.**
RESOLVED. The gravitational extension remark has been removed from the conclusion. The outlook now focuses on carrying the Wilsonian analysis to QFT examples with nontrivial fixed-point structure and sharpening the rooted-tree dictionary — both appropriate extensions of the paper's actual content.

**m6. [PathIntegralNormalization] missing from reference list.**
RESOLVED. Reference 13 is now "[PathIntegralNormalization] A. Rivero, 'Path Integral Normalization: The d/2 Exponent as a Composition Theorem,' companion satellite paper (2026)." It is flagged as a companion satellite paper in Remark RG-H1.9 consistently with how [RootedTreeBookkeeping] and [RCPFoundations] are flagged.

---

### Detailed Comments from Round 1: Status

**Section 2 ("k held fixed"):** Addressed. Section 5.2 now explicitly states "impose dT/d ln μ = 0 at fixed physical momentum k."

**Section 4.3 notation (•· • vs •²):** Addressed. The revision uses "•·•" and adds the parenthetical "where •·• denotes the forest product of two single-vertex trees, not a tree of order 2."

**Section 7 (RCP channels half-developed):** Addressed. The revised conclusion refers to [RCPFoundations] for the full multi-channel axiom system and worked examples, without attempting to develop the other channels in this paper. The current Remarks RG-H1.15 and RG-H1.18 are appropriately scoped to introduce the two-layer structure and delegate details to the companion.

**Section 5.2 (Borel singularity speculation):** Addressed. The revised Remark RG-R1.1 now includes: "Whether an analogous rigidity extends beyond exactly solvable models (e.g., to CP(N−1) sigma models with genuine multi-instanton sectors) remains an open question." The speculative extension is now explicitly flagged as open rather than asserted.

---

## Strengths (Retained and Enhanced)

All strengths noted in Round 1 are retained. Additionally:
- Section 4 is now a genuine contribution to the paper rather than a holding section.
- The Butcher/RG dictionary table (RG-H1.2a) is a useful addition that concisely conveys the isomorphism structure.
- Section 4.1/4.2 material on Euler step-doubling and the midpoint RK2 composition test grounds the abstract tree language in explicit calculation before invoking the Hopf algebra formalism.

---

## Verdict

**Recommendation:** ACCEPT

**Justification:** All three MAJOR issues from Round 1 have been fully resolved. The semigroup-to-generator step is now explicitly derived for the general case (Section 2) and demonstrated in the physical model (RG-D1.2a). The calculus analogy is now honestly framed with the disanalogy acknowledged. Section 4 now contains an independent worked dictionary entry at order 2, grounding the Butcher/RG unification claim with minimal but sufficient content. All six MINOR issues are resolved or have trivial residuals that do not affect the scientific content (m3 residual). The paper's thesis is clear, consistently argued, and now adequately supported by derivations at each structural step. The paper is ready for publication.
