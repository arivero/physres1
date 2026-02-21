# Referee Report: Path-Integral Normalization: The d/2 Exponent as Composition Compatibility Datum

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/path-integral-normalization/main.md

---

## Summary

The paper argues that the prefactor exponent d/2 in the free-particle path-integral
kernel (m/2πℏt)^{d/2} is not a convention but is uniquely forced by three
mutually reinforcing constraints: (C) the semigroup composition law, (D) dimensional
homogeneity of the kernel, and (G) coordinate invariance via half-density
transformation. The central argument is a direct Gaussian-integral derivation
showing that any trial exponent α ≠ d/2 breaks composition closure. Four distinct
physical contexts are then unified under this principle: flat-space temporal
composition, curved-space Van Vleck prefactors, the heat kernel via Wick rotation,
and renormalization thresholds for point interactions. The paper positions this
result as a satellite to a companion "cornerstone" manuscript whose Theorem P4.2
asserts that composition forces ℏ.

---

## Strengths

- The core uniqueness argument in Section 2.2 (Derivation PN-D1.2) is correct and
  clearly stated: the constraint (t₁ t₂)^{-α} · (t₁+t₂)^{-d/2} ∝ (t₁+t₂)^{-α}
  forces α = d/2, and the derivation is explicit.
- The d=1 composition verification (Derivation PN-D1.1) is worked out fully and
  correctly, with explicit Gaussian integration and stationary-point location.
- Section 5 (heat kernel and Wick rotation) is well-executed: the diffusion-equation
  verification (Derivation PN-D5.1) is correct and self-contained, and the
  identification of d/2 as shared between Schrödinger and diffusion regimes is a
  genuine structural observation.
- Section 6 (renormalization thresholds) correctly identifies the d < 2 / d = 2 /
  d > 2 hierarchy from the small-t behavior of ∫ t^{-d/2} dt and connects it cleanly
  to the composition exponent. The beta function quoted for the 2D delta potential
  is consistent with the literature.
- The groupoid-convolution reformulation (Proposition PN-P1.3, Section 2.3) adds
  genuine structural value: deriving the Fourier-space form ĥ(p;t) = exp(t φ(p))
  from the Cauchy functional equation and then invoking dimensional exclusion of
  Lévy-stable alternatives is a clean and non-trivial argument.
- References [Morette1951], [DeWitt1957], [Vassilevich2003] are well-chosen and
  appropriately cited for the respective sections.

---

## Weaknesses

### MAJOR

- **M1. The "forced" claim overstates uniqueness for Section 2.2 alone.**
  Derivation PN-D1.2 assumes the family K_α(x,y;t) = C(t)^{-α} exp(im|x-y|²/2ℏt)
  with a single power-law time dependence in the prefactor. This is a strong
  structural assumption: it pre-selects translation-invariant Gaussian kernels with
  a pure power-law normalization. Within that family, α = d/2 is indeed the unique
  composition-compatible exponent. However, the paper does not rule out non-power-law
  normalizations (e.g., C(t) = exp(-λt) · t^{-d/2} for some λ), nor does it
  address kernels with a time-dependent multiplicative function that is not a pure
  power but still closes under convolution. The Lévy-stable exclusion in PN-P1.3 does
  handle a broader class, but this argument is presented separately and the logical
  connection to PN-D1.2 is not made explicit. The paper would benefit from either
  (a) stating PN-P1.3 first as the primary uniqueness theorem and relegating PN-D1.2
  to a corollary within the Gaussian family, or (b) more clearly specifying the
  family assumption at the start of Section 2.2 and acknowledging it.

- **M2. The Van Vleck composition law (Section 4) is presented as exact but is
  only semiclassical.**
  Proposition PN-P4.1 claims that "the d/2 exponent is exact even though the Van
  Vleck derivation is semiclassical" on the basis that higher Seeley-DeWitt
  corrections a_n are polynomial in t and do not modify the leading t^{-d/2}
  singularity. This reasoning is correct for the leading singularity order, but
  the DeWitt-Morette composition law Δ(x,z) = Δ(x,y)Δ(y,z) stated in Section 4.2
  holds only on a single geodesic and in the short-time / semiclassical regime. Away
  from this regime (multi-geodesic caustics, conjugate points), the law breaks down
  and the kernel cannot be written in the simple WKB form used. The claim of
  "exactness" for the d/2 exponent is justified for its role as leading singularity
  exponent, but the broader composition law for the full curved-space kernel is not
  exact — it is a semiclassical result. This distinction should be stated clearly to
  avoid overclaiming.

