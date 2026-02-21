# Referee Report (Round 2): Path-Integral Normalization: The d/2 Exponent as Composition Compatibility Datum

**Referee:** referee-1
**Date:** 2026-02-21
**Round:** 2 (re-review after MINOR REVISION)
**Paper:** pub-track/sent/path-integral-normalization/main.md
**Round 1 report:** papers/path-integral-normalization/referee-1.md

---

## Summary of Round 1 Recommendation

Round 1 verdict was MINOR REVISION. Three MAJOR issues (M1, M2, M3) concerned
overstatement of uniqueness scope, overclaiming exactness of the semiclassical Van
Vleck composition law, and absence of proof for the Levy-stable dimensional exclusion.
Six MINOR issues (m1-m6) concerned algebraic gaps, implicit dimensional tracking,
incomplete citations, a convergence caveat, an unproven half-density claim, and a
fractional-dimension conflation.

---

## Response Assessment

### MAJOR Issues

**M1 (Power-law family assumption in PN-D1.2): RESOLVED.**
Section 2.2 now closes with an explicit statement: "This derivation assumes a
translation-invariant Gaussian kernel family with a power-law prefactor t^{-alpha}.
The more general question --- whether non-power-law prefactors f(t) or non-Gaussian
kernels could also close under convolution --- is addressed by Proposition PN-P1.3
below, which excludes both alternatives via the Cauchy functional equation and
dimensional analysis." The logical architecture has been reorganized: Section 2.2
now reads as a derivation within the stated family, with explicit forward reference
to PN-P1.3 as the complete uniqueness argument. This is the structure requested in
Round 1.

**M2 (Van Vleck semiclassical overstatement): RESOLVED.**
Section 4.2 now opens with a clear regime caveat: "The curved-space composition will
be treated in the WKB / stationary-phase approximation throughout this section. The
exact composition integral... requires stationary-phase methods; the result below is
valid at leading semiclassical order, along a unique geodesic, and in the absence of
caustics (conjugate points). In the presence of caustics, multiple geodesics
contribute with Maslov index corrections and the simple product law fails."
Proposition PN-P4.1 has been revised to state that the d/2 exponent is "exact as a
leading short-time singularity" rather than exact overall. The distinction between
the universal leading singularity (exact) and the full semiclassical composition law
(approximate) is now properly drawn.

**M3 (Levy-stable dimensional exclusion unproved): RESOLVED.**
Proposition PN-P1.3 now contains the full dimensional counting argument that was
previously missing. The text proves explicitly that the system of equations
a + b = 0 (mass), 2b = alpha (length), -b = -1 (time) yields b = 1 and therefore
alpha = 2 is the unique value consistent with the dimensional basis {m, hbar}. The
connection to P4.2 in the cornerstone is retained as contextual framing but no
longer carries the logical weight of the exclusion argument itself, which now stands
independently in the paper. This is a material improvement.

### MINOR Issues

**m1 (Algebraic gap in Remark PN-D1.1a): RESOLVED.**
Remark PN-D1.1a now includes the explicit statement: "each of the d independent
integrals contributes a factor (t_j/(t_1+t_2))^{1/2} per dimension from completing
the square (exactly as in d=1), so the geometric factors ((t_1+t_2)/t_j)^{d/2}
cancel against the Gaussian prefactors." The mechanism that was previously left
implicit is now made explicit.

**m2 (Dimensional analysis not tracking hbar explicitly): RESOLVED.**
Section 3.1 now states: "The full prefactor is (m/2 pi hbar t)^{d/2}, where the
factors of hbar are essential (not implicit) for dimensional correctness." The
displayed dimensional equation tracks [hbar] = ML^2 T^{-1} explicitly and derives
[K] = [L]^{-d} without invoking natural units. This is consistent with the paper's
central theme of hbar necessity.

**m3 (DeWitt-Morette composition law citation incomplete): UNRESOLVED.**
The paper still cites only DeWitt [1957] eq. (3.41) and Morette [1951] eq. (11) for
the Van Vleck multiplicative law. No modern textbook reference (Kleinert, Schulman,
or equivalent) has been added that gives the reader a cleaner path to a rigorous
statement with full hypotheses. This remains a MINOR deficiency; the existing
primary-source citations are historically accurate, but a secondary reference
accessible to non-specialists would be preferable.

**m4 (Convergence at t → infinity for d < 2 case): RESOLVED.**
Section 6.2 now explicitly states "understood in the E + i epsilon sense (the
oscillatory integral converges conditionally at t → infinity via Riemann-Lebesgue;
adding epsilon > 0 gives uniform absolute convergence)." The convergence gap
identified in Round 1 has been closed.

**m5 (Half-density argument not derived in this paper): RESOLVED.**
Section 7.2 point 3 now contains a self-contained paragraph deriving the half-density
transformation rule: under coordinate changes x → x'(x), the two J_y^{1/2} factors
from the left and right kernels combine to cancel the Jacobian of the integration
measure d^d y, making the composition integral invariant. This is the one-paragraph
argument requested in Round 1. The third pillar of the uniqueness argument is now
established within the paper rather than deferred to a companion satellite.

**m6 (Fractal/spectral dimension conflation): RESOLVED.**
Section 7.4 now correctly qualifies the fractal claim: "the heat semigroup property
holds in a weak sense on fractals (see Barlow [1998]... Kigami [2001]...), but
classical path-integral formulations do not apply directly; the effective
normalization exponent is d_s/2." References [Barlow1998] and [Kigami2001] have been
added to the bibliography. The conjecture is no longer asserted without support.

---

## Residual Issue

**m3 (citation gap) persists** but is minor enough that it does not require another
revision cycle. Authors are encouraged to add a secondary reference for the Van Vleck
composition law (e.g., Schulman "Techniques and Applications of Path Integration"
Ch. 17, or Kleinert "Path Integrals" Ch. 10) in a final copy-edit pass, but this is
not a blocking requirement.

---

## Verdict

**Recommendation:** ACCEPT

**Justification:** All three MAJOR issues from Round 1 have been fully resolved by
structural revisions to Sections 2.2, 4.2, and PN-P1.3. Five of six MINOR issues
have been resolved. The single remaining minor citation gap (m3) is non-blocking.
The paper's core mathematical content was correct in Round 1 and remains so; the
revisions have corrected the overstatements and filled the logical gaps without
weakening the central argument. The four-context unification under a single
structural principle (composition semigroup + dimensional homogeneity + half-density
invariance forces d/2) is now presented with appropriate precision and is suitable
for publication.

---

## Notes for the Editor

The paper is a well-executed satellite note establishing a precise structural role for
the d/2 normalization exponent. The revisions are substantive and responsive to all
MAJOR concerns. The remaining citation gap in m3 can be addressed at proof stage
without referee re-review. No further revision cycle is needed.
