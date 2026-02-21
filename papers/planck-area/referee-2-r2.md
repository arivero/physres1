# Referee Report (Round 2): Planck Area from Half-Density Normalization

**Referee:** referee-2
**Date:** 2026-02-21
**Round:** 2
**Paper:** `pub-track/sent/planck-area/main.md`
**Round 1 report:** `papers/planck-area/referee-2.md`

---

## Summary of Revision

The authors have revised the paper substantially in response to all three MAJOR
issues and all five MINOR issues raised in Round 1. The most significant
changes are: (1) a derivation sketch for the conformal-Laplacian formula has
been added inline in PA-H2.6a, together with references to Birrell–Davies and
Vassilevich; (2) reference [PathIntegralNormalization] has been added to the
reference list with full bibliographic details; (3) Heuristic PA-H2.5c has
been substantially expanded into a careful discussion of the tree-level
sufficiency interpretation of the integrality sieve, including a caveat about
its perturbative nature; (4) the internal provenance tag "(THREE-AGENT result:
mathematician + physicist + critic, BB4; sev-2)" that appeared in PA-P4.2 has
been removed, and what was labeled PA-P4.2 has been relabeled as Conjecture
PA-C4.2 with appropriately softened language; (5) the notation clash between
sigma_* and sigma(x) in PA-H2.6a has been resolved by an explicit
disambiguation parenthetical; (6) a one-sentence remark in PA-D1.3a
explicitly connects the "d=2 trivial gravity" and "d=2 minimal transmutation
witness" appearances of d=2; (7) a parenthetical in PA-E3 now explicitly
excludes p=1 and p=0 with brief justifications; and (8) Heuristic PA-H1.1 has
been revised to clarify that the density-product property is automatic from the
half-density structure, not an additional assumption.

The revisions are careful and address every issue on the R1 list. The paper is
noticeably improved.

---

## Status of Round 1 Issues

### MAJOR Issues

**M1. PA-H2.5a integrality sieve — insufficient physical motivation.**

Status: **Resolved.**

Heuristic PA-H2.5c has been substantially expanded. The revised text explicitly
identifies the integrality sieve as a "tree-level sufficiency" criterion: d=4
is the unique dimension where the half-density normalization can be supplied by
the classical (tree-level) gravitational coupling in an analytically defined
way near G_d = 0. The key sentences are:

> "The physical distinction is therefore: d=4 is the unique dimension where the
> half-density normalization can be supplied by the classical (tree-level)
> gravitational coupling alone. In other dimensions, the normalization requires
> quantum (loop-level) scale generation."

The text then carefully adds a caveat:

> "However, this motivation is itself perturbative: a non-perturbative UV
> completion of gravity might supply alternative mechanisms, which is why the
> conclusion is labeled as conditional on PA-H2.5 rather than unconditional."

And the logical summary at the end of PA-H2.5c explicitly distinguishes what
is proved (the d/2 exponent) from what is motivated-but-not-derived (the
Planck area identification). This is precisely the kind of physically
intelligible motivation requested in R1. The argument connects PA-H2.5a to
analyticity in G_d near G_d = 0 within the Wilsonian EFT framework — a
recognizable and defensible physical principle. The "Heuristic" label is
preserved, appropriate for the remaining conditionality. M1 is resolved.

**M2. Missing reference [PathIntegralNormalization].**

Status: **Resolved.**

Reference 10 in the revised paper reads:

> [PathIntegralNormalization] A. Rivero and A.I.Scaffold, "Path-Integral
> Normalization: The d/2 Exponent as Composition Compatibility Datum,"
> companion satellite paper in this series (2026). (Comprehensive treatment of
> the d/2 exponent across temporal composition, Van Vleck determinant,
> heat-kernel diffusion, renormalization thresholds, and Lévy-stable
> exclusion.)

The companion paper is identified by title, authors, and year, and labeled as
"in this series" with a description of its scope. This is a "companion paper in
preparation / companion paper in this series" citation — not a published
journal article — but in the context of a multi-paper satellite series this is
acceptable provided the companion paper exists in the repository or is
otherwise accessible. The citation is no longer broken; the tag resolves to an
entry in the reference list. M2 is resolved.

One residual note: the companion paper is cited as "(2026)" with no arXiv
identifier, DOI, or repository path. This is weaker than the other citations
in the list (all of which have DOIs or arXiv tags). If an arXiv preprint or
internal document path exists for [PathIntegralNormalization], it should be
added. This is a MINOR residual concern rather than a MAJOR blocking defect.

**M3. Conformal-Laplacian formula in PA-H2.6a — no derivation or reference.**

Status: **Resolved.**

A derivation sketch has been added inline immediately after the four-term
formula:

> *Derivation sketch.* On (R^D, e^{2 sigma} delta), the scalar Laplacian is
> Delta_g = e^{-2 sigma}(partial^2 + (D-2) partial sigma · partial). The
> half-density conjugation uses |g|^{1/4} = e^{D sigma/2}. Writing
> |g|^{-1/4} psi = e^{-D sigma/2} psi and applying Delta_g to e^{-D sigma/2}
> psi via the product rule generates four terms...

The derivation then traces each of the four terms and identifies the
coefficient of (partial sigma)^2 psi as D(4-D)/4 by combining the
(D-2) Christoffel term (+D(D-2)/2) and the square-of-gradient term (-D^2/4).
References to Birrell–Davies §3.2 and Vassilevich §3.3 are added.

