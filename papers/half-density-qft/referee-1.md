# Referee Report: Half-Densities in QFT: Propagators as Bi-Half-Density Kernels

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/half-density-qft/main.md

## Summary

The paper argues that QFT propagators and Green functions are most naturally understood as bi-half-density kernels, paralleling the well-known half-density formulation of QM propagators. It establishes that the identity kernel is canonical (no background measure choice), performs an explicit computation conjugating a scalar kinetic operator by |g|^{1/4}, explores conformal-class simplifications and the universal 1/6 R coefficient in normal coordinates, and shows that counterterms/contact terms correspond to distributions supported on the diagonal in the bi-half-density language. The paper connects the D/2 normalization exponent across identity kernels, heat kernels, propagators, and renormalization thresholds.

## Strengths

- **Clear scope discipline.** The paper explicitly states what it does and does not cover (e.g., BV half-densities flagged as outlook only, Planck-area program deferred). This prevents overclaiming and makes the paper self-contained.

- **Explicit computation as anchor.** The worked computation of the densitized scalar field (Section 3, Derivations HD-D1.2 and HD-D1.3) is concrete and checkable, providing a solid foundation for the more conceptual sections.

- **Remark HD-D1.3b is the highlight.** The normal-coordinate computation showing V(p) = R/6 for all D and all Riemannian metrics, with the observation that this matches conformal coupling only at D=4, is clean and well-presented. The connection to the Seeley-DeWitt coefficient a_1 is correctly noted.

- **Unified D/2 narrative (Remark HD-D4.5).** The paper effectively ties together four manifestations of the D/2 exponent (identity kernel, heat kernel, flat propagator, mass counterterm) as aspects of the same half-density volume scaling. This is well supported by the companion papers [PathIntegralNormalization] and [delta-objects].

- **References are appropriate and well-annotated.** Bates-Weinstein, Hormander, DeWitt, Vassilevich, Costello, and Wald are the right sources. Open-access links are provided where available.

- **Remark HD-D5.1 is mathematically clean.** The coordinate-free derivation of the derivative-of-delta identity via Lie derivatives on half-densities is a nice formulation that avoids the usual coordinate-dependent sloppiness.

- **Good layering from concrete to abstract.** The paper moves from the explicit scalar-field computation to the general kernel semantics to the contact-term/counterterm interpretation, each layer building on the previous.

## Weaknesses

### MAJOR

- None identified. The mathematical content is correct within its stated scope, and the paper does not overclaim.

### MINOR

1. **Remark HD-D1.3a could be sharper on "distinct from."** The remark says half-density conjugation is "distinct from conformal coupling" but then shows that the distinction is a mismatch of zeroth-order terms. It would help to add one sentence stating explicitly: the conjugated operator and the Yamabe operator act on sections of *different* bundles (conformal weight D/2 vs. (D-2)/2), which is the primary conceptual reason they differ, before getting into the coefficient comparison. As written, a reader might think the distinction is merely numerical.

2. **Remark HD-D4.1 (density operator doubling) is somewhat orphaned.** It is stated without proof or detailed reference, and the connection to the rest of the paper's narrative is thin. Consider either expanding it slightly (e.g., noting that the doubled kernel composition is itself intrinsic in the bi-half-density framework) or demoting it to a brief footnote.

3. **Section numbering of Remarks is non-sequential.** Remark HD-D5.1 appears after HD-D5.3b in the text (Section 5), which suggests the remarks were added incrementally and the numbering was not harmonized. This does not affect content but slightly hinders navigation. A renumbering pass (or a note explaining the label convention) would help.

4. **Missing explicit statement of distributional well-definedness.** In Derivation HD-D1.1, the identity kernel is written as delta(x-y)|dx|^{1/2}|dy|^{1/2}. This notation presupposes a coordinate chart; the coordinate-free statement would be that K_Id is the distributional section of the external tensor product of half-density bundles characterized by the pairing property. This is implicit but never stated. One sentence would suffice.

5. **Scope of "Lorentzian/Euclidean" in Section 3.** The action is written with \sqrt{|g|} and the pairing is Riemannian, but the kinetic operator P includes \nabla^2 which changes signature between Lorentzian and Euclidean. The paper could note more explicitly that the half-density conjugation is signature-independent (it is purely a density-bundle operation), while the specific operator P and its Green function properties depend on signature.

6. **The [PathIntegralNormalization] reference (Remark HD-D4.5) is internal.** For a reader outside the project, this reference is inaccessible. Consider adding a brief self-contained sentence summarizing the key result being cited, so the remark stands alone.

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** The paper is mathematically correct, well-scoped, clearly written, and makes a useful pedagogical and structural contribution by connecting half-density kernel semantics from QM to QFT propagators and counterterms. The minor issues are all presentational (sharpening remarks, harmonizing numbering, adding brief clarifications) and do not require re-review.

## Detailed Comments

- **Line 128 (Remark HD-D1.3a):** Add one sentence at the beginning noting that the operators act on sections of different line bundles before comparing coefficients.
- **Line 167 (Remark HD-D4.1):** Either add a sentence connecting the doubled-space kernel to the bi-half-density composition rule, or shorten to a one-line remark with a forward reference.
- **Section 5 remark ordering:** Consider reordering so HD-D5.1 precedes HD-D5.2 and HD-D5.3, or adopt a numbering scheme that reflects insertion order (e.g., HD-D5.1, HD-D5.1a, HD-D5.1b for the delta-derivative family, then HD-D5.3 for the mass counterterm family).
- **Line 201 (Remark HD-D4.5):** Add a parenthetical such as "(which shows the d/2 exponent is uniquely forced by semigroup composition under dimensional homogeneity)" after the [PathIntegralNormalization] citation.
- **Section 3, line 55:** After "Lorentzian/Euclidean," add a brief note that the half-density conjugation is signature-independent.
