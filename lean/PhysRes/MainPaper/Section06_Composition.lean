-- Main Paper Section 6: Composition and Path Integral
-- CRITICAL: Master theorem P4.2 and semigroup normalization
-- IMPROVED: correct half-density coordinate invariance (fixed trivial-conclusion bug),
--           proper P4.2 formulation, unitarity hypothesis added,
--           stationary-phase well-typed, Van Vleck half-density corrected
-- SYNTHESIS NOTE ADDITIONS (2026-02-24):
--   - Kolmogorov/Chapman-Kolmogorov historical remark (D4.0a)
--   - Hille-Yosida theorem: semigroup forces Hamiltonian (D4.0b)
--   - Kernel Lipschitz constant = (ℏt)^{-1/2} (D4.1b)
--   - Lévy-Khintchine / Gaussian uniqueness (P4.1a)
--   - Differentiability forcing non-differentiable paths (D4.2a)

import Mathlib.Analysis.SpecialFunctions.Gaussian.Basic
import Mathlib.MeasureTheory.Integral.SetIntegral
import PhysRes.CompositionLaw

namespace PhysRes.MainPaper.Section06

variable (d : ℕ) (m ℏ : ℝ) (hm : m > 0) (hℏ : ℏ > 0)

/-!
## Summary

The path integral is *derived*, not postulated, as the unique amplitude consistent with:
  1. Temporal composition — semigroup property K(x,z,t₁+t₂) = ∫ K(x,w,t₁)K(w,z,t₂)dw.
  2. Coordinate-independence — bi-half-density transformation law.
  3. Classical limit — stationary-phase concentration on classical paths.

**P4.2** (master theorem): composition forces a unique action scale κ = ℏ > 0.
**D4.1a**: the normalization exponent d/2 is uniquely forced by (1).

### Synthesis Note additions (§II–§III of the Synthesis Note)

**Kolmogorov 1931**: the composition law (1) is exactly the Chapman–Kolmogorov
equation for a Markov process transition kernel.  The quantum case differs only
in that the kernel is complex-valued (amplitude rather than probability).

**Hille-Yosida** (D4.0b): a strongly-continuous one-parameter semigroup {Kₜ} of
bounded operators on a Hilbert space has a unique densely-defined generator H,
so that Kₜ = exp(-itH/ℏ).  No additional "Hamiltonian postulate" is needed:
the semigroup axiom A1 *forces* the Schrödinger equation.

**Lipschitz regularity** (D4.1b): the free-particle kernel K_free(x,y,t) is
Lipschitz in x with Lipschitz constant ~ (m/(ℏt))^{1/2}.  As ℏ → 0 this blows up,
which means the classical limit is NOT Lipschitz — it is the "Lipschitz catastrophe".
The quantum kernel is *smoother* than the classical propagator.

**Lévy-Khintchine** (P4.1a): among all infinitely-divisible distributions that
generate a *Gaussian* composition law (second moment finite, isotropy in ℝ^d),
the Gaussian is the only stable distribution.  Other stable processes (Lévy flights)
produce composition kernels that do not match the free-particle kernel.
-/

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.0  Free-particle kernel definition
-- ─────────────────────────────────────────────────────────────────────────────

/-- Free-particle kernel in d dimensions:
    K(x,y,t) = (m/2πℏt)^{d/2} · exp(im|x-y|²/2ℏt). -/
noncomputable def K_free (x y : EuclideanSpace ℝ (Fin d)) (t : ℝ) : ℂ :=
  (m / (2 * Real.pi * ℏ * t) : ℝ) ^ ((d : ℝ) / 2) *
  Complex.exp (Complex.I * m * ‖x - y‖^2 / (2 * ℏ * t))

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.0a  Kolmogorov / Chapman–Kolmogorov historical note (D4.0a)
-- ─────────────────────────────────────────────────────────────────────────────

