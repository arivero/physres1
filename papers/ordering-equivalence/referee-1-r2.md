# Referee Report: Operator Ordering as Equivalence Class: Stratification and Measurability

**Referee:** referee-1
**Date:** 2026-02-21
**Round:** 2 (re-review after MAJOR REVISION)
**Paper:** pub-track/sent/ordering-equivalence/main.md

---

## Summary

This is a re-review of the revised paper following a Round 1 MAJOR REVISION verdict.
The paper argues that quantum operator ordering is a gauge freedom within an
equivalence class, structured by a four-layer stratification (principal symbol,
connection, scalar potential, domain). The revision addresses the two MAJOR
deficiencies identified in Round 1: the LR-vs-Weyl labeling inconsistency and the
dimensional error in the numerical estimate. Several MINOR issues were also
addressed. This report assesses whether the MAJOR items have been adequately
resolved and whether any remaining issues justify further revision.

---

## Response to Round 1 MAJOR Issues

### M1: LR vs. Weyl labeling inconsistency — STATUS: SUBSTANTIALLY RESOLVED

The revised paper now clearly labels Section 3.1 as "Left-Right Symmetric Ordering"
and retains the parenthetical distinguishing it from true Weyl quantization. Sections
7.1 and 7.2 now consistently refer to "LR symmetric and half-density prescriptions"
rather than "Weyl and half-density," eliminating the previous mixed-signal problem.
The abstract has been updated to list "(Weyl, half-density, left/right)" as separate
items rather than implying the main comparison is Weyl vs. HD.

**Remaining concern (not a blocking MAJOR, now a MINOR):** The R1 report offered two
resolution paths: (i) commit to LR-HD throughout, or (ii) add a Weyl-HD subsection
quoting the notebook result `-(ℏ²/32)(f')²/f`. The revision followed path (i) but
did not pursue path (ii). A curious reader who checks the notebook will still find
that the Weyl-HD Layer 3 difference exists and is a distinct number from the LR-HD
result `(ℏ²/8)f'' - (ℏ²/32)(f')²/f`. Since the paper has now committed to comparing
only LR vs. HD, this is no longer a MAJOR inconsistency — but the absence of any
remark confirming that the Weyl-HD difference also satisfies Layer 3 deformation
freedom (without changing Layers 1 or 2) is a missed opportunity. A single sentence
or footnote would suffice.

**Verdict on M1:** Resolved to a level that no longer blocks publication.

---

### M2: Dimensional error in numerical estimate — STATUS: RESOLVED

The revised Section 3.4 now explicitly introduces α with dimensions [α] = L⁻², defines
the dimensionless parameter α₀ = α·a² where a = √(ℏ/(m·ω)) is the oscillator length,
states α₀ ~ 0.1–0.3, and quotes the corrected energy-gap shift
|δ(E₁-E₀)| ~ 0.006–0.06 meV for GaAs parameters. Section 7.1 quotes the same
range (0.006–0.06 meV), resolving the internal inconsistency with Section 3.4 that
appeared in the original (where Sections 3.4 and 7.1 quoted figures differing by
4–5 orders of magnitude). The estimate is now self-consistent and reproducible from
the text as written.

**Verdict on M2:** Fully resolved.

---

## Response to Round 1 MINOR Issues

### m1: Lorenz gauge analogy over-stated — STATUS: RESOLVED

The abstract now includes the qualifier: "...analogous to Lorenz gauge in electromagnetism,
though the analogy does not extend to the O(ℏ²) scalar potential layer." This is
exactly the fix requested. The analogy is now consistently presented with its scope
limited to Layers 1 and 2.

### m2: OE-P1.3 imprecision (curved-space Layer 2) — STATUS: NOT RESOLVED

Proposition OE-P1.3 still reads: "connection terms proportional to ∂_i g^{ij} and
∂_i ln|g|, differing only by scheme-dependent numerical coefficients." The R1 report
noted this contradicts the Layer 2 universality claim for PDM on flat space (where
Layer 2 is *identical* between LR and HD, not merely the same *form* with a
scheme-dependent coefficient). This distinction — Layer 2 is identical for PDM on
flat space but scheme-dependent in coefficient for curved-space prescriptions — is
not acknowledged in the revised text. The proposition as stated implies Layer 2
universality extends to curved space in the same strong sense, which is incorrect.