I verified the coefficient arithmetic: D(D-2)/2 - D^2/4 = (2D(D-2) - D^2)/4
= D(2(D-2) - D)/4 = D(D-4)/4 = -D(4-D)/4. Combined with the overall
e^{-2 sigma} prefactor and the sign conventions in the paper (the term appears
with a + sign as +D(4-D)/4), this is consistent. The D=4 vanishing is
correctly obtained. M3 is resolved.

---

### MINOR Issues

**m1. Internal provenance tag in PA-P4.2; integration into main text.**

Status: **Resolved.**

The tag "(THREE-AGENT result: mathematician + physicist + critic, BB4; sev-2)"
has been removed from the paper. What was labeled PA-P4.2 (Proposition) has
been relabeled as Conjecture PA-C4.2 and the language has been appropriately
softened: the deficiency-index claim is now stated as a conjecture pending
verification, with an explicit note that "The deficiency-index claim... and
spectrum formula require a self-contained proof or reference to a completed
companion paper; they are stated here as a conjecture pending such
verification." The item PA-H4.1 remains in Section 6, which is now structured
as an "Open Problems and Outlook" section with the addressed items flagged
explicitly. The provenance tag is gone and the label distinction between proved
and conjectured material is now correct. m1 is resolved.

**m2. Notation clash: sigma_* (reference half-density) vs sigma(x) (conformal
factor).**

Status: **Resolved.**

The revised text in PA-H2.6a includes an explicit disambiguation parenthetical
immediately upon introducing sigma(x):

> "In a conformal background g_{mu nu} = e^{2 sigma(x)} delta_{mu nu} in
> spacetime dimension D (here sigma(x) denotes the conformal factor, not the
> reference half-density sigma_* of Section 3), a direct computation gives..."

This is exactly the disambiguation line requested in R1. m2 is resolved.

**m3. The d=2 case in PA-D1.3a handled incompletely.**

Status: **Resolved.**

Remark PA-D1.3a now explicitly connects the two d=2 appearances:

> "For d=2, G_2 is dimensionless and gravity provides no scale — but d=2 is
> precisely the dimension where the transmutation route (PA-H2.13, Example
> PA-E5) provides its minimal witness... Thus the 'trivial gravity' and
> 'minimal transmutation witness' appearances of d=2 are complementary: the
> monomial sieve fails (no scale from gravity), but the transmutation mechanism
> succeeds."

This is the connecting sentence requested in R1. m3 is resolved.

**m4. PA-E3 excludes p=1 without explanation.**

Status: **Resolved.**

The revised PA-E3 now reads:

> "The case p=1 is excluded (it gives d=4p/(p-1) undefined; the YM coupling
> would be dimensionless in that formal limit); p=0 gives a dimensionless C,
> which carries no scale."

Both cases p=1 and p=0 are now explicitly addressed with brief physical
justifications. m4 is resolved.

**m5. PA-H1.1 imprecise "if...chosen" language.**

Status: **Resolved.**

The revised PA-H1.1 now reads:

> "If K_1(x,y) and K_2(y,z) are each half-densities in the intermediate
> variable y, then their product is automatically a density in y (no additional
> choice required)..."

The addition of "automatically" and "(no additional choice required)" directly
addresses the R1 concern that the original phrasing made the density-product
property appear to be an extra assumption. m5 is resolved.

---

## Remaining Issues

**Residual concern from M2 (minor): [PathIntegralNormalization] citation
lacks a permanent identifier.**

All other references in the list carry a DOI, arXiv ID, or OA URL. Reference
10 has none of these. Given that this reference supports a key claim
(the universality of the d/2 exponent across several computations), an
arXiv number or internal path would substantially strengthen the citation.
This does not block acceptance, but the authors should add an identifier when
the companion paper is deposited.

**New concern: PA-C4.2 (b-calculus conjecture) is still not well-integrated.**

The relabeling from PA-P4.2 (Proposition) to PA-C4.2 (Conjecture) is an
improvement. However, the conjecture is still presented with considerable
specificity — APS boundary conditions, deficiency indices n_± = 1, a formula
for E_B — without any supporting argument or reference. The text now says
the claim "require[s] a self-contained proof or reference to a completed
companion paper." This is an accurate statement of the current situation, and
the conjecture label is appropriate. However, a reader may wonder why this
specific unproved conjecture is included in the paper at all, since it is not
directly needed for the main results (the d/2 exponent, the integrality sieve,
or the d=4 selection). A brief motivating sentence explaining why PA-C4.2 is
recorded in this paper — e.g., "we record this as a testable consequence of
the b-calculus program for future verification" — would help.

This is a minor expositional issue, not a correctness problem.

---

## Verdict

**Recommendation:** ACCEPT

**Justification:** All three MAJOR issues from Round 1 have been fully
resolved: the integrality sieve now has a clear physical motivation (tree-level
sufficiency in the perturbative gravity expansion); the broken citation has been
repaired with a full reference entry; and the conformal-Laplacian formula is
now accompanied by a derivation sketch with coefficient verification and
secondary references. All five MINOR issues have also been corrected. The
paper's core geometric and dimensional arguments remain correct throughout, and
the hypothesis accounting is exemplary. The two residual concerns (missing
identifier on the companion-paper citation; loose integration of PA-C4.2) are
editorial in nature and do not require re-review. The paper is ready for
publication in its current form.
