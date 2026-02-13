# C141 Execution: Cornerstone cross-reference to Dirac Probes satellite
Date: 2026-02-13

## Changes
Added parenthetical cross-reference after the mollifier probing paragraph (Section 5.3),
pointing to the Dirac Probes companion note's Theorem 2.1 and Section 4 (worked model
and N-impulse → path integral bridge).

This is the 4th satellite cross-reference in the cornerstone:
1. HD-D1.3 (Section 6.3)
2. RG-D1.2a (Section 10.5)
3. RG-D1.7 (Section 8.4)
4. Dirac Probes Theorem 2.1 + Section 4 (Section 5.3)

## Diffstat
```
paper-diffstat (cached): TOTAL +2 -1 (1 files)
  +2 -1 paper/main.md
```

## Guard checks
- `rg -n 'C[0-9]{2,3}' paper/main.md` → no matches ✓
- `rg -n 'conv_patched' paper/main.md` → no matches ✓
