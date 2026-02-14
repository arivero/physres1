# S280 Execution: Adjoint computation for the dilation generator family

Date: 2026-02-14
Parent: D23

## Work performed
- Computed the formal adjoint of \(\hat H_\alpha = \hat p\hat q + \alpha i\hbar\) on \(L^2(\mathbb{R},dq)\).
- Derived the symmetry defect formula and identified \(\alpha=1/2\) as the unique symmetric point.
- Analyzed the mapping between the discretization parameter \(\alpha\) and the dilation-generator constant \(c\).
- Discussed essential self-adjointness on \(\mathbb{R}_+\) (trivially via dilation group) vs \(\mathbb{R}\) (deficiency indices (1,1) due to the singularity at \(q=0\)).

## Artifacts produced
- `notebooks/ordering-unitarity-dilation-generator.md`: full derivation (promoted directly to notebook; all blackboard slots occupied by parallel cycles D24-D28)

## Result
The symmetry defect is:
\[
\langle u,\hat H_\alpha v\rangle - \langle \hat H_\alpha u,v\rangle = i\hbar(2\alpha - 1)\langle u,v\rangle
\]
for all \(u,v \in C_c^\infty(\mathbb{R}\setminus\{0\})\). This vanishes if and only if \(\alpha = 1/2\) (midpoint/Weyl ordering).

**Key findings:**
1. **Symmetry selects \(\alpha=1/2\)**: this is a purely algebraic consequence of the inner-product pairing and holds regardless of boundary conditions or choice of domain.
2. **The mapping**: \(\hat H_\alpha = -i\hbar(q\partial_q + (1-\alpha))\), so the dilation-generator constant is \(c = 1-\alpha\). Symmetry requires \(c = 1/2\).
3. **Essential self-adjointness depends on the configuration space**:
   - On \(\mathbb{R}_+\): the dilation group \(U(s)\psi(q) = e^{s/2}\psi(e^s q)\) is unitary on \(L^2(\mathbb{R}_+,dq)\), so by Stone's theorem the generator \(-i\hbar(q\partial_q + 1/2)\) is essentially self-adjoint.
   - On \(\mathbb{R}\): the operator \(-i\hbar(q\partial_q + 1/2)\) on \(C_c^\infty(\mathbb{R}\setminus\{0\})\) has deficiency indices \((1,1)\) because the singularity at \(q=0\) creates a boundary. Self-adjoint extensions are parameterized by a phase linking the \(\mathbb{R}_-\) and \(\mathbb{R}_+\) sectors.
4. **What is really doing the selecting**: formal symmetry of the generator (which is equivalent to having a real expectation value for all states in the domain). Unitarity of the propagator \(e^{-it\hat H/\hbar}\) is a consequence of self-adjointness (Stone's theorem), so unitarity is a stronger requirement. But the \(\alpha=1/2\) selection already follows from the weaker condition of symmetry.

## Promotion candidate (pointer)
- Location: `notebooks/ordering-unitarity-dilation-generator.md`, sections "Symmetry Defect Computation" + "Safe Claim"
- Short copyable block: the symmetry defect formula and the one-sentence safe claim.

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **no**
- The result confirms the manuscript's informal claim with precise hypotheses. The only subtlety is that "unitarity selects midpoint" is slightly stronger than what the formal computation shows: *symmetry* selects midpoint; unitarity additionally requires self-adjointness, which depends on the domain.

## Spawned cycles
- No new cycles needed; the result feeds back into D23's safe claim.
