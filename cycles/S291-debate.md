# S291 Debate: Is the Fresnel integral evaluation rigorous enough?

Date: 2026-02-14

## Question
The key step ∫exp(iαu²)du = √(πi/α) is used without iε, treating it as a conditionally convergent improper integral. Is this rigorous, or does the entire computation secretly require iε from the start?

## Working answer
The Fresnel integral ∫exp(iαu²)du for real α>0 converges as a distributional (improper Riemann) integral via the Dirichlet test: the integrand oscillates with decreasing effective amplitude over each half-period. This is classical analysis (not requiring distribution theory). The result √(πi/α) can be obtained by:

1. **Contour rotation**: rotate the integration contour by π/4 in the complex plane, reducing to a standard Gaussian. No iε needed; this is a deformation argument.
2. **Dominated convergence with smooth cutoff**: multiply by exp(-εu²), evaluate the absolutely convergent Gaussian, take ε→0+. The iε here is a computational device, not a physical input.
3. **Analytic continuation from Euclidean**: start with ∫exp(-αu²)du = √(π/α), continue α→-iα. This is the Wick rotation perspective.

All three methods give the same answer. The computation in blackboard 6 is therefore sound: the algebraic steps (completing the square, normalization assembly) do not depend on which regularization method is used for the Fresnel integral. The d/2 exponent emerges from the Gaussian structure regardless.

The distinction is: the VALUE of the Fresnel integral does not need iε. The INTERPRETATION (boundary conditions, path integral measure, t→0 limit) does. This is exactly the partial-closure verdict.

## Next check
Verify the same split holds for:
- Interacting (non-free) potentials where stationary phase replaces exact Gaussian evaluation
- Time-dependent potentials where the semigroup property is modified
- The specific P4.2 hypotheses in the paper (which assume Lagrangian form, not just free particle)
