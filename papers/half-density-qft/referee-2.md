# Referee Report: Half-Densities in QFT: Propagators as Bi-Half-Density Kernels

**Referee:** referee-2
**Date:** 2026-02-21
**Round:** 2 (re-review after MAJOR REVISION)
**Paper:** pub-track/sent/half-density-qft/main.md

---

## Summary

The paper argues that spacetime propagators in QFT are naturally bi-half-density
kernels, making the identity kernel canonical and kernel composition
coordinate-invariant without a background measure. The case is built from three
interlocking threads: (1) a worked scalar-field computation showing that the
densitized field psi = |g|^{1/4} phi conjugates the kinetic operator to a form
symmetric under the flat coordinate pairing; (2) a remark chain in Sections 4-5
establishing that the D/2 exponent unifies identity-kernel normalization, the
heat-kernel short-time behavior, the flat propagator prefactor, and UV divergence
degrees; and (3) a kernel-level account of counterterms as distributions
supported on the diagonal. The paper is explicitly scoped as expository and
connective, deferring BV, interacting theories, and the Planck-area program to
companion notes.

---

## Strengths

- The central identification of bi-half-density kernels as the natural language
  for QFT propagators is mathematically sound and well-supported by standard
  references (Bates-Weinstein, Hormander, Parker-Toms).

- The D/2 unification thread (Remark HD-D4.5) is the paper's strongest
  conceptual contribution. Collecting the four appearances of D/2 --- identity
  kernel normalization, heat kernel short-time behavior (4pi t)^{-D/2}, flat
  propagator prefactor Gamma(D/2-1)/(4pi)^{D/2}, and UV degree Lambda^{D-2} ---
  under a single half-density volume-scaling explanation is correct and
  illuminating.

- Remark HD-D1.3b (universal 1/6 coefficient) is the paper's most technically
  precise result. The normal-coordinate derivation of V(p) = R/6 is correct;
  the identification with the first Seeley-DeWitt coefficient a_1 = (1/6-xi)R
  is accurate; and the D=4 coincidence xi_conf = 1/6 is cleanly separated from
  any claim of conformal invariance.

- Remark HD-D1.3a carefully distinguishes the half-density bundle (weight D/2)
  from the conformal density bundle (weight (D-2)/2) and shows quantitatively
  why the conjugated Laplacian cannot equal the Yamabe operator for any single
  xi. This is a useful clarification that is often elided in the literature.

- Scope management is consistently good throughout. BV, full interacting
  theories, and the Planck-area program are all flagged as out of scope with
  explicit pointers to companion notes; the scope disclaimer after HD-D1.3 is
  appropriately placed.

- The reference list is comprehensive and correctly formatted. Parker-Toms
  §6.3 is now cited for the G-tilde = |g|^{1/4} G_g |g|^{1/4} identity in
  the QFT-on-curved-spacetime context, addressing the gap noted in Round 1.

- The D=4 simplification in HD-D1.3 is clearly labelled as a checked
  simplification for this metric class and not a dimension-selection claim,
  with the SymPy verification noted. The distinction between D=4 cancellation
  in the conformal ansatz and the universal 1/6 result of HD-D1.3b is now
  cleanly articulated across the two consecutive remarks.

---

## Weaknesses

### MAJOR

None identified in this round. The two MAJOR concerns from Round 1 have been
addressed: (1) the "exactly absorbs" phrasing that conflated leading-order and
subleading curvature terms has been replaced by a careful statement in
Remark HD-D1.3b ("the half-density conjugation potential R/6 matches the
conformal coupling ... at leading (Ricci scalar) order; subleading curvature
terms ... are not affected"), and (2) the Parker-Toms §6.3 citation has been
added for the bi-half-density form of the curved-space propagator kernel. No
computational errors are present.

### MINOR

- **M1. Remark HD-D4.2a (index theorem) is still imprecise.** The sentence
  "the index of a Dirac-type operator equals integral of a_{D/2} (up to
  normalization) via the McKean-Singer supertrace formula" remains in Round 2.
  The McKean-Singer formula says index(D) = Tr_s[e^{-tD*D}] is t-independent;
  the Seeley-DeWitt expansion then localizes it on the integral of a_{D/2}.
  But "up to normalization" conceals that in the Dirac case a_{D/2} is the
  A-hat-genus integrand, not a generic multiple of it --- this is the content
  of Atiyah-Singer, not a triviality. Since the paper flags this as beyond
  scope, the simplest fix is to add a parenthetical: "(in the Dirac case,
  a_{D/2} is the A-hat-genus integrand; the general characteristic-class
  connection is beyond this note's scope)." The current phrasing risks
  misleading a reader unfamiliar with McKean-Singer.

- **M2. Remark HD-D4.4 (Van Vleck transport equation) is stated but not
  connected to the main thesis.** The transport equation for Delta^{1/2} is
  correctly quoted from DeWitt, but its role in the paper is left implicit.
  A single sentence --- e.g., "Without the Delta^{1/2} factor, the leading
  heat-kernel term would not transform as a bi-half-density under coordinate
  changes in both slots" --- would anchor the remark to the paper's central
  claim.

- **M3. The label-convention parenthetical opening Section 5 belongs in a
  footnote.** The sentence "(Label convention: remarks in this section are
  numbered by conceptual group ... rather than in textual order)" is a
  meta-comment on editorial numbering, not physics. It interrupts the flow
  of Section 5. Move it to a footnote or drop it; readers can follow the
  numbering without explanation.

