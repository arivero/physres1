# C308 Plan: Caustics/Maslov to Main Paper

Date: 2026-02-14

## Goal
Promote caustics/Maslov index remark from notebooks/caustics-maslov-half-density.md to main paper Section 6.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Add remark after D4.3 explaining caustic singularity resolution
- Include metaplectic structure and Maslov index
- Connect to "amplitudes are half-densities" pattern

Out of scope:
- Detailed Bates-Weinstein exposition (keep in notebook)
- Bohr-Sommerfeld quantization discussion (keep in notebook)
- Arnold 1967 / Maslov 1965 historical details (keep in notebook)

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

