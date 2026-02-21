# Referee Report: Action–Angle Indeterminacy in Central Potentials: A Referee-Safe Witness

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/action-angle-indeterminacy-central-potentials/main.md

---

## Summary

This paper isolates and proves a specific "action–angle indeterminacy" statement for
central potentials: an eigenstate of Lz has a uniformly distributed azimuthal angle
phi, and conversely any state localised in phi requires a broad superposition over m
modes. The core argument is elementary (Fourier analysis on the circle) but the paper
reinforces it with a quantitative uncertainty bound (Proposition 4.2, the circular
uncertainty relation), explicit examples (Dirichlet kernel, von Mises state, harmonic
oscillator Fock states, hydrogen atom), and a large network of contextualising remarks
covering the POVM formalism, entropic uncertainty, Gabor frames, coherent states,
decoherence, quantum Zeno, QND measurement, optical OAM, superfluid vortices, EBK
quantisation, Hamiltonian monodromy, spectral statistics, Gutzwiller trace formula,
and geometric quantization. The stated contribution is the explicit verification in
central-potential quantum mechanics and the near-saturation analysis (Remark 4.4),
with the remainder of the paper positioned as contextual background.

---

## Strengths

- **Correctness of the core claim.** The central statement — Lz eigenstate implies
  uniform phi distribution; phi localisation forces broad m-superposition — is
  rigorously correct. The derivation is clean and self-contained.

- **Referee-safe formulation.** By using the unitary phase variable E = e^{i phi}
  and the circular uncertainty relation rather than the contested self-adjoint angle
  operator, the paper avoids the well-known Pauli-type obstruction on the circle.
  This is the right technical choice and is executed competently.

- **Proposition 4.2 is correctly derived.** The circular uncertainty relation,
  attributed properly to Judge (1964) and Carruthers–Nieto (1968), is derived via
  the Robertson inequalities for (Lz, cos phi) and (Lz, sin phi) and the identity
  Var(cos phi) + Var(sin phi) = 1 - R^2. The derivation is sound.

- **Example 4.3 is arithmetically correct.** The Dirichlet-kernel computation is
  explicit and checkable. The value R = 2M/(2M+1) follows from orthogonality, and
  Var(Lz) = hbar^2 M(M+1)/3 follows from the standard sum formula
  sum_{m=1}^{M} m^2 = M(M+1)(2M+1)/6. The ratio (M+1)(4M+1)/(3M) is verified
  algebraically.

- **Remark 4.4 (von Mises state) is physically well-motivated.** The identification
  of the von Mises wavefunction exp(kappa cos phi) as the circular analogue of the
  Gaussian, and the near-saturation claim Var(Lz)(1-R^2)/[(hbar^2/4)R^2] -> 1 as
  kappa -> infinity, is standard and correct.

- **Example 6.2 (hydrogen atom) is handled at the appropriate level of depth.** The
  SO(4) symmetry reference, the three-torus interpretation, and the statement that
  the Runge-Lenz vector has vanishing expectation value in an eigenstate (which
  follows because it connects states of different ell) are all correct.

- **Attribution is honest and careful.** The paper explicitly states that Proposition
  4.2 is due to Judge (1964) and Carruthers–Nieto (1968), and frames its contribution
  as verification and the near-saturation analysis in the central-potential context.
  This is the correct scholarly posture for a review/witness note.

- **Reference list is comprehensive and well-formatted.** All 40 references include
  DOIs or ISBNs where applicable, and the citation keys are descriptive and consistent.

---

## Weaknesses

### MAJOR

