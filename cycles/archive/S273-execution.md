# S273 Execution: Assumption-break stress tests for threshold bridge

Date: 2026-02-14
Status: Completed

## Work completed
1. Extended `paper/notes/main-paper-threshold-bridge-sanity-grid.md` with two assumption-break tests:
   - scale-dependent kinetic exponent in relativistic interpolation,
   - non-power-law potential with logarithmic correction.
2. Added explicit back-and-forth objections and updated safe/unsafe claim boundaries.

## Command log
- Command:
```bash
python3.12 - <<'PY'
import math

m = 1.0
ps = [1e-2, 1e-1, 1, 10, 100]
print('nu_eff for Ekin = sqrt(p^2+m^2)-m (m=1)')
for p in ps:
    E = math.sqrt(p*p + m*m) - m
    dE = p / math.sqrt(p*p + m*m)
    nu_eff = (p / E) * dE
    print(f'  p={p:>6g}: nu_eff={nu_eff:.6f}')

print('\nq_eff-1 for U(r) = -1 / (r^(q-1)*(1+ln(1/r))) with q=3')
rs = [1e-1, 1e-2, 1e-4, 1e-8]
q = 3.0
for r in rs:
    L = math.log(1.0/r)
    qeff_minus1 = (q-1) - 1.0/(L*(1+L))
    print(f'  r={r:.0e}: q_eff-1={qeff_minus1:.6f}')
PY
```
- Output summary:
  - \(\nu_{\mathrm{eff}}\) drifts from ~2 to ~1 across momentum scales.
  - effective attraction exponent drifts with \(r\) under logarithmic corrections.

## Discovery flag
- `yes` — the bridge rule is robust only when both channels admit stable asymptotic exponents in the same limit regime.
