# C136 Execution: Add cornerstone→RG-fundamental cross-references
Date: 2026-02-13

## Changes
1. Section 10.5 (line ~1371): Added parenthetical cross-reference to RG-D1.2a (Wilsonian shell integration making semigroup composition visible as identity of shell integrals).
2. Section 8.4 (line ~991): Added parenthetical cross-reference to RG-D1.7 (Schur complement coarse-graining model making non-invertibility concrete).

Both follow the HD-D1.3 pattern: parenthetical, "cf.\ Derivation ... in the RG companion note."

## Diffstat
```
paper-diffstat (cached): TOTAL +2 -2 (1 files)
  +2 -2 paper/main.md
```

## Guard Checks
- `rg -n 'C[0-9]{2,3}' paper/main.md` → no matches ✓
- `rg -n 'conv_patched' paper/main.md` → no matches ✓
