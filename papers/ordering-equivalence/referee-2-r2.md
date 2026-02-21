# Referee Report: Operator Ordering as Equivalence Class: Stratification and Measurability

**Referee:** referee-2
**Round:** 2
**Date:** 2026-02-21
**Paper:** pub-track/sent/ordering-equivalence/main.md

---

## Summary

The paper argues that quantum operator ordering is a gauge freedom within an equivalence class,
structured by a four-layer stratification (principal symbol, connection, scalar potential, domain).
It presents two worked examples — position-dependent mass (PDM) in 1D and quantization on a curved
Riemannian manifold — and connects the framework to star-product automorphisms, path-integral
time-slicing, and the Refinement Compatibility Principle (RCP). The revised version addresses the
two major issues raised in Round 1 and resolves most of the minor issues. The paper is substantially
improved.

---

## Round 1 Issue Tracking

### MAJOR Issues

**M1 (Layer 2 universality claim too broad): RESOLVED.**

The original Proposition OE-P1.1 listed left and right orderings among the prescriptions for which
Layer 2 universality holds, which was incorrect. In the revised version, Proposition OE-P1.1 now
reads "Let alpha and beta label two *geometric* (self-adjoint) ordering prescriptions (e.g., Weyl,
half-density)." Left and right orderings are no longer included as examples in the proposition.
Furthermore, a new "Remark (non-geometric prescriptions)" has been added immediately after the
proposition, which explicitly carries out the calculation showing that left ordering of f(q)p^2
gives no first-derivative term (Layer 2 = 0) and right ordering gives 2f'(q)d/dq (Layer 2 differs
from the geometric case). This remark also correctly notes that Proposition OE-P1.1 applies only
to geometric (self-adjoint) prescriptions, with left/right orderings explicitly excluded from the
class. The fix is complete and correct.

**M2 (Omega factor in Section 3.4 dimensionally inconsistent): RESOLVED.**

The revised Section 3.4 now introduces a dimensionless parameter alpha_0 = alpha * a^2 (where
a = sqrt(hbar/(m*omega)) is the oscillator length) and makes the unit conversion explicit:
"Rewriting in oscillator units (q = a*q_tilde, hbar^2 * alpha = hbar*omega * alpha_0)." This
provides the normalization step that was missing in Round 1. The omega factor in the energy formula
is now dimensionally accounted for: when alpha has dimensions 1/length^2, the combination
hbar^2 * alpha has dimensions of energy, and in oscillator units this becomes hbar*omega * alpha_0
with alpha_0 dimensionless. The formula and numerical estimates in Proposition OE-P1.2 are now
consistent with the algebra in Section 3.3. This is a satisfactory resolution of M2.

### MINOR Issues

**m1 (Weyl label inconsistency): RESOLVED.**

The revised paper now uses "LR symmetric" labeling consistently throughout. Section 7.1 explicitly
refers to "LR symmetric and half-density orderings" rather than conflating with "Weyl." The
notation is now uniform.

**m2 (OE-P1.5 lacks proof or precise citation): PARTIALLY RESOLVED.**

Proposition OE-P1.5 continues to cite "[DeWitt1957, §V]" for the midpoint-Stratonovich-half-density
correspondence. This is a plausible citation, but the R1 report asked for a primary source that
proves the correspondence specifically in the operator-ordering sense, or a brief derivation. The
DeWitt §V citation is more focused on path-integral measure issues than on the operator-ordering
identification per se. More precise references would be Langouche, Roekaerts, and Tirapegui (1982)
"Functional Integration and Semiclassical Expansions" or Kleinert's "Path Integrals" Ch. 10, which
prove the midpoint-Stratonovich-ordering connection in detail. This is a minor remaining gap.

**m3 (Heat kernel derivation in Section 4.4 incomplete): NOT RESOLVED.**

Section 4.4 still presents the Van Vleck determinant expansion
"ln Delta(x,y)^{1/2} = -(1/6) R(y) t + O(t^2)" without citation to a proof, and the step
claiming that "differentiating with respect to t at t=0+ yields the (hbar^2/6m)R(q) term in the
Hamiltonian" remains unexplained. Why does the log-expansion of the Van Vleck determinant translate
into an additive scalar potential in the Hamiltonian? This identification requires the short-time
heat kernel formula K ~ Delta^{1/2} * exp(iS_cl/hbar) and a comparison with the operator identity
e^{-tH} = e^{-tH_0}(1 - t*V_eff + ...) — neither of which is stated. The existing DeWitt (1957)
citation at the end of the References section is not page-specific. A page-level citation (e.g.,
DeWitt 1957 pp. 393–394, or Avramidi 2000, or Vassilevich hep-th/0306138, §3) would suffice in
place of a derivation. This remains open.

**m4 (Missing von Roos and BenDaniel-Duke references): RESOLVED.**

References 6 and 7 are now von Roos (1983) and BenDaniel-Duke (1966), cited in Section 3 with
full bibliographic information. This is complete.

**m5 ("Minimal Layer 3 corrections" claim): RESOLVED.**

The third bullet in Section 7.2 previously claimed half-density "minimizes the O(hbar^2) scalar
potential," which was unsubstantiated. The revised bullet now reads: "Geometric Layer 3
corrections: The half-density prescription yields a scalar potential with a natural geometric
interpretation ..., though it does not always minimize the absolute magnitude of the O(hbar^2)
correction compared to other prescriptions." The unsupported minimality claim has been removed
and replaced with a qualified, accurate statement. This is resolved.

