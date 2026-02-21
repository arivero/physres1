# Referee Report: Dirac-Supported Probes, Corners, and Impulses: A Variational Note

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/dirac-probes-corners-impulses/main.md

## Summary

This satellite note expands Section 5 of the cornerstone manuscript into a self-contained treatment of point-like probes in variational mechanics. The paper (1) states a Mollifier Localization Theorem with explicit, numbered hypotheses; (2) works through the free-particle delta-kick as a complete model with corners, impulse jumps, and action evaluation; and (3) draws a sharp distinction between Dirac-supported test variations (safe, rigorous) and delta potentials in the Hamiltonian (requiring renormalization in d ≥ 2). The paper also includes an extension to N-impulse time-slicing that bridges to the path-integral composition law, and closes with connections to Newton's equal-area law.

## Strengths

- **Theorem 2.1 is correct and well-stated.** Hypotheses (H1)–(H3) are explicit and minimal. The proof is a clean mollifier argument, and Remark 2.2a correctly contextualizes the result within the du Bois-Reymond lemma hierarchy and Hilbert's differentiability theorem.
- **The corner/impulse dichotomy is clearly and correctly drawn** (Sections 3.1/3.2). The structural distinction — corners from variational boundary conditions vs. impulses from external forcing — is pedagogically valuable and directly supports the cornerstone argument.
- **Remark 3.1b (Weierstrass–Erdmann second condition)** correctly introduces the energy-continuity condition at corners and notes it reduces to energy conservation for autonomous Lagrangians. This is often omitted in expositions; its presence here is a genuine addition.
- **Section 4 is fully worked.** The delta-kick trajectory, velocity fixing by boundary conditions, action evaluation, and the sign of the action excess S − S₀ > 0 are all explicit and correct.
- **Remarks 4.3b and 4.3c (Jacobi and Weierstrass sufficiency)** are correct, relevant, and elevate the worked example beyond a routine calculation. Weierstrass sufficiency (strong minimality) is often conflated with Jacobi's (weak minimality); the paper distinguishes them properly.
- **Section 5's safe/unsafe table** is the note's most valuable contribution: a clear, hierarchical classification that ties distributional safety, self-adjoint extensions, and Schwartz impossibility into one compact reference. Remark 5.3a (Schwartz 1954 impossibility) is correctly invoked.
- **The connection to Newton's Principia** (Section 4.4) is mathematically accurate. The angular-momentum preservation argument is correct; Nauenberg (2003) is appropriately cited for the polygon-limit step.
- **References are appropriate and complete** for a satellite note of this scope.

## Weaknesses

### MAJOR

None identified.

### MINOR

- **Section 4.5, exponent discrepancy.** The text states the path-integral prefactor is `(m/(2πiℏΔt))^{(N+1)/2}` with the justification "N+1 segments and N intermediate integrations; each segment contributes one factor." This is correct for a closed-interval decomposition into N+1 segments. However, the discrete action S_N is stated with sum index k = 0, …, N (N+1 terms), and "N intermediate integrations" over q_1, …, q_N. The combination is self-consistent, but the exponent (N+1)/2 is non-integer for even N, which may confuse readers. A one-sentence clarification — e.g., "the half-integer exponent is not a problem because the full prefactor is the (N+1)th power of a Gaussian normalization factor, and the final answer is always well-defined in the N → ∞ limit" — would remove any lingering doubt.

- **Remark 3.2a (impulse-work formula): midpoint velocity.** The claim that ΔH = J·v̄ with v̄ = (v₊ + v₋)/2 is stated without derivation. The result follows from a short algebra: H₊ − H₋ = (m/2)(v₊² − v₋²) = (m/2)(v₊ + v₋)(v₊ − v₋) = (m/2)(2v̄)(J/m) = Jv̄. The Stratonovich connection raised in Section 6 (Outlook item 4) makes this formula load-bearing enough to warrant a single displayed equation in Remark 3.2a itself, rather than leaving it to the reader.

- **H3 is stated pointwise but the proof structure relies on it being local.** Theorem 2.1 assumes continuity of F[q] at the single point t₀. The proof paragraph says "by (H3) the convolution converges to F[q](t₀)." This is correct (continuity at t₀ is exactly what makes the mollifier limit pointwise there), but a one-clause explanation — "since F[q] is continuous at t₀, the dominated convergence theorem gives lim ∫ F[q](t) ρ_ε(t − t₀) dt = F[q](t₀)" — would make the logical step explicit for the target reader (a competent but not specialist analyst).

- **Remark 4.4a (Noether charges) cites no reference.** The statement is standard, but in a note that otherwise cites references precisely, an inline citation to a textbook (e.g., Goldstein or Abraham–Marsden) would be consistent with the paper's own standards.

- **Section 6, Outlook item 2 (Hamilton–Jacobi / viscosity solutions)** is gestured at but feels underconnected. The kink is not a classical discontinuity in the HJ sense (the HJ equation is satisfied separately on each smooth segment; the kink is a junction of two smooth solutions). A clarifying sentence would prevent readers from drawing a false parallel.

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** The paper is mathematically correct throughout, well-organized, and makes a genuine contribution as a companion to the cornerstone manuscript. The issues above are expository: a missing short derivation in Remark 3.2a, a potential notational confusion in the path-integral exponent, and two places where an extra sentence would close a logical gap. None of these require new mathematics; they require only clarifying prose. No re-review is required after addressing these items.

## Detailed Comments

**Section 4.5, exponent.** Add a parenthetical after "giving the exponent (N+1)/2": "For any fixed N, this exponent is (N+1)/2; when N is odd this is an integer, when N is even it is a half-integer, but the full prefactor [(m/(2πiℏΔt))^{1/2}]^{N+1} is well-defined at all N and the limit N → ∞ is taken after the intermediate Gaussians are evaluated."

**Remark 3.2a.** Insert after "the impulse does work J·v̄ at the mean velocity": a displayed line ΔH = (m/2)(v₊² − v₋²) = (m/2)(v₊ + v₋)(v₊ − v₋) = J·(v₊ + v₋)/2 = J·v̄.

**Theorem 2.1 proof.** After "the convolution converges to F[q](t₀) as ε → 0⁺," add: "(Continuity of F[q] at t₀ and the approximate-identity property of ρ_ε give ∫ F[q](t) ρ_ε(t−t₀)dt → F[q](t₀) by dominated convergence.)"

**Remark 4.4a.** Add a standard reference for Noether's theorem in the Lagrangian setting, e.g., [Goldstein1980] or [AbrahamMarsden1978].

**Section 6 item 2.** Append: "Note that the piecewise-smooth trajectory satisfies the HJ equation separately on (0, t₀) and (t₀, T); the junction is a matching of two smooth HJ solutions, not a discontinuity in the viscosity-solution sense — the connection to viscosity solutions would arise only if the stationarity condition itself fails at the kink, which it does not for the impulsive trajectory."
