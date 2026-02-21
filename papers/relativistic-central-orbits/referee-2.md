# Referee Report: Relativistic Central Orbits as Refinement-Witnesses

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/relativistic-central-orbits/main.md

---

## Summary

The paper derives the SR circular-orbit condition for power-law central forces, identifies
the exact velocity identity \(v=K/L\) for the inverse-square case, and infers the angular-momentum
bound \(L>K/c\) as a necessary and sufficient condition for bound orbits (Section 3.1).
It then juxtaposes this with the standard Schwarzschild effective-potential analysis (Section 4),
derives the SR stability criterion and its speed-dependent generalization (Section 5), and
closes with a cluster of remarks connecting the results to Bertrand's theorem, Sommerfeld's
fine structure, the critical-exponent threshold rule, and the "refinement-witness" framing
of the cornerstone paper. The claim is that SR refines Newtonian mechanics by adding
non-trivial admissibility constraints that become trivial as \(c\to\infty\).

---

## Strengths

- The central algebraic result \(v=K/L\) and the bound \(L>K/c\) are correct, cleanly
  derived, and the dimensional argument in Remark 3.1 that uniquely singles out \(q=2\)
  is genuinely illuminating.
- The effective-potential analysis of Section 3.1 is complete and correctly characterizes
  all three regimes (\(L>K/c\), \(L=K/c\), \(L<K/c\)).
- The GR Section 4 is accurate and the computations (photon sphere at \(r=3M\), ISCO at
  \(r=6M\), \(L^2(r)=Mr^2/(r-3M)\), \(E^2(r)=(r-2M)^2/(r(r-3M))\)) are all correct.
- The SR stability criterion \(1+(2-q)\gamma^2>0\) (Section 5.2) and its
  Newtonian limit \(q<3\) are correctly derived and the boxed formula is a useful compact result.
- Remark 3.2b (Sommerfeld connection) is a valuable bridge to quantum history and correctly
  identifies the precession parameter \(\omega\) as the backbone of the fine-structure derivation.
- The Newtonian limit \(c\to\infty\) is tracked consistently throughout: bound \(L>K/c\to L>0\),
  radius formula, and binding energy all recover Newtonian results correctly.
- Remark 3.1c (unified threshold rule \(q_\mathrm{crit}=\nu+1\)) provides a clean
  structural explanation; this is supported by the companion note
  `paper/notes/relativistic-critical-exponent-threshold-rule.md`.

---

## Weaknesses

### MAJOR

- **Remark 5.2d: derivation of the epicyclic frequency ratio is asserted, not derived.**
  The claim that \(\omega_r^2/\omega_\phi^2=3-q-v^2/c^2\) follows from "the Hamiltonian
  expansion of Section 5.1," but Section 5.1 contains no such expansion. The stability
  criterion \(W_L''>0\) is stated, and a boxed formula for \(W_L''(r_0)\) is given, but
  the separate extraction of the radial oscillation frequency \(\omega_r^2=W_L''(r_0)/(\text{effective mass})\)
  and the orbital frequency \(\omega_\phi=L/(\gamma m r_0^2)\) is never performed. Without
  this intermediate step, the ratio formula cannot be verified, and the claim in the same
  remark that "the orbit-equation precession parameter \(\omega\) is the radial-to-orbital
  frequency ratio" (which is non-trivial) is also unverified. The critic's vote noted this
  as a sev-3 issue; it rises to MAJOR here because the duality claim of Remark 5.2c
  (stability and precession unified by \(\gamma^2\omega^2=1\)) depends on it.

### MINOR

- **Remark 3.2 (Binet equation): the SR Binet equation is stated without derivation.**
  The orbit equation \(d^2u/d\phi^2+\omega^2 u=mK\omega^2/L^2\) is attributed to the
  substitution \(u=1/r\) "applied to the SR equations of motion," with citation to
  [BoscagginDambrosioFeltrin2020RelKepler]. For an internal satellite note this is acceptable
  but a brief intermediate step (one equation showing how the SR Hamiltonian \(H=\sqrt{m^2c^4+p^2c^2}-K/r\)
  leads to the Binet form) would make the note self-contained at the level it advertises.
  This does not affect correctness but affects completeness.

- **Remark 3.1d: the polygonal/refinement-compatibility argument is heuristic.**
  The remark asserts that the refinement limit \(N\to\infty\) produces a bound orbit "if and
  only if" \(v<c\) at every vertex, citing "companion note Section 4.4." That section is not
  present in the file submitted; the reader cannot verify the biconditional.
  The remark is the paper's stated link to the cornerstone, so the missing citation target
  is an editorial gap (the companion note may exist elsewhere, but it is not referenced in a
  way the reader can follow here).

