# S68 Red Team: Euler step-doubling \(O(h^3)\) term

Date: 2026-02-11

## Failure modes
- Algebra/coefficient mistake in the cubic term:
  - Mitigation: cross-check with a scalar model series (\(y'=y^2\)) and verify the coefficient matches \(\tfrac{h^3}{16} f''(f,f)\).
- Notation ambiguity (implicit products \(f'(y)f(y)\)):
  - Mitigation: use bracket-action notation \(f'(y)[v]\), \(f''(y)[v,w]\) throughout the promotion block.
- Overclaiming about rooted-tree composition laws:
  - Mitigation: keep the promoted text as a local witness about discrepancy terms, not a general statement about the Butcher group.

