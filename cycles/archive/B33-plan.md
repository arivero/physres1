# B33 Plan: Hairer-Lubich-Wanner (HLW06) and Hairer-Norsett-Wanner (HNW93) Citations

Date: 2026-02-14
Parent: Q183 recommendation

## Goal
Add citations for the numerical analysis textbooks that provide the convergence theorems referenced in Remark H1.2a.

## Target references
1. **[HLW06]** E. Hairer, C. Lubich, G. Wanner, *Geometric Numerical Integration: Structure-Preserving Algorithms for Ordinary Differential Equations*, 2nd ed., Springer, 2006.
   - Theorem IX.3.1 (symplectic Euler convergence)
   - Chapter IX (backward error analysis, symplectic integrators)

2. **[HNW93]** E. Hairer, S.P. Norsett, G. Wanner, *Solving Ordinary Differential Equations I: Nonstiff Problems*, 2nd ed., Springer, 1993.
   - Theorem II.3.6 (one-step method convergence)

## Acquisition strategy
Both are Springer textbooks (not OA). Check for:
1. Author repository copies
2. Institutional access
3. Sci-hub fallback (user-approved mirror)
4. PENDING status if unavailable

## Acceptance criteria
1. Both entries added to `paper/bibliography.md`
2. DOI/ISBN recorded
3. OA acquisition status noted (acquired, PENDING, or sci-hub)
4. No source files committed to repo
