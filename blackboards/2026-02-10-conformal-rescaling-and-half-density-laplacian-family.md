# Conformal Rescaling and the Half-Density Laplacian: a Weight Family and the D=4 Intersection

Date: 2026-02-10

This note reframes the S16 conformal computation as a *family* of conjugations and isolates why the half-density choice has a special simplification at \(D=4\) (within the conformal ansatz).

## 1. Conformal Laplacian on scalars (flat base)

Take \(g_{\mu\nu}=e^{2\sigma(x)}\delta_{\mu\nu}\) in \(D\) dimensions. For a scalar \(\phi\),
\[
\Delta_g\phi
=e^{-2\sigma}\Big(\partial^2\phi+(D-2)\,\partial\sigma\cdot\partial\phi\Big),
\]
where \(\partial^2=\delta^{\mu\nu}\partial_\mu\partial_\nu\).

This makes explicit where the dimension enters: the first-derivative term comes with coefficient \(D-2\).

## 2. A weight family: \(O_a := e^{a\sigma}\Delta_g e^{-a\sigma}\)

Introduce a one-parameter family of conjugated operators
\[
O_a\psi := e^{a\sigma}\Delta_g\big(e^{-a\sigma}\psi\big).
\]
This is just a bookkeeping device for how \(\Delta_g\) changes under a local rescaling of fields.

Expanding derivatives (a short computation) gives the explicit form:
\[
\boxed{
O_a\psi
=e^{-2\sigma}\Big(
\partial^2\psi
(D-2-2a)\,\partial\sigma\cdot\partial\psi
\big(-a\,\partial^2\sigma + a(a-(D-2))(\partial\sigma)^2\big)\psi
\Big).
}
\]

### Two “simplicity” conditions
From the boxed formula:

1. **No first-derivative term** (no \(\partial\sigma\cdot\partial\psi\)):
   \[
   D-2-2a=0\quad\Longrightarrow\quad a=\frac{D-2}{2}.
   \]
2. **No quadratic-gradient term** (no \((\partial\sigma)^2\psi\)):
   \[
   a(a-(D-2))=0\quad\Longrightarrow\quad a\in\{0,\;D-2\}.
   \]

These are independent. (The first removes a “connection-like” term; the second removes a “potential-like” term quadratic in the conformal factor gradient.)

## 3. Half-densities pick \(a=D/2\)

In the half-density scalarization used in the repo’s QFT draft, \(\psi=|g|^{1/4}\phi\).
For \(g=e^{2\sigma}\delta\), one has \(|g|^{1/4}=e^{D\sigma/2}\), so \(\phi=e^{-D\sigma/2}\psi\) and
\[
|g|^{1/4}\Delta_g|g|^{-1/4}\psi
=e^{D\sigma/2}\Delta_g(e^{-D\sigma/2}\psi)
=O_{a=D/2}\psi.
\]
Thus half-densities correspond exactly to the choice \(a=D/2\) in this conformal class.

Specializing the boxed formula to \(a=D/2\) yields:
\[
O_{D/2}\psi
=e^{-2\sigma}\Big(
\partial^2\psi
-2\,\partial\sigma\cdot\partial\psi
-\frac{D}{2}(\partial^2\sigma)\psi
+\frac{D(4-D)}{4}(\partial\sigma)^2\psi
\Big),
\]
recovering S16.

### The D=4 intersection (within the conformal ansatz)
The “no \((\partial\sigma)^2\)” simplicity condition is \(a\in\{0,D-2\}\). Half-densities impose \(a=D/2\).
These coincide only when
\[
\frac{D}{2}=D-2\quad\Longrightarrow\quad D=4.
\]

So, in this conformal class, the half-density conjugated Laplacian has **no \((\partial\sigma)^2\)** term exactly at \(D=4\).

This can be read as a heuristic “dimension filter” candidate: if one demands that scalarization gauge changes (modeled here by a conformal factor) do not generate quadratic-gradient potentials in the half-density kinetic operator, then \(D=4\) is singled out.

We keep this as an observation; whether it has a coordinate-free or physically compelling formulation is a separate question.

## 4. SymPy check (reduced \u03c3=\u03c3(x) toy model)

In one coordinate dependence (\(\sigma=\sigma(x)\), \(\psi=\psi(x)\)) we can verify the coefficient structure mechanically.

Command:
```bash
python3.12 - <<'PY'
import sympy as sp
x=sp.Symbol('x', real=True)
D,a=sp.symbols('D a')
sigma=sp.Function('sigma')(x)
psi=sp.Function('psi')(x)

# conformal scalar Laplacian in 1D dependence model:
# Delta_g phi = e^{-2 sigma} (phi'' + (D-2) sigma' phi')
phi = sp.exp(-a*sigma)*psi
Delta_phi = sp.exp(-2*sigma)*(sp.diff(phi,x,2)+(D-2)*sp.diff(sigma,x)*sp.diff(phi,x))
Oa = sp.simplify(sp.exp(a*sigma)*Delta_phi)

formula = sp.exp(-2*sigma)*(\n    sp.diff(psi,x,2)\n    + (D-2-2*a)*sp.diff(sigma,x)*sp.diff(psi,x)\n    + (-a*sp.diff(sigma,x,2) + a*(a-(D-2))*sp.diff(sigma,x)**2)*psi\n+)\n+\n+print('Oa - formula =', sp.simplify(Oa-formula))\nPY
```
Output:
```
Oa - formula = 0
```

