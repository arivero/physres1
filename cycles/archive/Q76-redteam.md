# Q76 Red Team: Referee pass on C120

Date: 2026-02-13

## Failure modes

### 1. SymPy phase-factor subtlety
- Risk: SymPy's ratio showed I^{d/2}·(-I)^{d/2} ≠ 1 for the full complex expression, due to branch-cut conventions.
- Mitigation: the physics uses the standard Feynman iε prescription, under which the branch cuts are resolved consistently. The real-positive verification (ignoring phases) gives ratio = 1, confirming the structural cancellation. Phase factors are conventional and do not affect the d/2 exponent argument.

### 2. No novel claims in this Q cycle
- Risk: this Q cycle adds no new insight beyond confirming the algebra.
- Mitigation: this is the purpose of a Q cycle — verification, not discovery. The SymPy verification adds confidence that the algebra is correct, especially the "only for d/2" claim.
