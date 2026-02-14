# S285 Plan: Newton Polygonal Convergence Witness

Date: 2026-02-14
Parent: D28

## Goal
Produce a blackboard note with:
1. One explicit convergence theorem statement for the kick-drift (symplectic Euler) method in modern ODE/integrator language, with hypotheses stated in central-force terms.
2. One computed failure mode: the collision singularity where the Lipschitz hypothesis breaks down.

## Deliverable (keep bounded)
- Target: one blackboard note (convergence theorem + failure mode + promotable paragraph).
- Output file(s):
  - `blackboards/6.md` (overwritten from S208 non-perturbative contact, promoted to notebooks first)

## Where The Math Goes
- Detailed derivation in blackboard slot 6.
- Cycle files stay lean (summary + pointers).

## Allowed files
- `blackboards/`
- `notebooks/`
- `docs/research-log.md`
- `cycles/S285-*.md`

## Forbidden files
- Manuscripts (do not edit): `paper/main.md`, `papers/*/main.md`
- `paper/notes/` and `papers/*/notes/`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- A self-contained convergence theorem statement + failure mode witness in `blackboards/6.md`.
- A promotable paragraph (for a future C cycle) that can serve as a scope-clarifying remark.
- The discovery flag in the execution log is filled in.
