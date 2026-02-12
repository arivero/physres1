# S75 Plan: Semigroup structure of the step-refinement control map

Date: 2026-02-12

## Goal
Verify that the control map τ_b from D6.2a satisfies the semigroup law τ_b ∘ τ_c = τ_{bc} for general refinement factor b, and compute the continuous (infinitesimal) limit — the "beta function" analogue.

## Thread
Thread 1 (main paper: RG as foundational compatibility). This directly strengthens Section 8.4's claim that step-halving is a micro-model for RG semigroup structure.

## Method
1. Compute (Φ_{h/b}^{(a)})^b to O(h²) for general integer b.
2. Extract τ_b(a) and verify τ₂ matches D6.2a.
3. Check τ_b ∘ τ_c = τ_{bc}.
4. Take the continuous limit b = e^t and compute the infinitesimal generator (beta function).

## Allowed files
- `blackboards/2026-02-12-step-refinement-semigroup.md`
- `cycles/S75-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
