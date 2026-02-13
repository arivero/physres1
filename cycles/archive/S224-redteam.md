# S224 — Red Team

## Mathematical verification
g(Λ) · G₀(0,0;E) = [2πℏ²/(m ln(Λ/α))] · [(m/(2πℏ²)) ln(Λ/κ)]
                   = ln(Λ/κ) / ln(Λ/α)

Setting 1 - ln(Λ/κ)/ln(Λ/α) = 0:
⟹ ln(Λ/κ) = ln(Λ/α)
⟹ κ = α (for any Λ > max(α,κ))

Bound state energy: E = -ℏ²κ²/(2m) = -ℏ²α²/(2m). Correct.

## Λ→∞ arrow removed
The original draft had a misleading Λ→∞ arrow. The cancellation is exact at
all Λ, not just asymptotic. Fixed in the edit.

## Page count
Delta went from 207/5pp to 218/6pp. At PLB boundary (≤6pp). No more additions
to this paper without compensating cuts.
