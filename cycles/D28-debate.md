# D28 Debate: Do we need a modern convergence statement at all?

Date: 2026-02-14

## Question
Given the manuscript already hedges “whenever the limit exists”, is it worth spending cycles to state a modern convergence condition for Newton’s polygonal construction?

## Working answer
Yes, but only as a compact scope clarifier. It reduces interpretive ambiguity (“area law is exact at finite step; convergence is a separate analytic issue”) and makes the refinement-compatibility thesis look less like handwaving.

## Next check
Find one clean numerical-analysis theorem that applies to the kick-drift (symplectic Euler) method in the central-force setting, and identify the most relevant singular failure mode.

## Resolution (2026-02-14)
S285 completed the check. The convergence theorem is the standard O(h) global error bound for symplectic Euler under Lipschitz forces (Hairer-Lubich-Wanner, Thm IX.3.1). The failure mode is the Kepler radial collision (L=0): force diverges as r -> 0, Lipschitz constant blows up, and the fixed-step scheme produces O(1) errors before collision time. The manuscript's hedge "whenever the limit exists" is confirmed as both necessary (collision breaks it) and sufficient (non-degenerate orbits with L != 0 stay in a compact annulus where the force is Lipschitz). The hard question is answered: a modern convergence statement adds value as a scope clarifier without requiring new mathematics.

## Secondary question: Symplectic Euler vs Stormer-Verlet identification
A subtlety that arose during S285 red-teaming: is Newton's construction really symplectic Euler, or is it closer to Stormer-Verlet (leapfrog)? Resolution: In Principia Prop. I, the velocity is updated by a full impulse at the current position, then the particle drifts at the new velocity. This is kick-drift = symplectic Euler. Stormer-Verlet would split the kick into two half-kicks bracketing the drift. Nauenberg (1994) confirms the symplectic Euler identification.
