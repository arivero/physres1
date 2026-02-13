# Blackboard: Itô vs Stratonovich as Refinement Non-Uniqueness
Date: 2026-02-13

## Setup
Brownian motion W_t on [0,T], continuous but nowhere differentiable.
Quadratic variation: ⟨W⟩_t = t (non-zero — source of all trouble).

## Stochastic integral: two refinement rules
Given partition P = {0 = t_0 < t_1 < ... < t_N = T}, mesh → 0.

**Itô (left-point, α=0):**
I_Itô = lim_{N→∞} Σ_k f(W_{t_k}) (W_{t_{k+1}} - W_{t_k})

**Stratonovich (midpoint, α=1/2):**
I_Strat = lim_{N→∞} Σ_k f((W_{t_k} + W_{t_{k+1}})/2) (W_{t_{k+1}} - W_{t_k})

Both limits exist in L² for reasonable f, but they are DIFFERENT.

## The correction formula
For f ∈ C²:
∫₀ᵗ f(W_s) ∘ dW_s = ∫₀ᵗ f(W_s) dW_s + ½ ∫₀ᵗ f'(W_s) ds

The correction ½f'dt arises from:
- Itô's lemma: dF(W) = F'(W)dW + ½F''(W)dt (chain rule has extra term)
- Stratonovich: dF(W) = F'(W) ∘ dW (ordinary chain rule holds)

## Why the evaluation point matters
For a smooth function g(t) and smooth integrator h(t), the Riemann integral
∫g(t)dh(t) is independent of evaluation-point choice (left, mid, right all agree).

For Brownian paths, the integrator has non-zero quadratic variation:
Σ_k (W_{t_{k+1}} - W_{t_k})² → T  (not 0!)

This makes cross-terms between f and ΔW non-negligible:
f((W_{t_k}+W_{t_{k+1}})/2) ≈ f(W_{t_k}) + ½f'(W_{t_k})(W_{t_{k+1}} - W_{t_k})

The second term, when multiplied by ΔW_k = W_{t_{k+1}} - W_{t_k}, gives:
½f'(W_{t_k})(ΔW_k)²

And Σ(ΔW_k)² → T ≠ 0. So the cross-terms contribute a finite correction ½∫f'dt.

## Parallel with quantum α-ordering
Path integral: q_α = (1-α)q_k + αq_{k+1}
Stochastic:    W_α = (1-α)W_{t_k} + αW_{t_{k+1}}

Quantum ordering correction: Ĥ_α = p̂q̂ + αiℏ  (correction ∝ ℏ)
Stochastic correction: I_α = I_Itô + α∫f'dt  (correction ∝ quadratic variation)

The correction in both cases arises from "roughness" of the paths:
- Quantum: ℏ controls fluctuation scale (ℏ → 0 recovers classical, evaluation-point independence)
- Stochastic: quadratic variation controls fluctuation scale (smooth paths → no correction)

## Key structural point
For smooth paths/integrands, the refinement limit is unique (Section 2 of satellite).
For rough paths (quantum or stochastic), the refinement limit depends on the prescription.
The prescription is part of the definition — "uncuttable" in the satellite's sense.

## References
- Øksendal, "Stochastic Differential Equations," 6th ed., Springer 2003. Ch. 3-4.
- Gardiner, "Stochastic Methods," 4th ed., Springer 2009.
- For the α-parametrized stochastic integral: Kloeden & Platen, "Numerical Solution of SDEs," Springer 1992.
