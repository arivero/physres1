# Critic Publication Votes — 2026-02-21

## Voting criteria applied
For each paper I check: (1) mathematical correctness, (2) overclaiming, (3) missing references/prior art, (4) internal consistency, (5) notation consistency, (6) readiness for external referee. Sev-1 = fatal, sev-2 = significant gap, sev-3 = minor.

---

## 1. Half-Density QFT (`papers/half-density-qft/main.md`)

**VOTE: YES**

**Assessment:** Clean, well-scoped paper. The thesis — propagators as bi-half-density kernels — is stated precisely and not overclaimed. Key strengths:

- HD-D1.1 (identity kernel) and HD-D1.1a (normalization witness) are correct and self-contained.
- HD-D1.2 (conjugated kinetic operator) — algebra checked, manifestly symmetric result correct.
- HD-D1.3 (conformal class D=4 simplification) — correctly scoped as "conformal class only" with explicit disclaimer. The `D(4-D)` coefficient is standard.
- HD-D1.3a and HD-D1.3b — these are the key results. HD-D1.3b (V(p)=R/6 from normal coordinates, matching conformal coupling only at D=4) is dimension-independent and correctly attributed to Seeley-DeWitt. The Vassilevich 2003 reference is appropriate.
- HD-D4.2 (heat kernel as bi-half-density) and HD-D4.4 (Van Vleck transport equation) are correctly stated.
- HD-D4.2a (trace anomaly from a_{D/2}) — standard material, correctly attributed.
- Section 5 counterterm scaling hierarchy — correct: mass counterterm Λ^{D-2}, wave function Λ^{D-4}, each successive a_n reducing by Λ^2. Dimensional regularization pole structure matches.
- Section 6 (link to Planck-area program) correctly defers the stronger hypothesis.
- Section 7 (BV outlook) correctly minimal.

**References:** 7 refs, all standard and OA-available. Vassilevich 2003 is the right anchor for heat-kernel material. DeWitt 1965 for transport equation. Bates-Weinstein 1997 for half-density formalism. No missing critical references detected.

**Potential issues (all sev-4 or below):**
- The cross-reference to [PathIntegralNormalization] appears twice (Remarks HD-D4.5 and HD-D5.3b); slightly redundant but not problematic.
- No sev-1, sev-2, or sev-3 issues found.

---

## 2. Delta Objects (`papers/delta-objects/main.md`)

**VOTE: YES**

**Assessment:** Solid paper organizing three appearances of the delta distribution under the half-density umbrella. Well-structured, correct mathematics.

