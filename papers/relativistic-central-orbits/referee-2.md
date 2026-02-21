# Referee Report: Relativistic Central Orbits as Refinement-Witnesses

**Referee:** referee-2
**Round:** 2 (re-review after MAJOR REVISION)
**Date:** 2026-02-21
**Paper:** pub-track/sent/relativistic-central-orbits/main.md

---

## Summary

The paper derives circular-orbit conditions for a special-relativistic particle under
a power-law central force. The central result is the exact identity v = K/L for the
inverse-square law (q=2), which immediately yields the angular-momentum bound L > K/c
as a necessary condition for circular orbits. The paper then extends this bound to all
bound orbits via an effective-potential argument (Section 3.1), studies the SR stability
of circular orbits for general q (Section 5), records the standard Schwarzschild
baseline for comparison (Section 4), and frames the whole as a "refinement-witness"
connecting to the cornerstone paper's geometric programme.

---

## Strengths

- The core algebraic result v = K/L (Section 3) is clean, dimensionally transparent,
  and the paper correctly identifies q=2 as the unique exponent for which the identity
  is mass-independent (Remark 3.1). The dimensional argument is convincing and adds
  genuine explanatory value.

- The effective-potential analysis in Section 3.1 is sound. The three-regime
  classification (L > K/c, L = K/c, L < K/c) is correctly worked out, and the
  Newtonian limits are explicitly verified throughout. The well-depth formula
  W_min = mc^2 sqrt(1 - K^2/(c^2 L^2)) is correct and the stated Newtonian limit
  mK^2/(2L^2) follows from it.

- Remarks 3.1b and 3.1c constitute a genuine organisational contribution. The
  kinetic-exponent scaling rule q_crit = nu + 1 (Remark 3.1c) organises Newtonian
  and SR thresholds into a single framework and is physically transparent. This is
  the kind of unifying observation that makes a note worth reading.

- The SR stability analysis in Section 5 is correctly derived. The boxed stability
  criterion 1 + (2-q) gamma^2 > 0 reproduces the Newtonian limit (gamma -> 1,
  condition q < 3) and correctly identifies q=2 as the boundary between unconditional
  and speed-conditional stability. Remark 5.2d on the epicyclic frequency ratio is
  non-trivial and correctly stated.

- Remark 5.2c (stability-precession duality at q=2: stability factor = gamma^2 omega^2)
  is an elegant observation that connects independent-looking results in Sections 3 and 5.
  It is stated cleanly and correctly.

- The Sommerfeld connection (Remark 3.2b) is correctly presented, including the
  cautionary note about accidental degeneracy with the Dirac spectrum. Referencing
  both Sommerfeld's original paper and the caveat shows appropriate scholarly care.

- References are appropriate and correctly attributed. Landau-Lifshitz section 14,
  Carroll, Boscaggin et al., Bertrand 1873, and Will 1993 are all relevant and
  correctly invoked.

- The paper is self-aware about its satellite role, not overclaiming independence
  from known material.

- The Schwarzschild section (Section 4) is accurate throughout: the photon-sphere
  radius r_ph = 3M, ISCO at r_ISCO = 6M, the formulas L^2(r) = Mr^2/(r-3M) and
  E^2(r) = (r-2M)^2/(r(r-3M)), and the ISCO binding energy eta = 1 - 2sqrt(2)/3
  are all correct. The curvature-attribution remarks (4.3a through 4.3g) are
  well-reasoned and add interpretive value.

---

## Weaknesses

### MAJOR

None identified.

### MINOR

