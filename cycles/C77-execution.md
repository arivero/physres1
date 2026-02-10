# C77 Execution: Tighten the Ordering-Witness Wording (Control-Map / Unitarity Clause)

## Changes
- Updated `paper/main.md` `Heuristic H0.2` item 2 parenthetical to:
  - keep the explicit \(-\hat p\hat q\) vs \(-\hat q\hat p\) ordering witness,
  - add a short control-condition clause: requiring unitarity selects a symmetric (half-density) convention (for this toy witness).

## Guardrails
- `rg -n 'C[0-9]{2}' paper/main.md` (clean; no matches).

## Diffstat
```text
paper-diffstat (cached): TOTAL +1 -1 (1 files)
  +1 -1 paper/main.md
```

## Result
The ordering ambiguity witness now connects more directly to the manuscript's "compatibility/control" language without expanding the Introduction into a technical section.
