# Covariant areal invariant candidate via projected angular momentum

Goal: replace ad hoc clock choices (\(dA/dt\) vs \(dA/d\tau\)) with a covariant scalar in the inverse-square SR branch.

## 1) Covariant definition
Let \(U^\mu\) be the source 4-velocity (normalized \(U^\mu U_\mu=-c^2\)). Define projector to the source local rest space:
\[
h^\mu{}_\nu=\delta^\mu{}_\nu+\frac{U^\mu U_\nu}{c^2}.
\]
For particle 4-momentum \(p^\mu\) and displacement \(x^\mu\) from source worldline, orbital tensor
\[
J^{\mu\nu}=x^\mu p^\nu-x^\nu p^\mu.
\]
Projected spatial bivector:
\[
L^{\mu\nu}=h^\mu{}_\alpha h^\nu{}_\beta J^{\alpha\beta}.
\]
Define scalar
\[
\ell:=\frac1m\sqrt{\frac12\,L_{\mu\nu}L^{\mu\nu}}.
\]

Given \(U^\mu\), \(\ell\) is observer-covariant and has units of area/time.

## 2) Source-rest-frame reduction
In the source rest frame (\(U^\mu=(c,0,0,0)\)) for planar circular motion:
\[
\ell=\frac{L}{m}=\gamma r v.
\]
Hence
\[
\dot A_t:=\frac{dA}{dt}=\frac{rv}{2}=\frac{\ell}{2\gamma},
\qquad
\dot A_\tau:=\frac{dA}{d\tau}=\gamma\dot A_t=\frac{\ell}{2}.
\]
So fixing \(\ell\) is equivalent to fixing proper-time areal speed.

## 3) Inverse-square SR branch under fixed \(\ell\)
For inverse-square central force in SR, \(v=K/L\). With \(K=GMm\):
\[
v=\frac{GMm}{L}=\frac{GM}{\ell},
\qquad
\gamma=\frac{1}{\sqrt{1-v^2/c^2}}.
\]
Using \(\ell=\gamma rv\),
\[
r=\frac{\ell}{\gamma v}
=\frac{\ell^2}{GM}\sqrt{1-\left(\frac{GM}{\ell c}\right)^2},
\]
domain:
\[
\ell>\frac{GM}{c}.
\]

Set \(\ell=2cL_P\):
\[
r(M)=\frac{4\hbar}{Mc}\sqrt{1-\frac{M^2}{4M_P^2}},
\]
which matches the fixed-\(dA/d\tau\) branch (D1.5c).

## 4) Interpretation
- The covariant candidate \(\ell\) resolves the clock ambiguity in favor of the proper-time branch.
- Low-mass behavior still gives \(r\sim4\hbar/(Mc)\).
- High-mass endpoint remains model-dependent: \(M<2M_P\), \(r\to0\) at endpoint for fixed \(\ell=2cL_P\).

So this is a structural preference inside the current SR central-force model, not yet a universal statement across GR/QFT.

## Symbolic check used
```bash
python3.12 - <<'PY'
import sympy as sp
l,G,M,c = sp.symbols('l G M c', positive=True)
r = l*sp.sqrt(c**2*l**2 - G**2*M**2)/(G*M*c)
print(sp.simplify(r))
PY
```
Output:
\[
\frac{\ell\sqrt{-G^2M^2+c^2\ell^2}}{GMc}
\]
equivalent to the formula above.

