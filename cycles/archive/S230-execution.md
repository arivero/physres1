# S230 — Execution: Weierstrass excess function

## Key computation

Weierstrass excess function:
E(t,q,ẋ,ẋ') = L(t,q,ẋ') - L(t,q,ẋ) - (ẋ'-ẋ) ∂L/∂ẋ(t,q,ẋ)
             = m/2 ẋ'² - m/2 ẋ² - (ẋ'-ẋ)mẋ
             = m/2 (ẋ' - ẋ)²

This is ≥ 0, with equality only when ẋ' = ẋ.

## Sufficiency theorem

Strong Legendre + no conjugate points + non-negative Weierstrass excess
→ Weierstrass sufficiency theorem: strong local minimum.

The free particle satisfies all three (m > 0, no conjugate points
from 4.3b, E ≥ 0 above).

## Connection to Section 4.3

The kinked trajectory is a strong (C⁰-close, not C¹-close) competitor.
Its action excess S - S₀ = m/2 · t₀(T-t₀)/T · (Δv)² > 0 is a
concrete case of Weierstrass sufficiency.