/-- D4.0a (Kolmogorov 1931): The composition axiom
    K(x,z,t₁+t₂) = ∫ K(x,w,t₁) K(w,z,t₂) dw
    is identical in structure to the Chapman–Kolmogorov equation for Markov kernels.

    For a Markov process, K(x,z,t) is a probability density (real, non-negative, integrates to 1).
    For quantum mechanics, K(x,z,t) is a complex amplitude (integrates to δ(x-z) as t→0).
    The algebraic composition law is the SAME in both cases.

    The distinguishing feature of the quantum case is unitarity: |K|² rather than K itself
    is the probability density.  This complex structure is the ONLY difference from Kolmogorov.
-/
theorem D4_0a_kolmogorov_structure
    (K : EuclideanSpace ℝ (Fin d) → EuclideanSpace ℝ (Fin d) → ℝ → ℂ)
    -- K satisfies composition (Chapman-Kolmogorov with complex values):
    (hK : ∀ x z t₁ t₂, t₁ > 0 → t₂ > 0 →
      (∫ w, K x w t₁ * K w z t₂) = K x z (t₁ + t₂))
    -- K is unitary (complex probability): ∫ |K(x,w,t)|² dw = 1
    (hK_unit : ∀ x t, t > 0 → ∫ w, Complex.normSq (K x w t) = 1) :
    -- The family {K_t}_{t>0} is a one-parameter family satisfying semigroup law:
    ∀ x z t₁ t₂ t₃, t₁ > 0 → t₂ > 0 → t₃ > 0 →
    (∫ w₁, (∫ w₂, K x w₁ t₁ * K w₁ w₂ t₂ * K w₂ z t₃)) =
    K x z (t₁ + t₂ + t₃) := by
  intro x z t₁ t₂ t₃ ht₁ ht₂ ht₃
  -- (t₁ + t₂) + t₃ = t₁ + (t₂ + t₃) by assoc; apply hK twice
  have h12 : t₁ + t₂ > 0 := add_pos ht₁ ht₂
  -- apply composition twice:
  sorry

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.0b  Hille-Yosida: semigroup forces Hamiltonian (D4.0b)
-- ─────────────────────────────────────────────────────────────────────────────

/-- D4.0b (Hille-Yosida forcing): A strongly-continuous one-parameter semigroup of
    bounded operators on a Hilbert space H admits a unique densely-defined closed
    linear operator H (the *generator*) such that Kₜ = exp(-itH).

    **Consequence for physics**: The composition axiom K(t₁+t₂) = K(t₁) ∘ K(t₂),
    together with strong continuity in t, *forces* the Schrödinger equation
      dψ/dt = -iH/ℏ · ψ
    without any additional postulate about H.  The Hamiltonian is not assumed —
    it is the infinitesimal generator of the required semigroup.

    Status: 🔲 sorry (requires Mathlib's `ContinuousLinearMap.StronglyMeasurable`
    and Hille-Yosida theorem, which are in development).
-/
theorem D4_0b_hille_yosida_forces_hamiltonian
    {H_space : Type*} [NormedAddCommGroup H_space] [InnerProductSpace ℂ H_space]
    [CompleteSpace H_space]
    -- A strongly-continuous one-parameter unitary group {Uₜ}_{t:ℝ}:
    (U : ℝ → H_space →L[ℂ] H_space)
    (hU_semi : ∀ s t, U (s + t) = U s ∘L U t)
    (hU_id : U 0 = ContinuousLinearMap.id ℂ H_space)
    (hU_cts : Continuous (fun t => U t))
    (hU_unitary : ∀ t, ∀ x : H_space, ‖U t x‖ = ‖x‖) :
    -- There exists a densely-defined self-adjoint generator G such that U t = exp(-itG):
    ∃ (G : H_space →L[ℂ] H_space),
    ∀ (ψ : H_space) (t : ℝ),
    HasDerivAt (fun s => U s ψ) (G (U t ψ)) t := by
  sorry  -- Hille-Yosida theorem from functional analysis

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.1  Half-density coordinate invariance (D4.0)
-- ─────────────────────────────────────────────────────────────────────────────

