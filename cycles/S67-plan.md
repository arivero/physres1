# S67 Plan: promotion-ready Euler modified equation + explicit \(f'(y)[f(y)]\) notation

Date: 2026-02-11

## Goal
Produce a bounded, self-contained derivation/check that can be promoted into `papers/rg-fundamental/main.md` Section 4.1 to address the optional clarity polish noted in `Q55`.

## Deliverable (keep bounded)
- Target: a 1–2 page derivation + one SymPy sanity check (scalar model).
- Output file(s):
  - `blackboards/2026-02-11-explicit-euler-modified-equation-promotion-block.md`

## Allowed files
- `blackboards/`
- `paper/notes/`
- `docs/research-log.md`
- `cycles/S67-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- The note explicitly defines the operator notation \(f'(y)[v]\) and the shorthand \(f'(y)f(y)\).
- The note contains a promotion-ready block for:
  1) the step-doubling discrepancy, and
  2) the modified-equation coefficient \(g=-\tfrac12 f'(y)f(y)\).
- Any commands run are recorded (command + output summary).

