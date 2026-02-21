# Referee Report: Refinement Compatibility as a Foundational Principle

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/rcp-foundations/main.md

## Summary

The paper proposes and formalizes the **Refinement Compatibility Principle (RCP)**: physical laws are those that survive controlled changes of partition, representation, and scale. The framework is organized into five axioms (A1–A5) and three operational "channels" — partition, representation, and scale — each illustrated with a worked example. The crown witness for the partition channel is Proposition P4.2 (imported from a companion paper [Main]), which asserts that the composition semigroup law for transition kernels forces Planck's constant as a structural parameter. The paper is self-described as a "standalone satellite" that isolates the RCP axiomatic structure from the longer companion manuscript.

## Strengths

- **Clear organizational spine.** The three-channel decomposition (partition / representation / scale) is well-motivated and consistently maintained. The paper's sections map cleanly onto this structure.
- **Non-trivial worked examples.** The 2D delta renormalization example (Section 5) is quantitatively detailed, computing the loop integral, renormalized coupling, beta function, and dimensional transmutation correctly. The Efimov remark (RCP-R5.1) adds a qualitatively distinct RG pattern (limit cycle vs. fixed point) that genuinely enriches the scale-channel discussion.
- **Honest scope declarations.** The paper consistently labels propositions as "from [Main]," distinguishes heuristics from propositions, and flags where companion satellites develop points further. The remark structure (Heuristic / Proposition / Remark / Derivation labels) is disciplined.
- **Axiom-reduction meta-result.** Remark RCP-P6.1's claim that dimensional homogeneity (D) and the identity limit (I) are theorems of composition (C) alone — reducing the axiom count from three to one for the partition channel — is a genuine conceptual clarification, correctly supported.
- **PSL(2,R) forcing argument** for the Efimov limit cycle (Section 5, Remark RCP-R5.1) is a well-posed structural observation: RG steps acting on coupling space form a Möbius group, and the limit cycle is a hyperbolic element. The reference to arXiv:2509.04746 is appropriate.
- **Remark RCP-R7.2 (Reversibility hierarchy).** The Stone / Morita / Hille-Yosida hierarchy as an explanation for forcing-strength differences across channels is insightful and, as far as this referee can assess, novel at the level of presentation.

## Weaknesses

### MAJOR

- **M1: P4.2 is stated but not proved in this paper.** Section 6 is titled "Theorem: P4.2 as RCP Crown Witness" and occupies a full page, yet the proof is entirely deferred to "[Main] (in preparation)." The paper presents nine conclusions (items 1–9 of §6.1) as theorems, but the reader cannot evaluate any of them without access to the companion. This is not a satellite-paper limitation — it is a structural problem: the central quantitative claim on which the paper's main argument rests (composition forces \(\hbar\)) is unverifiable from within the paper. At minimum, the paper should include either (a) a self-contained proof of the simplest non-trivial implication (e.g., that composition forces the \(t^{-d/2}\) normalization), or (b) an explicit statement that P4.2 should be treated as a hypothesis of this satellite rather than a theorem. Currently it is labeled neither, and the text reads as if the result is established.

- **M2: The falsifiability claim (Section 1.2) is not operationalized.** The abstract and Section 1.2 emphasize that RCP is "falsifiable" — closure can fail when no admissible \(\tau\) exists. However, no example of failure is worked through in detail. The only failure modes mentioned are \(\kappa \to 0\) and \(\kappa \to \infty\) for the partition channel (cited from P4.2), but those failures are again deferred to [Main]. For the representation and scale channels, no failure example is given at all. A paper claiming falsifiability as a key feature should include at least one concrete worked failure — either a known non-renormalizable theory where scale compatibility fails, or a symmetry where partition refinement breaks a discrete symmetry that is not a Noether charge. Without this, "falsifiable" is a philosophical label, not an operational demonstration.

- **M3: The commuting-diagram axiomatization (Section 2.2) is underdeveloped.** The paper states that RCP amounts to commuting diagrams and invokes the language of monoidal categories (Section 7.3), but Section 2.2 presents only a 2x2 diagram without specifying the morphism sets, composition laws, or the category in which the diagram lives. The subsequent remark (Section 7.3) notes that the connection to Atiyah-Segal functoriality is "complete for 0+1-dimensional QM" but does not spell it out. Given that the paper proposes RCP as an "axiomatic framework," the categorical structure should either be developed to the point where A1–A4 are recognizable as functoriality conditions, or the categorical language should be removed. The current hybrid — asserting categorical content without the structure — weakens the foundational claim.

### MINOR

- **m1: Reference 1 ([Main]) is listed as "in preparation" throughout.** If [Main] contains P4.2, and P4.2 is the crown witness, readers need either a preprint or a manuscript number. The current citation is not actionable.