- **M3. The logic connecting d/2 forcing to Theorem P4.2 (cornerstone) is
  circular or underspecified.**
  The paper repeatedly invokes [RCPFoundations] Theorem P4.2 as the "dimensional
  obstruction" that excludes non-quadratic Lévy-stable families (α ≠ 2 in the
  Lévy-Khintchine sense). However, P4.2 (as described in both this paper and the
  rcp-foundations satellite) asserts that composition semigroup closure forces the
  existence of ℏ — it is a theorem about the necessity of an action-dimensional
  scale. The exclusion of Lévy-stable processes here requires a separate argument
  about the dimensional basis {m, ℏ} being unable to construct [c_α] for α ≠ 2.
  This argument is stated in one sentence in PN-P1.3 and is not proved. The paper
  should either (a) prove the dimensional exclusion explicitly (it is a short
  dimensional analysis argument), or (b) give a precise reference to the exact
  proposition in [RCPFoundations] that establishes this, not just a general pointer
  to "Theorem P4.2."

### MINOR

- **m1. The intermediate step in Remark PN-D1.1a (generalization to d dimensions)
  has an algebraic gap.**
  The displayed equation:
    (m/2πiℏ)^{d/2} · (t₁ t₂)^{-d/2} = (m/2πiℏ(t₁+t₂))^{d/2} · ((t₁+t₂)/t₁)^{d/2} · ((t₁+t₂)/t₂)^{d/2}
  requires the reader to verify that the geometric factors on the right cancel after
  Gaussian evaluation. The text says "after Gaussian evaluation, the geometric
  factors cancel" but the mechanism — that each d-dimensional Gaussian integral
  contributes a (t_j/(t₁+t₂))^{1/2} per dimension — is left implicit. Adding one
  line of algebra here would make the argument self-contained and prevent confusion.

- **m2. Dimensional analysis in Section 3.1 is not tight.**
  The paper writes [K] = [m/t]^{d/2} = [M]^{d/2}[T]^{-d/2} = [L]^{-d}, invoking
  the dispersion relation [E] = [M][L]²[T]^{-2} to convert. This conversion step
  uses ℏ implicitly (since [K] must incorporate [ℏ] to be dimensionless after the
  exponential). The displayed equation is dimensionally correct only in natural units
  (ℏ = 1), but the exposition obscures this by not tracking [ℏ] explicitly. Given
  that the necessity of ℏ is a central theme of the companion paper, the dimensional
  analysis here should be done in full generality with [ℏ] explicit.

- **m3. The DeWitt-Morette composition law citation is incomplete.**
  Morette (1951) is cited for the Van Vleck composition law, but the product formula
  Δ(x,z) = Δ(x,y)Δ(y,z) was established rigorously under more careful hypotheses in
  Pauli (1952) and revisited by Choquard (1955). The attributions "DeWitt 1957" and
  "Morette 1951" are correct for the general curved-space propagator and its
  normalization, but citing a modern review (e.g., Kleinert's "Path Integrals" Ch. 10,
  or Schulman "Techniques and Applications") for the composition law specifically would
  give the reader a cleaner path to a rigorous statement.

- **m4. Section 6.1 convergence criterion contains a minor error in the d < 2 case.**
  The paper states "the integral ∫₀^∞ t^{-d/2} e^{iEt/ℏ} dt converges at t → 0
  because -d/2 > -1." This is correct. But the result quoted,
    G₀(0,0;E) ~ (mE/ℏ²)^{d/2−1},
  applies in the regime where the integral can be analytically continued to E with a
  small positive imaginary part; for real E > 0 with the oscillatory factor e^{iEt/ℏ},
  convergence at t → ∞ also requires justification (the oscillatory integral converges
  conditionally via Riemann-Lebesgue). This is standard but should be noted.