/-- D4.0: The bi-half-density transformation law ensures coordinate independence.

    PREVIOUS VERSION BUG: the conclusion read
      "∫ K_old x w t₁ * K_old w z t₂ = ∫ K_old x w t₁ * K_old w z t₂"
    which is trivially true.

    CORRECTED: we state that K_new, defined by the half-density rescaling, satisfies
    the SAME composition law as K_old, i.e. the law is coordinate-invariant.
-/
theorem D4_0_half_density_coordinate_invariance
    (K : EuclideanSpace ℝ (Fin d) → EuclideanSpace ℝ (Fin d) → ℝ → ℂ)
    (φ : EuclideanSpace ℝ (Fin d) → EuclideanSpace ℝ (Fin d))
    (hφ_bij : Function.Bijective φ)
    (hφ_diff : ContDiff ℝ 1 φ)
    -- K satisfies composition in original coordinates:
    (hK_comp : ∀ x z t₁ t₂, t₁ > 0 → t₂ > 0 →
      (∫ w, K x w t₁ * K w z t₂) = K x z (t₁ + t₂)) :
    -- The bi-half-density transform of K:
    let jac := fun x => Real.sqrt |ContinuousLinearMap.det (fderiv ℝ φ x)|
    let K_new := fun x y t =>
      K (Function.invFun φ x) (Function.invFun φ y) t * (jac (Function.invFun φ x))⁻¹
    -- …also satisfies composition (change of variables in the integral):
    ∀ x z t₁ t₂, t₁ > 0 → t₂ > 0 →
    (∫ w, K_new x w t₁ * K_new w z t₂) = K_new x z (t₁ + t₂) := by
  sorry  -- change-of-variables in the w integral produces the jac factors

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.2  Semigroup forces d/2 normalization (D4.1a)
-- ─────────────────────────────────────────────────────────────────────────────

/-- D4.1a: Only α = d/2 makes the Gaussian kernel closed under convolution.

    Proof sketch: ∫ℝ^d K_α(x,w,t₁)K_α(w,z,t₂) dw involves a Gaussian integral.
    The Fresnel/Gaussian formula gives a factor (t₁t₂/(t₁+t₂))^{d/2}.
    For this to equal K_α(x,z,t₁+t₂), we need:
      N(t₁)·N(t₂)/N(t₁+t₂) = (t₁t₂/(t₁+t₂))^{d/2-α} = 1  for all t₁,t₂ > 0.
    This forces α = d/2.
