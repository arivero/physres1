# C103 Plan: Runge--Kutta fix + Newton limit citations + companion regularity

Date: 2026-02-12

## Goal
Promote three small fixes into manuscripts:
1. Fix "Runge-Kutta" → "Runge--Kutta" (en-dash) in main paper H6.2.
2. Add Nauenberg (2003) + Pourciau (2003) citations to Section 3.3 (Newton limit convergence anchor from B13).
3. Port minimal-regularity parenthetical (C^1/C^2 scope) to companion D1.0 (rg-fundamental).

## Target manuscripts (must edit >=1)
- `paper/main.md` (yes)
- `papers/rg-fundamental/main.md` (yes)

## Scope
In scope:
- Typography fix (en-dash in name compound).
- New Remark R1.1 after H1.1 citing the Pourciau/Nauenberg scholarly debate on Newton's polygonal limit convergence.
- One-line regularity parenthetical in companion D1.0 matching main paper's D6.2a1.

Out of scope:
- Adding bibliography entries to `paper/bibliography.md` (requires B14).
- Ingesting sources for Nauenberg2003/Pourciau2003 (requires B14).
- Label namespace collision fix (deferred).

## Minimum promotion bar (preferably verbose)
The Newton-limit remark (R1.1) is a paragraph-level addition. The other two are micro-fixes bundled in the same wave.

## Allowed files
- `paper/main.md`
- `papers/rg-fundamental/main.md`
- `cycles/C103-*.md`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/`

## Acceptance criteria
- At least one manuscript changed (substantively).
- Diffstat recorded in `cycles/C103-execution.md`.
- Guard check passes: no cycle IDs in manuscripts.