- **m5. The half-density argument (Section 1 and Section 7.2 point 3) is asserted
  but not derived in this paper.**
  The paper states in the introduction that "the d/2 exponent is the scalar
  representative of half-density quantization" and in Section 7.2 argues that
  coordinate invariance forces the kernel to transform as |dx|^{1/2}|dy|^{1/2}.
  This is correct and important, but the paper defers fully to the companion
  half-density satellite ([RCPFoundations] or another unstated companion). For a
  self-contained note, even a one-paragraph derivation (showing that if K → J^{1/2}_x
  J^{1/2}_y K under coordinate change x → x', y → y', then the composition ∫dy K·K
  is invariant) would considerably strengthen the third pillar of the uniqueness
  argument.

- **m6. Open question 1 on fractional dimensions partially conflates spectral
  dimension with Hausdorff dimension.**
  The discussion of fractional dimensions in Section 7.4 correctly distinguishes
  d_s (spectral dimension) from d_H (Hausdorff dimension) but then states "the
  composition semigroup still holds" for fractal geometries without citation. This
  requires care: on fractals, the heat semigroup property can hold in a weak sense,
  but classical path-integral formulations do not apply directly. This claim should
  either be supported with a citation (e.g., Barlow-Bass work on diffusion on
  fractals, or Kigami's "Analysis on Fractals") or softened to a conjecture.

---

## Verdict

**Recommendation:** MINOR REVISION

**Justification:** The core mathematical content is correct and the four-context
unification is a genuine structural contribution. However, three issues (M1, M2, M3)
represent overstatements of scope or logical gaps in the uniqueness argument that
should be addressed before publication: clarifying the family assumption in PN-D1.2,
qualifying the Van Vleck composition as semiclassical rather than exact, and providing
a precise reference or proof for the Lévy-stable dimensional exclusion. The MINOR
items (m1–m6) are all fixable with small additions or clarifications.

---

## Detailed Comments

### Section 2.2 (M1 in detail)

The claim "this derivation assumes a translation-invariant Gaussian kernel family"
is stated in the text, which is good. But the exclusion of non-power-law normalizations
needs to be more explicit. The passage "The full uniqueness result — excluding
non-Gaussian stable processes — follows from the dimensional obstruction in Proposition
P4.2" does not close the gap because P4.2 is about ℏ-necessity, not directly about
the form of the normalization. The groupoid convolution argument in PN-P1.3 does the
right work here: from the Cauchy functional equation one gets ĥ(p;t) = exp(t φ(p)),
which forces a pure exponential (not power-law) time dependence in Fourier space,
and then quadratic φ corresponds to Gaussian kernels. This should be foregrounded as
the primary uniqueness route.

### Section 4.2 (M2 in detail)

The sentence "the DeWitt-Morette law gives Δ(x,y_*)·Δ(y_*,z) = Δ(x,z)" should
be qualified: this multiplicative law holds along the unique geodesic, in the
absence of caustics, and in the short-time approximation where only one classical
path contributes. In the presence of caustics (conjugate points), multiple geodesics
contribute with Maslov index corrections, and the simple product law fails. The
claim that "the d/2 exponent is exact even though the Van Vleck derivation is
semiclassical" is correct for the leading short-time singularity only; the paper
should say this explicitly.

### Section 3.2 / PN-P1.3 (M3 in detail)

The one-sentence exclusion of Lévy-stable processes "excluded by the dimensional
basis {m, ℏ}, which cannot construct [c_α] for α ≠ 2" is the key uniqueness claim
for non-Gaussian kernels. This should be proved: for the Lévy-Khintchine family
with |p|^α, the normalization constant c_α has dimension [c_α] = [L^α T^{-1}].
For α = 2, [c_2] = [L² T^{-1}] = [ℏ/m], which is constructible from {m, ℏ}.
For α ≠ 2, [c_α] = [L^α T^{-1}] cannot be built from {m, ℏ} because no rational
combination of powers of m (mass) and ℏ (ML²T^{-1}) gives ML^α T^{-1} for α ≠ 2.
This 3-line dimensional counting argument should appear in the paper, not in a
vague reference to P4.2.

### Section 6.2 (m4 in detail)

The integral ∫₀^∞ t^{-d/2} e^{iEt/ℏ} dt for d < 2 is a Fourier-Laplace transform
and converges conditionally for real E > 0 by Riemann-Lebesgue. Adding ε > 0 to
E (i.e., evaluating at E + iε) gives uniform absolute convergence at t → ∞. The
quoted result G₀ ~ (mE/ℏ²)^{d/2−1} is correct in this sense. A brief note
"understood in the E + iε sense" would be standard and appropriate here.
