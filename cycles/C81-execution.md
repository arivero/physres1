# C81 Execution: Promote "Constants as Control Parameters" Heuristic into the Introduction

## Changes
- Added `Heuristic H0.3` to `paper/main.md` Introduction framing \(\hbar\), \(c\), and \(G\) as control parameters for three compatibility limits (\(\hbar\to0\), \(c\to\infty\), \(G\to0\)).

## Guardrails
- `rg -n 'C[0-9]{2}' paper/main.md` (clean; no matches).

## Diffstat
```text
paper-diffstat (cached): TOTAL +3 -0 (1 files)
  +3 -0 paper/main.md
```

## Result
The Introduction now explicitly addresses "why these constants" in the same refinement/compatibility language used elsewhere in the manuscript, without opening new technical domains.
