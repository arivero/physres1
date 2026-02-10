# SR continuation of the Planck-areal-speed witness (inverse-square)

Goal: connect the SR circular-orbit formulas with the Planck-areal-speed witness currently stated in Newtonian form.

## Setup
Use the same mechanical SR central-force model as `papers/relativistic-central-orbits/main.md`.
For inverse-square force \(F=K/r^2\), Section 3 there gives
\[
v=\frac{K}{L},
\qquad
L=\gamma m r v,
\qquad
\gamma=\frac{1}{\sqrt{1-v^2/c^2}}.
\]

Impose fixed coordinate-time areal speed
\[
\dot A_0:=\frac{dA}{dt}=\frac{r^2\dot\phi}{2}=\frac{rv}{2}.
\]
Then
\[
L=\gamma m r v = 2\gamma m \dot A_0,
\qquad
v=\frac{2\dot A_0}{r}.
\]

## Closed inverse-square SR branch
From \(v=K/L\) and \(L=2\gamma m\dot A_0\):
\[
\gamma v = \frac{K}{2m\dot A_0}=:s.
\]
Hence
\[
\gamma=\sqrt{1+\left(\frac{s}{c}\right)^2},
\qquad
v=\frac{s}{\sqrt{1+(s/c)^2}}.
\]
The orbit radius is
\[
r=\frac{2\dot A_0}{v}
\]
so
\[
\boxed{
r=\frac{4m\dot A_0^2}{K}\sqrt{1+\left(\frac{K}{2m\dot A_0 c}\right)^2}
}.
\]

For Newtonian gravity \(K=GMm\), \(m\) cancels:
\[
\boxed{
r(M,\dot A_0)=\frac{4\dot A_0^2}{GM}\sqrt{1+\left(\frac{GM}{2\dot A_0 c}\right)^2}
}.
\]

## Planck-areal-speed specialization
Set
\[
\dot A_0 = cL_P,\qquad L_P^2=\frac{\hbar G}{c^3},\qquad M_P^2=\frac{\hbar c}{G}.
\]
Then
\[
\boxed{
r(M)=\frac{4\hbar}{Mc}\sqrt{1+\frac{M^2}{4M_P^2}}
}.
\]

Limits:
- \(M\ll M_P\):
  \[
  r \approx \frac{4\hbar}{Mc}
  \]
  (Newtonian/Compton-like branch).
- \(M\gg M_P\):
  \[
  r \to 2L_P.
  \]

So the SR correction regularizes the inverse-square Planck-areal-speed witness into an interpolation between Compton scaling and a Planck-length floor.

## Relation to the S26 stability result
S26 gave SR stability condition
\[
1+(2-q)\gamma^2>0.
\]
For \(q=2\), this is always satisfied.
For \(2<q<3\), fixed \(\dot A_0\) plus \(v=2\dot A_0/r\) gives
\[
\frac{v^2}{c^2}<3-q
\quad\Rightarrow\quad
r>\frac{2\dot A_0}{c\sqrt{3-q}}.
\]
This is a useful bound, but unlike \(q=2\), it does not produce a comparably clean closed interpolation formula tied to the existing Planck-area witness.

## Symbolic sanity check used
```bash
python3.12 - <<'PY'
import sympy as sp
A0, c, G, M = sp.symbols('A0 c G M', positive=True)
r = 4*A0**2/(G*M) * sp.sqrt(1 + (G*M/(2*A0*c))**2)
print(sp.simplify(r))
PY
```
Output:
\[
\frac{2A_0\sqrt{4A_0^2c^2+G^2M^2}}{GMc}
\]
which is algebraically equivalent to the boxed expression above.

