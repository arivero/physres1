/-
# RG-Lipschitz: Basic Definitions

This file defines the core objects of the RG-Lipschitz framework:
- The expansion functional μ(t) = sup_y ln ‖DΦ_t(y)‖
- The running Lipschitz constant L(h) = μ(h)/h
- The asymptotic expansion rate λ_∞ = inf_{t>0} μ(t)/t

The main theorem is that μ is sub-additive (from the semigroup property of the flow),
and therefore the RG-Gronwall bound e^{λ_∞ t} is at least as tight as e^{L₀ t}.
-/

import Mathlib.Analysis.NormedSpace.Basic
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Order.Filter.Basic
import Mathlib.Topology.Order.Basic

open Filter

/-! ## Subadditive functions and Fekete's lemma -/

/-- A function `f : ℝ → ℝ` is subadditive on `(0, ∞)` if `f(s + t) ≤ f(s) + f(t)`
    for all `s, t > 0`. -/
def SubadditiveOn (f : ℝ → ℝ) : Prop :=
  ∀ s t : ℝ, 0 < s → 0 < t → f (s + t) ≤ f s + f t

/-- The running average of a function: `L(h) = f(h) / h`. -/
noncomputable def runningAvg (f : ℝ → ℝ) (h : ℝ) : ℝ := f h / h

/-- The asymptotic rate of a subadditive function: `λ_∞ = inf_{t > 0} f(t)/t`. -/
noncomputable def asympRate (f : ℝ → ℝ) : ℝ :=
  iInf (fun (t : {t : ℝ // 0 < t}) => f t.val / t.val)

/-! ## Expansion functional for flows -/

/-- A flow on a normed space is a family of maps `Φ : ℝ → E → E` satisfying the
    semigroup property. We work with an abstract interface here. -/
structure Flow (E : Type*) [NormedAddCommGroup E] where
  /-- The flow map at time `t`. -/
  map : ℝ → E → E
  /-- Semigroup property: Φ_{t+s} = Φ_s ∘ Φ_t -/
  semigroup : ∀ s t : ℝ, 0 < s → 0 < t → ∀ y, map (s + t) y = map s (map t y)
  /-- Identity at t = 0 -/
  identity : ∀ y, map 0 y = y

/-- The expansion functional: worst-case expansion ratio of the flow at time t.
    We define it as `μ(t) = ln(sup_y sup_{v≠0} ‖DΦ_t(y) v‖ / ‖v‖)`.
    For the formalization, we use the Lipschitz constant of Φ_t as a proxy
    (this avoids needing differentiability of the flow). -/
noncomputable def expansionFunctional {E : Type*} [NormedAddCommGroup E]
    (Φ : Flow E) (t : ℝ) : ℝ :=
  Real.log (sSup {c : ℝ | ∀ x y : E, ‖Φ.map t x - Φ.map t y‖ ≤ c * ‖x - y‖})

/-! ## The classical Lipschitz constant -/

/-- The Lipschitz constant of a map `f : E → E`. -/
noncomputable def lipschitzConst {E : Type*} [NormedAddCommGroup E] (f : E → E) : ℝ :=
  sSup {c : ℝ | ∀ x y : E, ‖f x - f y‖ ≤ c * ‖x - y‖}
