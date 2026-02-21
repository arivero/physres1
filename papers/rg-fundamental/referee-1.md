# Referee Report: Renormalization Group as a Fundamental Compatibility Principle

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/rg-fundamental/main.md

---

## Summary

The paper argues that the renormalization group (RG) is a structural necessity — a "compatibility condition" — forced on any theory defined as a regulator-independent limit of composed local refinements, rather than a calculational technique for removing divergences. It establishes this via three interlocking threads: (1) a semigroup-composition axiom (Proposition RG-P1.1) from which beta functions emerge differentially, (2) a micro-model analogy identifying derivative formation (difference quotient subtraction) with counterterm renormalization, and (3) the 2D delta-function contact interaction as an exactly solvable QM model displaying the full RG-as-definition structure (regularization, counterterm subtraction, RG invariance, dimensional transmutation). Rooted-tree Hopf algebra (Connes–Kreimer) and Butcher-series Runge–Kutta composition are invoked as unified bookkeeping frameworks for this thesis.

---

## Strengths

- The central thesis — that RG invariance is definitional, not phenomenological — is clearly stated and consistently sustained across all sections. The paper does not lose its thread.
- The calculus micro-model (Section 3) is genuinely illuminating as a pedagogical entry point. The identification of the ordinary normalization condition D(1)=0 with a scheme-fixing step is elegant.
- The 2D contact interaction (Section 5) is an excellent choice of worked example. It is exactly solvable, exhibits all three structural features the paper claims (composition semigroup, parameter flow, dimensional transmutation), and supports two complementary presentations (momentum-space cutoff and self-adjoint extension boundary conditions). The derivations RG-D1.1 through RG-D1.5 are executed correctly.
- The Wilsonian shell-integration derivation (RG-D1.2a) is a genuine contribution to the paper's internal coherence: it makes the semigroup composition property directly visible as a log-additivity identity rather than an abstract axiom.
- The scheme-dependence section (5.4) is handled cleanly: the beta function is shown to be scheme-independent while the transmutation scale shifts, and the one-physical-datum fixing argument is correct.
- Explicit Hopf coproduct formulas for trees of order 1, 2, 3 (Section 4.3, Derivation RG-D1.8) are correctly stated and add concrete algebraic content to what could otherwise remain slogan-level.
- The semigroup-vs-group distinction (Section 6) is physically important and well-handled. The Schur-complement coarse-graining toy model (RG-D1.7) is an effective minimalist illustration of non-invertibility.
- References are appropriate and credit is properly attributed. Self-citations are identified as companion satellite papers and flagged as such, not presented as external prior art.

---

## Weaknesses

### MAJOR

- **M1. The core Proposition RG-P1.1 is stated but not derived.** The semigroup relation W_{κ→μ} ∘ W_{Λ→κ} = W_{Λ→μ} is asserted as a definition/axiom, and the conclusion that "an infinitesimal generator exists under differentiability assumptions, yielding beta functions" is stated without proof. The paper does not show *which* differentiability conditions are required, why they are satisfied in the models treated, or what fails when they are not. For a paper whose thesis is that RG is *forced* by composition, this is the load-bearing step and it cannot rest on a bare assertion. The Wilsonian shell calculation in RG-D1.2a partially repairs this for the specific 2D delta model, but Proposition RG-P1.1 is presented as a general structural statement and its general justification is missing. The paper should either (a) downgrade RG-P1.1 to a heuristic/motivating slogan and let the 2D model carry the load, or (b) provide a brief but precise argument for the existence of the infinitesimal generator under stated conditions (e.g., cite Hille–Yosida or provide a direct Taylor-expansion argument for the finite-dimensional coupling flow case).

- **M2. The "derivative is a counterterm" analogy (Section 3) is pedagogically useful but mathematically misleading as stated.** In the calculus model, the "divergent" objects f(x+ε)/ε and f(x)/ε are not independently problematic — they are finite for every fixed ε > 0 and the limit ε→0 is a limit of their ratio. In renormalization, by contrast, divergences arise at finite regulator values in loop integrals (infinite-dimensional integration). The paper conflates "a finite quantity that grows as ε→0" with "a UV-divergent Feynman integral at fixed cutoff." This distinction matters for the paper's thesis: the claim is that RG is *structurally necessary* and not just a convenience, but the micro-model analogy, as presented, does not exhibit genuine necessity — one could simply take the limit without any subtraction procedure (that is what "differentiability" means). The paper needs to either (a) explicitly acknowledge the disanalogy and explain why the analogy still has structural value despite it, or (b) formulate the calculus model in a way where the divergence is genuine (e.g., use distributional regularization where point-splitting of singular objects requires subtraction). The distribution version (RG-H1.1b) partially helps but is relegated to a remark.

