# D23 Red Team: Ordering vs Unitarity Witness

Date: 2026-02-14

## Failure modes
- Confusing “unitary equivalence under scalarization change” with “self-adjointness in a fixed scalar representation”.
- Proving symmetry for one domain but implicitly using a different domain in the manuscript.
- Overclaiming uniqueness: midpoint may be *a* symmetric choice, not the only one, depending on boundary conditions and measure.

## Mitigations
- In S280, write the adjoint computation with the pairing \(\langle u,v\rangle=\int \overline u v\,dq\) explicitly and keep all boundary terms.
- State configuration-space assumptions explicitly (\(\mathbb R\), \(\mathbb R_+\), \(S^1\), etc.).
- Promote only a conditional claim unless the uniqueness is actually proved.

