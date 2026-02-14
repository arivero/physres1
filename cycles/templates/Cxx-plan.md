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

## Productivity gate (REQUIRED CHECK - Rule 9)

Before creating this C-cycle, verify at least ONE of:
- [ ] Net content addition will be **≥10 lines** of meaningful prose/math/derivations, OR
- [ ] This completes a planned promotion from blackboard/notebook to manuscript, OR
- [ ] This is a critical correctness fix that cannot be batched

**If none apply:** STOP. Accumulate this change with other pending edits and create a single batched C-cycle later.

## Planned edits (list all)
1. [Edit 1 description] — estimated +X/-Y lines
2. [Edit 2 description] — estimated +A/-B lines
...

**Total estimated diffstat**: +NN/-MM lines (net +KK)

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

