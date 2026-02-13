# S112 Execution
Date: 2026-02-13

## Derivation
Free particle, mass m, two time slices of width Δt.
- Two-slice action: S = m/(2Δt)[(q₂-q₁)² + (q₁-q₀)²]
- Complete the square: S = m/(4Δt)(q₂-q₀)² + m/Δt·(q₁ - q̄)² with q̄ = (q₀+q₂)/2
- Euclideanized weight integral: W_ℏ = √(πℏΔt/m) exp(-m(q₂-q₀)²/(4ℏΔt))
- Effective action: S_eff^{(ℏ)} = m(q₂-q₀)²/(4Δt) + (ℏ/2)ln(m/(πℏΔt))
- As ℏ→0: S_eff → m(q₂-q₀)²/(4Δt) = inf_{q₁} S (classical extremal = midpoint)

## Promotion (C153)
Example D4.2b inserted after D4.2a in Section 6.4. Old Remark D4.2b (delocalized angles) renumbered to D4.2c.
Cornerstone: +11 net lines.

## Diffstat
```
paper-diffstat (cached): TOTAL +12 -1 (1 files)
  +12 -1 paper/main.md
```
