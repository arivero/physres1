# C104 Plan: Rename Remark R1.1 → H1.1a (label taxonomy fix)

Date: 2026-02-12

## Goal
Fix label taxonomy inconsistency found in Q60: `Remark R1.1` uses an undefined `R` prefix. Rename to `Remark H1.1a` following existing convention (sub-remarks inherit parent claim prefix).

## Target manuscripts (must edit >=1)
- `paper/main.md` (yes)

## Scope
In scope:
- One-line label rename: `R1.1` → `H1.1a`.

Out of scope:
- Adding "Remark" to Section 2.3 taxonomy (considered and rejected in Q60-debate).

## Allowed files
- `paper/main.md`
- `cycles/C104-*.md`

## Forbidden files
- `blackboards/`, `paper/notes/`, `paper/bibliography.md`, `sources/`, `docs/`

## Acceptance criteria
- Label renamed. Diffstat recorded. Guard checks pass.