- **M3. The rooted-tree section (Section 4) does not deliver the claimed "unified bookkeeping."** The paper's abstract and Section 4 claim that rooted-tree combinatorics unify RG and Runge–Kutta composition (Heuristic RG-H1.2). However, the paper only demonstrates these as two separate domains with the same combinatorial objects, not that there is a single theorem or map relating them. The Butcher group and the Connes–Kreimer Hopf algebra are different objects (the former acts on numerical ODE methods, the latter organizes Feynman diagram divergences). The paper asserts a "shared tree bookkeeping" but does not exhibit the precise dictionary. RG-D1.0 and RG-D1.0b are correct calculations about Euler step-doubling discrepancies, but they are not connected to renormalization counterterms by any argument in the paper — the connection is gestured at via Heuristic RG-H1.2 and deferred entirely to the companion paper [RootedTreeBookkeeping]. A standalone paper making this claim must provide at least a minimal working instance of the dictionary, not defer the entire substance to a companion.

### MINOR

- **m1. Remark RG-R1.1 (Borel singularity and Landau pole identification)** is tagged "(FOUR-AGENT result: computationalist + mathematician + physicist + critic, BB6; sev-3)" — this internal annotation should be removed from the published version. It is appropriate for the internal workflow but not for a manuscript.

- **m2. Section 5.8.2 (1D contact family)** cites [BoyaRivero1994Contact] for the U(2) fixed-point analysis, but the paper's own account of the scaling action (the equation T^{(t)}[S̃]_{k̃} = S̃_{e^{-t}k̃}) is presented without verification that this is precisely what the cited paper shows. Since [BoyaRivero1994Contact] is a co-authored paper (author is Rivero), the referee cannot check this independently but flags it for clarity: the paper should explicitly state whether the U(2) fixed-point structure and the circle of fixed points in the time-reversal-invariant sector are results *of* that paper or inferences drawn here from its methods.

- **m3. The 3D delta integral RG-D1.1 for I_{3D}** in Section 5.8.1 gives the imaginary part as −i(m/2πℏ²)k, but the earlier 2D integral gives imaginary part −i(m/2ℏ²) (without the π). A convention table is provided in Section 5.9, but the reader must reconstruct the 3D case themselves since Section 5.9 only lists I_2 and I_3 for positive E without the imaginary part of I_{3D} shown explicitly. A brief cross-check or footnote reconciling the d=2 and d=3 imaginary parts (both follow from the optical theorem; the different factors of π come from the angular integration in d=2 vs d=3) would prevent reader confusion.

- **m4. Proposition RG-P1.2** defines κ_* and claims it is independent of μ. The verification is implicit (readers must differentiate the definition using the RG equation). A one-line explicit computation — "differentiating ln κ_*² = 2 ln μ + (2πℏ²/m)(1/g_R(μ)) with respect to ln μ and using the RG equation for 1/g_R gives d ln κ_*²/d ln μ = 0" — would make this self-contained at no significant cost.

- **m5. Section 7 mentions extending the analysis to "gravitational theories where diffeomorphism invariance might play a role analogous to RG invariance"** as a natural extension. This is significantly more speculative than the rest of the paper's content and the remark is too brief to be useful. Either expand it with a specific conjecture or remove it from the outlook.

- **m6. [PathIntegralNormalization]** is cited in Remark RG-H1.9 but does not appear in the reference list. It should be added or the remark should be adjusted to make clear this is a companion satellite paper (analogous to how [RootedTreeBookkeeping] and [RCPFoundations] are flagged).

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The paper has a clear, defensible thesis and several well-executed sections (the 2D delta model, the Wilsonian shell derivation, the scheme-dependence analysis, and the Schur-complement coarse-graining). However, the two foundational weaknesses — the unproven semigroup-to-generator step in the central Proposition RG-P1.1, and the misleading framing of the calculus analogy — undermine the paper's core claim that RG is *forced* rather than merely natural or convenient. The rooted-tree section defers its entire substantive claim to a companion paper, leaving Section 4 without adequate independent content. These three issues require genuine revision, not minor clarification. The paper is salvageable: the fixes are conceptually tractable and the rest of the content is solid.