- **M1: Remark 7.5a is a collision of two papers presented as one note.**
  Remark 7.5a ("Composition law and the t^{-d/2} normalization: representation
  dependence") introduces the composition law of the quantum propagator, the Van
  Vleck determinant in action-angle coordinates, and the energy-surface curvature
  mechanism, then pivots to a claim about Bohr-Sommerfeld quantization emerging from
  single-valuedness of K_t. This material belongs primarily to the "path integral
  normalization" or "cornerstone" thread, not to the central-potential witness paper.
  The paper's stated scope in Section 1 is "which variables can be simultaneously
  sharp in stationary states" — the composition-law forcing of t^{-d/2} is a distinct
  claim that requires its own justification. As written, the remark is internally
  inconsistent: it asserts that t^{-n/2} does NOT arise from the action-angle Van
  Vleck factor, then attributes it to the energy-surface curvature, but does not
  provide a derivation of the curvature determinant calculation det(-d^2 S/dI dI) =
  t * Omega and its connection to the propagator normalisation. The tag "(THREE-AGENT
  result: mathematician + physicist + critic, BB5; sev-3)" at the end indicates this
  remark is still in draft/blackboard status. It should either be fully proved here or
  extracted into the path-integral-normalization paper where it belongs.

- **M2: Remark 5.4 references "Remark 3.5 of the companion uncuttable note" and
  Remark 7.6 also references "the companion uncuttable note."** The companion paper
  (uncuttable-controlled-refinement) is not in the pub-track/sent directory as of
  this review, meaning the cross-references are dangling. A paper that depends on
  unresolved external forward-references cannot be accepted in the current state.
  Either these external references must be replaced by self-contained statements, or
  the companion paper must be submitted and accepted concurrently.

### MINOR

- **m1: Remark 4.4 asserts near-saturation without full proof.**
  The claim that the ratio LHS/RHS of Proposition 4.2 tends to 1 as kappa -> infinity
  for the von Mises state rests on the approximations Var(Lz) ≈ hbar^2 kappa/2 and
  1 - R^2 ≈ 1/(2 kappa). These follow from large-kappa asymptotics of the modified
  Bessel functions I_m(kappa). The remark states the result but does not derive it;
  a one-sentence citation to the standard Bessel asymptotics (e.g., Abramowitz and
  Stegun, or a self-contained computation) would make the claim fully referee-safe.

- **m2: Remark 6.8 uses "saturates the SU(2) Robertson bound" loosely.**
  The statement Delta J_1 * Delta J_2 >= (hbar/2)|<J_3>| applies to a single pair of
  components; spin coherent states saturate this for the pair perpendicular to the
  mean spin direction, but the claim is stated for general hat{n} without specifying
  which pair. This is a standard result but the imprecise phrasing could mislead.

- **m3: Remark 5.3 ("Mandelstam–Tamm temporal analog") asserts the coherent-state
  saturation Delta E * Delta t_x = hbar/2 without proof.** For a harmonic oscillator
  coherent state, Delta E = hbar omega Delta n = hbar omega |alpha| (from Poisson
  distribution with mean |alpha|^2), and Delta t_x = Delta x / |d<x>/dt|. The claim
  that this product equals hbar/2 is true but non-trivial; a reference or brief
  computation should be provided.

- **m4: The paper structure is architecturally unbalanced.**
  The main body (Sections 1–7) contains a modest core result (the uniform-phi
  witness and Proposition 4.2) that is correct and clearly stated, but is heavily
  outnumbered by approximately 25 remarks, many of which are substantial sidebars.
  The remarks add genuine depth but several (3.3 OAM of light, 3.4 superfluid
  vortices, 7.2 spectral statistics, 7.4 Gutzwiller trace formula) are loosely
  connected to the central-potential witness claim. This is a presentational concern,
  not a scientific error, but the paper would benefit from a brief paragraph in the
  Introduction justifying the remark-heavy structure (e.g., as a companion
  reference/survey node in the satellite network).

- **m5: Remark 2.2 states "the sum runs over the appropriate spectrum (all integers
  for Lz, non-negative integers for the oscillator number operator)" but gives a
  single formula d Pi(phi) = (2pi)^{-1} sum_{m,n} |m><n| e^{i(m-n)phi} dphi valid
  for the doubly-unbounded case.** For the non-negative integer case (oscillator),
  the analogous POVM is not exactly the Fourier transform on Z but on N_0, and the
  resolution of identity int d Pi(phi) = I requires more care because the phase
  states are not orthogonal in the same way (this is related to the vacuum-projection
  obstruction discussed in Remark 2.1). The paper should either restrict the POVM
  formula to the Lz case (where it is clean) or give the oscillator POVM separately
  with the appropriate correction terms.

