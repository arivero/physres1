# C102 Execution

## Changes made

### `paper/main.md` — Remark D6.2a1 (line ~963)

**Before:** The remark used `F([•,•])` without defining it and wrote
"For the explicit Euler map E_h(y):=y+hf(y), expanding one order further gives…"
without stating smoothness requirements.

**After:**
1. Added `f ∈ C²` on the opening line of the remark.
2. Added Jacobian notation `f'(y)[v]` alongside the bilinear second derivative.
3. Inserted inline definition of both elementary differentials:
   - F([•]) := f'(y)[f(y)]  (chain tree, O(h²) term)
   - F([•,•]) := f''(y)[f(y),f(y)]  (branch tree, O(h³) term)
4. Added parenthetical clarifying that O(h³) requires f ∈ C², while O(h²) only
   needs f ∈ C¹.

No changes to `papers/rg-fundamental/main.md` — it already defines both F
symbols in D1.0.

## Diffstat

```
paper-diffstat (cached): TOTAL +2 -2 (1 files)
  +2 -2 paper/main.md
```

## Guard checks
- `rg -n 'C[0-9]{2}' paper/main.md` → no matches ✓
- `rg -n 'conv_patched' paper/main.md` → no matches ✓