---

## Detailed Comments

**Section 2 (Proposition RG-P1.1):**
The semigroup axiom is stated cleanly. The problem is the next sentence: "an infinitesimal generator exists under differentiability assumptions, yielding beta functions as the differential form of scale-compatibility." This is Stone's theorem (or the finite-dimensional analogue) applied to the coupling flow. For a paper arguing this is *forced*, the referee expects to see either: (a) a direct Taylor expansion argument showing that W_{Λ→Λ-δΛ} = id + δΛ · (beta function) + O(δΛ²) for the 2D delta model (which is doable in one paragraph using the explicit log flow), or (b) a reference to a standard result (e.g., one-parameter semigroups of bounded operators) with explicit verification of the hypotheses. Currently neither is present.

**Section 3 (Micro-model):**
The heuristic works pedagogically, but consider the following. The "divergence" in f(x+ε)/ε is only a divergence *of a sequence* as ε→0. The quantity is perfectly finite for any fixed ε. Genuine UV divergences in QFT appear at fixed (nonzero) regulator: the integral ∫_{|q|<Λ} d²q/(q²) diverges as Λ→∞ in a different, stronger sense. The paper would benefit from one sentence acknowledging this asymmetry: "The micro-model divergence is of course weaker (a removable limit-sequence divergence rather than an integral that diverges at fixed regulator); its value is structural rather than quantitative."

**Section 4 (Rooted trees):**
RG-D1.0c claims the composition formula τ₁ ⊗ τ₁ = 2τ₂ holds "universally for any autonomous ODE, independent of the specific f." This is a B-series algebraic identity and is correct. However, the paper then claims this is "the same algebraic identity verified in the rooted-tree paper (Section 3)." This forward reference to an unpublished companion paper is not useful for an independent reader. If this identity is important enough to state, it should be demonstrated here in one line (it follows immediately from the B-series composition formula with the elementary differentials evaluated).

**Section 4.3 (Hopf coproduct):**
The coproduct for the order-3 branch tree τ₃' = [•,•] is written with two identical terms "• ⊗ [•]" corresponding to cutting one child at a time, plus "•² ⊗ •" for cutting both. The notation "•²" for a forest of two •'s is unconventional; the standard notation is "• · •" or "[•,•] forest" (not to be confused with the tree). This should be clarified to avoid ambiguity with squaring in the algebra.

**Section 5.2 (Beta function derivation):**
The derivation of d/d(ln μ)(1/g_R) = −m/(πℏ²) from the T-matrix is correct. One subtlety: the paper states "since d/d(ln μ) ln(k²/μ²) = −2, this yields..." — it should specify that k is held fixed (it is the physical energy/momentum, not a renormalization scale). This is clear from context but worth one word of explicit statement to avoid any confusion with running k.

**Section 5.3 (Dimensional transmutation) and Remark RG-R1.1:**
The identification of the Landau pole scale with the bound-state energy scale is physically important and stated correctly for this exactly solvable model. The extension to "conjectured" multi-instanton models (CP(N−1)) in the same remark should be explicitly flagged as speculative and distinct from the rigorous 2D delta result.

**Section 6.1 (Schur complement):**
This is the clearest and most pedagogically effective section of the paper. The explicit formula a_eff = a − b²/c and the non-invertibility observation are correct and well-presented. No issues.

**Section 7 (Conclusion, Remark RG-H1.15):**
The Refinement Compatibility Principle (RCP) is introduced with a falsifiability criterion (the commutative diagram for observables). This is a useful structural statement, but the "representation channel" (ordering equivalence) and "partition channel" (Noether) are only named here without any development in the paper. Since the paper is titled "RG as Fundamental Compatibility Principle," the reader may expect the other channels to be developed enough to see that RG is one of three parallel structures. Either develop these two paragraphs more (showing a minimal instance of each other channel) or defer them entirely to [RCPFoundations] and remove from this paper's conclusion. The current half-development is unsatisfying.

**References:**
- [PathIntegralNormalization] is missing from the reference list (see Minor weakness m6 above).
- All other references are correctly formatted with DOIs or arXiv identifiers where available.
- The internal-workflow tag in Remark RG-R1.1 ("FOUR-AGENT result... BB6; sev-3") must be removed before submission.
