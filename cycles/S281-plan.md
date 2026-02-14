# S281 Plan: Delta-Object Dictionary + Witness Computations

Date: 2026-02-14
Parent: D24

## Goal
Produce a concrete derivation/computation/check as a promotion candidate (no manuscript edits).

## Deliverable (keep bounded)
- Target: (i) a do/don't table for delta objects, (ii) two worked toy computations (point splitting for delta', stationary-set identity for delta(f')), (iii) a crisp statement of when delta(delta S) is acceptable.
- Output file(s):
  - `blackboards/1.md` (overwriting promoted self-adjoint extension content)
  - `notebooks/delta-object-dictionary.md` (optional: append-only promotion of stabilized result)

## Where The Math Goes
- Put the detailed derivation/computation in the blackboard slot (and optionally promote to a notebook).
- Keep `cycles/S281-*.md` lean: prompt, command log, and a short result summary only.
- Editorial drafting/polish belongs in `C` (or `P` for submission packaging), not in `S`.

## Allowed files
- `blackboards/`
- `notebooks/`
- `docs/research-log.md`
- `cycles/S281-*.md`

## Forbidden files
- Manuscripts (do not edit): `paper/main.md`, `papers/*/main.md`
- `paper/notes/` and `papers/*/notes/`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- A self-contained do/don't table with enough detail to be promoted by a later C cycle.
- At least two worked toy computations with complete distributional proofs.
- A single safe/unsafe criterion (mollifier universality) stated and applied to all five delta objects.
- A compact dictionary paragraph ready for promotion.
- The discovery flag in the execution log is filled in (yes/no + one sentence if yes).
