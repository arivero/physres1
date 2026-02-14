# S280 Red Team: Dilation generator adjoint computation

Date: 2026-02-14

## Failure modes
- **Algebra/sign error in the adjoint computation:**
  - Mitigation: the defect \(i\hbar(2\alpha-1)\langle u,v\rangle\) is checked by two independent routes (integration by parts; direct comparison of \(\hat H_\alpha\) and \(\hat H_\alpha^\dagger\) via \(\hat p\hat q\) commutator). Both give the same answer.
- **Boundary term at \(q=0\) invalidating the computation on \(\mathbb{R}\):**
  - Mitigation: the computation uses \(C_c^\infty(\mathbb{R}\setminus\{0\})\), avoiding boundary terms entirely. The conclusion (symmetry requires \(\alpha=1/2\)) is independent of what happens at \(q=0\); only self-adjointness depends on boundary conditions there.
- **Overclaiming essential self-adjointness:**
  - Mitigation: the blackboard note explicitly distinguishes \(\mathbb{R}_+\) (e.s.a. by Stone's theorem on the dilation group) from \(\mathbb{R}\) (deficiency indices (1,1), one-parameter family of extensions). No uniqueness claim is made for the \(\mathbb{R}\) case.
- **Confusion between "ordering selects \(\alpha=1/2\)" and "half-density selects ordering":**
  - Mitigation: the D23 safe claim separates the two mechanisms. The \(\alpha=1/2\) selection is from symmetry in the scalar \(L^2\) picture. The half-density resolution (D9.1a) eliminates the first-derivative ambiguity in \(p^2\) operators. These are related but logically independent; the safe claim does not conflate them.
