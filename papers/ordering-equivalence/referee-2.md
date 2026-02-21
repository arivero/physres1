# Referee Report: Operator Ordering as Equivalence Class: Stratification and Measurability

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/ordering-equivalence/main.md

---

## Summary

The paper develops the view that quantum operator ordering is not an "ambiguity" but a gauge
freedom within an equivalence class, structured by a four-layer stratification: principal symbol
(Layer 1), connection terms (Layer 2), O(hbar^2) scalar potential (Layer 3), and self-adjoint
domain data (Layer 4). Two worked examples are given — position-dependent mass (PDM) in 1D, and
quantization on a curved Riemannian manifold — comparing left-right symmetric and half-density
orderings and showing that prescriptions coincide on Layers 1 and 2 and differ only in Layer 3.
The half-density prescription is presented as a "canonical gauge" (analogous to Lorenz gauge in
electromagnetism) within the equivalence class. The paper connects this structure to the
Refinement Compatibility Principle (RCP) representation channel, star-product automorphisms, and
path-integral time-slicing prescriptions, and closes with a quantitative measurability argument
showing Layer 3 differences to be below experimental resolution for GaAs quantum well parameters.

---

## Strengths

- The four-layer stratification is a genuinely useful organizational structure that brings
  precision to an otherwise diffuse literature on ordering ambiguity. The separation of domain
  data (Layer 4) from ordering data (Layers 1-3) is particularly clean and often elided in
  textbook treatments.
- The Layer 2 universality result — that geometrically natural prescriptions (Weyl, half-density)
  share the same first-derivative connection term, differing only at O(hbar^2) — is non-trivial
  and well-supported by the explicit PDM calculation.
- The "canonical gauge" analogy with Lorenz gauge is apt and is handled with appropriate care:
  the paper is explicit (Section 7.2) that the analogy is exact at Layer 2 but breaks at Layer 3,
  where physically inequivalent corrections remain.
- The worked examples are explicit and the algebra is reproducible. The comparison between LR
  symmetric and half-density orderings in Section 3 is carried out fully.
- The quantitative measurability estimate (Section 3.4) grounds the abstract claim with numbers
  and gives the reader a concrete sense of when ordering equivalence is physically relevant.
- The path-integral section (Section 6) and the Ito vs Stratonovich discussion correctly identify
  the correspondence between time-slicing prescription and operator ordering, and the sewing-law
  argument is sound.
- The reference list, though compact, covers the key prior works: DeWitt (1957) for curved-space
  ordering, Ali-Englis (2005) for the quantization survey, and de Gosson (2006) for the
  symplectic/half-density perspective.

---

## Weaknesses

### MAJOR

**M1. The Layer 2 universality claim is stated more broadly than it is proved.**

Proposition OE-P1.1 and Remark OE-H1.1 assert that Layer 2 is universal for "geometric
prescriptions," but the paper only verifies this for two specific prescriptions: LR symmetric
and half-density. Born-Jordan ordering, for instance, is not verified to share Layer 2 (and the
repository notebook `notebooks/deformation-equivalence-physical.md` explicitly notes that
Born-Jordan "differs" at Layer 2 in the PDM case). The proposition's label says "admissible
ordering prescriptions" and gives "Weyl, left, right, half-density" as examples, but left/right
orderings do NOT share Layer 2 with half-density (a simple calculation shows that left ordering
of f(q)p^2 yields no first-derivative term at all, giving f(q)d^2/dq^2, which is NOT
self-adjoint and has a different Layer 2 structure). The claim as stated is incorrect for
non-geometric orderings.

The fix is to restrict the proposition explicitly to "geometric" or "self-adjoint" prescriptions,
and to add a remark clarifying that left/right orderings are NOT members of this subclass. The
Section 3 footnote already hints at this (noting LR "symmetric" differs from left/right), but
OE-P1.1 in Section 2 does not make this restriction explicit.

