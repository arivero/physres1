# S231 — Execution: Exact apsidal advance

## Derivation

For circular orbits in Schwarzschild (G=c=1):

Radial equation: ṙ² = E² - V_eff(r), with V_eff = (1-2M/r)(1+L²/r²)
At circular orbit: V_eff'(r₀) = 0 → L² = Mr₀²/(r₀-3M)

Small radial perturbation r = r₀ + δr:
  r̈ = -V_eff'(r)/2 ≈ -V_eff''(r₀)/2 · δr

Radial oscillation frequency (proper time):
  (ω_r)² = V_eff''(r₀)/2 = M(r₀-6M)/(r₀³(r₀-3M))

Orbital frequency (proper time):
  ω_φ = dφ/dτ = L/r₀²

So ω_φ² = L²/r₀⁴ = M/(r₀²(r₀-3M))

Frequency ratio:
  (ω_r/ω_φ)² = [M(r₀-6M)/(r₀³(r₀-3M))] / [M/(r₀²(r₀-3M))]
              = (r₀-6M)/r₀

Therefore ω_r/ω_φ = √((r₀-6M)/r₀)

## Apsidal advance

Δφ = 2π(ω_φ/ω_r - 1) = 2π(√(r₀/(r₀-6M)) - 1)

Weak field (r₀ ≫ 6M):
  Δφ ≈ 2π · 3M/r₀ = 6πM/r₀  ✓ (standard result)

At ISCO (r₀ → 6M⁺):
  Δφ → ∞ (radial frequency vanishes, orbit never closes)

Concrete check — Mercury:
  r₀ = a(1-e²) ≈ 5.5×10⁷ m, M_sun ≈ 1477 m
  Δφ ≈ 6π × 1477 / 5.5×10⁷ ≈ 5.05×10⁻⁷ rad/orbit
  ≈ 43" per century ✓
