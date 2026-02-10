# Clock choice in areal-speed postulate: \(dA/dt\) vs \(dA/d\tau\)

Goal: test whether the SR inverse-square continuation depends on which time parameter defines the fixed areal speed.

Use the same inverse-square SR identities:
\[
v=\frac{K}{L},\qquad L=\gamma mrv,\qquad \gamma=\frac{1}{\sqrt{1-v^2/c^2}}.
\]
And
\[
\dot A_t:=\frac{dA}{dt}=\frac{rv}{2},\qquad
\dot A_\tau:=\frac{dA}{d\tau}=\gamma\frac{rv}{2}.
\]

## A) Fixed coordinate-time areal speed \(\dot A_t=\dot A_0\) (D1.5b branch)
\[
L=2\gamma m\dot A_0,\qquad
\gamma v=\frac{K}{2m\dot A_0}.
\]
This gives
\[
r=\frac{4m\dot A_0^2}{K}\sqrt{1+\left(\frac{K}{2m\dot A_0c}\right)^2}.
\]
For gravity \(K=GMm\):
\[
r_t(M,\dot A_0)=\frac{4\dot A_0^2}{GM}\sqrt{1+\left(\frac{GM}{2\dot A_0c}\right)^2}.
\]
If \(\dot A_0=cL_P\):
\[
r_t(M)=\frac{4\hbar}{Mc}\sqrt{1+\frac{M^2}{4M_P^2}},
\]
so \(M\gg M_P \Rightarrow r_t\to 2L_P\).

## B) Fixed proper-time areal speed \(\dot A_\tau=\dot A_{\tau,0}\)
Now
\[
L=2m\dot A_{\tau,0},\qquad
v=\frac{K}{2m\dot A_{\tau,0}}.
\]
So \(\gamma\) is fixed by that \(v\), and
\[
r=\frac{2\dot A_t}{v}
\quad\text{with}\quad
\dot A_t=\frac{\dot A_{\tau,0}}{\gamma},
\]
hence
\[
r=\frac{4m\dot A_{\tau,0}^2}{K\gamma}
=\frac{4m\dot A_{\tau,0}^2}{K}\sqrt{1-\left(\frac{K}{2m\dot A_{\tau,0}c}\right)^2}.
\]

For gravity \(K=GMm\):
\[
\boxed{
r_\tau(M,\dot A_{\tau,0})=
\frac{4\dot A_{\tau,0}^2}{GM}\sqrt{1-\left(\frac{GM}{2\dot A_{\tau,0}c}\right)^2}
},
\]
with domain
\[
GM<2\dot A_{\tau,0}c.
\]

For \(\dot A_{\tau,0}=cL_P\):
\[
r_\tau(M)=\frac{4\hbar}{Mc}\sqrt{1-\frac{M^2}{4M_P^2}},
\]
defined for \(M<2M_P\), and
\[
M\to2M_P^{-}\Rightarrow r_\tau\to0.
\]

## Comparison takeaway
Shared robust feature:
- Both clocks give the same leading low-mass behavior \(r\sim 4\hbar/(Mc)\).

Clock-sensitive feature:
- High-mass behavior differs qualitatively:
  - fixed \(dA/dt\): \(r\to2L_P\) saturation;
  - fixed \(dA/d\tau\): branch terminates at \(M=2M_P\) with \(r\to0\).

So the “Planck floor” is not clock-invariant in this model; it is tied to the \(dA/dt\) postulate.

## Symbolic check used
```bash
python3.12 - <<'PY'
import sympy as sp
A,c,G,hbar,M,Mp = sp.symbols('A c G hbar M Mp', positive=True)
r_tau = 4*A**2/(G*M) * sp.sqrt(1 - (G*M/(2*A*c))**2)
print(sp.simplify(r_tau.subs(A, c*sp.sqrt(hbar*G/c**3)).subs(G, hbar*c/Mp**2)))
PY
```
Output:
\[
\frac{2\hbar\sqrt{4M_P^2-M^2}}{M M_P c},
\]
equivalent to \(r_\tau(M)=\frac{4\hbar}{Mc}\sqrt{1-\frac{M^2}{4M_P^2}}\).

