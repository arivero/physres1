# C306 Plan: Itô/Stratonovich Dictionary to Main Paper

Date: 2026-02-14

## Goal
Promote stochastic discretization dictionary from blackboards/2.md (S282) to main paper Section 6.3.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Add remark after D4.1c mapping alpha-discretization to Itô/Stratonovich
- Include N-impulse random model
- Include Stratonovich-to-Itô correction formula
- Include structural connection to alpha-dependent hbar shifts

Out of scope:
- Full Itô correction computation (keep in blackboard)
- Geometric Brownian motion witness (keep in blackboard)
- Extended thermodynamic discussion (keep in blackboard)

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

