# C311 Plan: Strengthen RCP Section 10 with Crown Witnesses

Date: 2026-02-14

## Goal
Integrate P4.2 (ℏ necessity theorem) and H6.3 (Padé unification) into Section 10.3 (RCP) as crown witnesses.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Strengthen witness sentence in D10.1a to cite P4.2 (not just D4.1a)
- Add new remark consolidating crown witnesses for all three RCP channels
- Update partition track in Section 9 to include P4.2 as terminal node
- Complete bidirectional reference network (forward refs already exist)

Out of scope:
- Detailed proof repetition (P4.2 is already in Section 6)
- New technical content (this is integration only)

## Minimum promotion bar (preferably verbose)
This cycle should contain at least one paragraph-level addition/rewrite, a derivation/remark block, or a subsection-level change (avoid micro-edits as standalone `C` cycles).

**Scope completion requirement:** The additions must cover all themes listed in "In scope", OR spawn `Sxx` study cycles to address uncovered themes. A `C` cycle cannot close with partially completed scope—either promote all in-scope items, or delegate remaining items to new cycles with explicit handoff.

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

