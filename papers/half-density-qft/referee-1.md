# Referee Report: Half-Densities in QFT: Propagators as Bi-Half-Density Kernels

**Referee:** referee-1
**Date:** 2026-02-21
**Round:** 2 (re-review after MAJOR REVISION)
**Paper:** pub-track/sent/half-density-qft/main.md

---

## Summary

The paper establishes that spacetime propagators and Green functions in QFT are most naturally treated as bi-half-density kernels: sections of the external tensor product of half-density bundles over M x M. This framing makes the identity kernel canonical (no background volume form required), makes kernel composition intrinsically coordinate-free, and organizes the D/2 normalization exponent that appears in the Gaussian approximate identity, the heat kernel, flat-space propagators, and UV divergence degrees into a single conceptual origin. An explicit computation works out the conjugated kinetic operator for a densitized scalar field psi = |g|^{1/4} phi, including a conformal-class expansion and a dimension-independent normal-coordinate computation of the conjugation potential V(p) = R/6. Contact terms and counterterms are identified with distributions supported on the diagonal, expressed cleanly via the canonical bi-half-density delta kernel.

---

## Strengths

- **Mathematical correctness throughout.** The explicit computation of the conjugated Laplacian (Derivation HD-D1.2), the conformal-class expansion (HD-D1.3), and the normal-coordinate result V(p) = R/6 (Remark HD-D1.3b) are all verified and internally consistent. The claim that 1/6 = xi_conf only at D=4 is correctly derived and properly hedged ("at leading Ricci order").

- **Scope discipline is exemplary.** The paper is precise about what it does and does not prove: BV half-densities are flagged as outlook only; the Planck-area program is explicitly deferred to a companion note; the D=4 simplification in Derivation HD-D1.3 is explicitly labeled as not a dimension-selection or conformal-invariance claim. This prevents overclaiming and makes the paper's contribution well-defined.

- **Remark HD-D1.3a now handles the bundle distinction correctly.** The current text opens by noting that the half-density conjugate and the Yamabe operator act on sections of different line bundles (conformal weight D/2 vs. (D-2)/2), identifying this as the primary conceptual reason they differ before any coefficient comparison. This was the main clarity gap in the prior draft; it is now resolved.

- **Section 3 correctly flags signature-independence.** The parenthetical "(The half-density conjugation psi = |g|^{1/4} phi is a purely density-bundle operation and is signature-independent; the specific operator P and its Green function properties depend on the metric signature.)" added in the first line of Section 3 resolves the ambiguity about Lorentzian vs. Euclidean that was identified previously.

- **Remark HD-D4.1 (density operator doubling) is now adequately anchored.** The remark explicitly ties the doubled-kernel composition to the intrinsic bi-half-density structure: "The composition in both slots is intrinsic (no background measure needed) precisely because K_t is a bi-half-density." This closes the previously noted gap.

- **Remark HD-D4.5 (proper-time representation / D/2 chain).** The parenthetical summarizing the companion note — "which shows the d/2 exponent is uniquely forced by semigroup composition under dimensional homogeneity — across temporal composition, Van Vleck determinant, heat kernel, and renormalization thresholds" — makes this remark stand alone for readers without access to the companion note. This was correctly added.

- **Derivation HD-D1.1 (identity kernel).** The coordinate-free characterization of K_Id as the distributional section of the external tensor product characterized by the pairing property integral K_Id(x,y) f(y) = f(x) is now present, resolving the missing distributional well-definedness statement.

- **The D/2 unification narrative is compelling and well-executed.** Remark HD-D4.5, Example HD-D4.3, Remark HD-D5.3, and Derivation HD-D1.1a form a coherent chain that would be difficult to achieve in an alternative formulation.

- **References are appropriate and properly annotated.** The addition of Parker-Toms (2009) §6.3 provides authoritative external validation that the half-density form of the curved-space propagator is not merely an internal convention — it appears in the QFT-on-curved-spacetime literature.

---

## Weaknesses

### MAJOR

- None identified. The two MAJOR concerns from the previous round (the "exactly absorbs" overclaim in HD-D1.3b, and the missing external reference for the bi-half-density propagator in QFT) have both been resolved correctly.

### MINOR

1. **Section 5 remark ordering remains non-sequential.** Remark HD-D5.1 (derivative of the diagonal delta kernel) appears in the text after HD-D5.3b (dimensional regularization), despite being labeled HD-D5.1 and being logically prior to the counterterm remarks. The opening of Section 5 notes that "remarks in this section are numbered by conceptual group rather than in textual order," which mitigates the issue somewhat, but a reader working through the section in text order will encounter HD-D5.3 before HD-D5.1. The label-convention disclaimer helps but does not fully substitute for sequential presentation. This was flagged in Round 1 and remains; it is non-blocking but a light reordering (move HD-D5.1 and HD-D5.2 before HD-D5.3) would improve readability.

2. **Remark HD-D4.1 (density operator doubling): the notation K_{rho_0}(x', y') is introduced without definition.** The formula for K_{rho_t}(x,y) uses K_{rho_0}(x', y'), implying that density operators have kernels in the bi-half-density sense, but this extension is not stated. A one-sentence note that "density operator kernels rho(x,y) are bi-densities — or, equivalently, products of two bi-half-density kernels — and are defined here via K_{rho}(x,y) = rho_scalar(x,y) |dx|^{1/2}|dy|^{1/2}" would close this gap.

3. **HD-D1.3b: the caveat on subleading curvature terms could be quantified slightly.** The text says "subleading curvature terms (R^2, R_{mu nu} R^{mu nu}, Box R, ...) are not affected by this cancellation." This is correct, but a reader might wonder whether the subleading mismatch is also D-independent or whether it acquires D-dependent coefficients. Adding a brief phrase such as "and their coefficients remain D-dependent" would prevent a potential misreading.

---

## Verdict

**Recommendation:** ACCEPT

**Justification:** The revised paper is mathematically correct, precisely scoped, and well-written. All MAJOR concerns from the previous round have been resolved; the remaining MINOR issues are presentational (ordering, one missing one-line definition, one missing qualifier) and do not undermine the paper's correctness or novelty. The paper makes a clean, useful contribution by establishing that the bi-half-density kernel language already implicit in standard QFT propagator definitions becomes explicit and canonical under the half-density formulation, and by tracing the D/2 normalization exponent across four distinct contexts.

---

## Detailed Comments

- **Section 5, remark ordering (Minor 1):** Move HD-D5.1 and HD-D5.2 to appear before HD-D5.3 so that the distributional identity (the primitive object) precedes its applications (mass counterterm, wave function renormalization). The label-convention disclaimer at the top of Section 5 may then be shortened or removed.

- **Remark HD-D4.1 (Minor 2):** Insert one sentence after the formula for K_{rho_t} defining what K_{rho_0}(x', y') means in the bi-half-density sense.

- **Remark HD-D1.3b (Minor 3):** After "are not affected by this cancellation," insert a brief qualifier: "and retain D-dependent coefficients in general."
