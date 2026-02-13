# C142 Execution: Moyal product worked examples in Section 7.3
Date: 2026-02-13

## Changes
Added Derivation D5.1a with two explicit Moyal product computations:
1. (q ⋆_M p) = qp + iℏ/2 → [q,p]_⋆ = iℏ (exact for linear functions).
2. (q² ⋆_M p) = q²p + iℏq → [q²,p]_⋆ = 2iℏq (matches Weyl ordering).
3. General statement: [qⁿ,p]_⋆ = niℏq^{n-1} (Leibniz rule).

## Diffstat
```
paper-diffstat (cached): TOTAL +15 -0 (1 files)
  +15 -0 paper/main.md
```

## Guard checks
- `rg -n 'C[0-9]{2,3}' paper/main.md` → no matches ✓
- `rg -n 'conv_patched' paper/main.md` → no matches ✓
