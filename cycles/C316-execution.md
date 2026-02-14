# C316 Execution: Add 2D Delta RG Example to Rooted-Tree Paper

Date: 2026-02-14

## What was added
Section 4.4 "Worked Example: 2D Delta Interaction (One-Loop)" in `papers/rooted-tree-bookkeeping/main.md`

## Content (50 lines)
1. Setup: 2D delta Hamiltonian, logarithmic divergence
2. Tree diagram: \(\tau_1 = \bullet\) (single node, one loop, no nested subdivergences)
3. Loop integral: \(I(E;\Lambda) = -(m/2\pi\hbar^2) \ln(\Lambda^2/k^2)\)
4. Counterterm: \(1/g_R(\mu) = 1/g_B + (m/2\pi\hbar^2) \ln(\Lambda^2/\mu^2)\)
5. Beta function: \(\beta(g_R) = (m/\pi\hbar^2) g_R^2\)
6. Dimensional transmutation: RG-invariant scale \(\kappa_*\)
7. **Explicit parallel to midpoint RK:** 5-point comparison (single tree, composition law, free parameter, physical output, scheme freedom)

## Source
Blackboard slot 1 (S298, 167 lines) — extracted formulas + tree interpretation

## Diffstat
```
papers/rooted-tree-bookkeeping/main.md: +50 -0 (269 → 319 lines, 5pp → 6pp)
TOTAL: +50 -0
```

## Impact
- Paper now at **6pp (PLB boundary)**
- Has worked examples on both sides (midpoint RK + 2D delta RG)
- Makes tree correspondence concrete (both single-node \(\tau_1 = \bullet\), both composition laws)
- Expandable to PRD target (9-10pp) by adding Section 6 expansions or symplectic RK

## Guard checks
- ✓ No cycle IDs in manuscript
- ✓ Substantive addition (not template)
- ✓ Parallel to Butcher explicitly stated
