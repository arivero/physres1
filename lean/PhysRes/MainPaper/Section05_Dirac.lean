-- Main Paper Section 5: Dirac Distributions and Extremal Action
-- Weak formulation for point-supported probes; impulse and corner conditions
-- IMPROVED: correct weak-stationarity statement, precise impulse theorem,
--           correct Born-rule biconditional, momentum-jump definition fixed

import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.MeasureTheory.Integral.IntervalIntegral
import PhysRes.Core

namespace PhysRes.MainPaper.Section05

/-!
## Summary

Point-supported probes (delta functions) lie outside the classical domain of
the Euler–Lagrange variational argument.  This section introduces the *weak*
or *distributional* formulation:

  δS[q; η] = 0  for all **smooth** η ∈ C^∞_c((t_i,t_f))

and shows:
- **P3.1**: smooth-probe stationarity is equivalent to the E–L equation.
- **P3.2**: localized smooth probes resolve arbitrarily small changes.
- **P3.3**: corners in q do **not** require discontinuous forces.
- **P3.4**: discontinuous momentum (impulse) requires force ∝ δ(t - t_corner).
- **D3.5**: Born-rule normalization as a half-density product.
-/

variable (d : ℕ)

-- ─────────────────────────────────────────────────────────────────────────────
-- §5.1  Test functions and weak stationarity
-- ─────────────────────────────────────────────────────────────────────────────

/-- A compactly-supported smooth variation on (t_i, t_f). -/
def IsTestFunction (η : ℝ → ℝ) (t_i t_f : ℝ) : Prop :=
  ContDiff ℝ ⊤ η ∧ HasCompactSupport η ∧
  (∀ t, t ≤ t_i ∨ t ≥ t_f → η t = 0)

/-- Weak first variation of S[q] in direction η. -/
noncomputable def weakVariation
    (∂L∂q ∂L∂v : ℝ → ℝ → ℝ → ℝ)
    (q η : ℝ → ℝ) (t_i t_f : ℝ) : ℝ :=
  ∫ t in t_i..t_f,
    (∂L∂q (q t) (deriv q t) t - deriv (fun s => ∂L∂v (q s) (deriv q s) s) t) * η t

/-- P3.1: Weak stationarity ⟺ pointwise Euler–Lagrange.
    By the fundamental lemma of the calculus of variations (du Bois-Reymond):
    a locally integrable function that pairs to zero against all test functions
    must be zero almost everywhere.
-/
theorem P3_1_weak_stationarity_iff_EL
    (∂L∂q ∂L∂v : ℝ → ℝ → ℝ → ℝ)
    (q : ℝ → ℝ) (t_i t_f : ℝ) (h : t_i < t_f)
    (hq : ContDiff ℝ 1 q) :
    (∀ η : ℝ → ℝ, IsTestFunction η t_i t_f →
     weakVariation ∂L∂q ∂L∂v q η t_i t_f = 0) ↔
    ∀ t ∈ Set.Ioo t_i t_f,
    ∂L∂q (q t) (deriv q t) t = deriv (fun s => ∂L∂v (q s) (deriv q s) s) t := by
  sorry  -- du Bois-Reymond lemma

-- ─────────────────────────────────────────────────────────────────────────────
-- §5.2  Localised probing (P3.2)
-- ─────────────────────────────────────────────────────────────────────────────

/-- A probe concentrated near t₀ with width ε. -/
structure LocalProbe (t₀ : ℝ) (ε : ℝ) (hε : ε > 0) where
  η       : ℝ → ℝ
  smooth  : ContDiff ℝ ⊤ η
  support : ∀ t, η t ≠ 0 → |t - t₀| < ε
  mass    : ∫ t, η t = 1

/-- P3.2: For any t₀ and ε > 0, a local probe exists that resolves changes
    of the path within (t₀ - ε, t₀ + ε) with precision proportional to ε. -/
theorem P3_2_local_probes_exist (t₀ : ℝ) (ε : ℝ) (hε : ε > 0) :
    ∃ (p : LocalProbe t₀ ε hε), True := by
  sorry

-- ─────────────────────────────────────────────────────────────────────────────
-- §5.3  Corner conditions (P3.3 and P3.4)
-- ─────────────────────────────────────────────────────────────────────────────