- **m6: Remark 6.5 states that squeezed states of the form D(alpha_0) S(xi) |0>
  "saturate the Heisenberg bound Delta X_1 Delta X_2 = hbar/2 at every point."**
  This is true for the dimensionless quadratures of a single oscillator mode. However,
  "Heisenberg bound" is being used where "Robertson bound" or "minimum uncertainty
  state" is more precise; the Heisenberg uncertainty principle in its common usage
  refers to the position-momentum pair in physical units, not dimensionless
  quadratures. The notation should be standardised or qualified.

- **m7: Remark 7.5 claims "the metaplectic correction (Blattner, Kostant, Sternberg)
  accounts for the half-density structure of the cornerstone manuscript, adding the
  (1/2)hbar omega zero-point energy that naive geometric quantization misses."** This
  is substantially correct but the citation "Blattner, Kostant, Sternberg" is not in
  the reference list. A proper reference should be added (e.g., Blattner, 1977, or
  Guillemin–Sternberg, "Geometric Asymptotics," AMS 1977).

- **m8: Remark 3.4 states that multiply charged vortices (n > 1) "decay into n
  single-quantum vortices on millisecond timescales."** The timescale depends
  strongly on the trap geometry, condensate density, and interaction strength; for
  dilute BECs it is milliseconds to tens of milliseconds, but this is not universal.
  The claim should be weakened to "typically milliseconds under dilute-BEC
  conditions" or given a specific reference for the timescale.

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The core result (Sections 1–4, the uniform-phi witness and
Proposition 4.2) is correct, well-attributed, and referee-safe. However, Remark 7.5a
introduces composition-law material that is either incomplete or belongs to another
paper, and two cross-references to an unpublished companion note create dangling
dependencies that cannot be resolved within this paper as submitted. Both MAJOR items
must be addressed before acceptance.

---

## Detailed Comments

**Section 1 / Scope:**
The stated scope — "which variables can be simultaneously sharp in stationary states"
— is clean and appropriate. The explicit disclaimer about self-adjoint angle operators
is correctly positioned here.

**Section 2 / The [L_z, E] = hbar E commutation relation:**
The derivation is implicit but correct. Acting on e^{im phi}, L_z gives m hbar e^{im phi};
acting E = e^{i phi} first shifts m to m+1, giving (m+1) hbar times the shifted state,
so [L_z, E] e^{im phi} = hbar e^{i(m+1) phi} = hbar E e^{im phi}. This is the standard
result and is correctly cited as "capturing the operational content."

**Remark 2.1 (Susskind-Glogower):**
The formula E_+ E_- = I - |0><0| is correct and the discussion of the vacuum-projection
obstruction is accurate. One minor point: the paper defines E_- = sum |n><n+1| =
a (N+1)^{-1/2} but this is actually the Susskind-Glogower operator in its lowering form.
The labeling E_- for the lowering operator (shifting n down) is consistent with the
subsequent commutator [N, E_-] = -E_- (lowering eigenvalue by 1). However, the
original Susskind-Glogower paper uses the notation E_+ for the raising direction and
some texts use the opposite convention. The paper should add a brief notational note
to prevent confusion.

**Remark 2.2 (Phase POVM):**
See Minor weakness m5 above. The POVM formula is correct for the L_z case (integers).
For the oscillator (non-negative integers), the phase states are not a complete
orthonormal set in H = ell^2(N_0), and the verification of resolution of identity
requires a more careful argument. The remark should be restricted to the integer case
or the oscillator POVM handled separately.

