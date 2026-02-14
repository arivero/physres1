# S285 Debate: Is the Lipschitz hypothesis too restrictive?

Date: 2026-02-14

## Question
The Lipschitz hypothesis on the force excludes all singular central potentials (V = -K/r^{n-1} for any n >= 2) from the convergence guarantee near r=0. Is this too restrictive -- i.e., does the symplectic Euler method actually converge for some mildly singular potentials, and if so, should we state a weaker condition?

## Working answer
No: the Lipschitz condition is the right level for a clean statement. Weaker conditions exist (e.g., one-sided Lipschitz, monotone forcing) but they complicate the hypotheses without adding physical insight for the manuscript's purposes. The key point is the dichotomy: structural invariants (angular momentum, equal areas) are exact at every finite step regardless of regularity, while the convergence of the interpolation limit depends on analytic control. The Lipschitz condition makes this dichotomy maximally transparent. For orbits that stay away from collision (the generic non-degenerate case with L != 0), the force IS Lipschitz along the trajectory, so the theorem applies.

## Next check
Verify that for Kepler orbits with L != 0 (bounded, elliptical), the trajectory stays in a compact annulus r_min <= r <= r_max with r_min > 0, confirming that the Lipschitz hypothesis holds on the visited domain. (This is immediate from effective potential analysis but worth noting explicitly.)
