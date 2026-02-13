# C78 Execution: Add a Toy Divergence Witness to `Heuristic H0.2` Item 3

## Changes
- Added a short toy divergence witness to `paper/main.md` `Heuristic H0.2` item 3:
  - difference-quotient definition of the derivative as "subtract \(1/\varepsilon\) divergence, then take the limit".

## Guardrails
- `rg -n 'C[0-9]{2}' paper/main.md` (clean; no matches).

## Diffstat
```text
paper-diffstat (cached): TOTAL +1 -1 (1 files)
  +1 -1 paper/main.md
```

## Result
All three obstructions in `Heuristic H0.2` now have at least a minimal concrete witness line, while the full RG computation remains later.
