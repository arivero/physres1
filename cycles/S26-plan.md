# S26 Plan: SR Stability of Circular Orbits (Power-Law Central Force)

## Goal
Derive a clean small-radial-perturbation stability criterion for SR circular orbits under an attractive central force
\[
F(r)=\frac{K}{r^q}\quad (K>0),
\]
in the same “minimal, derivation-first” style as the existing SR circular-orbit section.

## Deliverables
1. One blackboard note with the derivation and limiting checks (Newtonian limit, \(q=2\), \(q\to 3\)).
2. A promotion-ready summary statement for the next `C` cycle.

## Checks
- Re-derive the circular-orbit condition from an energy/effective-potential viewpoint (consistency with earlier \(L^2=K\gamma m r^{3-q}\)).
- Compute the second-derivative stability condition and simplify.
- Verify the algebra with a small SymPy check.

## Acceptance Tests
- A single explicit inequality that reduces to Newtonian \(q<3\) as \(c\to\infty\) (\(\gamma\to 1\)).
- Notes are explicit about the modeling assumption (SR particle in an external scalar potential \(U(r)\)).

