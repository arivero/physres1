# C113 Plan: Fix Section 9 signaling gaps (DX03 spawns)

Date: 2026-02-12

## Goal
Address both signaling gaps identified by DX03:
1. Section 9.1 claim graph (line 1039): add D6.2a-sg as concrete semigroup witness.
2. Section 9.3 (line 1100): add half-density ordering resolution note referencing D9.1a.

## Target manuscripts (must edit >=1)
- `paper/main.md` (yes)

## Scope
In scope:
- Parenthetical addition to line 1039 citing D6.2a-sg
- One sentence addition to line 1100 noting the half-density geometric resolution (D9.1a)

Out of scope:
- Rewriting Section 9 structure
- Adding new derivations or remarks

## Minimum promotion bar
Two targeted edits that improve forward-signaling in the claim graph. Combined they are paragraph-level changes (each modifies a summary sentence).

## Allowed files
- `paper/main.md`
- `cycles/C113-*.md`

## Forbidden files
- `blackboards/`, `paper/notes/`, `paper/bibliography.md`, `sources/`, `docs/`

## Acceptance criteria
- Both edits applied. Diffstat recorded. Guard checks pass.
