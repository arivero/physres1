# Correlated-Noise Threshold Scan for Projected Areal-Rate Uncertainty

Date: 2026-02-10  
Cycle: `S38`

## Goal
Stress-test the D1.5k/l linear uncertainty scaffold under correlated and higher-noise conditions for
\[
q=\dot A_{\mathbf n}=\frac12\,\mathbf n\cdot(\mathbf r\times\mathbf v).
\]

## Setup
- State: \(x=[\mathbf r,\mathbf v]\in\mathbb R^6\), with
  \[
  \mathbf r=(1.20,-0.65,0.48),\quad
  \mathbf v=(0.55,1.10,-0.72).
  \]
- Projection normal (normalized):
  \[
  \mathbf n\propto(0.35,-0.22,0.91).
  \]
- Correlated covariance model: \(\Sigma_s=(sL_0)(sL_0)^\top\), with fixed correlated seed matrix \(L_0\) and scale factor \(s\in\{1.0,\dots,4.0\}\).
- Linear estimate:
  \[
  \sigma_{q,\mathrm{lin}}^2\approx J_q\,\Sigma_s\,J_q^\top,\quad
  J_q=\left[\tfrac12(\mathbf v\times\mathbf n),\tfrac12(\mathbf n\times\mathbf r)\right].
  \]
- Nonlinear reference: Monte Carlo with 250k samples per \(s\).

## Repro Command
```bash
python3.12 - <<'PY'
import numpy as np
rng = np.random.default_rng(20260210)
r = np.array([1.20, -0.65, 0.48])
v = np.array([0.55, 1.10, -0.72])
n = np.array([0.35, -0.22, 0.91]); n = n / np.linalg.norm(n)
L0 = np.array([
    [0.080, 0.000, 0.000, 0.000, 0.000, 0.000],
    [0.030, 0.070, 0.000, 0.000, 0.000, 0.000],
    [-0.015, 0.020, 0.060, 0.000, 0.000, 0.000],
    [0.040, -0.010, 0.005, 0.090, 0.000, 0.000],
    [-0.020, 0.035, -0.010, 0.025, 0.085, 0.000],
    [0.010, -0.015, 0.030, -0.020, 0.040, 0.075],
])
J = np.concatenate([0.5*np.cross(v, n), 0.5*np.cross(n, r)])
x0 = np.concatenate([r, v])
q0 = 0.5*np.dot(n, np.cross(r, v))
for s in [1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0]:
    L = s * L0
    S = L @ L.T
    sigma_lin = np.sqrt(J @ S @ J)
    X = rng.multivariate_normal(x0, S, size=250000)
    q = 0.5*np.einsum('i,ni->n', n, np.cross(X[:, :3], X[:, 3:]))
    sigma_mc = q.std(ddof=1)
    rel = abs(sigma_mc - sigma_lin) / sigma_lin * 100
    bias = q.mean() - q0
    print(f's={s:.1f} rel={rel:.3f}% bias={bias:.4e}')
PY
```

## Results
| \(s\) | \(|\sigma_{\rm MC}-\sigma_{\rm lin}|/\sigma_{\rm lin}\) | mean bias |
|---|---:|---:|
| 1.0 | 0.505% | \(-8.64\times 10^{-4}\) |
| 1.5 | 0.977% | \(-2.42\times 10^{-3}\) |
| 2.0 | 1.406% | \(-4.15\times 10^{-3}\) |
| 2.5 | 2.626% | \(-5.77\times 10^{-3}\) |
| 3.0 | 3.673% | \(-9.68\times 10^{-3}\) |
| 3.5 | 4.811% | \(-1.16\times 10^{-2}\) |
| 4.0 | 6.311% | \(-1.65\times 10^{-2}\) |

## Interpretation
1. The linear scaffold is reliable in mild regimes (sub-percent to low-percent mismatch).
2. Correlations and uncertainty scale can push mismatch above the "few-percent" practical trigger.
3. The D1.5l trigger is empirically meaningful as a workflow criterion, but it is regime-dependent rather than absolute.
