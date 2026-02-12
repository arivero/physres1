# 2D delta interaction as a PA-H2.13 transmutation instance

Date: 2026-02-12
Cycle: S77

## Motivation
The main paper's Section 10.5 contains the project's only fully explicit RG computation (2D contact interaction). The Planck-area draft's PA-H2.13 identifies dimensional transmutation as an alternative to the monomial sieve (PA-H2.5) for supplying a scalarization scale. S76 showed that transmutation requires β of order ≥ 2 at the fixed point. Question: is Section 10.5 a concrete realization of PA-H2.13?

## Cross-check

### Section 10.5 data
- Dimension: d = 2 (spatial, composition-variable dimension)
- Hamiltonian: H = -ℏ²Δ/(2m) + g δ²(x) on R²
- Contact coupling: classically marginal (log-divergent loop)
- Beta function: β(g_R) = (m/πℏ²)g_R² — order 2 at g* = 0 ✓ (S76 criterion met)
- Transmutation scale: κ*² = μ² exp(2πℏ²/(mg_R(μ))) — RG-invariant, essential singularity at g_R = 0

### PA-H2.13 framework
- PA-H2.3–H2.4 demand a universal scalarization constant C with [C] = length^{d/2}
- PA-D1.6a: any RG-invariant inverse length Λ* supplies C ~ Λ*^{-d/2}

### Match
| PA framework | 2D delta realization |
|---|---|
| d | 2 |
| Required [C] = length^{d/2} | length^1 |
| β order at fixed point | 2 (transmutation regime per S76) |
| Transmutation scale | κ* (inverse length, bound-state wavenumber) |
| Scalarization constant C | κ*^{-1} = length^1 = length^{d/2} ✓ |

The 2D delta is a **d = 2 instance of PA-H2.13**: the marginal coupling transmutes into a physical length scale κ*^{-1}, which has exactly the length^{d/2} = length^1 dimension required by half-density scalarization.

## Dimension-sieve question: does transmutation select d?

No. The transmutation branch is **dimension-permissive**:
- In d = 2: contact coupling is marginal → transmutation gives length^1 scale
- In d = 4: YM coupling is marginal → transmutation gives length^2 (area) scale
- In any d where a marginal coupling exists: transmutation can supply length^{d/2}

The half-density weight correctly tracks the *type* of scale:
- d = 2 → length (one-dimensional extent)
- d = 4 → area (two-dimensional extent)
- General: length^{d/2} = (d/2)-dimensional "volume"

But the transmutation mechanism does not constrain which d is physical. This confirms the Planck-area draft's statement (line 179-180): "This branch does not 'sieve dimensions' in the same way as PA-H2.5a/PA-H2.5b."

## Structural hierarchy (updated by S76 + S77)

1. **P6.2 semigroup axioms** — shared by all refinement flows (linear or nonlinear β)
   - Witness: D6.2a-sg (ODE, linear β = 1/2 - a)
2. **Transmutation** — requires β of order ≥ 2 at fixed point (S76)
   - Witness: Section 10.5 / PA-E5 (2D delta, β ∝ g²)
3. **Dimension sieve** — requires monomial/analytic coupling dependence (PA-H2.5)
   - Witness: PA-D1.3 (gravity-only, d = 4 singled out)

The three levels are nested: (3) ⊂ (2) ⊂ (1) in terms of the demands placed on the theory.

## Promotion candidate
A remark or footnote could connect Section 10.5's P11.1 (dimensional transmutation in 2D delta) explicitly to PA-H2.13 (transmutation as scale-supplier). This would make the main paper's appendix computation serve double duty: (a) witnessing the RG consistency claim of Section 8, and (b) providing an explicit d = 2 instance of the Planck-area hypothesis ladder.

However, since PA-H2.13 lives in the companion note (not the main paper), the cross-reference might belong in the companion note rather than in Section 10.5. PA-E5 already references the 2D delta. The promotion candidate is: add a sentence to PA-E5 noting the length^{d/2} match and the structural hierarchy (P6.2 ⊃ transmutation ⊃ dimension sieve).
