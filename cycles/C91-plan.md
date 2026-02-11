# C91 Plan: Notation Bridge for the RCP Operational Closure Block

Date: 2026-02-11

## Goal
Implement the `Q48` referee note by adding a short notation bridge in Appendix 10.3 so readers can map the schematic operators \(\mathcal C_t,\mathcal Q_\hbar,\mathcal R_\Lambda\) in `Proposition P10.1` to the indexed closure form introduced in `Derivation D10.1a`.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Add a one-paragraph clarification defining the indices \((b,h,\alpha)\) and explicitly stating the correspondence between the schematic and indexed operators.
- Rebuild `paper/main.tex` and `paper/main.pdf` (tracked artifacts).

Out of scope:
- Any new technical content beyond the notation bridge.
- Any bibliography/source updates.

## Allowed files
- `paper/main.md`
- `cycles/C91-*.md`
- (Tracked) `paper/main.tex`
- (Tracked) `paper/main.pdf`

## Forbidden files
- `blackboards/`, `paper/notes/`
- `paper/bibliography.md`, `sources/`
- `docs/`

## Acceptance criteria
- Appendix 10.3 contains an explicit mapping sentence/paragraph.
- Diffstat recorded in `cycles/C91-execution.md`.
- Guard checks pass (no cycle IDs; no transcript references).

