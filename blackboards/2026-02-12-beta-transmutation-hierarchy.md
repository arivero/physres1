# Beta-function order and transmutation: structural hierarchy

Date: 2026-02-12 (consolidated from S76+S77)

## Key result (S76)
The semigroup axioms P6.2 apply to all refinement flows. Whether a flow generates a transmutation scale depends on the order of β at the fixed point:

| β order at g* | RG invariant type | Transmutation? |
|---|---|---|
| n = 1 (linear) | Algebraic: ∝ (g - g*)^{-1} | **No** |
| n ≥ 2 (nonlinear) | Essential singularity: exp(const/(g - g*)^{n-1}) | **Yes** |

**D6.2a-sg** (ODE, β = 1/2 - a): linear → no transmutation. Witnesses P6.2 only.
**Section 10.5** (2D delta, β ∝ g²): nonlinear → transmutation → witnesses PA-H2.13.

## 2D delta as PA-H2.13 instance (S77)
The 2D contact interaction (Section 10.5) realizes PA-H2.13:
- d = 2, marginal coupling, β(g_R) = (m/πℏ²)g_R²
- κ* = μ exp(πℏ²/(mg_R)) — RG-invariant, essential singularity
- Scalarization: C ~ κ*^{-1} has [C] = length^1 = length^{d/2} ✓

Transmutation is **dimension-permissive**: it supplies length^{d/2} in any d with a marginal coupling. The dimension sieve (PA-H2.5) is a stronger filter.

## Three-level hierarchy
1. **P6.2 semigroup axioms** — all refinement flows. Witness: D6.2a-sg.
2. **Transmutation** — β of order ≥ 2. Witness: Section 10.5 / PA-E5.
3. **Dimension sieve** — monomial coupling dependence. Witness: PA-D1.3.

Levels: (3) ⊂ (2) ⊂ (1).