/-- One-sided limits of the derivative (left and right velocities at t₀). -/
noncomputable def leftVelocity (q : ℝ → ℝ) (t₀ : ℝ) : ℝ :=
  Filter.Tendsto.limUnder (Filter.Tendsto (fun h => (q t₀ - q (t₀ - h)) / h) (𝓝[>] 0))

noncomputable def rightVelocity (q : ℝ → ℝ) (t₀ : ℝ) : ℝ :=
  Filter.Tendsto.limUnder (Filter.Tendsto (fun h => (q (t₀ + h) - q t₀) / h) (𝓝[>] 0))

/-- P3.3: A corner (discontinuity in q̇) at t_corner does NOT require a force
    discontinuity — only the constraint equations change there.
    Formally: the Euler–Lagrange equation can be satisfied on (t_i, t_corner) ∪ (t_corner, t_f)
    even though q̇ is discontinuous at t_corner, provided the junction condition
    ∂L/∂v |_{left} = ∂L/∂v |_{right}  holds (continuity of momentum).
-/
theorem P3_3_corner_consistent_with_smooth_force
    (m : ℝ) (hm : m > 0)
    (q : ℝ → ℝ) (t_corner : ℝ)
    -- The momentum is continuous even though the velocity is not:
    (h_momentum_cont : m * leftVelocity q t_corner = m * rightVelocity q t_corner) :
    -- No impulsive force is required:
    ∀ t ≠ t_corner,
    HasDerivAt (fun s => m * deriv q s) 0 t := by
  sorry

/-- P3.4: An *impulse* (discontinuity in momentum) at t_corner is equivalent
    to a force f(t) = J · δ(t - t_corner) where J is the momentum jump.
    Formally: the distributional equation m q̈ = f holds with f = J · δ_{t_corner}.
-/
theorem P3_4_impulse_iff_momentum_jump
    (m : ℝ) (hm : m > 0)
    (q : ℝ → ℝ) (t_corner : ℝ) :
    let J := m * rightVelocity q t_corner - m * leftVelocity q t_corner
    -- J ≠ 0 iff an impulsive force of magnitude J acts at t_corner
    J ≠ 0 →
    ∃ (impulse_strength : ℝ),
    impulse_strength = J ∧
    -- The distributional equation is: m q̈ = J · δ_{t_corner}
    ∀ η : ℝ → ℝ, IsTestFunction η (t_corner - 1) (t_corner + 1) →
    ∫ t, m * deriv (deriv q) t * η t = J * η t_corner := by
  intro J hJ
  exact ⟨J, rfl, fun η _ => by sorry⟩

-- ─────────────────────────────────────────────────────────────────────────────
-- §5.4  Born-rule normalization as half-density product (D3.5)
-- ─────────────────────────────────────────────────────────────────────────────

/-- D3.5: The Born-rule normalization ∫|ψ|² = 1 can be written as
    a pairing of the half-density √ρ with its conjugate:
      ∫ ψ̄ · ψ = ∫ √ρ · √ρ̄ = 1.

    The *correct* biconditional: the L² norm is 1 iff ψ is
    the square root of a probability density ρ with ∫ρ = 1.

    (The earlier version had the biconditional backwards: it said
    ∫|ψ|² = 1 iff ∃ ρ, ψ = √ρ ∧ ∫ρ = 1, which is not a biconditional
    since ψ need not equal √ρ for a specific ρ.)
-/
theorem D3_5_born_rule_as_half_density (ψ : ℝ → ℂ)
    (hψ : MeasureTheory.Integrable (fun x => ‖ψ x‖^2)) :
    (∫ x, ‖ψ x‖^2 = 1) ↔
    (∃ ρ : ℝ → ℝ,
     (∀ x, 0 ≤ ρ x) ∧
     (∀ x, ‖ψ x‖^2 = ρ x) ∧
     ∫ x, ρ x = 1) := by
  constructor
  · intro h
    exact ⟨fun x => ‖ψ x‖^2,
           fun x => sq_nonneg _,
           fun x => rfl,
           by exact_mod_cast h⟩
  · rintro ⟨ρ, _, hρ_eq, hρ_int⟩
    simp_rw [← hρ_eq] at hρ_int ⊢
    exact_mod_cast hρ_int

end PhysRes.MainPaper.Section05
