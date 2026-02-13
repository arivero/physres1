# S232 — Execution: Multi-dimensional propagator

## Key computation

In d dimensions, free-particle action on straight path:
  S₀ = m|q_f - q_i|²/(2T)

Van Vleck matrix:
  -∂²S₀/∂q_f^i ∂q_i^j = (m/T)δ^{ij}
  det = (m/T)^d
  √det = (m/T)^{d/2}

Propagator:
  K = (m/(2πiℏT))^{d/2} exp(iS₀/ℏ)

The d/2 exponent also appears in:
- Identity kernel normalization (2πε)^{-d/2}
- Heat kernel diagonal K(t;x,x) ~ (4πt)^{-d/2}
- Green function diagonal G₀(0,0;E) ~ ∫ t^{-d/2} e^{-κ²t} dt

## Bridge to renormalization

The integral ∫ t^{-d/2} dt converges iff d < 2.
At d = 2: logarithmic divergence → dimensional transmutation.
The path integral normalization and renormalization threshold share
the same d/2 origin (half-density volume scaling).
