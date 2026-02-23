# Referee Report (Round 2): Measurement as Compositional Boundary: Born Rule, Partial Trace, and POVMs from the Sewing Law

**Referee:** referee-2
**Date:** 2026-02-24
**Paper:** papers/measurement-composition/main.md
**Round:** 2 (re-review after major revision)

---

## Summary of Revision

The authors have revised the paper in response to three major concerns raised in the round-1 report: (M1) circularity in the Born-rule derivation; (M2) a mis-stated uniqueness claim for the partial trace; and (M3) the mislabelling of the factorization result as a "Derivation" rather than a "Proposition." All six minor concerns (m1–m6) have also been addressed to varying degrees. The overall structure of the paper is improved and the epistemic status of claims is now more accurately represented.

---

## Assessment of Major Issues

### M1 — Born-rule circularity (MC-D4.1)

**Status: Substantially addressed; one residual concern remains.**

The revised paper now includes an explicit paragraph at the end of MC-D4.1 addressing the independence question:

> "The unitarity relation used above is a kernel-level identity, not a probabilistic postulate: it follows from the sewing law's identity limit \(K(y,z;t) \to \delta(y-z)\) as \(t \to 0\) (Proposition P4.2(I) of [Main]), which forces the propagator to be an isometry in \(L^2\). No probability interpretation is invoked in establishing it — it is a distributional consequence of \(K_{t_1} * K_{t_2} = K_{t_1+t_2}\) and \(K_0 = \delta\)."

This directly addresses the independence requirement: the unitarity identity is established from the identity limit P4.2(I) prior to any probabilistic assignment. This is the correct route and breaks the circularity.

However, a residual concern remains regarding point (b) of the suggested remedy: the paper still does not show that \(p_a = |\langle a|\psi\rangle|^2\) is the *unique* non-negative normalized assignment consistent with the sewing chain. The paper instead demonstrates that this assignment *follows* from projector insertion (which it calls "an additional operational postulate"). The authors honestly acknowledge this at the end of MC-D4.1:

> "Projector insertion: representing a selective measurement by inserting \(P_a\) into the sewing chain. This is an additional operational postulate — composition determines the form of the propagator, but the identification of measurement with projector insertion is a physical assumption about what measurement does to the composition chain. It is motivated by, but not derived from, the sewing law."

This honest acknowledgement of the postulate status is acceptable. The paper no longer claims to derive the Born rule from the sewing law alone; it derives it from composition + projector insertion, with projector insertion correctly identified as an additional physical input. The summary in §1 and the abstract should be updated to reflect this more modest claim (see Minor Comments below), but the internal logic of MC-D4.1 is now sound.

**Assessment: Major concern M1 is resolved at the level of internal consistency. The partial-uniqueness question (whether projector insertion is the only sewing-compatible measurement postulate) remains open, but this is an appropriate direction for future work rather than a defect of the present paper.**

---

### M2 — Uniqueness mis-statement in MC-P3.1(iii)

**Status: Fully addressed.**

The revised MC-P3.1(iii) now reads, in the relevant portion:

> "We do not claim that the four conditions (linearity, complete positivity, trace preservation, sewing compatibility) suffice to uniquely determine the partial trace — additional CPTP maps satisfying them exist — but the partial trace is singled out as the unique conditional expectation, the algebraically canonical reduction."

This is precisely the correction called for. The paper now cites Accardi-Cecchini [AC1982] and Takesaki [Takesaki1972] to support the conditional-expectation characterization. The tautological uniqueness claim ("unique with Kraus representation \(\{I_B\}\)") has been replaced by the correct characterization: uniqueness as a conditional expectation onto \(\mathcal{B}(\mathcal{H}_A) \otimes I_B\), which is a genuine theorem (not circular). The Stinespring comment is retained but now only for motivational purposes, not as a uniqueness argument. The four-axiom list is preserved but its epistemic scope is correctly bounded.

**Assessment: Major concern M2 is fully resolved.**

---

### M3 — Factorization mislabelled as "Derivation" (MC-D2.1)

**Status: Fully addressed.**

The label has been changed from MC-D2.1 to MC-P2.1, and the proposition now explicitly states:

> "Factorization of the joint propagator is an additional physical input encoding dynamical independence; the sewing law is consistent with it but does not force it. (The sewing law for a joint system is satisfied by any joint propagator, factorized or not.)"

This is exactly the language recommended in the round-1 detailed comments. The epistemic status is now accurate: the result is a consistency check, not a derivation. The two new remarks (MC-R2.1 on \(\hbar\) universality, MC-R2.2 on the half-density viewpoint) are appropriate additions that enrich the section without overclaiming.

**Assessment: Major concern M3 is fully resolved.**

---

## Assessment of Minor Issues

### m1 — Ellipsis in MC-D4.1 numerator calculation

**Status: Fully resolved.** The revised paper provides the complete calculation:

> "\(\int d^d z\; |K_a|^2 = \int d^d y\; K(x,y;t_1)\,\langle y|a\rangle\, \overline{\int d^d y'\; K(x,y';t_1)\,\langle y'|a\rangle} = \left|\int d^d y\; K(x,y;t_1)\,\langle y|a\rangle\right|^2\)."

The algebra is now explicit and verifiable.

### m2 — Missing formulas for \(\alpha(t)\), \(\beta(t)\) in MC-D3.1

**Status: Partially addressed.** The revised text notes that \(\alpha, \beta\) depend on \(\omega_\pm\) (the normal-mode frequencies) but still does not provide explicit formulas. The statement "with \(\alpha, \beta\) depending on \(\omega_\pm\)" is marginally expanded by the identification of normal-mode frequencies \(\omega_- = \omega\), \(\omega_+ = \sqrt{\omega^2 + 2\lambda}\), but the Gaussian integrals are not worked out. The claim "\(O(\lambda/\omega^2)\) estimate for the entanglement correction" remains unverifiable from the paper alone.

