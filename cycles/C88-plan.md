# C88 Plan: Add a Minimal Action–Angle (Angle Delocalization) Remark to `paper/main.md`

Date: 2026-02-10

## Goal
Strengthen the cornerstone manuscript’s semiclassical/stationary-phase framing by adding one bounded clarification:
in central potentials, \(L_z\) eigenstates have uniform azimuthal probability, so classical orbit pictures correspond to semiclassical packets/superpositions rather than single stationary eigenstates.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)

## Scope
In scope:
- Add one labeled remark + a micro-derivation near the stationary-phase classical-recovery discussion (Section 6.4).
- Rebuild `paper/main.pdf`.

Out of scope:
- Any detailed discussion of angle operators or action–angle global issues.
- New bibliography debt (no new citation keys required).

## Allowed files
- `paper/main.md`
- `cycles/C88-*.md`
- Tracked build artifacts:
  - `paper/main.tex`
  - `paper/main.pdf`

## Forbidden files
- Any `papers/*/main.md`
- `blackboards/`, `paper/notes/`
- `paper/bibliography.md`, `sources/`
- `docs/`

## Acceptance criteria
- Manuscript contains a short, referee-safe remark that improves reader interpretation of “classical recovery”.
- PDF rebuild succeeds.
- Diffstat recorded in `cycles/C88-execution.md`.