- **m2: Section 3.3 (Noether as partition-channel witness) overstates the connection.** The text argues that the Noether charge is the "compatibility datum \(\tau_C(\theta)\) that makes symmetry survive partition refinement." But Noether's theorem in the continuum does not involve partition refinement at all — it concerns invariance of the continuum action. The discrete version (discrete Noether charges, variational integrators) is a separate and non-trivial result (Marsden-West, 2001) that requires the discrete action to be invariant, not just the continuum one. The paper does not cite this literature and does not distinguish the discrete Noether theorem from the continuum one. The example is fine as a motivation, but calling Q the "RCP witness" without the discrete version theorem is loose.

- **m3: The Noether example (Section 3) cites [Arnold1989] but not Noether's original paper.** Given the foundational tone, citing Noether (1918) directly would be appropriate. The Arnold reference is good for context but is a textbook, not the source.

- **m4: Proposition RCP-Rep-P1.1 (Section 7, representation forcing hierarchy) references the Kontsevich formality theorem without a citation.** Kontsevich (1997/2003) should be cited explicitly; the reference to [Landsman1998] does not cover Kontsevich's result.

- **m5: The beta function formula in Section 5.3 has a sign ambiguity worth flagging.** The text writes \(\beta(g_R) \equiv \mu\, dg_R/d\mu = (m/\pi\hbar^2)g_R^2 > 0\), indicating a Landau pole (coupling grows in UV). This is correct for the 2D delta model, but since the paper mentions this as a prototypical RCP example, a brief note that the positive beta function here reflects UV growth (in contrast to asymptotically free theories where \(\beta < 0\)) would help readers orient the example within the broader RG landscape.

- **m6: Remark RCP-R7.1 (Wick rotation as A3) is well-argued but the claim about Osterwalder-Schrader needs a citation.** The statement that "Wick rotation is A3-compatible if and only if the OS reflection-positivity conditions hold" should cite Osterwalder-Schrader (1973, 1975) directly.

- **m7: The PSL(2,R) reference (arXiv:2509.04746) is from September 2025 and thus very recent. The author should confirm it is publicly accessible and note its status (preprint, published, etc.).**

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The paper provides a valuable organizational framework and several well-executed examples, but its central quantitative claim (P4.2) is entirely deferred to an unavailable companion, making the "crown witness" unverifiable. The falsifiability claim — the paper's key philosophical contribution — is not demonstrated by any worked failure example. These two gaps are structural, not cosmetic. Both must be addressed before publication.

## Detailed Comments

**Section 1.2 (Falsifiability).** The equation \(\mathcal{O}_{h,\theta} = \mathcal{O}_{h',\tau(\theta)} \circ \mathcal{T}\) is presented as the falsifiability condition, but no discussion is given of what constraints an "admissible family" must satisfy for closure failure to be detectable. Add at least one sentence specifying what "not admissible" means concretely (e.g., non-normalizable, non-unitary, outside the Schwartz class, etc.).

**Section 2.1 (Axiom A2).** The decision to retain A2 as "recorded for operational completeness" while simultaneously calling it "not an independent axiom" creates confusion. Either remove A2 from the axiom list and put it in a remark, or state it as a corollary with a proof reference. The current presentation gives readers conflicting signals.

**Section 6.1, item 5.** The identification \(\kappa = \hbar\) relies on dimensional analysis using the physical setup's mass parameter \(m\). The paper correctly states this in Remark RCP-P6.1. However, the theorem statement in §6.1 lists this as a conclusion without noting the dependence on \(m\) — readers should be told explicitly that the identification \(\kappa = \hbar\) requires the dimensional basis \(\{m, L, T\}\) provided by the physical setup.

**Section 7.3 (Open Question 2).** The statement "This identification is complete for 0+1-dimensional quantum mechanics" is a strong claim. If this is meant to be taken as a proven result (not just a heuristic), it should be accompanied by a precise statement of what "complete" means (uniqueness within the Atiyah-Segal framework? up to Morita equivalence?).

**References.** Missing:
- Noether, E. (1918), "Invariante Variationsprobleme," *Nachr. d. König. Gesellsch. d. Wiss. zu Göttingen*, Math-phys. Klasse, 235–257.
- Kontsevich, M. (2003), "Deformation quantization of Poisson manifolds," *Lett. Math. Phys.* **66**, 157–216. arXiv:q-alg/9709040.
- Marsden, J. E. and West, M. (2001), "Discrete mechanics and variational integrators," *Acta Numerica* **10**, 357–514. (for the discrete Noether theorem)
- Osterwalder, K. and Schrader, R. (1973/1975), axioms for Euclidean Green's functions. (for the Wick-rotation claim in RCP-R7.1)
