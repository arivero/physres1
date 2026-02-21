# Referee Report: Refinement Compatibility as a Foundational Principle (Round 2)

**Referee:** referee-1
**Round:** 2 (re-review after MAJOR REVISION)
**Date:** 2026-02-21
**Paper:** pub-track/sent/rcp-foundations/main.md
**Previous report:** papers/rcp-foundations/referee-1.md

---

## Summary of Revision

The authors have substantially revised the paper in response to the three MAJOR issues identified in Round 1. The revision adds a proof sketch for P4.2, inserts a worked failure example for the scale channel, clarifies the axiom status of A2, specifies the categorical content of Section 7.3 more precisely, and adds all four missing references (Noether, Kontsevich, Marsden-West, Osterwalder-Schrader) plus several additional ones (Atiyah, Reed-Simon, Kaplan). The structural additions are substantial and qualitatively change the paper's standing on the three MAJOR criteria.

---

## Assessment of MAJOR Issues

### M1: P4.2 proof status

**Round 1 complaint:** P4.2 was stated as a theorem but proof was entirely deferred to [Main] (in preparation), making the central claim unverifiable from within the paper.

**Authors' response:** Section 6 now opens with an explicit parenthetical reframing: "assumed here as hypothesis — see proof sketch below." This is followed by a substantive proof sketch (approximately one full page) for the simplest non-trivial implication — that composition forces the $t^{-d/2}$ normalization. The sketch is self-contained and mathematically sound: it proceeds via the Fourier-space multiplicative functional equation, invokes Cauchy's theorem for measurable functions (correctly citing the unitarity condition needed for non-vanishing of $\hat{h}$), uses dimensional analysis to exclude non-quadratic dispersion, and delivers the Gaussian kernel with the $d/2$ exponent. The remaining P4.2 conclusions are listed with forward references to companion satellites ([TangentGroupoidBridge], [Main]) rather than being presented as established facts.

**Assessment:** M1 is substantially resolved. The paper now does what Round 1 asked: it provides a self-contained proof of the simplest implication and explicitly reframes P4.2 as a "hypothesis" of this satellite rather than an internal theorem. The proof sketch is honest about its scope — it establishes the $t^{-d/2}$ result and gestures at the rest. One residual concern: the theorem header still says "from [Main] Proposition P4.2" before the hypothesis reframing, which could create confusion about whether the full nine-conclusion list is proved or assumed. A reader scanning the header will see "Theorem" and may miss the parenthetical qualification. This is a presentation issue, not a mathematical one — the content is now correct. **M1 is resolved, with a minor presentation note.**

The authors also added Remarks RCP-R6.2 and RCP-R6.3 on regularity conditions (non-vanishing Fourier transform, Hermitian symmetry, self-adjointness, $L^2$ boundedness). These are a genuine improvement: they make explicit what was implicit in the derivation and correctly identify self-adjointness (via Kato-Rellich / Stone) as the substantive condition. The note that singular potentials require genuine self-adjoint extension selection is well-placed and precise.

### M2: Falsifiability operationalized by a worked failure example

**Round 1 complaint:** The paper claimed falsifiability as a key feature but gave no worked failure example. All failure modes were deferred to [Main].

**Authors' response:** Section 1.2 now contains a box titled "Worked failure example (scale channel)" presenting the four-dimensional contact interaction $g\,\delta^{(4)}(x)$. The argument is: $[g] = L^2$ (mass dimension $-2$), each loop order introduces a new independent divergence requiring a new counterterm, the parameter bundle $\theta = (g_0, g_2, g_4, \ldots)$ grows without bound, no finite $\tau$ exists, and scale compatibility (A4) fails. This is standard power-counting for non-renormalizable interactions and is presented correctly. The contrast with the 2D delta model ($[g] = L^0$, one running coupling, closure succeeds) is explicit and clarifying.

**Assessment:** M2 is resolved. The failure example is concrete, worked, and placed at the right location (immediately after the falsifiability definition in §1.2). It correctly identifies the mechanism (infinite tower of independent divergences), correctly concludes that no finite $\tau$ exists, and directly links this to A4 closure failure. The example is well-chosen because it contrasts structurally with the positive example in §5, making the RCP distinction between renormalizable and non-renormalizable theories sharp and visible.

One observation: the failure example covers only the scale channel, as it did in Round 1. The partition and representation channels still have no worked failure examples. This was not a formal complaint in Round 1 — the complaint was that no failure example existed anywhere — and the authors have addressed that. The scale-channel example is the most important one given the paper's emphasis on that channel. This referee accepts the resolution as adequate for MAJOR status, though a forward-looking suggestion would be to add even a one-sentence failure case for the representation channel (e.g., a quantization scheme with incompatible domains that fails closure) in a future revision.

### M3: Commuting-diagram axiomatization clarified

