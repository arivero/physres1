# Referee Report: Action–Angle Indeterminacy in Central Potentials: A Referee-Safe Witness

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/action-angle-indeterminacy-central-potentials/main.md

---

## Summary

The paper establishes a clean "witness" for action–angle indeterminacy in central
potentials: an L_z eigenstate has a strictly uniform marginal distribution in the
azimuthal angle phi (Section 3), and conversely, any state localized in phi must
involve a superposition over many angular-momentum modes (Section 4, Fourier
tradeoff). The core result is stated correctly, and the derivation is minimal and
explicit. Sections 5–7 and the remark tree extend the witness to the harmonic
oscillator, hydrogen atom, EBK quantization, geometric quantization, Hamiltonian
monodromy, photonic OAM, superfluid vortices, metrological Heisenberg limits,
quantum Zeno, QND measurement, and semiclassical/chaotic dynamics, with
accompanying references. The paper serves an expository-witness role in a satellite
program, explicitly disclaiming the self-adjoint angle-operator debate.

---

## Strengths

- The core mathematical claim (Sections 2–4) is correct. The commutator
  [L_z, E] = ħE, the identification of L_z eigenstates as e^{imφ} modes with
  uniform |ψ|² in φ, and the Fourier tradeoff are all standard and reproduced
  accurately.

- Proposition 4.2 (circular uncertainty relation) is stated and derived correctly.
  The derivation via two Robertson inequalities for (L_z, cos φ) and (L_z, sin φ),
  combined with Var(cos φ) + Var(sin φ) = 1 − R², gives the asserted bound without
  controversy. Attribution to Judge (1964) and Carruthers–Nieto (1968) is accurate
  and appropriate.

- Example 4.3 is arithmetically correct. The formula R = 2M/(2M+1), the variance
  Var(L_z) = ħ²M(M+1)/3, and the ratio LHS/RHS = (M+1)(4M+1)/(3M) check out
  exactly; the stated value 10/3 at M=1 is correct.

- Remark 4.4 correctly identifies the von Mises distribution as the near-saturating
  state, and the asymptotic claim Var(L_z)(1 − R²)/[(ħ²/4)R²] → 1 follows from the
  stated asymptotics (Var(L_z) ~ ħ²κ/2, 1 − R² ~ 1/(2κ)), which are standard for
  the von Mises distribution.

- The strategy of avoiding the self-adjoint angle-operator debate via the unitary
  variable E = e^{iφ} is mathematically sound and the stated rationale is clear.

- Reference coverage for the core sections (1–4) is excellent. The attribution to
  Judge (1964) and Carruthers–Nieto (1968) for the circular inequality is properly
  prioritized, and the remark tree provides citations across a broad range of topics.

- Remark 2.3 (Pegg–Barnett) and Remark 2.2 (phase POVM) are technically accurate
  and usefully delineate the three routes (POVM, Pegg–Barnett truncation, unitary
  variable) to rigorous angle probabilities.

- Remark 7.5a provides a novel observation connecting action-angle representation to
  the P4.2 composition-law framework of the cornerstone manuscript, noting that
  t^{-d/2} normalization is transparent in (x,p) coordinates and hidden in
  action-angle coordinates. This is a non-trivial representation-dependence remark
  with clear explanatory value.

- The reference list is extensive (40 entries) and the DOIs and ISBNs are provided
  in a verifiable format.

---

## Weaknesses

### MAJOR