This is a persistent weakness. An appendix or a citation to a worked calculation (e.g., standard references on Gaussian path integrals, Feynman-Hibbs or Schulman) would suffice.

### m3 — Two decoherence formulas (MC-H6.1)

**Status: Fully resolved.** The revised paper explicitly provides the fluctuation-dissipation connection:

> "The two expressions are related by the fluctuation-dissipation relation \(D = \gamma_0 m k_B T / \hbar^2\), so \(\Gamma_{\mathrm{dec}} = \gamma_0 (\Delta x / \lambda_{\mathrm{dB}})^2\)."

This is exactly the one-line unification requested.

### m4 — Sewing law connection in MC-P5.1

**Status: Fully resolved.** The revised proof sketch now states:

> "The sewing law enters at each step: \(U_{AB}\) is the joint propagator satisfying the sewing law (MC-P2.1); the Born rule for the probe measurement follows from MC-D4.1 applied to subsystem \(B\); and the POVM structure on \(A\) is the partial-trace compatibility of MC-P3.1."

The logical chain is now explicit.

### m5 — [Koplinger2025] unverified preprint

**Status: Substantially resolved.** The paper now cites Hurwitz (1898) [Hurwitz1898] as the primary source and uses [Koplinger2025] as a secondary source for the quantum-mechanical application. Remark MC-R4.2 explicitly references both. However, the [Koplinger2025] bibliography entry still lacks an arXiv identifier: "J. Koplinger, 'Division algebras and quantum mechanics,' preprint (2025)." If the arXiv ID is known, it should be added; if the preprint is internal or unpublished, it should be noted as such.

### m6 — Undefined notation in MC-H7.1

**Status: Substantially resolved.** The revised Section 7 now provides:

> "\(\theta\) includes the environment specification"

and Remark MC-R7.2 specifies that the Lindblad operators \(L_k\) and relaxation rates \(\gamma_k\) encode the coupling to the environment. The scope limitation for non-Markovian dynamics (process tensors, quantum combs) and gravitational measurement (gauge-dependent tensor-product decomposition) is clearly stated. The falsifiability criterion remains somewhat abstract ("closure fails when no finite \(\tau_S\) restores sewing-law compatibility"), but MC-R7.2 acknowledges this is the reason for the Heuristic rather than Proposition label.

One remaining gap: the parameter update \(\tau_S(B;\theta)\) is still described only abstractly as the map "to Lindblad operators \(\{L_k, \gamma_k\}\)" without specifying the map explicitly (e.g., through the Born-Markov approximation or a specific model). This is adequate for a Heuristic, but a concrete example analogous to MC-D3.1 would strengthen the section.

---

## New Issues Identified in Revision

**N1. Abstract and §1 claim tension with revised MC-D4.1.**

The abstract states "measurement structure is derived, not postulated." The revised MC-D4.1 correctly identifies projector insertion as "an additional operational postulate." These two statements are in tension. The abstract claim should be softened to something like: "measurement structure follows from composition plus a single operational postulate (projector insertion), rather than from a separate probability axiom." The claim is still significant but should not overstate what was achieved.

**N2. MC-H7.1 table: "partial trace unique" in crown witness column is inconsistent with MC-P3.1(iii).**

The table in Remark MC-R7.1 lists the crown witness of the subsystem channel as "MC-P3.1: partial trace unique." But MC-P3.1(iii) was revised to weaken this to "unique conditional expectation" rather than "uniquely determined by the four axioms." The table should be updated to read "MC-P3.1: partial trace is the unique conditional expectation" to remain consistent with the corrected MC-P3.1(iii).

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** All three major concerns from round 1 have been substantively addressed — the Born-rule circularity is resolved by explicitly establishing unitarity from the identity limit without probabilistic content; the uniqueness mis-statement is corrected to the conditional-expectation characterization with proper citations; and the factorization result is correctly re-labelled as a Proposition with honest epistemic status. Two new minor issues (N1, N2) arise from the revision itself, both of which require only small textual changes. One persistent minor issue (m2: explicit formulas for \(\alpha(t)\), \(\beta(t)\)) was not resolved in this round. These are all minor fixes requiring no re-review.

---

## Detailed Comments for Minor Revision

**Abstract (lines 7–21):** Replace "measurement structure is derived, not postulated" with "measurement structure follows from the sewing law and a single operational postulate (projector insertion), replacing a multi-axiom measurement theory with a compositional derivation."

**Section 7, Remark MC-R7.1 (crown witness table):** Change "MC-P3.1: partial trace unique" to "MC-P3.1: partial trace is the unique conditional expectation." This preserves the analogy while being consistent with the corrected MC-P3.1(iii).

**Section 3, MC-D3.1:** Add explicit formulas for \(\alpha(t)\) and \(\beta(t)\) in the Gaussian partial trace. These are:

\[
\alpha(t) = \frac{m\omega_-}{2}\cot(\omega_- t) + \frac{m\omega_+}{2}\cot(\omega_+ t), \quad \beta(t) = -\frac{m\omega_-}{\sin(\omega_- t)} - \frac{m\omega_+}{\sin(\omega_+ t)},
\]

(up to overall factors that cancel in the entanglement correction). Alternatively, cite Schulman (1981) or Feynman-Hibbs (1965) for the Gaussian propagator identities.

**Bibliography:** If available, add the arXiv identifier for [Koplinger2025].