**Round 1 complaint:** Section 2.2 asserted categorical content without specifying morphism sets, composition laws, or the ambient category. Section 7.3 claimed "completeness for 0+1-dimensional QM" without specifying what "complete" meant.

**Authors' response (two-part):**

*Section 2.2:* The diagram itself is unchanged, but the text now explicitly labels it as a "schematic unifying statement" and provides channel-specific translations: in the partition channel, $\mathcal{O}$ is a transition kernel, $\mathcal{T}$ is time subdivision, $\tau$ is the Noether charge; in the representation channel, $\mathcal{O}$ is a quantization map, $\mathcal{T}$ is an ordering change, $\tau$ includes domain data; in the scale channel, $\mathcal{O}$ is a scattering amplitude, $\mathcal{T}$ is a cutoff shift, $\tau$ is the RG flow. This is a meaningful improvement: the reader now knows what the generic symbols instantiate to in each case.

*Section 7.3 (Open Question 2):* The claim "complete for 0+1-dimensional QM" is now accompanied by a parenthetical specifying what "complete" means: "the Atiyah-Segal functor from the bordism category of 0+1-dimensional cobordisms to Hilbert spaces is uniquely determined, up to Morita equivalence, by A1 applied to action-based kernels." The Atiyah 1988 reference is added. The extension to $d$+1-dimensional QFT is explicitly flagged as open.

