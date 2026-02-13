# Von Mises Distribution: Near-Optimal Angular Localization

**Date:** 2026-02-13
**Target:** action-angle satellite, Remark 4.4 after Example 4.3

## Context
Proposition 4.2: Var(L_z)(1-R²) ≥ ℏ²R²/4.
Example 4.3: Dirichlet kernel gives LHS/RHS = (M+1)(4M+1)/(3M) → 4M/3 → ∞.

## Von Mises wavefunction
$$
\psi(\phi) \propto \exp(\kappa \cos\phi), \quad \kappa > 0.
$$

Wavefunction Fourier coefficients (using exp(κ cos φ) = Σ_m I_m(κ) e^{imφ}):
$$
c_m \propto I_m(\kappa).
$$

Probability distribution: |ψ|² ∝ exp(2κ cos φ), a von Mises with parameter 2κ.
Circular concentration:
$$
R = \langle e^{i\phi}\rangle = I_1(2\kappa)/I_0(2\kappa).
$$

Note: R uses the probability parameter 2κ, not the wavefunction parameter κ.

## Large-κ asymptotics

Wavefunction coefficients: I_m(κ) ≈ (e^κ/√(2πκ)) exp(-m²/(2κ)) for |m| ≪ κ.
So c_m² ∝ exp(-m²/κ), approximately Gaussian with width √κ.

Angular-momentum variance:
$$
\mathrm{Var}(L_z) = \hbar^2 \sum_m m^2 I_m(\kappa)^2 / I_0(2\kappa) \approx \hbar^2 \kappa/2.
$$

Concentration: R = I_1(2κ)/I_0(2κ) ≈ 1 - 1/(4κ).
So 1-R² ≈ 2·(1/(4κ)) = 1/(2κ).

Ratio check:
- LHS = Var(L_z)(1-R²) ≈ (ℏ²κ/2)(1/(2κ)) = ℏ²/4
- RHS = ℏ²R²/4 ≈ ℏ²/4
- **Ratio → 1 as κ → ∞.** The von Mises wavefunction asymptotically saturates the bound.

## Comparison
- Dirichlet kernel: ratio → 4M/3 → ∞ (rectangular window)
- Von Mises: ratio → 1 (Gaussian-like window)

The Dirichlet kernel's inefficiency comes from the abrupt cutoff at |m|=M. The von Mises has smoothly decaying Fourier coefficients, avoiding the sidelobe variance penalty.

## What to promote
**Remark 4.4** (~5 lines): von Mises as near-optimal angular state, asymptotically saturating Proposition 4.2's bound, contrasted with Dirichlet kernel's unbounded ratio.
