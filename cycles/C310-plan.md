# C310 Plan: Padé Unification Theme

Date: 2026-02-14

## Goal
Promote non-perturbative content recovery pattern from notebooks/nonperturbative-contact-pade.md as cross-paper unification remark.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes - new Remark H6.3 in Section 8)
- `papers/<name>/main.md` (no - defer cross-references to future cycle)

## Scope
In scope:
- Add Remark H6.3 after Section 8.6, before Section 9 transition
- Include three-tier hierarchy: Padé (poles), dispersion (cuts), Borel (divergent series)
- Worked example: tree-level Yukawa exact recovery from two coefficients
- Connect to RCP (P10.1): local data + controlled extrapolation → global structure
- Cross-reference fermionic Remark 3.5, 4.6 and uncuttable Remark 2.5

Out of scope:
- Light cross-reference additions to satellite papers (defer to future cycle)
- Extended Borel-Padé technical details (keep in uncuttable paper)
- Dispersion relation derivation (keep in fermionic paper)

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