- **Structural balance: remark proliferation obscures the paper's core claim.**
  The note declares a bounded scope in Section 1 ("We deliberately keep the scope
  bounded"), yet contains at least 28 numbered remarks in addition to 4 examples and
  3 propositions. Many remarks (3.3–3.4, 4.6, 5.4–5.7, 6.3–6.10, 7.1–7.6) diverge
  significantly from the central witness and cover topics — superfluid vortices,
  Josephson oscillations, OAM of light, Gutzwiller trace formula, Bargmann
  representation, quantum Zeno, QND, Hamiltonian monodromy, random-matrix
  statistics, geometric quantization — that are not needed to establish the
  witness. The result is that the paper contradicts its own stated scope. A reader
  seeking the witness must navigate roughly 7,000 words of appendix-level material
  to identify the 500-word core. If the paper is meant as a focused witness note,
  the remark tree must be reorganized into explicit appendix sections, with the core
  (Sections 2–5 + Example 6.1) standing alone; or the abstract/Section 1 must be
  revised to honestly characterize the paper as a broad survey. The current
  discrepancy between stated and actual scope is a structural failure.

- **Remark 4.4 (von Mises near-saturation): insufficient derivation.**
  The claim that Var(L_z)(1 − R²)/[(ħ²/4)R²] → 1 as κ → ∞ is stated with two
  asymptotic substitutions but without proof or citation. Specifically:
  (a) The claim 1 − R² ≈ 1/(2κ) requires more than "the probability ∝ e^{2κcos φ}
  is a von Mises distribution with parameter 2κ": one must note that the
  concentration of the von Mises distribution with parameter μ has R = I_1(μ)/I_0(μ)
  and that 1 − R → 1/(2μ) as μ → ∞; here μ = 2κ, so 1 − R ≈ 1/(4κ), giving
  1 − R² ≈ 1/(2κ). This step needs to be made explicit or cited.
  (b) The claim Var(L_z) ≈ ħ²κ/2 requires establishing that the Fourier
  coefficients c_m ∝ I_m(κ) have second moment ∑ m²|I_m(κ)|²/∑|I_m(κ)|² ≈ κ/2.
  This follows from the asymptotic properties of modified Bessel functions but is
  non-trivial and must be either derived or cited (e.g., Gradshteyn-Ryzhik or
  Abramowitz-Stegun).
  Without this, the near-saturation claim is asserted but not established.

### MINOR

- **Example 6.2 (Hydrogen atom, SO(4) symmetry):** The statement "the Runge–Lenz
  vector has vanishing expectation value, since it connects states of different ℓ"
  is imprecise. The Runge–Lenz vector connects states within the same n-shell but
  different ℓ; its vanishing in an eigenstate |n,ℓ,m⟩ follows from the fact that it
  is an odd-parity operator under parity combined with the selection rule Δℓ = ±1,
  not simply from "connects states of different ℓ" (which is a statement about
  off-diagonal matrix elements, not expectation values). The argument should either
  be stated as "the Runge–Lenz expectation value vanishes by parity" or as
  "⟨n,ℓ,m|A|n,ℓ,m⟩ = 0 because A changes ℓ by ±1 and hence the bra and ket are
  orthogonal." The current phrasing is slightly misleading.

- **Remark 5.4 (Aharonov–Bohm):** The paper cites Tonomura et al. (1986) for
  "Remark 3.5 of the companion uncuttable note" but provides the citation inline
  within the body of Remark 5.4, not in the reference list (Tonomura 1986 appears
  only at entry 17, which is properly listed). More importantly, the remark refers
  twice to "the companion uncuttable note" without identifying which paper this is
  (a hyperlink or a reference-list entry would suffice). This creates a dangling
  reference that will be unresolvable to an outside reader.

- **Remark 2.1, description of [N, E_-] = −E_-:** The paper defines
  E_- = â(N+1)^{−1/2} and asserts [N, E_-] = −E_-. This is correct, but the dual
  E_+ = (N+1)^{−1/2}â† satisfies [N, E_+] = +E_+, which is stated. However, the
  paper then says E_+E_- = I − |0⟩⟨0|, which is standard, but omits
  E_-E_+ = I (which holds with no correction). Including both products would
  clarify that the asymmetry is one-sided (E_+ is an isometry but E_- is not), which
  is the precise source of the non-unitarity. This is a minor expository gap.

- **Remark 7.5a: attribution.** The remark ends with "(THREE-AGENT result:
  mathematician + physicist + critic, BB5; sev-3.)". This internal process label is
  not appropriate for a publication-track document and should be removed or
  rewritten as a standard acknowledgment.

- **Reference 1 (Tong QM Lectures):** Listed as "no DOI" and "OA: lecture-note
  PDF." For a permanent publication-track record, a URL or version-stable identifier
  (e.g., the Cambridge DAMTP URL) should be provided. Lecture notes can change
  without notice, making this reference less stable than the others.

- **Remark 3.4 (Superfluid vortices):** The paper states "the core radius set by
  the healing length ξ = 1/√(8πρa) (typically tens to hundreds of nanometers in
  dilute BECs)." The formula assumes natural units (ħ = m = 1) and requires ρ to
  be the number density with scattering length a; in SI units, ξ = 1/√(8πρa)
  carries dimensions and is dimensionally inconsistent without the factor of 1/√2
  or the mass m. Since the paper uses ħ explicitly elsewhere, this hidden natural
  units convention should be flagged (a brief "(in units ħ = m = 1)" suffices).

- **Abstract:** The abstract describes the paper as recording "that witness" and
  explaining "its foundations-level message." Given that the paper actually contains
  28+ remarks covering a broad range of additional topics, the abstract undersells
  the content. Conversely, if the intent is that only the witness and its message
  constitute the paper's claims, the remark tree should be explicitly flagged as
  supplementary. The abstract should be revised to match actual paper scope.

---

## Verdict

**Recommendation:** MAJOR REVISION

