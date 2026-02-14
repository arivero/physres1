# S274 Execution: Marginal parameter-map refinement (L_crit)

Date: 2026-02-14
Status: Completed

## Work completed
1. Extended `paper/notes/main-paper-threshold-bridge.md` with explicit marginal parameter map:
   - introduced \(L_{\mathrm{crit}}=(B/a)^{1/\nu}\),
   - listed leading-sign regimes for \(L\gtrless L_{\mathrm{crit}}\),
   - separated exact-equality case as subleading-sensitive.
2. Closed the `S272` carry-over question on compact marginal representation.

## Command log
- Command:
```bash
python3.12 - <<'PY'
import math
nu = 2
a = 0.5
b = 1.2
Lcrit = (b/a)**(1/nu)
print(f'Lcrit={Lcrit:.6f}')
for L in [0.5, 1.0, Lcrit, 2.0]:
    coeff = a*(L**nu) - b
    regime = 'barrier-leading' if coeff > 0 else ('marginal' if abs(coeff) < 1e-10 else 'attraction-leading')
    print(f'L={L:.6f}: coeff={coeff:.6f}, regime={regime}')
PY
```
- Output summary:
  - Below \(L_{\mathrm{crit}}\): attraction-leading sign.
  - Above \(L_{\mathrm{crit}}\): barrier-leading sign.
  - At \(L\approx L_{\mathrm{crit}}\): near-cancellation as expected.

## Discovery flag
- `yes` — adding \(L_{\mathrm{crit}}\) gives a compact way to keep the bridge quantitative without expanding manuscript prose much.
