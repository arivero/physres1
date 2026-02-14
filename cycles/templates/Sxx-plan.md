# Sxx Plan: <study / derivation target>

Date: YYYY-MM-DD

## Goal
Produce a concrete derivation/computation/check as a promotion candidate (no manuscript edits).

## Deliverable (keep bounded)
- Target: <1–2 pages of derivation OR one toy computation OR one symbolic check>
- Output file(s):
  - `blackboards/<0-6>.md` (choose/overwrite a slot per `blackboards/README.md`)
  - `notebooks/<topic>.md` (optional: append-only promotion of stabilized result)

## Where The Math Goes
- Put the detailed derivation/computation in the blackboard slot (and optionally promote to a notebook).
- Keep `cycles/Sxx-*.md` lean: prompt, command log, and a short result summary only.
- Editorial drafting/polish belongs in `C` (or `P` for submission packaging), not in `S`.

## Allowed files
- `blackboards/`
- `notebooks/`
- `docs/research-log.md`
- `cycles/Sxx-*.md`

## Forbidden files
- Manuscripts (do not edit): `paper/main.md`, `papers/*/main.md`
- `paper/notes/` and `papers/*/notes/` (notes are created/edited only in `C`)
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- A self-contained derivation/check with enough detail to be promoted by a later `C` cycle.
- Any commands run are recorded (command + output summary).
- The **discovery flag** in the execution log is filled in (yes/no + one sentence if yes).
- **MANDATORY (Rule 8):** All mathematical success criteria (derivations, calculations, technical claims) must be written to `blackboards/*.md` or `notebooks/*.md`. Mathematics only in cycle logs or agent memory does NOT count as completion.
