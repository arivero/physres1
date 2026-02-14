# D28 Red Team: Polygonal Convergence Statement

Date: 2026-02-14

## Failure modes
- Overpromising convergence in the presence of singular potentials / near-collisions.
- Producing a statement that depends on heavy machinery and is not promotable.
- Confusing “symplectic” (structure-preserving) with “higher order accurate”.

## Mitigations
- Keep hypotheses explicit and minimal (finite time interval, away from \(r=0\), Lipschitz force).
- Provide one explicit failure mode where hypotheses fail (so the hedging is justified).
- Emphasize that symplectic Euler is first-order but preserves invariants (e.g. angular momentum) exactly in the central case.

## Post-S285 assessment (2026-02-14)
All three failure modes addressed:
1. **Overpromising:** The statement is bounded ("away from \(r=0\)," "Lipschitz force"). The Kepler radial collision witness shows where the bound fails.
2. **Heavy machinery:** The promotable paragraph is ~5 sentences. No proofs are included in the manuscript-facing text; the blackboard note has the proof sketch.
3. **Symplectic vs accurate:** The note explicitly states that symplectic Euler is first-order but preserves angular momentum and equal areas exactly. The backward error analysis claim is restricted to the smooth-domain case.

Additional risk identified: a referee might want Stormer-Verlet (leapfrog) instead, since it is second-order and also symplectic. Mitigation: the Principia construction is specifically kick-drift, not kick-drift-kick. The leapfrog identification would be historically inaccurate for Prop. I.