- Section 2 (identity kernel, d/2 scaling) — correct, clean near-diagonal scaling computation.
- Section 3.1 (δ(f')) — standard; the clarification in 3.1a distinguishing δ(f') from δ' is pedagogically useful and correct.
- Section 3.2 (multi-dimensional δ(∇f)) — standard Morse-theoretic result, correctly stated.
- Section 3.3 (stationary phase → square-root weights) — correct. The "amplitudes are half-densities; probabilities are densities" slogan is the paper's central observation.
- Section 3.4 (weak EL, distributional derivative) — correct distributional formulation.
- Section 3.5 (Van Vleck determinant) — correctly identified as the propagator instance of the square-root Hessian. Free particle and harmonic oscillator examples are standard and correct. Caustic/Maslov index remark (3.5c) correctly scoped.
- Section 4 (point interactions as rank-one kernels) — correct. Example 4.1 (1D resolvent) and 4.1b (2D transmutation) are standard results, correctly presented.
- Remark 4.2 (self-adjoint extensions classification) — comprehensive and correct. The d≥4 essential self-adjointness is correctly attributed (Morrey embedding condition 2·2>d). Dereziński 2024 is the right modern reference.
- Remark 4.3 (heat kernel exponent → extension classification) — this is the key insight connecting half-density normalization to self-adjoint extension hierarchy. Correct.
- Section 5 (scalarization and RG invariants) — correctly hedged as "organizing perspective, not theorem."

**References:** 8 refs, appropriate. Hamilton 1834 for mixed Hessian priority — a nice historical touch. Jackiw 1991 for d=2,3 renormalization. Dereziński 2024 for d≥4 essential self-adjointness.

**Potential issues:**
- No sev-1, sev-2, or sev-3 issues found.

---

## 3. Relativistic Central Orbits (`papers/relativistic-central-orbits/main.md`)

**VOTE: YES (with one sev-3 note)**

**Assessment:** This paper is more expository than the other three — it records SR/GR orbit conditions as "refinement witnesses." The mathematics is standard and correct throughout.

- Section 2 (SR circular motion under power law) — correct relativistic force balance. The derivation is clean.
- Section 3 (q=2 special case: v=K/L) — correct. The identity is exact and the L>K/c bound follows immediately.
- Remark 3.1 (dimensional origin) — correct dimensional analysis.
- Section 3.1 (extension to all bound orbits) — effective potential W_L(r) correctly analyzed. The three regimes (L>K/c, L<K/c, L=K/c) are correctly identified. The claim "L>K/c necessary and sufficient for bound orbits" is correct for the SR inverse-square problem.
- Remark 3.1b (critical exponent drops by one) — this is the paper's most insightful observation. The kinematic argument (quadratic → linear energy-momentum in UV) is correct and the q_crit = ν+1 rule (Remark 3.1c) is a clean generalization.
- Remark 3.2 (SR precession) — Binet equation with ω² = 1-K²/(c²L²) is standard. The 1/6 ratio of SR to GR precession is correct.
- Remark 3.2a (Bertrand's theorem under SR) — correct: irrational ω generically breaks orbit closure.
- Remark 3.2b (Sommerfeld fine structure) — correct historical connection.
- Section 4 (Schwarzschild geodesics) — entirely standard GR, correctly reproduced. All the boxed formulas are textbook results.
- Remarks 4.3a-g — all correct, properly attributing curvature effects.
- Section 5 (SR stability) — the stability criterion 1+(2-q)γ²>0 is derived correctly from W_L''(r₀). The boxed expression checks dimensionally and reduces correctly to q<3 in the Newtonian limit.

**Sev-3 note:** Remark 5.2d states ω_r²/ω_φ² = 3-q-v²/c² "from the Hamiltonian expansion of Section 5.1." However, Section 5.1 does not show this expansion explicitly — the reader must derive it from W_L''(r₀). This is a minor gap in exposition, not a mathematical error. The result itself is correct.

**References:** 4 refs. Adequate for the paper's scope (the content is largely self-contained derivation). Boscaggin et al. 2020 for SR Kepler, Carroll 1997 for GR baseline, Sommerfeld 1916 and Bertrand 1873 for historical anchors.

**No sev-1 or sev-2 issues.**

---

## 4. Dirac Probes, Corners, Impulses (`papers/dirac-probes-corners-impulses/main.md`)

**VOTE: YES**

**Assessment:** This is the most self-contained of the four papers. It isolates a clean result (Theorem 2.1: mollifier localization of EL equations) and works through a complete model (delta-kick free particle). The safe/unsafe dichotomy (Section 5) is a valuable clarification.

- Theorem 2.1 — correct. The proof is standard (du Bois-Reymond lemma via mollifiers), but the explicit statement with numbered hypotheses (H1)-(H3) is cleaner than the compressed version in the cornerstone.
- Remark 2.2a (regularity chain) — correctly places Theorem 2.1 in the du Bois-Reymond → Hilbert differentiability hierarchy.
- Remark 2.3 (structural parallel with polygonal refinement) — correct parallel, not overclaimed.
- Theorems 3.1 and 3.2 (corner and impulse conditions) — standard, correct.
- Remark 3.1b (energy condition / Weierstrass-Erdmann second condition) — correctly stated.
- Remark 3.2a (impulse-work formula) — correct: ΔH = J·v̄ with midpoint velocity.
- Section 4 (delta-kick free particle) — complete worked computation, all algebra correct. The action excess S-S₀ = m·t₀(T-t₀)·(Δv)²/(2T) is positive-definite for J≠0, confirming the minimality of the straight path.
- Remark 4.3b (Jacobi sufficiency) and 4.3c (Weierstrass excess function) — standard sufficiency theory, correctly applied.
- Section 4.4 (angular momentum under central impulses) — correct. The connection to Newton's Principia Proposition 1 is historically appropriate.
- Remark 4.4a (general Noether criterion across impulses) — correct: ΔQ = J·ξ(q(t₀)), conservation iff J⊥ξ.
- Section 4.5 (N impulses → time-sliced path integral) — the bridge from classical impulse-matching to quantum composition is clearly stated. The (N+1)/2 exponent is correctly derived.
- Remark 4.5a (exact evaluation, free particle) — standard Gaussian integration, correct.
- Remark 4.5c (Trotter product formula) — correctly identifies the operator-theoretic backbone.
- Section 5 (safe vs unsafe) — the classification table is correct and the Schwartz impossibility (Remark 5.3a) is standard.

**References:** 6 refs. Adequate. Feynman-Hibbs 1965 for path integral, Jackiw 1991 and AGHKH 2005 for delta potentials, Nauenberg 2003 for Newton's polygon.

**No sev-1, sev-2, or sev-3 issues found.**

---

## Summary

| Paper | Vote | Issues |
|-------|------|--------|
| Half-Density QFT | YES | None (sev-4 only) |
| Delta Objects | YES | None |
| Relativistic Central Orbits | YES | 1 sev-3 (Remark 5.2d derivation gap) |
| Dirac Probes/Corners/Impulses | YES | None |

All four papers are mathematically sound, appropriately scoped, and free of overclaiming. I find no blocking issues for any of them.
