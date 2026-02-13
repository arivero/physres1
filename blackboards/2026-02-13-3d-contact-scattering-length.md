# 3D Contact Interaction: Scattering Length as Renormalization-Invariant Scale

## Setup
Delta potential in d=3: V(r) = g₀ δ³(r), UV cutoff Λ.

## T-matrix with cutoff
Lippmann-Schwinger resummation of bubble diagrams gives:
T(k)⁻¹ = 1/g₀ + G(k,Λ)

where G is the one-loop integral (with ℏ restored):
G(k,Λ) = (m/(2π²ℏ²)) ∫₀^Λ dp p²/(p² - k² - i0⁺)
        ≈ (m/(2π²ℏ²))(Λ + iπk/2)  for k << Λ

So: T(k)⁻¹ = 1/g₀ + mΛ/(2π²ℏ²) + imk/(4πℏ²)

## Renormalization
The linear divergence in Λ must be absorbed. Define scattering length a via:
1/g₀ + mΛ/(2π²ℏ²) = -m/(4πℏ²a)

Then: T(k)⁻¹ = -m/(4πℏ²)(1/a - ik)
Equivalently: T(k) = -(4πℏ²a)/(m(1 - ika))

## Bound state
For a > 0, pole at k = i/a → E = -ℏ²k²/(2m) = -ℏ²/(2ma²).

## Comparison with d=2 (Example 5.1)
| d | Divergence | RG-invariant scale | Beta function |
|---|-----------|-------------------|---------------|
| 2 | log(Λ/k) | μ_* = μ exp(πℏ²/(mg_R)) | β = (m/πℏ²)g_R² |
| 3 | Λ (linear) | scattering length a | power-law running |

Both cases: "coupling constant" is not a bare number but requires refinement rule.
Same structural lesson as 2D: uncuttable pattern — continuum theory needs (cutoff removal + renormalization condition), not just a bare coupling.

## Key references
- Jackiw 1991: explicit 2D and 3D calculations
- Albeverio et al. 2005: operator-theoretic (self-adjoint extensions)
- Kaplan, Savage, Wise (1998): nuclear EFT with contact interactions
