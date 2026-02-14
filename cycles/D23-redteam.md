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

## Post-S280 assessment (2026-02-14)

All three failure modes were addressed:

1. **Scalarization confusion:** avoided. The computation stays in the scalar \(L^2(dq)\) picture throughout. The half-density connection (D9.1a) is noted as a related but logically independent mechanism.

2. **Domain mismatch:** addressed. The computation uses \(C_c^\infty(\mathbb{R}\setminus\{0\})\), and essential self-adjointness is discussed separately for \(\mathbb{R}_+\) vs \(\mathbb{R}\). The safe claim does not assume a specific domain for the self-adjointness part.

3. **Uniqueness overclaim:** mitigated. The safe claim says "symmetry requires \(\alpha=1/2\)," which is a uniqueness statement for the \(\alpha\)-parameter only. It does not claim that \(\alpha=1/2\) is the unique self-adjoint realization (on \(\mathbb{R}\), there is a one-parameter family of extensions). The scope disclaimer makes this explicit.

**Residual risk:** A referee might ask whether the symmetry defect formula generalizes to the broader \(f(q)p\) family of Appendix 10.2. Answer: yes, the D9.1b computation on \(S^1\) already covers this (Weyl ordering is symmetric for all smooth real \(f\); left ordering has defect proportional to \(f'\)). The \(f=q\) case is a special instance.

