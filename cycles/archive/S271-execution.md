# S271 Execution: Threshold-bridge sanity grid and wording lock

Date: 2026-02-14
Status: Completed

## Work completed
1. Added note `paper/notes/main-paper-threshold-bridge-sanity-grid.md` with a small-\(r\) sign table for representative \((\nu,q)\) regimes.
2. Confirmed the threshold behavior numerically with equal coefficients in a toy effective expression.
3. Produced final promotion wording constrained to compact bridge scope.

## Command log
- Command:
```bash
python3.12 - <<'PY'
import math
rs = [1e-1, 1e-2, 1e-3]
cases = [
    ("Newton-subcritical", 2, 2),
    ("Newton-critical", 2, 3),
    ("SR-critical", 1, 2),
    ("SR-supercritical", 1, 3),
]
for name, nu, q in cases:
    print(name)
    for r in rs:
        val = r**(-nu) - r**(-(q-1))
        print(f"  r={r:.0e}: barrier-minus-attraction={val:.6e}")
PY
```
- Output summary:
  - Newton-subcritical: positive and growing as \(r\to0\).
  - Newton-critical and SR-critical: near-zero balance in the toy equal-coefficient case.
  - SR-supercritical: negative and decreasing as \(r\to0\).

## Discovery flag
- `yes` — the sign table gives a clean referee-facing sanity witness for a short promoted remark.
