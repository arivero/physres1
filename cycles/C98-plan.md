# C98 Plan: Promote a minimal step-doubling/rooted-tree witness into RG note

Date: 2026-02-11

## Goal
Promote a compact, stable computation into a manuscript note (this cycle must edit at least one manuscript file).

## Target manuscripts (must edit ≥1)
- `paper/main.md` (no)
- `papers/rg-fundamental/main.md` (yes)

## Scope
In scope:
- Expand Section 4 (“Rooted Trees”) with one explicit worked computation:
  - explicit Euler step-doubling discrepancy through \(O(h^2)\),
  - identify the leading correction as the order-2 rooted-tree elementary differential \(f'(f)\),
  - (optional) add one short “modified equation” remark as the simplest “running with scale \(h\)” witness.

Out of scope:
- Full B-series formalism or higher-order rooted-tree expansions.
- Any new bibliography keys or OA acquisition work.
- Any edits to `paper/main.md`.

## Minimum promotion bar (preferably verbose)
Add a subsection-level worked witness (paragraph + derivation block), not a micro-edit.

## Allowed files
- `paper/main.md`
- `papers/*/main.md`
- `cycles/C98-*.md`
- (If tracked) `paper/main.tex`, `paper/main.pdf`, `papers/*/main.tex`, `papers/*/main.pdf`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/` (log work in `cycles/C98-execution.md` instead)

## Acceptance criteria
- At least one manuscript changed (substantively).
- Diffstat recorded in `cycles/C98-execution.md`.
- Guard check passes: no cycle IDs in manuscripts.