**M2. The Layer 3 scalar potential formula in Section 3.2 is inconsistent with the observable
estimate in Section 3.4.**

In Section 3.2, the half-density scalar potential for f(q) = 1/m(q) (with no specific form of f
assumed) is given as:

    V_HD = -hbar^2/8 f'' - hbar^2/32 (f')^2/f

For f(q) = 1 + alpha*q^2: f' = 2*alpha*q, f'' = 2*alpha, (f')^2/f = 4*alpha^2*q^2 / (1+alpha*q^2).

Direct substitution gives:

    delta_V = V_HD - V_LR = hbar^2/8 f'' - hbar^2/32 (f')^2/f
            = hbar^2*alpha/4 - hbar^2*alpha^2*q^2 / (8*(1+alpha*q^2))

The paper's Section 3.4 then states:

    delta_V = hbar^2*omega/4 * alpha - hbar^2*omega/8 * alpha^2 * q^2 + O(alpha^3)

The extra factor of omega in the Section 3.4 formula is unexplained and dimensionally suspicious.
If f is dimensionless and hbar^2 has dimensions of action^2, then hbar^2*alpha/4 has dimensions
of action^2/length^2, which is energy in appropriate units. The omega factor appears unmotivated
by the algebra — it is not clear where it enters, and the two formulas are dimensionally
inconsistent unless f has been silently renormalized. The energy gap formula and numerical
estimates that follow may be affected.

The authors must either provide a derivation of the Section 3.4 formula from the Section 3.3
formula (including any intermediate normalization choices), or correct the formula. The numerical
estimates in Section 3.4 (and Proposition OE-P1.2) depend on this formula being correct.

### MINOR

**m1. The "Weyl" label in Sections 3 and 5 is used inconsistently.**

In Section 3.1, the paper introduces the "left-right symmetric" ordering and explicitly says it
"differs from true Weyl quantization." Yet throughout the rest of the paper (Section 7.1, Section
7.2), the discussion compares "Weyl and half-density" orderings, sometimes using "Weyl" to refer
to the LR symmetric ordering used in Section 3, sometimes to the true Weyl (totally symmetric
form). The star-product perspective in Section 5 consistently refers to true Weyl ordering via the
Moyal product. The reader is left uncertain which numerical results (Section 3.4 energy estimates)
correspond to which Weyl variant. The notation should be made uniform and each usage labeled
explicitly.

**m2. Proposition OE-P1.5 (midpoint ↔ Stratonovich ↔ Half-Density) is stated without proof.**

This is a well-known correspondence in the stochastic quantization literature, but the paper
states it as a Proposition without proof or citation to a primary source that proves it in the
operator-ordering sense used here. The claim that midpoint discretization "yields the half-density
(or minimal-coupling) operator ordering" should either be derived (even briefly) or cited
precisely (e.g., Kleinert's path integrals text, or Langouche-Roekaerts-Tirapegui 1982, or
DeWitt 1957 Section V).

**m3. The heat-kernel derivation in Section 4.4 is incomplete.**

The Van Vleck determinant formula is cited (`ln Delta(x,y)^{1/2} = -R(y)*t/6 + O(t^2)`) without
derivation or reference to where this is proved. Moreover, the step "differentiating with respect
to t at t=0+ yields the (hbar^2/6m)*R(q) term in the Hamiltonian" is not explained — why does
the log-expansion of the Van Vleck determinant translate into an additive scalar potential in the
Hamiltonian? For a note that is otherwise quite explicit in its algebra, this is an unusual gap.
Either the derivation should be supplied (even briefly via the short-time heat kernel expansion
K ~ Delta^{1/2} * exp(iS_cl/hbar)), or a specific page-level citation to e.g. DeWitt (1957),
Avramidi (2000), or Vassilevich (2003) should be given.

**m4. Missing reference to von Roos (1983) and BenDaniel-Duke (1966) for PDM ordering.**

The position-dependent mass ordering problem has an established literature, particularly:
- O. von Roos (1983), Phys. Rev. B 27, 7547 — the standard reference for ordering ambiguity in
  PDM semiconductor theory, introducing a parametric family of orderings
- D.J. BenDaniel and C.B. Duke (1966), Phys. Rev. 152, 683 — the BDD ordering, widely used in
  heterostructure calculations

These are standard references in the PDM ordering literature and should be cited in Section 3.
Omitting them may create an impression of novelty where the problem setup is well-known.

**m5. The Lorenz gauge analogy requires a caveat about its limitations.**

Section 7.2 correctly notes the analogy breaks at Layer 3. But it also claims (Section 7.2,
third bullet): "Minimal Layer 3 corrections: For many systems, the half-density prescription
minimizes the O(hbar^2) scalar potential." This is stated without proof or example. For the PDM
case, the half-density Layer 3 correction (`-hbar^2/8 f'' - hbar^2/32 (f')^2/f`) is not
obviously "minimal" compared to LR (`-hbar^2/4 f''`); the comparison depends on the sign of f''.
The claim should be qualified or removed.

**m6. Section 4.2 (Weyl-ordering on curved manifold) is incomplete.**

The Weyl-ordering generalization on a curved manifold is given as:

    H_W = -(hbar^2/2m) * (1/2) [g^{ij} d_i d_j + d_i d_j g^{ij}] + V

This expression is not well-defined as written on a general manifold, because `g^{ij}` and
`partial_i partial_j` do not commute, and symmetrizing them naively does not yield a covariant
operator. The Weyl ordering generalization to curved space is non-trivial (and in fact
prescription-dependent). The expression should either be made precise (e.g., by specifying that
it is evaluated in normal coordinates, or by using the Kontsevich star-product formulation) or
replaced with a reference.

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The paper contains one significant mathematical error (M1: the Layer 2
universality claim is too broad) and one formula inconsistency that undermines the quantitative
measurability result (M2: the omega factor in Section 3.4). Both are correctable, but they affect
the paper's central technical claims and must be verified before publication. The minor issues
(m1-m6) are largely presentational and should be addressed in the same revision round.

---

## Detailed Comments

### Section 2 (OE-P1.1)

The proposition lists "Weyl, left, right, half-density" as "admissible ordering prescriptions"
satisfying Layer 2 universality. Left ordering of f(q)p^2 gives f(q)(-ihbar d/dq)^2 = -hbar^2
f(q) d^2/dq^2, which has no first-derivative term at all (Layer 2 = 0). Right ordering gives
-hbar^2 [f''(q) + 2f'(q) d/dq + f(q) d^2/dq^2], which has Layer 2 = 2f'(q) d/dq, not f'(q)
d/dq as in the LR symmetric/half-density case. Neither left nor right orderings have the same
Layer 2 as half-density. The proposition must be restricted.

Suggested fix: change "admissible ordering prescriptions (e.g., Weyl, left, right, half-density)"
to "geometric (self-adjoint) ordering prescriptions (e.g., Weyl, half-density)" and add a remark
that left/right orderings are not self-adjoint and fall outside this class.

### Section 3.1 (LR derivation)

The calculation is correct. The equation `hat_p^2 (1/m(q)) = -hbar^2/2 [f'' + 2f' d/dq + f
d^2/dq^2]` has the overall factor 1/2 from the symmetrization. Checking: `hat_p^2 (1/m) psi =
-hbar^2 d^2/dq^2 (f psi) = -hbar^2 [f'' psi + 2f' psi' + f psi'']`. The factor of 1/2 appears
because the full Hamiltonian is (1/2)[f hat_p^2 + hat_p^2 f], which gives (1/2) of the above sum.
The final formula for H_LR is confirmed correct.

### Section 3.2 (HD derivation)

The HD kinetic operator is written as `-(hbar^2/2) m^{1/4} d/dq (m^{-1/2}) d/dq m^{1/4}`. This
is the half-density factorization where the measure factor is m^{1/2} and the half-density weight
is m^{1/4}. The claimed result `H_HD = -(hbar^2/2)[f d^2/dq^2 + f' d/dq - (1/8)f'' -
(1/32)(f')^2/f]` is consistent with the notebook calculation in
`notebooks/deformation-equivalence-physical.md`, Part 1. The derivation is compact but
recoverable; however, the intermediate steps are suppressed and the reader is told only "Working
through the derivatives" without seeing them. At minimum, the conjugation identity
`e^{-W} d^2/dq^2 e^W = d^2/dq^2 + 2W' d/dq + W'' + (W')^2` (with W = (1/4) ln f) should be
quoted to make the result verifiable.

### Section 3.4 (PDM harmonic oscillator estimate)

The formula `delta_V = hbar^2*omega/4 * alpha - hbar^2*omega/8 * alpha^2 * q^2 + O(alpha^3)`
requires the inclusion of omega. From Section 3.3, `delta_V = hbar^2/8 f'' - hbar^2/32 (f')^2/f`.
For f = 1 + alpha*q^2: `delta_V = hbar^2*alpha/4 - hbar^2*alpha^2*q^2/8 + O(alpha^3)`. The
omega factor suggests the authors may be normalizing q in units of the oscillator length
a = sqrt(hbar/(m*omega)), writing q -> a*q' with q' dimensionless. Under this substitution
alpha*q^2 -> alpha*a^2*q'^2 = (alpha*hbar/(m*omega))*q'^2. If alpha is redefined as a
dimensionless parameter via alpha -> alpha*m*omega/hbar, then the omega factor appears. This
normalization choice must be stated explicitly. Otherwise the formula is dimensionally incorrect
as written (hbar^2/4 * alpha has energy dimensions if [alpha] = 1/length^2, whereas
hbar^2*omega/4 * alpha has energy if [alpha] is dimensionless).

### Section 5.2 (Vey product / standard-ordered product)

The "standard-ordered (or Wick) product" formula `f *_std g = fg + (ihbar/2){f,g} -
(hbar^2/4){{f,g}} + O(hbar^3)` is presented without derivation or citation. This formula
deserves a reference (e.g., Bayen et al. 1978, or Groenewold 1946). The Wick/normal-ordered
product is specifically defined for holomorphic coordinates (a, a†) on phase space and does not
straightforwardly generalize to arbitrary classical phase spaces; calling it "standard-ordered"
in a general setting may be misleading. The distinction between "standard ordering" (all q's to
the left of p's) and "Wick/normal ordering" (all a†'s to the left of a's) should be clarified.

### Section 7.1 (When do ordering differences matter?)

The statement "The PDM harmonic oscillator example (Section 3.4) showed that the energy shift
between Weyl and half-density orderings is |Delta E_0| ~ 0.006-0.06 meV" uses "Weyl" to refer
to the LR symmetric ordering of Section 3.1 (not true Weyl, as noted in the Section 3.1
footnote). This cross-section inconsistency in terminology should be fixed (see m1 above).

### Section 7.3 (RCP connection)

The RCP operational form `O_{h,theta} = O_{h',tau(theta)} circ T` is here applied with theta
including the ordering prescription. The identification of tau(theta) with the "Layer 3 scalar
potential correction" is reasonable, but the claim "T is the unitary transformation (or
star-product automorphism) relating the two orderings" conflates two distinct mathematical
objects: the unitary conjugation of Section 5.3 (which changes the Hamiltonian) and the
star-product automorphism of Section 5.2 (which changes the algebra). These are related but not
identical — the unitary conjugation changes eigenvalues at O(hbar^2), while the star-product
automorphism is a purely algebraic map. The two should be distinguished more carefully, or a
sentence added noting that the unitary transformation is the operator-level realization of the
algebraic automorphism.