**Assessment:** M3 is partially resolved. The channel-specific instantiation in §1.2 and the Atiyah-Segal specification in §7.3 address the two most concrete complaints. However, Section 2.2 itself still does not specify the morphism sets or composition laws of the diagram — the note on types is in §1.2, not §2.2, and a reader seeing the diagram in §2.2 without reading backwards to §1.2 will still encounter an abstract diagram without specified morphisms. The diagram notation ($\mathcal{O}_{h,\theta}$, $\mathcal{O}_{h',\tau(\theta)}$, etc.) is not self-annotated. This is a presentation organization issue, not a mathematical gap. The mathematical content is now present in the paper; it is just split between §1.2 and §7.3 rather than consolidated in §2.2.

The addition of Proposition RCP-Rep-P1.1 (Kontsevich formality theorem as Layer 1 forcing, Morita equivalence as Layer 2, Moyal product as Layer 3) is a significant improvement to the representation-channel axiomatization. The three-layer hierarchy makes the forcing structure concrete and correctly distinguishes what is forced by composition alone vs. what requires additional assumptions.

**M3 is substantially resolved. The categorical structure is now mathematically present, though its presentation is distributed across sections rather than consolidated.**

---

## Assessment of MINOR Issues

### m1: [Main] listed as "in preparation"

**Status:** Unchanged. The companion [Main] is still "in preparation" with no preprint number. The authors have mitigated this by adding proof content directly into the satellite (M1 resolution) and by cross-referencing [TangentGroupoidBridge] for parts of the argument. The situation is improved but the citation is still not actionable for external readers. **Partially addressed; residual concern flagged.**

### m2: Noether as partition-channel witness — discrete vs. continuum conflation

**Status:** Resolved. Section 3.3 now explicitly distinguishes the continuum Noether theorem (proved in §3.2) from the discrete Noether theorem (cited to [MarsdenWest2001]). The text states: "The discrete Noether theorem — that symmetry of the discrete action implies conservation of the discrete charge — is a non-trivial result in its own right; see Marsden-West [MarsdenWest2001] for the variational integrator setting." The RCP interpretation is appropriately hedged: it "provides a language in which..." rather than claiming to prove the discrete result independently. The "[Main] (in preparation)" forward reference is no longer the only support for this claim.

### m3: Noether (1918) citation missing

**Status:** Resolved. [Noether1918] is now Reference 12, cited in §3.2 directly in the theorem statement header. The Arnold reference is retained for context.

### m4: Kontsevich formality theorem without citation

**Status:** Resolved. [Kontsevich2003] is Reference 13 and is cited explicitly in Proposition RCP-Rep-P1.1, Layer 1.

### m5: Beta function sign/direction note

**Status:** Not explicitly added as a separate note, but the paper's treatment in §5.3 remains correct. The worked failure example in §1.2 now provides some orientation by contrasting $[g] = L^{-2}$ (non-renormalizable, UV-growing) with $[g] = L^0$ (renormalizable, UV-controlled). A dedicated sentence on the positive beta function indicating a Landau pole — as requested — is still absent from §5.3. **Minor residual.**

### m6: Osterwalder-Schrader citation for Wick rotation

**Status:** Resolved. [OsterwalderSchrader1973] is Reference 14, cited in Remark RCP-R7.1 at the exact location where the OS conditions are invoked.

### m7: PSL(2,R) reference status

**Status:** The paper retains the arXiv:2509.04746 citation without explicit annotation of its publication status. Since Round 1 this paper may have been published; the authors should verify and update the citation. **Residual (minor).**

---

## New Content Assessment

The revision adds substantial new material beyond the minimum required to address MAJOR issues:

- **Remark RCP-R6.2** (regularity conditions for the composition functional equation): Well-executed. The four conditions are clearly distinguished, and the identification of self-adjointness as the substantive one is correct. The Fubini argument for the Cauchy functional equation step is appropriate and technically sound.

- **Remark RCP-R6.3** (identity limit: smooth vs. singular potentials): A genuine addition. The distinction between Kato-class potentials (where stationary phase suffices) and singular potentials (where Stone's theorem is needed) is mathematically accurate and clarifies when the composition-forces-identity-limit claim holds.

- **Section 7.4** (Multi-channel synthesis: path integral as RCP realization): A useful organizational addition that synthesizes the three channels in a concrete setting. The partition/representation/scale roles of the path integral are correctly identified. The measure factor for different time-slicing prescriptions ($\prod [m(q_k)]^{1/2} dq_k$) is correctly connected to representation-channel transport data.

- **Proposition RCP-Rep-P1.1** (three-layer forcing hierarchy with Kontsevich): This is the most substantive new content in the revision. The three-layer structure (existence / Morita class / unique Moyal product) is correctly stated and matches the known mathematics. The citation to Kontsevich (2003) is appropriate. This converts the representation channel from an informal motivation to a structured result.

- **References 15-18** (Atiyah, MarsdenWest, ReedSimon, Kaplan): All are appropriate and well-placed.

---

## Remaining Concerns

**Significant (but not MAJOR):**

1. The theorem header for P4.2 (§6.1) reads "Theorem (from [Main] Proposition P4.2; assumed here as hypothesis — see proof sketch below)." The word "Theorem" followed by "assumed here as hypothesis" is contradictory. The authors should retitle this block as "Proposition (Hypothesis)" or "Assumed Proposition" to avoid the contradiction. The content is correct; the label is misleading.

2. Section 2.2's commuting diagram still lacks in-situ specification of morphisms. The type annotations from §1.2 should be cross-referenced explicitly (e.g., "where $\mathcal{O}$, $\mathcal{T}$, and $\tau$ instantiate as described in Section 1.2"). This is a one-line fix.

**Minor residuals:**

3. m5 (beta function sign/direction note in §5.3) remains unaddressed. One sentence suffices.
4. m7 (PSL(2,R) arXiv citation status) should be verified and updated.
5. [Main] remains non-actionable. If a preprint exists, a number should be given; if not, a footnote noting that the proof sketch in §6 is the best currently available approximation would help.

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** All three MAJOR issues from Round 1 have been substantively addressed: M1 by an explicit proof sketch and hypothesis reframing; M2 by a concrete worked failure example; M3 by channel-specific type annotations and a precise categorical statement for §7.3. All MINOR citation issues (m2, m3, m4, m6) have been resolved. The remaining concerns — the "Theorem/hypothesis" label contradiction, the disconnected placement of type annotations for §2.2, the missing beta-function orientation note, and the unverified arXiv status — are all one-sentence or one-word fixes. No re-review is required provided these are addressed; a brief author response listing the changes is sufficient.

## Detailed Comments (Round 2)

**Section 6.1, theorem header.** The label "Theorem ... assumed here as hypothesis" is self-contradictory. Use "Assumed Proposition" or "Hypothesis (P4.2)" as the block label. The proof sketch that follows proves one implication (not the full proposition), so labeling the block as a hypothesis and the sketch as a partial derivation is more accurate.

**Section 2.2.** Add a cross-reference: after "The diagram commutes if..." add a parenthetical "(with $\mathcal{O}$, $\mathcal{T}$, $\tau$ as described in Section 1.2 for each channel)." This is a one-line fix that saves readers from needing to read backwards.

**Section 5.3 (beta function).** Add one sentence at the end of §5.3: "The positive beta function $\beta(g_R) > 0$ indicates a Landau pole (coupling grows in the UV), in contrast to asymptotically free theories ($\beta < 0$) where the coupling vanishes in the UV. This 2D model is UV-safe because dimensional transmutation converts the bare coupling to the physical scale $\kappa_*$, rendering all UV-dependence in $E_B$."

**arXiv:2509.04746.** Add parenthetical "(preprint, 2025)" or update to journal reference if published.

**Section 6.2, item 2 (falsifiability in action).** This paragraph correctly describes the $\kappa \to 0$ and $\kappa \to \infty$ failure modes. However, it still does not specify what "admissible family" means precisely in those limits (as requested in the Round 1 detailed comment on §1.2). The worked failure example in §1.2 addresses the scale-channel case; a one-sentence note here specifying that $\kappa \to 0$ failure means non-existence of a distributional identity limit (the delta-sequence property fails because the Gaussian oscillates too rapidly) would complete the operationalization for the partition channel. This is a suggestion, not a condition for acceptance.
