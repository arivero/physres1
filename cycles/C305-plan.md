# C305 Plan: Delta-Object Dictionary to Main Paper

Date: 2026-02-14

## Goal
Promote delta-object dictionary and safe/unsafe criterion from blackboards/1.md (S281) to main paper.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Add remark in Section 5.5 with delta-object dictionary
- Include five constructions table summary
- Include safe/unsafe criterion (mollifier universality)

Out of scope:
- Full witness computations (keep in blackboard)
- Do/Don't table (keep in blackboard)
- Extended discussion of delta(delta S) (already covered in H0.2a)

## Minimum promotion bar (preferably verbose)
This cycle should contain at least one paragraph-level addition/rewrite, a derivation/remark block, or a subsection-level change (avoid micro-edits as standalone `C` cycles).

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