- **Section 5 sign convention for \(U(r)\):** The attractive potential is introduced via
  \(U'(r)=K/r^q\) (with no sign), implying \(U(r)>0\) increasing to zero at infinity, which
  corresponds to a repulsive convention. The sentence says "attractive power-law force
  \(F(r)=K/r^q\)," so the force is attractive (pointing inward) but the stated derivative
  of the potential has the wrong sign: for an attractive \(F=-dU/dr\) one needs
  \(U'(r)=-K/r^q<0\), not \(+K/r^q\). In \(W_L(r)=\sqrt{\ldots}+U(r)\) the potential
  should enter negatively for attraction. The final formulas appear correct (the well is
  present in Section 3.1), so this seems to be a sign-convention typo in the setup prose
  rather than a computational error, but it should be clarified.

- **Remark 4.3f: coordinate Kepler law labeled "gauge accident."**
  The observation that \(\omega_\phi^2=M/r_0^3\) holds exactly in Schwarzschild coordinates
  is correct, but calling it a "gauge accident" may mislead readers: it is a coordinate
  identity that follows from the Schwarzschild solution's precise form, not an artifact
  removable by a gauge transformation in the usual sense (since coordinate choice for a
  black-hole exterior is not gauge freedom in the GR sense). A more precise phrase would be
  "a coordinate identity specific to Schwarzschild time."

- **References: [BoscagginDambrosioFeltrin2020RelKepler] is cited for the unperturbed SR
  Kepler equation, but the paper is about periodic solutions to a *perturbed* relativistic
  Kepler problem.** A more direct reference for the unperturbed SR circular orbit condition
  or for the Binet derivation would be preferable (e.g., a classical mechanics text or
  Landau & Lifshitz §14).

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** The paper's core claims are correct and the overall structure serves
the satellite-note purpose well. The single MAJOR issue (Remark 5.2d: epicyclic frequency
ratio asserted without derivation, with downstream impact on the stability-precession duality
claim) must be resolved — either by adding the brief calculation or by downgrading the claim
to a conjecture pending a companion derivation. The MINOR items are genuine but do not
undermine the main results.

---

## Detailed Comments

**Section 5.2, Remark 5.2d (MAJOR):**
The boxed stability criterion in Section 5.2 gives \(W_L''(r_0)=L^2(1+(2-q)\gamma^2)/(mr_0^4\gamma^3)\).
To obtain \(\omega_r\) one must identify the effective mass in the radial oscillator:
\(\frac{1}{2}\mu_r\delta\dot r^2+\frac{1}{2}W_L''(r_0)\delta r^2\), where \(\mu_r\) is the
coefficient of \(\dot r^2\) in the SR Lagrangian at fixed \(L\). For a relativistic particle,
\(\mu_r=\gamma^3 m\) (the longitudinal mass), so \(\omega_r^2=W_L''(r_0)/(\gamma^3 m)\).
Substituting the boxed formula gives \(\omega_r^2=L^2(1+(2-q)\gamma^2)/(m^2 r_0^4\gamma^6)\).
Then \(\omega_\phi=L/(\gamma m r_0^2)\) gives \(\omega_\phi^2=L^2/(m^2r_0^4\gamma^2)\).
Therefore \(\omega_r^2/\omega_\phi^2=(1+(2-q)\gamma^2)/\gamma^4\), which does NOT reduce to
\(3-q-v^2/c^2\) — or at least not obviously. The paper should either supply this algebra
transparently, or check whether the formula \(3-q-\beta^2\) is correct and where the discrepancy
lies. Note: for \(q=2\), the proposed ratio gives \(1/\gamma^4\) from the calculation above,
while the paper claims \(1/\gamma^2=\omega^2\). The discrepancy factor of \(\gamma^2\) needs
resolution.

**Remark 3.1d:**
Voting record indicates mathematician approved the biconditional after verification. For
reader transparency, either include Section 4.4 in the submitted file or replace the
cross-reference with a self-contained one-paragraph argument.

**Section 5 sign convention:**
If the convention is \(F=-dU/dr\) (standard), then the condition \(F=K/r^q>0\) (attractive,
directed inward) implies \(dU/dr=-K/r^q<0\). The text states \(U'(r)=K/r^q\), which would
make the force repulsive. A clarifying sentence ("we define U so that \(F=-U'\), hence
\(U(r)=-K/((q-1)r^{q-1})\) for \(q\ne1\)") would remove the ambiguity.
