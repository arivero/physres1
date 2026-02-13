# Q56 Plan: referee pass on C99 step-doubling notation + modified equation display

Date: 2026-02-11

## Parent cycle (required)
- `C99`: clarify Euler step-doubling witness (explicit \(f'(y)[f(y)]\); show modified equation)

## Goal
Referee-pass the C99 manuscript changes for correctness, clarity, claim hygiene, and reader experience.

## Allowed files
- `cycles/Q56-*.md` only

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- `blackboards/`, `paper/notes/`
- `paper/bibliography.md`, `sources/`

## Checklist
- Notation: bracket/action notation is defined once and used consistently.
- Correctness: modified-equation coefficient \(g=-\tfrac12 f'(y)[f(y)]\) matches the flow expansion through \(O(h^2)\).
- Reader flow: the worked witness remains “one-screen checkable” and doesn’t expand scope into B-series.

## Acceptance criteria
- Either “no required follow-ups” or a concrete list of spawned `S/B/C/D` cycles (not direct edits).