### m3: Vey/Wick product notation — STATUS: NOT RESOLVED

Section 5.2 is unchanged. The attribution "standard-ordered (or Wick)" for the
coefficient-1/4 double-Poisson star product remains without a precise reference.
The suggested fix (cite Ali-Englis [4] Section 4 for this specific expansion) has
not been implemented.

### m4: Missing inline DeWitt citation — STATUS: RESOLVED

Section 4.3 now includes an inline `[DeWitt1957]` citation at the introduction of
V_curv = (ℏ²/6m)R(q), making the attribution traceable.

### m5: Sewing law discussion tautological — STATUS: NOT RESOLVED

Section 6.3 is unchanged. The sewing law is asserted as a constraint on discretization
prescriptions without any example of failure or any argument showing the constraint
is non-trivial. The R1 report suggested either providing such an example or reducing
the section to a remark. Neither has been done.

### m6: Thin reference list — STATUS: PARTIALLY RESOLVED

The references now include [vonRoos1983] and [BenDanielDuke1966], cited inline in
Section 3. These were the most notable omissions for readers familiar with the PDM
literature. Feynman (1951) or Feynman-Hibbs (for path-integral time-slicing) and
Kontsevich (1997) (for the formality theorem and the gauge group of star-products)
remain absent.

---

## Independent Evaluation of the Revised Paper

### Correctness — SATISFACTORY

The core algebraic claims are correct in the revised version. The LR expansion
(Section 3.1), the HD expansion (Section 3.2), and their Layer-3 difference are all
correct. The dimensional analysis is now consistent. The heat-kernel derivation
(Section 4.4) and the star-product automorphism statement (Proposition OE-P1.4) are
standard and correctly presented.

One remaining correctness concern (carried over from m3, now a MINOR): the claim
that Û = 1 + O(ℏ) relating Ĥ_std and Ĥ_W is "unitary" (Section 5.3) is incorrect
in the functional-analytic sense — it is a formal power-series equivalence. The paper
should specify this is a formal deformation statement, not a claim about unitary
equivalence of Hilbert-space operators. This caveat was raised in the Round 1
Detailed Comments (Section 5.3) and remains unaddressed.

### Novelty — SATISFACTORY

The four-layer stratification framework is a useful organizing contribution. The
paper's conceptual stance (treating ordering as gauge freedom rather than ambiguity)
is well-motivated and the identification of half-density as the "canonical gauge" at
Layers 1–2 is a clear, publishable claim.

### Clarity — GOOD

The revised paper is clearer than the original. The LR-vs-Weyl ambiguity was the
main readability obstacle, and its resolution substantially improves the exposition.
The numerical estimate in Section 3.4 is now self-contained. Minor clarity issues
remain: (i) the curved-space Layer 2 claim in OE-P1.3 (m2 above) still has the
potential to mislead readers expecting the same strong universality as the PDM case;
(ii) Section 6.3 reads as an assertion without supporting argument (m5 above).

### Completeness — ADEQUATE WITH GAPS

The main gaps from Round 1 (dimensional analysis, labeling) are fixed. The
residual gaps are: the absence of the Weyl-HD Layer 3 difference (a minor omission
now), the imprecision in OE-P1.3, and the unsupported sewing-law argument.

### References — IMPROVED

The addition of [vonRoos1983] and [BenDanielDuke1966] substantially improves
relevance for the PDM example. The reference list remains incomplete for the
star-product and path-integral sections, but is no longer thin enough to be a
blocking concern.

---

## Strengths

- The two MAJOR deficiencies from Round 1 (M1, M2) are resolved. The paper is now
  internally consistent on both the naming of prescriptions and the numerical
  estimates.
- The abstract qualifier on the Lorenz-gauge analogy (m1) removes the main
  over-statement from the paper.