- **Section 4 notation: angular momentum convention shift is not flagged.**
  In Sections 2-3, L denotes total angular momentum (L = gamma m r v). In Section 4,
  L is defined via the Killing field as L = r^2 dphi/dtau, which is specific angular
  momentum (L/m in the notation of Sections 2-3). The paper does not flag this change.
  Remark 4.3g correctly introduces l = L/m for the comparison, but only at that point;
  the preceding text of Section 4 uses L ambiguously. A parenthetical at the start of
  Section 4 ("here L denotes specific angular momentum, equal to L/m in the notation
  of Sections 2-3") would eliminate the ambiguity.

- **Remark 3.1d: the "if and only if" claim in the polygonal-construction argument
  is stated but not established within the note.**
  The remark asserts that the refinement-limit polygonal construction converges to a
  physical orbit "if and only if L > K/c." The "if" direction (L > K/c implies
  existence of a bound orbit) is established by Section 3.1's effective-potential
  argument. The "only if" direction (no bound orbit when L <= K/c) is also in
  Section 3.1. But the remark presents the polygonal argument as if it independently
  establishes the biconditional, which it does not: the polygonal argument identifies
  the bound only for circular orbits (using v = K/L), and the full biconditional is
  carried by Section 3.1. Recommend inserting "for the circular-orbit case" after
  "if and only if L > K/c" in Remark 3.1d to be precise about what the polygonal
  construction independently shows.

- **Remark 3.2 (Binet equation): intermediate step missing.**
  The orbit equation d^2u/dphi^2 + omega^2 u = (mK/L^2) omega^2 is stated with a
  compressed parenthetical sketch of the derivation. For a satellite note that
  otherwise maintains full derivational transparency, one explicit intermediate
  equation (e.g., the SR orbit ODE after time-elimination) would make the remark
  self-contained rather than deferring entirely to external references.

- **Remark 3.2, Newtonian limit check is absent.**
  The precession formula Delta phi_prec = 2pi/omega - 2pi is given and the weak-field
  approximation pi K^2/(c^2 L^2) is stated. The paper does not verify the Newtonian
  limit: as v << c, omega -> 1 and Delta phi -> 0, recovering the closed Newtonian
  orbit. This is a one-sentence check that would complete the logical chain and
  reassure the reader.

- **Section 5, sign-convention prose is slightly inconsistent.**
  The attractive force is written as F(r) = K/r^q with K > 0, directed inward. The
  paper then introduces U via "F_r = -K/r^q, so F = -dU/dr gives U'(r) = K/r^q > 0."
  This states U' > 0, but an attractive force satisfying F = -dU/dr with F_r = -K/r^q
  (inward = negative radial component) requires dU/dr = K/r^q > 0, which is consistent
  with U decreasing toward the center -- the sign is actually correct but the prose is
  written in a way that makes it look like a repulsive potential (U increasing with r
  toward zero from below). Adding the explicit formula U(r) = -K/((q-1)r^{q-1}) for
  q > 1 (stated in the text parenthetically but not prominently) would make the
  convention unambiguous.

---

## Verdict

**Recommendation:** ACCEPT

**Justification:** The paper's mathematical content is correct throughout. The central
results -- the identity v = K/L, the bound L > K/c for all bound orbits, the stability
criterion 1 + (2-q)gamma^2 > 0, the threshold rule q_crit = nu + 1, and the
stability-precession duality at q=2 -- are all correctly derived and properly
contextualised. The identified weaknesses are minor presentational issues (notation
clarification, one missing one-line Newtonian limit check, a precision issue in the
polygonal argument's scope) that do not affect correctness or integrity. The paper is
ready for publication.

---

## Detailed Comments

**Section 4, start:** Add a one-line convention notice: "In this section G = c = 1
and L denotes specific angular momentum (angular momentum per unit mass)."

**Remark 3.1d:** Replace "if and only if L > K/c" with "if and only if L > K/c
(for circular orbits; the full bound for all bound orbits follows from the effective
potential of Section 3.1)."

**Remark 3.2:** Add one sentence after the Hamiltonian sketch: "Eliminating E via
H = E gives the ODE directly in terms of u and phi." Or simply note "see
[LandauLifshitz1975, eq. (14.6)]" with a specific equation reference.

**Remark 3.2, Newtonian limit:** Add "In the Newtonian limit v << c, omega -> 1 and
Delta phi_prec -> 0, consistent with the closed Keplerian orbit."

These are optional editorial improvements for an ACCEPT verdict; the author may address
them or note that they were considered and judged unnecessary without reopening review.
