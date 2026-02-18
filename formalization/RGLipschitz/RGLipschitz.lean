/-
# RG-Lipschitz: Main Module

The RG-Lipschitz theorem: renormalization group methods yield a strictly
superior replacement for the Gronwall inequality.

## Overview

The derivative is a renormalized object: a divergent difference quotient
with a local counterterm subtracted (f(x+ε)/ε − f(x)/ε → f'(x)).
The Lipschitz condition is the statement that this renormalization produces
a bounded result at all scales ε > 0.

The full RG machinery — tracking how the effective bound changes with scale,
using the semigroup property (composition of the flow) — yields a strictly
tighter bound than the classical Gronwall inequality.

## Main results

- `ControlMap.lean`: The control map τ_b(a) = a/b + (b-1)/(2b),
  its semigroup property τ_b ∘ τ_c = τ_{bc}, and fixed point a* = 1/2.

- `SubAdditive.lean`: The expansion functional μ(t) = ln ‖DΦ_t‖ is
  sub-additive: μ(t+s) ≤ μ(t) + μ(s). This follows from the
  submultiplicativity of operator norms under composition.

- `Fekete.lean`: Fekete's lemma for subadditive sequences:
  lim a(n)/n = inf a(n)/n. Applied to the expansion functional,
  this gives the existence of the asymptotic rate λ_∞.

- `RGGronwall.lean`: The RG-Gronwall inequality:
  ‖Φ_t(x) − Φ_t(y)‖ ≤ ‖x−y‖ · K(T)^n for t = nT,
  where K(T) ≤ e^{L₀·T} but can be strictly smaller.

- `Examples.lean`: The rotating-dissipation example where the classical
  Gronwall bound predicts exponential growth but the RG bound gives
  the correct exponential decay.

## Formalization status

The algebraic core (control map, sub-additivity, Fekete, RG-Gronwall)
is formalized. The analytic extensions (continuous-time Gronwall,
spectral theory, Hopf algebra structure) are stated as TODOs.

## Connection to physics

This formalization corresponds to:
- Main paper Sections 8.4, D6.2a, D6.2a-sg (control map and semigroup)
- Main paper Section 8.3 (RG equation from cutoff independence)
- Companion note lipschitz.md (Lipschitz boundary of classical mechanics)
- Companion note rg-lipschitz.md (full mathematical development)
-/

-- import RGLipschitz.Basic
-- import RGLipschitz.ControlMap
-- import RGLipschitz.SubAdditive
-- import RGLipschitz.Fekete
-- import RGLipschitz.RGGronwall
-- import RGLipschitz.Examples

-- Note: imports are commented out because Mathlib is not available
-- in this environment. Uncomment after running `lake build`.
