# Q68 Plan: Referee pass on C113 (Section 9 signaling edits)

Date: 2026-02-12

## Parent cycle (required)
- `C113`: added D6.2a-sg witness to Section 9.1 claim graph + half-density ordering note to Section 9.3.

## Goal
Referee-pass the C113 manuscript changes for correctness, clarity, claim hygiene, and reader experience.

## Allowed files
- `cycles/Q68-*.md` only

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- `blackboards/`, `paper/notes/`
- `paper/bibliography.md`, `sources/`

## Checklist
- Cross-reference validity: D6.2a-sg and D9.1a exist at their cited locations.
- Accuracy: parenthetical and sentence correctly describe the content of the referenced blocks.
- Claim scope: "toy model" hedge on D6.2a-sg; "kinetic operators" scope on D9.1a.
- LaTeX format: \S\, notation consistent with manuscript conventions.
- Placement: edits preserve paragraph structure and list formatting.
- Guard checks: no cycle IDs or transcript mentions leaked.

## Acceptance criteria
- A concrete list of edits to do next, expressed as spawned `S/B/C/D` cycles (not direct edits).