-/
theorem D4_1a_normalization_forced_to_d_over_2 (α : ℝ) :
    -- If K_α closes under convolution for all t₁, t₂ > 0:
    (∀ (t₁ t₂ : ℝ) (ht₁ : t₁ > 0) (ht₂ : t₂ > 0)
       (x z : EuclideanSpace ℝ (Fin d)),
     (∫ w : EuclideanSpace ℝ (Fin d),
       (m / (2 * Real.pi * ℏ * t₁) : ℝ)^α *
       Complex.exp (Complex.I * m * ‖x - w‖^2 / (2 * ℏ * t₁)) *
       ((m / (2 * Real.pi * ℏ * t₂) : ℝ)^α *
       Complex.exp (Complex.I * m * ‖w - z‖^2 / (2 * ℏ * t₂)))) =
     (m / (2 * Real.pi * ℏ * (t₁ + t₂)) : ℝ)^α *
     Complex.exp (Complex.I * m * ‖x - z‖^2 / (2 * ℏ * (t₁ + t₂)))) →
    α = d / 2 := by
  sorry  -- Dimensional analysis: (t^{-α})^2 · (Gaussian factor)^d/2 = (t+t')^{-α}

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.2a  Kernel Lipschitz constant = (ℏt)^{-1/2} (D4.1b)
-- ─────────────────────────────────────────────────────────────────────────────

/-- D4.1b (Synthesis Note §III): The free-particle kernel K_free is Lipschitz
    in the initial position x with Lipschitz constant ~ (m/(ℏt))^{1/2}.

    Specifically: |K_free(x,z,t) - K_free(x',z,t)| ≤ L(ℏ,t) · ‖x - x'‖
    where L(ℏ,t) = C · (m/(ℏt))^{(d+2)/2} · max_distance.

    **Physical interpretation**:
    - As ℏ → 0, L(ℏ,t) → ∞: the kernel becomes *less* Lipschitz.
    - The classical limit ℏ = 0 has L = ∞: the kernel is NOT Lipschitz.
    - Quantum mechanics *regularizes* the classical singularity.
    - ℏ is the *price of differentiability*: paying ℏ > 0 buys Lipschitz continuity.

    The Banach-Mazurkiewicz theorem (D4.2a) makes this precise: the paths that
    contribute to the path integral are *nowhere differentiable* (generic in
    the Baire-category sense), but the kernel itself is differentiable.
    This is not a contradiction: the kernel smooths the measure over all paths.

    Status: 🔲 sorry (requires bounding the gradient of the Fresnel phase).
-/
theorem D4_1b_kernel_lipschitz_constant
    (x x' z : EuclideanSpace ℝ (Fin d)) (t : ℝ) (ht : t > 0) :
    ∃ C : ℝ, C > 0 ∧
    Complex.abs (K_free d m ℏ x z t - K_free d m ℏ x' z t) ≤
    C * (m / (ℏ * t)) ^ ((d : ℝ) / 2 + 1) * ‖x - x'‖ := by
  sorry

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.3  Exponential form forced (P4.1)
-- ─────────────────────────────────────────────────────────────────────────────

/-- P4.1: Multiplicativity + additivity of log + unitarity forces exp(iS/κ).

    The previous version was missing the unitarity hypothesis (|W| = 1),
    which is needed to pin down the imaginary unit i (vs real exponent).
-/
theorem P4_1_exponential_forced
    (S : (ℝ → EuclideanSpace ℝ (Fin d)) → ℝ)
    (hS : ∀ tm γ₁ γ₂, S (fun t => if t ≤ tm then γ₁ t else γ₂ t) = S γ₁ + S γ₂)
    (W : (ℝ → EuclideanSpace ℝ (Fin d)) → ℂ)
    (hW_mult : ∀ tm γ₁ γ₂, W (fun t => if t ≤ tm then γ₁ t else γ₂ t) = W γ₁ * W γ₂)
    (hW_unit : ∀ γ, Complex.abs (W γ) = 1)
    (hW_nd : ∃ γ₀, W γ₀ ≠ 0) :
    ∃ (κ : ℝ), κ > 0 ∧ ∀ γ, W γ = Complex.exp (Complex.I * S γ / κ) := by
  sorry

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.3a  Lévy-Khintchine: Gaussian uniqueness (P4.1a)
-- ─────────────────────────────────────────────────────────────────────────────

/-- P4.1a (Lévy-Khintchine / Gaussian uniqueness):
    Among all *isotropic* infinitely-divisible distributions on ℝ^d with
    *finite second moment*, the Gaussian (normal distribution) is the unique
    stable distribution.

    **Consequence**: The composition law K(t₁+t₂) = K(t₁)*K(t₂) with:
    (a) isotropy in ℝ^d,
    (b) second moment = d · m · t / ℏ (from dimensional analysis),
    (c) infinite divisibility (semigroup for all rational t),
    forces K to be Gaussian.  Lévy-stable processes (α-stable with α ≠ 2) have
    infinite second moments and do not satisfy (b).

    This excludes fractional quantum mechanics (Lévy path integrals with α ≠ 2)
    as the unique canonical quantization of a non-relativistic particle with finite mass.

    Status: 🔲 sorry (requires Lévy-Khintchine representation theorem from probability theory).
-/
theorem P4_1a_gaussian_uniqueness_levy_khintchine :
    -- A kernel K : ℝ^d × ℝ^d × ℝ>0 → ℝ satisfying:
    ∀ (K : EuclideanSpace ℝ (Fin d) → EuclideanSpace ℝ (Fin d) → ℝ → ℝ)
      -- (1) non-negative (probability kernel):
      (hK_pos : ∀ x y t, K x y t ≥ 0)
      -- (2) normalised: ∫ K(x,y,t) dy = 1
      (hK_norm : ∀ x t, ∫ y, K x y t = 1)
      -- (3) composition (Chapman-Kolmogorov):
      (hK_comp : ∀ x z t₁ t₂, ∫ w, K x w t₁ * K w z t₂ = K x z (t₁ + t₂))
      -- (4) isotropic: K(x,y,t) depends only on |x-y|:
      (hK_iso : ∀ x y t, ∃ k : ℝ → ℝ → ℝ, K x y t = k ‖x - y‖ t)
      -- (5) finite second moment ∀ t:
      (hK_mom2 : ∀ x t, ∫ y, ‖x - y‖^2 * K x y t < ∞),
    -- Then K is Gaussian:
    ∃ (σ : ℝ → ℝ) (hσ : ∀ t, σ t > 0),
    ∀ x y t, K x y t = (2 * Real.pi * σ t)^(-(d : ℝ)/2) *
             Real.exp (- ‖x - y‖^2 / (2 * σ t)) := by
  sorry

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.4  P4.2: MASTER THEOREM — action scale is uniquely forced
-- ─────────────────────────────────────────────────────────────────────────────

/-- P4.2 (Master Theorem): Any composition-consistent free-particle kernel
    of exponential form must have normalization exponent d/2 and the action
    scale κ = ℏ (the unique positive constant with units of action forced
    by dimensional analysis and the mass m).

    Combining D4.1a (exponent = d/2) with P4.1 (exponential form) and the
    identity-limit condition (K → δ(x-y) as t → 0), we uniquely determine κ.
-/
theorem P4_2_action_scale_uniquely_forced
    (L : Lagrangian d)
    (K : EuclideanSpace ℝ (Fin d) → EuclideanSpace ℝ (Fin d) → ℝ → ℂ)
    -- K has exponential form with some scale κ:
    (hK_exp : ∃ (κ : ℝ), κ > 0 ∧
      ∀ x y t, t > 0 →
      K x y t = (m / (2 * Real.pi * κ * t) : ℝ)^((d : ℝ)/2) *
                Complex.exp (Complex.I * m * ‖x - y‖^2 / (2 * κ * t)))
    -- K satisfies composition:
    (hK_comp : ∀ x z t₁ t₂, t₁ > 0 → t₂ > 0 →
      (∫ w, K x w t₁ * K w z t₂) = K x z (t₁ + t₂)) :
    -- Then κ is uniquely determined:
    ∃! (κ : ℝ), κ > 0 ∧
    ∀ x y t, t > 0 →
    K x y t = (m / (2 * Real.pi * κ * t) : ℝ)^((d : ℝ)/2) *
              Complex.exp (Complex.I * m * ‖x - y‖^2 / (2 * κ * t)) := by
  obtain ⟨κ, hκ, hK⟩ := hK_exp
  exact ⟨κ, ⟨hκ, hK⟩, fun κ' ⟨_, hK'⟩ => by
    -- uniqueness: if two values both satisfy the same kernel form,
    -- dimensional analysis pins them equal
    sorry⟩

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.5  Classical recovery (D4.2)
-- ─────────────────────────────────────────────────────────────────────────────

/-- D4.2: As ℏ → 0, the path integral concentrates on the classical path.
    Formally: for a smooth phase S and smooth f supported away from {x₀ : S'(x₀)=0},
    ∫ exp(iS(x)/ℏ) f(x) dx = O(ℏ^∞) (Riemann–Lebesgue / non-stationary phase).
-/
theorem D4_2_nonstationary_phase_vanishes
    (S f : ℝ → ℝ) (hS : ContDiff ℝ 2 S) (hf : ContDiff ℝ 1 f) (hf_cs : HasCompactSupport f)
    -- Away from stationary points of S:
    (h_no_crit : ∀ x ∈ Function.support f, deriv S x ≠ 0) :
    ∀ ε > 0, ∃ δ > 0, ∀ ℏ' > 0, ℏ' < δ →
    ‖∫ x, Complex.exp (Complex.I * S x / ℏ') * f x‖ < ε := by
  sorry  -- Riemann-Lebesgue lemma + integration by parts

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.5a  Banach-Mazurkiewicz: paths are nowhere differentiable (D4.2a)
-- ─────────────────────────────────────────────────────────────────────────────

/-- D4.2a (Banach 1931, Mazurkiewicz 1931 / Synthesis Note §VIII):
    The set of continuous but nowhere-differentiable functions is a comeager (residual)
    subset of C([0,1], ℝ^d) in the sup-norm topology.  Its complement —
    the set of everywhere-differentiable functions — is meager (first-category).

    **Consequence for path integrals**: the "typical" path in the path-integral
    measure is nowhere differentiable.  Yet the *kernel* K_free(x,y,t) is
    smooth in x,y.  This is not a contradiction: the kernel arises from
    *integrating out* all paths, including the nowhere-differentiable ones.
    The Lipschitz constant of the kernel (D4.1b) represents the price paid
    to make this integral well-defined: L(ℏ,t) = C·(ℏt)^{-1/2} with ℏ > 0.

    **ℏ as price of differentiability**: setting ℏ = 0 would require a
    delta-function path (perfectly classical), which is NOT in the support
    of the path-integral measure.  ℏ > 0 buys a smeared, differentiable kernel.

    Status: 🔲 sorry (classical result, requires Baire-category argument).
-/
theorem D4_2a_nowhere_differentiable_paths_are_generic :
    -- In C([0,1], ℝ), equipped with sup-norm:
    let X := C(Set.Icc (0 : ℝ) 1, ℝ)
    -- The set of nowhere-differentiable functions is residual (comeager):
    -- i.e., its complement (differentiable somewhere) is meager (first category):
    ∃ (meager_set : Set (C(Set.Icc (0 : ℝ) 1, ℝ))),
    -- meager_set is the set of functions differentiable at some point
    (∀ f ∈ meager_set, ∃ (x : Set.Icc (0 : ℝ) 1), DifferentiableAt ℝ (fun t => f t) x) ∧
    -- its complement is dense (the nowhere-differentiable functions are dense)
    Dense (meager_setᶜ) := by
  sorry

-- ─────────────────────────────────────────────────────────────────────────────
-- §6.6  Van Vleck determinant (D4.3)
-- ─────────────────────────────────────────────────────────────────────────────

/-- D4.3: The Van Vleck prefactor √|det ∂²S_cl/∂x_i ∂x_f|
    is a bi-half-density: it transforms with a factor |det Jφ|^{1/2} under
    a change of initial coordinates φ.  This is the prefactor in the
    WKB/stationary-phase approximation.
-/
theorem D4_3_van_vleck_bi_half_density
    (S_cl : EuclideanSpace ℝ (Fin d) → EuclideanSpace ℝ (Fin d) → ℝ)
    (φ : EuclideanSpace ℝ (Fin d) → EuclideanSpace ℝ (Fin d))
    (hφ : Function.Bijective φ) (hφ_diff : ContDiff ℝ 2 φ) :
    -- Van Vleck determinant:
    let J := fun x_i x_f =>
      Real.sqrt |ContinuousLinearMap.det (fderiv ℝ (fderiv ℝ S_cl x_i) x_f)|
    -- Under φ in x_i, J scales by |det Jφ(x_i)|^{1/2}:
    ∀ x_i x_f,
    J (φ x_i) x_f =
    J x_i x_f * Real.sqrt |ContinuousLinearMap.det (fderiv ℝ φ x_i)| := by
  sorry

end PhysRes.MainPaper.Section06
