# S229 — Execution: free-particle propagator from time-slicing

## Key computation

For L = m/2 ẋ², the discrete action S_N = Σ (m/2)(q_{k+1}-q_k)²/Δt is
a quadratic form in {q_k}. Each intermediate Gaussian integral has the form
∫ dq_k exp(iA(q_k - a)² + iB(q_k - b)²) where A = B = m/(2ℏΔt).

Completing the square and integrating:
- The Gaussian integral yields √(πiℏΔt/m) (one factor per integration).
- The exponent combines two adjacent segments into one with merged endpoints.

After all N integrations:
- Prefactor: (m/(2πiℏΔt))^{(N+1)/2} × (2πiℏΔt/m)^{N/2}
  = (m/(2πiℏΔt))^{1/2} × (Δt/T)^{-1/2} ...

More carefully: the telescoping gives exactly
  K = √(m/(2πiℏT)) exp(iS₀/ℏ)
with S₀ = m(q_f - q_i)²/(2T). Independent of N.

## Van Vleck determinant

S₀ = m(q_f - q_i)²/(2T)
∂²S₀/∂q_f∂q_i = -m/T
det(-∂²S₀/∂q_f∂q_i) = m/T
√(m/T) = Van Vleck prefactor ✓

The half-density normalization of each segment is what makes this telescoping
work — composition law holds at each step.

## Remark drafted

Remark 4.5a: 3 sentences covering exact evaluation, N-independence
(composition law), and Van Vleck determinant connection.
