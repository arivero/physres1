# Cxx Plan: <promotion wave title>

Date: YYYY-MM-DD

## Goal
Promote specific, stable results into manuscripts (this cycle must edit at least one manuscript file).

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes/no)
- `papers/<name>/main.md` (yes/no)

## Scope
In scope:
- <sections to add/rewrite>

Out of scope:
- <anything that would require S/B/D>

## Minimum promotion bar (preferably verbose)
This cycle should contain at least one paragraph-level addition/rewrite, a derivation/remark block, or a subsection-level change (avoid micro-edits as standalone `C` cycles).

**Scope completion requirement:** The additions must cover all themes listed in "In scope", OR spawn `Sxx` study cycles to address uncovered themes. A `C` cycle cannot close with partially completed scope—either promote all in-scope items, or delegate remaining items to new cycles with explicit handoff.

## Allowed files
- `paper/main.md`
- `papers/*/main.md`
- `cycles/Cxx-*.md`
- (If tracked) `paper/main.tex`, `paper/main.pdf`, `papers/*/main.tex`, `papers/*/main.pdf`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/` (log work in `cycles/Cxx-execution.md` instead)

## Acceptance criteria
- At least one manuscript changed (substantively).
- Diffstat recorded in `cycles/Cxx-execution.md`.
- Guard check passes: no cycle IDs in manuscripts.

