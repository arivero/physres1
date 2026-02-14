# S278 Execution: Potential-channel drift and effective exponent diagnostics

Date: 2026-02-14

## Work completed
1. Added explicit potential-drift diagnostic to `paper/notes/main-paper-threshold-bridge-sanity-grid.md`:
   - \(m_{\mathrm{eff}}(r)\) and \(\Delta m(r)\) formulas for logarithmic corrections.
2. Added one robust caution sentence suitable for future promotion filtering.
3. Ran correction-strength sweep over \(\alpha\in\{0.5,1,2\}\).

## Command log
- Command:
```bash
python3.12 - <<'PY'
import math
q_minus_1 = 2.0
rs = [1e-1, 1e-2, 1e-4, 1e-8]
alphas = [0.5, 1.0, 2.0]
for a in alphas:
    print(f'alpha={a}')
    for r in rs:
        L = math.log(1.0/r)
        meff = q_minus_1 - a/(1 + a*L)
        drift = q_minus_1 - meff
        print(f'  r={r:.0e}: m_eff={meff:.6f}, drift={drift:.6f}')
PY
```
- Output summary:
  - larger \(\alpha\) gives larger moderate-scale drift.
  - drift decays at very small \(r\), recovering asymptotic power-law behavior.

## Discovery flag
- `yes` — a simple drift diagnostic provides an operational gate for when fixed-\(q\) threshold talk is safe.

## Branch state
- Initial pass complete; keep this S topic open for alternative correction families if selected next.

## Iteration 2 (same ID; append-only)
1. Tested an alternative correction family \(U=-r^{-m}(1+\alpha r^\beta)\) to check whether drift diagnostics are family-robust.
2. Appended formulas and sweep summary to `paper/notes/main-paper-threshold-bridge-sanity-grid.md`.

### Iteration 2 command
```bash
python3.12 - <<'PY'
import math
m = 2.0
rs = [1e-1, 1e-2, 1e-4, 1e-8]
for beta in [0.5, 1.0]:
    alpha = 1.0
    print(f'beta={beta}')
    for r in rs:
        rb = r**beta
        meff = m - (alpha*beta*rb)/(1 + alpha*rb)
        drift = m - meff
        print(f'  r={r:.0e}: m_eff={meff:.6f}, drift={drift:.6f}')
PY
```

### Iteration 2 output summary
- Drift decays rapidly as \(r\to0\) for \(r^\beta\)-type corrections.
- The same diagnostic form (small \(\Delta m\) over operating window) remains useful across correction families.

## Iteration 3 (same ID; windowed max-drift gate)
1. Added a finite-window gate `Delta m_max(W)` for fixed-`q` applicability checks.
2. Compared log-correction and power-correction families under the same tolerance threshold.

### Iteration 3 command
```bash
python3.12 - <<'PY'
import math

windows=[(1e-1,1e-3),(1e-2,1e-4),(1e-4,1e-8)]

def drift_log(alpha,r):
    L=math.log(1.0/r)
    return alpha/(1+alpha*L)

def drift_pow(alpha,beta,r):
    rb=r**beta
    return (alpha*beta*rb)/(1+alpha*rb)

print('LOG-CORRECTION family: drift_max on window')
for alpha in [0.5,1.0,2.0,5.0]:
    print(f'alpha={alpha}')
    for a,b in windows:
        dmax=max(drift_log(alpha,a), drift_log(alpha,b))
        print(f'  [{a:.0e},{b:.0e}]: dmax={dmax:.4f}, safe(d<=0.1)={dmax<=0.1}')

print('\nPOWER-CORRECTION family: drift_max on window')
for beta in [0.5,1.0]:
    print(f'beta={beta}')
    for alpha in [0.5,1.0,2.0,5.0]:
        print(f'  alpha={alpha}')
        for a,b in windows:
            dmax=max(drift_pow(alpha,beta,a), drift_pow(alpha,beta,b))
            print(f'    [{a:.0e},{b:.0e}]: dmax={dmax:.4f}, safe(d<=0.1)={dmax<=0.1}')
PY
```

### Iteration 3 output summary
- Log family typically fails `dmax<=0.1` on moderate windows and needs deeper `r` windows.
- Power family often passes `dmax<=0.1` at shallower windows (parameter-dependent).

### Iteration 3 conclusion
- `Delta m_max(W)` is a portable finite-window safety gate for potential-channel corrections.
- Safe-threshold language should be tied to declared window + tolerance, not to asymptotic statements alone.
