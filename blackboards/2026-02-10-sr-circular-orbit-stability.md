# SR Circular-Orbit Stability for \(F=K/r^q\) (Mechanical Model)

Goal: extend `papers/relativistic-central-orbits/main.md` by adding a clean, derivation-first stability criterion for SR circular orbits under an attractive power-law central force.

Scope note: this is *special relativistic mechanics with an external, time-independent, central scalar potential* \(U(r)\) (lab-frame Hamiltonian). It is not claimed to be a fully covariant two-body field theory.

## Setup
Take the SR Lagrangian with a central potential:
\[
L = -mc^2\sqrt{1-\frac{\dot r^2+r^2\dot\phi^2}{c^2}}-U(r).
\]
For fixed angular momentum
\[
L_z = \frac{\partial L}{\partial\dot\phi}=\gamma m r^2\dot\phi \equiv L,
\qquad
\gamma = \frac{1}{\sqrt{1-v^2/c^2}},
\]
the lab-frame energy can be written as a function of \(r\) (with \(p_r=0\)) as
\[
W_L(r)=\sqrt{m^2c^4+\frac{L^2c^2}{r^2}}+U(r).
\]

Assume the attractive force magnitude
\[
F(r)=\frac{K}{r^q},\qquad K>0,
\]
so \(U'(r)=K r^{-q}\) (and \(U<0\) for \(q>1\)).

## Circular-orbit condition (consistency check)
Circular orbits at fixed \(L\) satisfy \(W_L'(r_0)=0\), i.e.
\[
\frac{d}{dr}\sqrt{m^2c^4+\frac{L^2c^2}{r^2}}\Big|_{r_0}+U'(r_0)=0.
\]
Since
\[
\frac{d}{dr}\sqrt{m^2c^4+\frac{L^2c^2}{r^2}}
=-\frac{L^2c^2}{r^3\sqrt{m^2c^4+L^2c^2/r^2}},
\]
the circular condition is
\[
\frac{K}{r_0^q}=\frac{L^2c^2}{r_0^3\sqrt{m^2c^4+L^2c^2/r_0^2}}
\quad\Longleftrightarrow\quad
L^2 = K\,\gamma\,m\,r_0^{3-q},
\]
using \(\sqrt{m^2c^4+L^2c^2/r_0^2}=\gamma mc^2\). This matches the earlier SR 3-force derivation.

## Stability: small radial perturbations
At fixed \(L\), stability of the circular orbit at \(r_0\) is the local-minimum condition
\[
W_L''(r_0)>0.
\]
Compute \(W_L''=T''+U''\) with \(T(r)=\sqrt{m^2c^4+L^2c^2/r^2}\) and \(U''(r)=-qK r^{-(q+1)}\).

A compact way to express the result is in terms of \(\gamma\) at the circular orbit, with
\[
\gamma^2 = 1+\frac{L^2}{m^2c^2r_0^2}.
\]
One finds
\[
\boxed{\;
W_L''(r_0)=\frac{L^2}{m r_0^4\,\gamma^3}\Bigl(1+(2-q)\gamma^2\Bigr).
\;}
\]
Therefore the stability criterion is
\[
\boxed{\;
1+(2-q)\gamma^2>0.
\;}
\]

### Interpretation by \(q\)
- \(q<2\): stable for all \(\gamma\) (the bracket is manifestly positive).
- \(q=2\): stable for all \(\gamma\) (the bracket equals \(1\)).
- \(2<q<3\): stable only for sufficiently small \(\gamma\):
  \[
  \gamma^2<\frac{1}{q-2}
  \quad\Longleftrightarrow\quad
  \frac{v^2}{c^2}<3-q.
  \]
- \(q=3\): marginal only at \(\gamma=1\) (Newtonian limit); otherwise unstable.
- \(q>3\): unstable.

Newtonian limit check: \(\gamma\to1\) gives \(1+(2-q)>0\iff q<3\), i.e. the standard Newtonian criterion.

## SymPy sanity check
Command:
```bash
python3.12 - <<'PY'
import sympy as sp
r, m, c, L, K, q = sp.symbols('r m c L K q', positive=True)
U = K * r**(1-q) / (1-q)  # q != 1, with U'(r)=K r^{-q}
W = sp.sqrt(m**2*c**4 + L**2*c**2/r**2) + U
W2 = sp.diff(W, r, 2)
K_expr = sp.solve(sp.Eq(sp.diff(W, r), 0), K)[0]  # circular condition
W2_circ = sp.simplify(W2.subs(K, K_expr))
Sq = sp.sqrt(L**4 + 2*L**2*c**2*m**2*r**2 + c**4*m**4*r**4)  # (L^2+c^2 m^2 r^2)^2
W2_circ = sp.simplify(W2_circ.subs(Sq, (L**2 + c**2*m**2*r**2)))
print(sp.factor(W2_circ))
PY
```
Output (factored):
\[
W_L''(r_0)=-\frac{L^2c}{r_0^3(L^2+c^2m^2r_0^2)^{3/2}}\Bigl(L^2(q-2)+c^2m^2r_0^2(q-3)\Bigr),
\]
which is equivalent to the \(\gamma\)-form above.