**Remark 2.3 (Pegg-Barnett):**
The description is accurate. The statement that matrix elements of [N, Phi_PB] approach
i as s -> infinity (for physical states) is correct; the reference PeggBarnett1989 is
in the list. The phrase "the phase operator is not defined at any single finite
truncation, but as a controlled limit" is slightly confusing — the operator IS defined
at each finite truncation, but the claim is that the limiting object is well-defined
for expectation values. This should be rephrased.

**Section 3 / Remark 3.2 (Dipole selection rules):**
The derivation of Delta m = q from the azimuthal integral is correct. The additional
statement that the Delta l = pm 1 rule "is not a consequence of the azimuthal Fourier
structure" is technically accurate (it arises from the polar and radial integrals via
parity arguments and Clebsch-Gordan coefficients). This is a useful clarification
that prevents the reader from over-generalising the azimuthal Fourier argument.

**Section 4 / Proposition 4.2:**
The derivation via two Robertson inequalities is correct. The only gap is that the
paper does not state what "Var(cos phi) + Var(sin phi) = 1 - R^2" follows from; this
is immediate from the definitions Var(cos phi) = <cos^2 phi> - <cos phi>^2 and
similarly for sin phi, combined with cos^2 + sin^2 = 1 and R = |<e^{i phi}>|. A
single sentence spelling this out would make the derivation fully self-contained.

**Example 4.3:**
The computation of R for the Dirichlet kernel requires care. The claim is R = <e^{i phi}>
= sum_{m,m'} c_m^* c_{m'} delta_{m', m+1} = (1/(2M+1)) * (number of pairs with both
m and m+1 in {-M,...,M}). There are 2M such pairs (m = -M, ..., M-1), so
R = 2M/(2M+1). This is correct.

For Var(L_z): <L_z> = 0 by symmetry. <L_z^2> = hbar^2 * (1/(2M+1)) sum_{m=-M}^{M} m^2
= hbar^2 * (2/(2M+1)) * M(M+1)(2M+1)/6 = hbar^2 M(M+1)/3. Correct.

The ratio (M+1)(4M+1)/(3M) at M=1 gives 2*5/3 = 10/3 ≈ 3.33. Correct.

**Remark 5.4 (Aharonov-Bohm):**
See Major weakness M2. The reference to "Remark 3.5 of the companion uncuttable note"
is a dangling external reference. The claim about EBK quantization with flux
modification I_k = (n_k + alpha_k/4) hbar + e Phi/(2pi) mixes the radial quantization
condition with a flux term that strictly speaking enters only through the azimuthal
action; the formula as written suggests all action integrals acquire a flux shift,
which is incorrect — only the azimuthal action integral around the solenoid is
modified. This should be clarified: for a ring geometry, only the one action integral
around the loop acquires the flux term.

**Remark 7.5a:**
See Major weakness M1. Beyond the scope and completeness issues, there is a subtle
notational problem: the paper writes the composition integral as int e^{iI*(theta-theta')/hbar}
e^{iI*(theta'-theta'')/hbar} dtheta' = e^{iI*(theta-theta'')/hbar} * (2pi)^n. This is
correct only if the phase factors are linear in theta, which holds for the free-particle
limit but requires that H depends only on I (the action), not on theta (which is the
angle-representation assumption). The paper acknowledges that S_cl = -H(I)t +
I*(theta - theta') but does not state explicitly that this requires I to label the same
torus on both legs of the composition — a non-trivial requirement when the tori are not
flat. For integrable systems this is fine, but the derivation as written would benefit
from a statement of the domain of validity.

**Remark 7.5 / Missing citation:**
The "Blattner, Kostant, Sternberg" metaplectic correction is cited in the text but no
reference appears in the numbered list. Add a reference (suggested: R. J. Blattner,
"The metalinear geometry of non-real polarizations," in Diff. Geom. Methods in Math.
Phys., Springer LNM 570, 1977; or Guillemin-Sternberg, "Geometric Asymptotics," AMS
Mathematical Surveys 14, 1977).

**References overall:**
Reference [TongQMLectures] lacks a URL and DOI; it should include the URL of the
lecture notes or at least a retrieval date. All other references are well-formed.