- The addition of the PDM benchmark references (von Roos 1983, BenDaniel-Duke 1966)
  with inline citations anchors the example in the standard literature.
- The paper's core contribution — four-layer stratification + demonstration that
  geometric prescriptions agree at Layers 1 and 2 — is correct, clearly presented,
  and worth publishing.

## Weaknesses

### MAJOR

None. The M1 and M2 issues from Round 1 are resolved to a publishable level.

### MINOR

- **m2 (unresolved):** OE-P1.3 conflates "Layer 2 identical" (valid for PDM/flat) with
  "Layer 2 same form up to coefficient" (the weaker curved-space statement). The
  proposition should distinguish these cases explicitly.

- **m3 (unresolved):** The "standard-ordered (or Wick)" label in Section 5.2 remains
  non-standard without a precise reference. Suggested fix: cite Ali-Englis [4],
  Section 4, for this specific star-product expansion.

- **m5 (unresolved):** Section 6.3 asserts the sewing law as a constraint on
  discretization without supporting argument or example. Should be reduced to a
  remark or supported by a concrete example.

- **New-m1 (from M1 residue):** A sentence or footnote confirming that the Weyl-HD
  Layer 3 difference also satisfies the Layer 3 deformation-freedom structure
  (without modifying Layers 1 or 2) would close the narrative loop opened by the
  paper's framing of Weyl, LR, and HD as three examples.

- **New-m2 (Section 5.3 formality caveat):** The claim that Ĥ_std = Û†Ĥ_W Û with
  Û unitary should be qualified as a formal power-series statement, not a
  functional-analytic unitary equivalence. As written it is technically incorrect.

- **m6 (partial residue):** Feynman-Hibbs (path-integral discretization) and
  Kontsevich (star-product gauge group) remain uncited; recommended but not blocking.

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** Both MAJOR issues from Round 1 are resolved. The paper is
substantially improved and its core claims are correct and clearly stated. The
remaining unresolved items (m2, m3, m5, plus two new minor issues) are all
addressable without re-review: they require targeted clarifications within existing
sections (a sentence in OE-P1.3, a reference in Section 5.2, a qualifying remark
in Section 6.3, a footnote on Weyl-HD, and a qualifier in Section 5.3), none of
which alter the mathematical substance. If these fixes are implemented, no further
mandatory re-review is required.

---

## Detailed Comments

### OE-P1.3 (m2 fix guidance)

The current text reads: "connection terms proportional to ∂_i g^{ij} and ∂_i ln|g|,
differing only by scheme-dependent numerical coefficients."

Suggested replacement: "For PDM systems on flat space (as in Section 3), geometric
prescriptions produce an identical Layer 2 term (e.g., both LR and half-density give
-(ℏ²/2)f'(q)∂/∂q with the same coefficient). For curved configuration space, the
situation is weaker: geometric prescriptions share the same functional form of the
connection term (proportional to ∂_i g^{ij} and ∂_i ln|g|) but may differ in the
numerical prefactors of these contributions. Layer 2 universality in the strong sense
(identical coefficients) holds for PDM; it holds in the weak sense (universal form,
scheme-dependent coefficient) for curved-space prescriptions."

### Section 5.3 (New-m2 fix guidance)

The sentence "the eigenvalues of Ĥ_W and Ĥ_std differ by O(ℏ²)" should be prefaced
with: "In the formal deformation-quantization sense (formal power series in ℏ),..."
and the claim Ĥ_std = Û†Ĥ_W Û should be clarified as: "...where Û = 1 + O(ℏ) is
a formal invertible transformation (not necessarily a unitary operator on the
Hilbert space)."

### Section 6.3 (m5 fix guidance)

Reduce Section 6.3 to a single paragraph or remark: state that the sewing law must
hold as a consistency condition and note that midpoint (Stratonovich) discretization
satisfies it without additional correction terms, whereas prepoint (Itô) discretization
requires a Jacobian-correction factor to restore the sewing law. A reference to
Feynman-Hibbs Chapter 3 or DeWitt [DeWitt1957] §IV for the explicit calculation
would suffice.
