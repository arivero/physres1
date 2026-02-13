# Minimal Hypotheses for "Half-Density Scale → Planck Area"

Date: 2026-02-13
Thread: Half-densities / Planck-area (Open Problem #4)
Parent: S84

## 1. The hypothesis chain

The argument has six links:

| Step | Hypothesis | Status | Content |
|------|-----------|--------|---------|
| 1 | PA-H2.1 (half-density formulation) | **Forced** | Coordinate-free kernel composition requires half-density pairing |
| 2 | PA-H2.2 (scalarization) | **Forced** (for physics) | Standard physics works with scalar amplitudes, not half-densities |
| 3 | PA-H2.3 (dimensionless \(f\)) | Convention | Could work with dimensionful \(f\); choosing dimensionless shifts all units into \(\sigma_\ast\) |
| 4 | PA-H2.4 (background-free constancy) | **Physical principle** | No background metric or dilaton; scalarization is a universal constant |
| 5 | PA-H2.5a (integrality sieve) | **UV hypothesis** | The constant is a monomial in couplings with integer exponents |
| 6 | Gravity-only (PA-D1.3) | **Coupling hypothesis** | Only \(G_d\) is used (no cosmological constant, no additional scales) |

**Output:** \(d = 4\), scalarization constant = \(G_4 \sim \ell_P^2\) (Planck area).

## 2. What is NOT "just dimensional bookkeeping"

### 2a. The \(d/2\) exponent is forced by composition (Steps 1–2)

Dimensional bookkeeping would say: "half-densities carry weight \(d/2\) by definition, so of course you get \(\text{length}^{d/2}\)."

The non-trivial content (proved in S82/PA-D1.4a): the \(d/2\) exponent is not just a *definition* — it is the unique exponent compatible with the semigroup (composition) property. If the propagator prefactor had exponent \(\alpha \neq d/2\), composition would fail. So the \(\text{length}^{d/2}\) weight is a *dynamical requirement*, not a notational choice.

### 2b. Background-freeness is a physical principle (Step 4)

PA-H2.4 is not bookkeeping — it is the assertion that the scalarization convention does not depend on background geometry. One *could* use \(\sigma_g = |g|^{1/4}|dx|^{1/2}\) (the metric-derived half-density), which requires no new scale but ties the formalism to a background metric. PA-H2.4 says: if we want the scalarization to be intrinsic (no metric needed), we must pay for it with a universal constant.

This is a choice with physical content: it says that the quantum formalism's numerical predictions should not reference a classical geometry.

### 2c. The integrality sieve is a UV hypothesis (Step 5)

PA-H2.5a restricts the scalarization constant to be a monomial in couplings with integer exponents. This is non-trivial because:
- Without it, any coupling can supply any length scale via fractional powers (\(G_d^{1/2}\) works in any even \(d\)).
- With it, the Diophantine constraint \(k(d-2) = d/2\) with \(k \in \mathbb{Z}\) selects \(d = 4\) uniquely.
- The integrality can be motivated by perturbative analyticity (PA-H2.5b) or by demanding that the scale has a well-defined perturbative expansion in the coupling.

### 2d. The three-mechanism obstruction is structural (Step 6)

PA-D1.3a (Remark from C117) shows that \(d = 4\) is uniquely un-obstructed via three qualitatively distinct mechanisms:
1. **Parity** (odd \(d\)): half-integer target, integer source — categorical exclusion.
2. **Magnitude** (even \(d \geq 6\)): \(k = d/(2(d-2)) < 1\), no positive integer works.
3. **Degeneracy** (\(d = 2\)): \(G_2\) is dimensionless, no scale.

This goes beyond "d/2 = d-2 iff d=4" by classifying *why* each alternative fails.

## 3. What IS "just bookkeeping"

- PA-H2.3 (dimensionless \(f\)): this is a convention. Choosing dimensionful \(f\) would shift the \(\text{length}^{d/2}\) weight into different places but wouldn't change the physics.
- The specific notation (half-density bundles, \(|\Lambda^d T^*M|^{1/2}\)): this is packaging. The same content can be stated as "the propagator prefactor transforms with weight \(d/2\) under coordinate changes" without invoking the half-density bundle.

## 4. Minimal set for "half-density → Planck area"

The minimal set is:

**PA-H2.1 + PA-H2.4 + PA-H2.5a + gravity-only → Planck area in \(d = 4\).**

PA-H2.2 and PA-H2.3 are implicit (you can't state the conclusion "Planck area" without scalarizing, and dimensionless convention is standard). The physical content is in PA-H2.4 (background-free) and PA-H2.5a (integrality) plus the gravity-only coupling restriction.

If PA-H2.5a is dropped: transmutation (PA-H2.13) can supply a scale in any \(d\) via non-analytic RG invariants. No dimension sieve occurs.

If PA-H2.4 is dropped: the metric-derived \(|g|^{1/4}|dx|^{1/2}\) provides a scalarization in any \(d\) without a new constant. No Planck area.

If gravity-only is dropped: additional couplings can supply length scales in other dimensions (e.g., a mass parameter gives \(\text{length}^1\) in any \(d\)).

## 5. The "more than bookkeeping" verdict

The argument is more than dimensional bookkeeping because:
1. The \(d/2\) exponent is dynamically forced (composition), not defined.
2. Background-freeness (PA-H2.4) is a physical principle, not a convention.
3. The integrality sieve (PA-H2.5a) is a hypothesis about UV structure.
4. The three-mechanism obstruction (PA-D1.3a) classifies failure modes structurally.

What remains as bookkeeping: the Diophantine equation \(k(d-2) = d/2\) itself, and the dimensionless-representative convention (PA-H2.3). These are necessary but not sufficient — the non-trivial content is in what forces each ingredient to take its specific form.
