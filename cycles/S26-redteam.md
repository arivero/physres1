# S26 Redteam: Failure Modes

## Failure Modes
1. **Implicit model mismatch:** mixing “3-force” equations with a potential-energy Hamiltonian that does not reproduce the same dynamics.
2. **Hiding assumptions:** presenting the stability inequality as a universal SR fact rather than “SR + external scalar potential”.
3. **Algebraic slip:** incorrect differentiation leading to a wrong \(q\) dependence.

## Mitigations
1. Re-derive the circular-orbit condition from the effective-potential viewpoint and confirm it matches \(L^2=K\gamma m r^{3-q}\).
2. Make the modeling scope explicit in the blackboard note and (when promoted) in the paper draft.
3. Cross-check the simplification with SymPy and test limiting cases (\(\gamma\to1\), \(q=2\), \(q=3\)).

