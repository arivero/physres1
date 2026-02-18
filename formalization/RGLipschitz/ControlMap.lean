/-
# RG-Lipschitz: The Control Map τ_b

This file formalizes the algebraic core of the RG-Lipschitz framework:
the control map τ_b(a) = a/b + (b-1)/(2b) from the main paper's Derivation D6.2a,
its semigroup property τ_b ∘ τ_c = τ_{bc}, and its unique fixed point a* = 1/2.

This is the simplest nontrivial witness of the RG mechanism:
step-halving of a parametric ODE integrator induces a flow on the parameter space,
with a universal attractor at the second-order-accurate value.

Mathematical reference: main paper Section 8.4, Derivation D6.2a and Remark D6.2a-sg.
-/

/-! ## The control map -/

/-- The control map `τ_b(a) = a/b + (b-1)/(2b)` for refinement factor `b > 0`.
    This is the map on the order-2 coefficient `a` induced by composing `b` copies
    of the step `Φ_{h/b}` and reading off the resulting `O(h²)` coefficient. -/
noncomputable def controlMap (b : ℝ) (a : ℝ) : ℝ := a / b + (b - 1) / (2 * b)

/-- The fixed point of the control map: `a* = 1/2` for all `b > 0`. -/
theorem controlMap_fixedPoint (b : ℝ) (hb : b ≠ 0) :
    controlMap b (1/2) = 1/2 := by
  unfold controlMap
  field_simp
  ring

/-- The semigroup property: `τ_b(τ_c(a)) = τ_{bc}(a)` for all `b, c > 0`.
    This is the algebraic content of the RG semigroup law. -/
theorem controlMap_semigroup (b c : ℝ) (hb : b ≠ 0) (hc : c ≠ 0) (a : ℝ) :
    controlMap b (controlMap c a) = controlMap (b * c) a := by
  unfold controlMap
  field_simp
  ring

/-- The identity: `τ_1 = id`. -/
theorem controlMap_one (a : ℝ) : controlMap 1 a = a := by
  unfold controlMap
  ring

/-- Convergence to the fixed point: `τ_b(a) - 1/2 = (a - 1/2)/b`.
    This shows exponential convergence to `a* = 1/2` under repeated application. -/
theorem controlMap_deviation (b : ℝ) (hb : b ≠ 0) (a : ℝ) :
    controlMap b a - 1/2 = (a - 1/2) / b := by
  unfold controlMap
  field_simp
  ring

/-- Iterated application: `τ_b^n(a) - 1/2 = (a - 1/2)/b^n`.
    The deviation from the fixed point decays exponentially with rate `1/b`. -/
theorem controlMap_iterate (b : ℝ) (hb : 0 < b) (a : ℝ) (n : ℕ) :
    (controlMap b)^[n] a - 1/2 = (a - 1/2) / b^n := by
  induction n with
  | zero => simp
  | succ n ih =>
    simp [Function.iterate_succ', Function.comp]
    rw [controlMap_deviation b (ne_of_gt hb)]
    rw [ih]
    rw [pow_succ]
    field_simp
    ring

/-! ## The beta function -/

/-- The infinitesimal generator (beta function) of the control-map flow:
    `β(a) = d/d(ln b)|_{b=1} τ_b(a) = 1/2 - a`.
    This is the beta function of the toy RG from the main paper's Remark D6.2a-sg. -/
def betaFunction (a : ℝ) : ℝ := 1/2 - a

/-- The beta function vanishes at the fixed point. -/
theorem betaFunction_fixedPoint : betaFunction (1/2) = 0 := by
  unfold betaFunction
  ring

/-- The beta function is linear with slope -1 (universally attracting fixed point). -/
theorem betaFunction_linear (a : ℝ) : betaFunction a = -(a - 1/2) := by
  unfold betaFunction
  ring

/-! ## Connection to the deviation: β generates the flow -/

/-- The flow equation: the deviation `δ(b) = τ_b(a) - 1/2` satisfies
    `b · dδ/db = -δ`, whose solution is `δ(b) = δ(1)/b = (a - 1/2)/b`.
    This is consistent with `controlMap_deviation`. -/
-- (This is stated as a consistency check; the differential equation
--  formalization would require Lean's ODE library.)
