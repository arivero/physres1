# S280 Plan: Adjoint computation for the dilation generator family \(\hat H_\alpha\)

Date: 2026-02-14
Parent: D23

## Goal
Produce a clean "adjoint + boundary term" computation for the operator family \(-i\hbar(q\partial_q + c)\) on at least one standard domain, and the mapping \(c \leftrightarrow \alpha\).

## Deliverable (keep bounded)
- Target: one page of derivation showing which \(\alpha\) yields a symmetric \(\hat H_\alpha\) on \(L^2(\mathbb{R},dq)\), and a brief discussion of essential self-adjointness on \(\mathbb{R}\) vs \(\mathbb{R}_+\).
- Output file(s):
  - `notebooks/ordering-unitarity-dilation-generator.md` (direct to notebook; all blackboard slots occupied by parallel D-cycles)

## Where The Math Goes
- Put the detailed derivation/computation in the blackboard slot.
- Keep `cycles/S280-*.md` lean: prompt, command log, and a short result summary only.

## Allowed files
- `blackboards/`
- `notebooks/`
- `docs/research-log.md`
- `cycles/S280-*.md`

## Forbidden files
- Manuscripts (do not edit): `paper/main.md`, `papers/*/main.md`
- `paper/notes/` and `papers/*/notes/`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- Explicit symmetry defect formula: \(\langle u,\hat H_\alpha v\rangle - \langle \hat H_\alpha u,v\rangle = i\hbar(2\alpha-1)\langle u,v\rangle\).
- Clear statement: symmetry selects \(\alpha=1/2\) (midpoint/Weyl), independent of boundary conditions.
- Brief domain discussion: essential self-adjointness on \(\mathbb{R}_+\) (dilation group) vs deficiency indices on \(\mathbb{R}\).
- The mapping \(c=1-\alpha\) between the \(\alpha\)-discretization parameter and the constant in \(-i\hbar(q\partial_q+c)\).
