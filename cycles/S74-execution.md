# S74 Execution: Ordering ambiguity for quadratic symbols

Date: 2026-02-12

## Summary
Computed Q_W(fp²) - Q_L(fp²) by two independent methods (operator commutator algebra and Weyl kernel representation). Both agree.

## Results

### Main formula
$$Q_W(fp^2) - Q_L(fp^2) = -i\hbar f'(\hat q)\hat p - \tfrac{1}{4}\hbar^2 f''(\hat q)$$

### Structure
- O(ℏ): differential operator -iℏ f' p̂ (richer than the linear case, which gives only multiplication)
- O(ℏ²): multiplication operator -¼ℏ² f''
- Correction hierarchy matches momentum degree: degree n in p → corrections up to O(ℏ^n)

### Physical application
For f = 1/m(q) (position-dependent mass):
- Left, Weyl, and Laplace-Beltrami orderings differ in the coefficient of the first-derivative term iℏ(m'/m²)p̂
- Weyl gives coefficient 1; Laplace-Beltrami gives ½
- The half-density conjugated Laplacian (HD-D1.3) eliminates the first-derivative term entirely

### Cross-thread connection
The half-density formalism resolves the ordering ambiguity for kinetic operators geometrically: it selects the unique second-order operator with no first-derivative (connection) term in the scalar picture. This connects thread 6 (ordering) to thread 2b (half-densities).

## Blackboard
`blackboards/2026-02-12-ordering-quadratic-symbols.md`

## Promotion candidate
A remark extending D9.1 to quadratic symbols, with the half-density connection noted. Natural target: Section 10.2 of paper/main.md.
