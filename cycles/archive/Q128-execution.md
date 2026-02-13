# Q128 — Execution

## Referee findings (subagent, mathematical physicist persona)

### Critical
1. **σ notation clash** (FIXED): σ(x) = conformal factor in §3 vs σ(x,y) =
   Synge's world function in §4. Renamed to s(x,y) with disambiguation note.

### Moderate
2. **Transport equation incorrectly stated** (FIXED): The formula
   (∇_x^μ + ∇_y^μ)Δ^{1/2} = 0 is not the standard VVD transport equation.
   Replaced with correct statement: Δ^{1/2} is a bi-scalar; |g|^{1/4}
   provides the half-density factors.
3. **a₁ missing mass term** (FIXED): For P = -∇² + m² + ξR, should be
   a₁ = (1/6 - ξ)R - m². Added "for the massless operator" qualifier.
4. **Bi-half-density reasoning imprecise** (FIXED): Tightened to say Δ^{1/2}
   is a bi-scalar, |g|^{1/4} provides the half-density weight.
5. **Trace formula overclaims** (FIXED): Changed "with no √|g|" to
   "where √|g| has been absorbed into K̃".

### Minor (not fixed — acceptable as-is)
6. Δ(x,x) = 1 without justification — added "(normalized so Δ(x,x)=1)".
7. a₂ schematic — rephrased as "linear combination of".
8. Section 5 cross-reference slightly loose — tightened to "Section 5's
   contact-term analysis".
