# S76 Execution: Linear vs nonlinear beta — when does a semigroup generate transmutation?

Date: 2026-02-12

## Work performed
1. Compared D6.2a-sg (β(a) = 1/2 - a, linear) with PA-D1.6a (β(g) = -cg², nonlinear) at the level of the P6.2 semigroup axioms.
2. Computed the RG invariant ∫ dg/β(g) for each case:
   - Linear β: integral = -ln|1/2 - a| → RG invariant is algebraic (b · (a₀ - 1/2) = const), analytic in the coupling.
   - Quadratic β: integral = 1/(cg) → RG invariant Λ* = μ exp(1/(cg(μ))), essential singularity at g = 0.
3. Identified the structural criterion: transmutation requires β of order ≥ 2 at the fixed point.
4. Concluded: D6.2a-sg witnesses P6.2 (semigroup structure) but NOT PA-H2.13 (transmutation).

## Artifacts produced
- `blackboards/2026-02-12-linear-vs-nonlinear-beta-transmutation.md`

## Commands run (if any)
None (purely algebraic analysis).

## Result
- D6.2a-sg is a minimal witness for P6.2 (semigroup axioms hold for both linear and nonlinear beta).
- Transmutation requires nonlinear beta (order ≥ 2 at fixed point) — the linear regime produces only power-law (algebraic) RG invariants.
- This sharpens the conceptual hierarchy: semigroup structure (P6.2) is necessary but not sufficient for transmutation (PA-H2.13).

## Promotion candidate (copyable block)
A parenthetical remark could be added to D6.2a-sg or to the paragraph connecting Section 8.4 to Section 8.5:

> The beta function β(a) = 1/2 - a is linear, so the RG invariant b·(a - 1/2) is algebraic in the coupling — no transmutation scale is generated. Transmutation (Derivation PA-D1.6a in the companion note) requires β of order ≥ 2 at the fixed point, producing an essential singularity in the coupling-to-scale map. The semigroup structure (P6.2) is shared by both regimes; what distinguishes them is the order of vanishing of β at the fixed point.

This may be too detailed for the main manuscript; it could alternatively go in the Planck-area draft as a clarifying remark in the PA-H2.13 discussion.

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **No**
- The result is as expected: linear beta cannot produce essential singularities. The value is in making the structural boundary explicit and connecting two threads that were previously discussed separately.

## Spawned cycles
- Optional C cycle: add a parenthetical to the main manuscript or Planck-area draft noting the linear/nonlinear boundary. Low priority — the blackboard provides the reference.