**Justification:** The core mathematical content (Sections 2–4 witness, Proposition
4.2, Examples 4.1–4.3) is correct and well-cited. However, the paper's stated scope
(bounded, referee-safe witness) is contradicted by the actual scope (28+ remarks
covering a broad array of additional topics), creating a structural inconsistency
that must be resolved before publication. The near-saturation claim in Remark 4.4
requires either derivation or citation. Addressing these two issues and the minor
items listed above would produce a paper ready for re-review.

---

## Detailed Comments

### Section 1 (Purpose and scope)

The phrase "We deliberately keep the scope bounded" is directly contradicted by the
actual remark count. This sentence should be revised or removed. If the extended
remark tree is intentional, replace it with an honest scope statement: "We record
the core witness in Sections 2–4 and provide an extensive series of remarks
connecting it to related structures in Sections 5–7."

### Section 2

The derivation of [L_z, E] = ħE is correct. The remark structure (2.1, 2.2, 2.3)
covering number-phase, phase POVM, and Pegg-Barnett is accurate and appropriately
organized.

### Section 3

The core argument is correct and minimal. Remark 3.2 (dipole selection rules) is
accurate; the derivation of Δm = q from the azimuthal integral is clean. Remark 3.3
(OAM of light) correctly identifies the formal analogy but is far outside the paper's
stated scope. Remark 3.4 (superfluid vortices) extends further still, covering BECs,
Abrikosov lattices, Josephson oscillations, and the Anderson phase relation — all
using the azimuthal wavefunction only as a distant analogy. These should be clearly
flagged as extensions, not as part of the core witness.

### Section 4, Proposition 4.2

Derivation verified in detail above and found correct. One stylistic suggestion:
the paper states "adding the Robertson inequalities ... and the identity
Var(cos φ) + Var(sin φ) = 1 − R²". The identity should be verified explicitly
(at least once, in a brief parenthetical or footnote): it follows from
⟨cos²φ⟩ + ⟨sin²φ⟩ = 1 and ⟨cos φ⟩² + ⟨sin φ⟩² = R². This is one line of algebra
and including it would make Proposition 4.2 self-contained.

Note also a subtle point: the Robertson inequality as applied here requires the
operators (L_z, cos φ) and (L_z, sin φ) to be simultaneously well-defined on the
same domain. Since L_z is self-adjoint on the domain of 2π-periodic H^1 functions,
and cos φ, sin φ are bounded and defined everywhere, this is not a problem; but
readers uncomfortable with the angle-operator debate may find it reassuring to have
this noted.

### Section 4, Example 4.3 and Remark 4.4

Example 4.3 arithmetic is verified. Remark 4.4 asserts near-saturation by von Mises
states but does not derive the asymptotic formulas it uses. This is the MAJOR
weakness (see above). The fix is one of: (a) add a two-step derivation (properties
of I_m(κ) for large κ), (b) cite a reference where the second-moment calculation
appears (e.g., Mardia and Jupp, "Directional Statistics," 2000, or the Carruthers-
Nieto review itself), or (c) downgrade the claim to a plausibility remark rather
than a stated near-saturation result.

### Remark 5.4 (Aharonov-Bohm)

The formula for the EBK condition with flux is correct:
I_k = (n_k + α_k/4)ħ + eΦ/(2π) in the remark body this appears as an additive shift
to the right-hand side, which matches standard references. The "companion uncuttable
note" reference (for "Remark 3.5") needs to be resolved into a proper citation.

### Remark 7.5a

The mathematical content is correct: in action-angle (I, θ) coordinates, the Van
Vleck determinant for S_cl = −H(I)t + I·(θ − θ') is indeed 1 (the Hessian
∂²S/∂I∂θ' = −identity), and the t^{−n/2} factor arises from the Hessian in I alone
(the energy-surface curvature det(t Ω)), not from the angle-integration. The internal
process label at the end of the remark must be removed for publication.

The Bohr-Sommerfeld derivation from propagator periodicity (last paragraph of
Remark 7.5a) is elegant and correct: single-valuedness under θ → θ + 2π forces
I · 2π = 2πħm, i.e., I = ħm.

### Reference list

References 1–40 are well-formatted and cover the cited claims. Specific issues:
- Reference 1 (Tong): add URL.
- References 19–21 (Duistermaat, Cushman-Duistermaat, Vu Ngoc): correct and well-chosen for Remark 6.10.
- Reference 37 (Feynman 1955): standard citation for quantized circulation in He-II; correct.
- References 39–40 (Judge 1964, Carruthers-Nieto 1968): correctly identified as sources for Proposition 4.2.

One missing reference: Remark 4.4 mentions the von Mises distribution and uses its
properties, but provides no citation for the Fourier coefficients I_m(κ) or the
asymptotic behavior of I_1(κ)/I_0(κ). A reference to Mardia and Jupp (2000),
"Directional Statistics," or to Abramowitz and Stegun for the Bessel asymptotics,
should be added.