- **M4. Remark HD-D5.2 (point splitting / delta-prime) is thin and only
  partially connected to the half-density framework.** The one-dimensional
  example is correct but the second stated reason for its usefulness ---
  "separates canonical distributional objects from scheme-dependent
  scalarizations" --- is not demonstrated within the remark itself. Either
  show explicitly how the half-density structure effects this separation,
  or trim the remark to a single observation without the "two reasons" framing.

- **M5. Abstract pointer to companion notes is still missing.** The abstract
  mentions "scalarization scales and RG as compatibility" developed "in the
  companion notes" and names them in scare quotes but gives no arXiv number,
  tag, or even a footnote reference. The named papers appear in the Reference
  list only as "[PathIntegralNormalization, in preparation]" --- but that
  citation does not appear in the reference list section at the end. If they
  are companion notes in preparation, either add a numbered entry in the
  reference list (marked "in preparation") or add a footnote in the abstract
  pointing to the companion note title.

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** The paper is mathematically correct and the MAJOR concerns
from Round 1 have been satisfactorily resolved; the central claim is clearly
stated and properly qualified. Five minor issues remain, all addressable by
local edits: tightening the index-theorem sentence (M1), adding a connection
sentence to HD-D4.4 (M2), moving the label-convention note to a footnote (M3),
either expanding or trimming HD-D5.2 (M4), and adding a reference-list entry
or footnote for the companion notes cited in the abstract (M5). None affects
the correctness of the results. No re-review should be required after these
edits.

---

## Detailed Comments

**Section 1.** The three-item scope list is precise and well-observed throughout.

**Section 2 / Derivations HD-D1.1 and HD-D1.1a.** Both are correct. The
Gaussian normalization argument cleanly motivates the D/2 exponent before the
machinery of heat kernels is introduced.

**Section 3 / Derivation HD-D1.2.** The integration-by-parts symmetry
verification is correct and sufficient. The explicit coordinate form of nabla^2
is standard (Wald).

**Derivation HD-D1.3 and scope disclaimer.** The conformal-flat expansion is
correct. The scope disclaimer ("not, by itself, a dimension-selection claim")
is placed well and is unambiguous. The SymPy note adds confidence.

**Remark HD-D1.3a.** The conceptual distinction between the half-density bundle
and the conformal density bundle is important and now clearly stated. The
coefficient-mismatch argument for xi_conf vs xi_{half-density} is persuasive and
accurate.

**Remark HD-D1.3b.** The normal-coordinate derivation of V(p) = R/6 is the
paper's most careful piece of mathematics. The conclusions --- dimension-
independence of 1/6, coincidence with xi_conf only at D=4, connection to
a_1 = (1/6-xi)R --- are all correct. Phrase "at leading curvature order;
subleading curvature terms (R^2, R_{muv}R^{muv}, ...) are not affected" is now
properly qualified.

**Section 4 / Remark HD-D4.1.** The density-matrix doubling formula is correct.
The interpretation (bra/ket doubling from bi-half-density structure) is a nice
observation, correctly attributed to the kernel structure rather than to any
additional input.

**Remark HD-D4.2.** The DeWitt-Schwinger expansion is correctly stated. The
identification of K-tilde(t;x,x) ~ (4pi t)^{-D/2} at coincidence as the
"time-parameterized approximate identity" is a useful bridge back to HD-D1.1a.
The intrinsic trace formula --- absorbing sqrt|g| into K-tilde --- is correct
and cleanly presented.

**Remark HD-D4.2a.** See M1 above. The trace anomaly part is correctly stated.
The index theorem sentence needs a parenthetical qualifier as noted.

**Remark HD-D4.4.** See M2 above. Transport equation is correctly quoted.

**Remark HD-D4.5.** The proper-time integral as the bridge from heat-kernel
t^{-D/2} to propagator Gamma(D/2-1) is correctly stated. This is the paper's
clearest summary statement and would make a good lead sentence for the abstract
(optional suggestion only).

**Section 5 / Remarks HD-D5.3, HD-D5.3a, HD-D5.3b.** The counterterm scaling
hierarchy --- mass counterterm Lambda^{D-2}, wave function counterterm Lambda^{D-4},
and the dim-reg pole structure --- is correctly organized via the Seeley-DeWitt
coefficients. The identification of each counterterm as a specific Seeley-DeWitt
coefficient contribution is accurate and useful.

**Remark HD-D5.1.** The Lie-derivative argument for partial_{x^mu} delta =
-partial_{y^mu} delta is correct and is a genuine conceptual clarification
(connection-free derivation of a fact usually stated as a distribution identity).
The phrasing "can be seen cleanly" (if the Round 1 suggestion was adopted) is
appropriate.

**Remark HD-D5.2.** See M4 above.

**Section 6.** The separation between fixed-background half-density semantics
(this paper) and the Planck-area background-free program (companion note) is
clearly and correctly drawn.

**Section 7.** The BV outlook is appropriately brief; Costello is the right
reference.

**References.** All eight numbered references are properly formatted with DOIs,
ISBNs, and OA links. The [PathIntegralNormalization] citation appearing in the
body (Remark HD-D4.5) does not have a corresponding numbered entry in the
reference list --- this should be added or converted to a descriptive footnote
(see M5).
