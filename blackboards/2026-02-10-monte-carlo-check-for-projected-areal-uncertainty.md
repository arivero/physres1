# Monte Carlo check for projected areal uncertainty

Goal: validate the linear uncertainty formula for
\[
q=\frac12\,\mathbf n\cdot(\mathbf r\times\mathbf v)
\]
in a lightweight toy regime.

## Setup
- Nominal:
  \[
  \mathbf r_0=(1.0,\,0.2,\,0.1),\quad
  \mathbf v_0=(0.05,\,0.9,\,0.02),\quad
  \mathbf n=(0,0,1).
  \]
- State \(x=[\mathbf r,\mathbf v]\) Gaussian with small covariance and mild cross-correlation.
- Linear Jacobian:
  \[
  \frac{\partial q}{\partial \mathbf r}=\frac12(\mathbf v\times\mathbf n),\qquad
  \frac{\partial q}{\partial \mathbf v}=\frac12(\mathbf n\times\mathbf r),
  \]
  so \(\sigma_q^2\approx J_q\Sigma_xJ_q^\top\).

## Reproducible command
```bash
python3.12 - <<'PY'
import numpy as np
np.random.seed(7)
r0=np.array([1.0,0.2,0.1]); v0=np.array([0.05,0.9,0.02]); n=np.array([0.,0.,1.])
sr=np.array([0.01,0.01,0.005]); sv=np.array([0.01,0.01,0.005])
Sigma=np.diag(np.concatenate([sr**2,sv**2]))
Sigma[0,3]=Sigma[3,0]=2e-5; Sigma[1,4]=Sigma[4,1]=-1.5e-5
q=lambda r,v:0.5*np.dot(n,np.cross(r,v))
J=np.concatenate([0.5*np.cross(v0,n),0.5*np.cross(n,r0)])
std_lin=np.sqrt(J@Sigma@J)
N=250_000; x0=np.concatenate([r0,v0]); L=np.linalg.cholesky(Sigma)
X=x0+np.random.randn(N,6)@L.T; R=X[:,:3]; V=X[:,3:]
qs=0.5*np.einsum('j,ij->i',n,np.cross(R,V))
print(std_lin, qs.std(ddof=1), (abs(qs.std(ddof=1)-std_lin)/qs.std(ddof=1)))
PY
```

Observed output:
- \(\sigma_q^{\rm linear}=6.6998\times10^{-3}\)
- \(\sigma_q^{\rm MC}=6.6918\times10^{-3}\)
- relative difference \(\approx 0.12\%\)

## Interpretation
In this mild regime, linear propagation is highly accurate. Practical policy:
- keep Jacobian baseline by default,
- run pilot MC when nonlinearity/noise increases,
- escalate to nonlinear propagation if discrepancy rises to a few-percent scale or higher.

