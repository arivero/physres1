# Quantum revivals and classical correspondence in action-angle variables

## Context
The action-angle satellite (Section 4) establishes the Fourier tradeoff:
localizing φ requires a broad m-superposition. Section 5 says "orbit
pictures require packets/superpositions." But the paper doesn't discuss
what happens to these packets in TIME.

## Key observation: temporal coherence of m-superpositions
A state localized near φ₀ is a superposition ψ(φ,0) = Σ c_m e^{imφ}.
Under time evolution with a Hamiltonian H that commutes with L_z:

  ψ(φ,t) = Σ c_m e^{i(mφ - E_m t/ℏ)}

### Case 1: Rigid rotation (linear spectrum)
If E_m = ωℏm (free rotor, L_z² spectrum with fixed ℓ), then
  ψ(φ,t) = ψ(φ - ωt, 0)
The packet rotates rigidly at angular velocity ω. This is the classical
orbit. No dispersion, no revival needed.

### Case 2: Anharmonic spectrum → dispersion and revival
If E_m is not linear in m, the modes dephase. Expanding around ⟨m⟩ = m₀:
  E_m ≈ E₀ + E'(m-m₀) + (E''/2)(m-m₀)² + ...

- E' = dE/dm determines the classical angular velocity ω_cl = E'/ℏ
- E'' = d²E/dm² determines the dispersion (spreading) rate
- The packet maintains its shape for time t << t_disp = ℏ/|E''|σ_m
  where σ_m is the width of the m-distribution
- At t_rev = 2πℏ/|E''| the quadratic phases return to multiples of 2π
  and the packet reforms (quantum revival)

### Hydrogen atom
For hydrogen, E_n = -Ry/n² (radial action, not azimuthal — but the
principle is the same for any action variable). For the azimuthal variable
specifically, the Hamiltonian depends on n and ℓ but the φ-evolution is
simple: e^{imφ} rotates at rate ω_m = ∂E/∂(ℏm). For hydrogen:
  - ω depends on m only through the centrifugal barrier
  - For Rydberg states (n >> 1), the revival time is T_rev ∝ n³

### Connection to action-angle indeterminacy
The dispersion phenomenon quantifies the "cost" of angle localization in
TIME, not just in m-width. A narrowly localized packet (small Δφ, large Δm)
disperses FASTER (t_disp ∝ 1/Δm) because more modes contribute distinct
phase velocities. This is the temporal face of the Fourier tradeoff:
- Spatial localization (small Δφ) → large Δm (Proposition 4.2)
- Temporal localization (short coherence) → large Δm → fast dispersion
- The classical limit (Δm → ∞, Δφ → 0) has BOTH good spatial and temporal
  localization only when E'' → 0 (harmonic/linear spectrum)

## What to promote
A Remark 5.1 in Section 5 (Foundations message), adding the temporal
dimension to the packet discussion. Key point: classical orbits require
not just spatial localization (many m-modes) but temporal coherence
(approximately linear energy spectrum). When the spectrum is anharmonic,
packets disperse and revive — a purely quantum phenomenon absent in the
classical orbit picture. Keep to 3–4 lines.
