# C76 Execution: Promote a Concrete Ordering-Ambiguity Witness into the Introduction

## Changes
- Added a minimal ordering/scheme witness to `paper/main.md` `Heuristic H0.2` item 2:
  - time-slicing \(H=pq\) yields \(-\hat p\hat q\) vs \(-\hat q\hat p\) depending on endpoint evaluation (difference \(O(\hbar)\)).

## Guardrails
- `rg -n 'C[0-9]{2}' paper/main.md` (clean; no matches).

## Diffstat
```text
paper-diffstat (cached): TOTAL +1 -1 (1 files)
  +1 -1 paper/main.md
```

## Result
The Introduction now has concrete examples for both "non-existence" (measure obstruction) and "non-uniqueness" (ordering ambiguity) refinement failures.
