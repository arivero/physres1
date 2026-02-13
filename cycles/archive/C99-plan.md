# C99 Plan: clarify Euler step-doubling witness (explicit \(f'(y)[f(y)]\); show modified equation)

Date: 2026-02-11

## Goal
Promote the S67 clarity improvements into `papers/rg-fundamental/main.md` Section 4.1 (this cycle must edit at least one manuscript file).

## Target manuscripts (must edit ≥1)
- `paper/main.md` (no)
- `papers/rg-fundamental/main.md` (yes)

## Scope
In scope:
- In Section 4.1, replace the ambiguous shorthand \(f'(f)\) with explicit notation \(f'(y)[f(y)]\) (and define the shorthand once).
- Expand the modified-equation remark to display the exact-flow expansion used to solve for \(g=-\tfrac12 f'(y)[f(y)]\).

Out of scope:
- Adding additional rooted-tree orders / full B-series formalism.
- Any bibliography changes.

## Minimum promotion bar (preferably verbose)
This should land as a small but self-contained derivation/remark block upgrade (not just a symbol swap).

## Allowed files
- `paper/main.md`
- `papers/*/main.md`
- `cycles/C99-*.md`
- (If tracked) `papers/rg-fundamental/main.tex`, `papers/rg-fundamental/main.pdf`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/`

## Acceptance criteria
- `papers/rg-fundamental/main.md` Section 4.1 reads without relying on implicit shorthand.
- Diffstat recorded in `cycles/C99-execution.md`.
- Manuscripts remain cycle-tag free.