**m6 (Section 4.2 Weyl-ordering on curved manifold ill-defined): PARTIALLY RESOLVED.**

The revised Section 4.2 now includes the qualifier "naive symmetrization (not the full Weyl
quantization, which requires normal coordinates or the Kontsevich star-product formulation)" before
presenting the H_W formula. This is a meaningful improvement — the reader is now warned that the
expression is not a fully covariant operator. However, the formula itself is still presented
without being made precise (e.g., no specification that it holds in normal coordinates), and no
reference is given to where the curved-space Weyl-ordering problem is treated correctly. The
disclaimer helps but does not fully close the gap, since a reader following the formula naively
on a general manifold would obtain a coordinate-dependent result. A reference to, e.g., Fulling
(1979) or Avramidi (2000) for the correct curved-space generalization would be appropriate.

---

## Strengths

- Both MAJOR issues from Round 1 are cleanly resolved. M1 (the scope of Proposition OE-P1.1) is
  now mathematically correct and precisely stated, with explicit counterexamples for the excluded
  cases. M2 (the dimensional inconsistency in Section 3.4) is resolved by the explicit
  dimensionless-parameter substitution.
- The remark on non-geometric prescriptions (added after Proposition OE-P1.1) is a genuine
  addition: the explicit Layer 2 calculations for left and right orderings sharpen the reader's
  understanding of why "geometric" is the correct boundary for the universality claim.
- The paper retains all its original strengths: explicit algebra, quantitative measurability
  estimates, and the clean identification of Layer 4 as independent of ordering choice.
- Most minor issues are resolved. The reference list now properly credits the PDM ordering
  literature (von Roos, BenDaniel-Duke), and the "minimal Layer 3 corrections" claim has been
  qualified correctly.

---

## Weaknesses

### MAJOR

None remaining from Round 1. No new major issues identified.

### MINOR

**m2' (OE-P1.5 citation insufficient):** The midpoint-Stratonovich-half-density correspondence
(Proposition OE-P1.5) is cited to "[DeWitt1957, §V]" but this source does not directly prove the
operator-ordering identification in the sense used here. A more precise reference (Kleinert Ch. 10,
or Langouche-Roekaerts-Tirapegui 1982) is needed.

**m3' (Heat kernel derivation in Section 4.4):** The Van Vleck determinant expansion and its
connection to the effective scalar potential remain unexplained and uncited with page-level
precision. The gap is not large but is non-trivial for a reader not already familiar with the
heat-kernel expansion technique.

**m6' (Section 4.2, curved-space Weyl formula):** The formula for H_W on a curved manifold is
now labeled as "naive" but is still presented without normal-coordinates specification or a
precise reference. A citation to a treatment that gives the correct curved-space Weyl operator
would close this.

**m_new1 (Section 5.2, standard-ordered star product):** The formula for the standard-ordered
(Wick) star product was flagged in the Round 1 detailed comments (Section 5.2 note) and has not
been addressed in the revision. No citation to Bayen et al. (1978) or Groenewold (1946) is
provided, and the potential confusion between "standard ordering" (all q's left of p's) and "Wick
normal ordering" (all a-daggers left of a's) has not been clarified. This is a minor presentational
issue but one that was explicitly raised and left unaddressed.

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** Both MAJOR issues from Round 1 have been adequately resolved: Proposition
OE-P1.1 is now correctly scoped to geometric prescriptions, and the dimensional inconsistency in
Section 3.4 has been repaired with an explicit unit-conversion argument. The paper's central
technical claims are now sound. The remaining open items (m2', m3', m6', m_new1) are all
presentational or citation-level issues that can be resolved without structural changes to the
argument. No re-review is required after these minor fixes; a final editorial check suffices.

---

## Detailed Comments for Revision

**Section 4.4 (Van Vleck / heat kernel):** To close m3', add a sentence such as: "The
identification of the log-expansion of Delta with a scalar potential follows from the short-time
expansion K(x,y;t) ~ (2*pi*hbar*t/m)^{-d/2} Delta^{1/2} exp(iS_cl/hbar)(1 + O(t)), together
with the operator identity relating d/dt|_{t=0} K to H; see DeWitt (1957), pp. 392–394, or
Vassilevich, Phys. Rept. 388 (2003), §2.1." This is a one-sentence fix.

**Proposition OE-P1.5:** To close m2', append to the citation: "See also Kleinert, *Path Integrals
in Quantum Mechanics, Statistics, Polymer Physics, and Financial Markets* (5th ed., World
Scientific, 2009), Ch. 10, for a detailed derivation of the operator-ordering correspondence."

**Section 4.2:** To close m6', add after the H_W formula: "For the coordinate-invariant
definition of Weyl quantization on a curved manifold, which requires normal coordinates or the
Kontsevich star-product construction, see Fulling, *Aspects of Quantum Field Theory in Curved
Spacetime* (Cambridge, 1989), Ch. 3, or Avramidi, *Heat Kernel and Quantum Gravity* (Springer,
2000)."

**Section 5.2:** To close m_new1, add a citation to Bayen, Flato, Fronsdal, Lichnerowicz, and
Sternheimer, Ann. Physics 111 (1978), 61–151, and clarify whether the formula refers to the
(q,p)-ordered star product (all q-derivatives before p-derivatives) or to Wick/normal ordering
on holomorphic phase space. The two are distinct and should not be conflated by the label
"standard-ordered (or Wick)."
