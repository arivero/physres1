# Half-Density Conjugation of the Laplacian in a Conformal Metric (D=4 Simplification)

Date: 2026-02-10

This note studies a concrete QFT-facing half-density computation:
the conjugated Laplace–Beltrami operator
\[
\widetilde\Delta := |g|^{1/4}\,\Delta_g\,|g|^{-1/4}
\]
in a conformally flat metric \(g_{\mu\nu}=e^{2\sigma}\delta_{\mu\nu}\) in \(D\) dimensions.

The punchline is that, in this conformal class, one coefficient is proportional to \(D(4-D)\), so a quadratic-gradient term cancels at \(D=4\).
This is recorded as an *observation* (potentially a “dimension filter”), not as an explanation by itself.

## 1. Setup: conformal metric and scalar Laplacian

Let \(g_{\mu\nu}=e^{2\sigma(x)}\delta_{\mu\nu}\) (Euclidean signature for simplicity). Then
\[
\sqrt{|g|}=e^{D\sigma},\qquad g^{\mu\nu}=e^{-2\sigma}\delta^{\mu\nu}.
\]
For a scalar \(\phi\),
\[
\Delta_g \phi
=|g|^{-1/2}\partial_\mu\!\big(\sqrt{|g|}\,g^{\mu\nu}\partial_\nu\phi\big)
=e^{-D\sigma}\partial_\mu\!\big(e^{(D-2)\sigma}\partial_\mu\phi\big)
=e^{-2\sigma}\Big(\partial^2\phi+(D-2)\,\partial\sigma\cdot\partial\phi\Big),
\]
where \(\partial^2=\delta^{\mu\nu}\partial_\mu\partial_\nu\) and \(\partial\sigma\cdot\partial\phi=\delta^{\mu\nu}(\partial_\mu\sigma)(\partial_\nu\phi)\).

The half-density scalarization on this background is \(|g|^{1/4}=e^{D\sigma/2}\).
Define \(\psi:=|g|^{1/4}\phi=e^{D\sigma/2}\phi\), so \(\phi=e^{-D\sigma/2}\psi\).

## 2. Compute \u03a4 = |g|^{1/4}\u0394_g|g|^{-1/4}

By definition,
\[
\widetilde\Delta\psi
=|g|^{1/4}\Delta_g(|g|^{-1/4}\psi)
=e^{D\sigma/2}\Delta_g(e^{-D\sigma/2}\psi).
\]
Using the conformal Laplacian expression above and expanding derivatives, one finds:
\[
\boxed{
\widetilde\Delta\psi
=e^{-2\sigma}\Big(
\partial^2\psi
-2\,\partial\sigma\cdot\partial\psi
-\frac{D}{2}(\partial^2\sigma)\,\psi
+\frac{D(4-D)}{4}(\partial\sigma)^2\,\psi
\Big)
}
\]
with \((\partial\sigma)^2=\delta^{\mu\nu}(\partial_\mu\sigma)(\partial_\nu\sigma)\).

### D=4 simplification (conformal class)
At \(D=4\), the quadratic-gradient term cancels:
\[
\widetilde\Delta\psi\Big|_{D=4}
=e^{-2\sigma}\Big(
\partial^2\psi
-2\,\partial\sigma\cdot\partial\psi
-2\,(\partial^2\sigma)\,\psi
\Big).
\]
Equivalently, the only dependence on \(\sigma\) is linear in first/second derivatives (no \((\partial\sigma)^2\) term) in this conformal ansatz.

This is the observation to keep in mind for the “special dimensions” thread: it is a concrete simplification in the half-density conjugation of the kinetic operator in a conformal background.

## 3. SymPy check in a reduced toy case (\u03c3=\u03c3(x) only)

As a coefficient/sign sanity check, take \(\sigma=\sigma(x)\), \(\psi=\psi(x)\) depending on one coordinate only.
Using SymPy with the identity
\[
\Delta_g\phi=e^{-2\sigma}\big(\phi''+(D-2)\sigma'\phi'\big),
\]
we compute \(\widetilde\Delta\psi=e^{D\sigma/2}\Delta_g(e^{-D\sigma/2}\psi)\) and verify it matches the boxed formula.

Command (run in this repo):
```bash
python3.12 - <<'PY'
import sympy as sp
x=sp.Symbol('x', real=True)
for D in [sp.Integer(2), sp.Integer(3), sp.Integer(4), sp.Integer(5)]:
    sigma=sp.Function('sigma')(x)
    psi=sp.Function('psi')(x)
    Phi=sp.exp(-D*sigma/2)*psi
    DeltaPhi=sp.exp(-2*sigma)*(sp.diff(Phi,x,2)+(D-2)*sp.diff(sigma,x)*sp.diff(Phi,x))
    tilde=sp.simplify(sp.exp(D*sigma/2)*DeltaPhi)
    formula=sp.exp(-2*sigma)*(sp.diff(psi,x,2)-2*sp.diff(sigma,x)*sp.diff(psi,x)-(D/2)*sp.diff(sigma,x,2)*psi + D*(4-D)/4*sp.diff(sigma,x)**2*psi)
    print('D=',D,'diff=',sp.simplify(tilde-formula))
PY
```
Output:
```
D= 2 diff= 0
D= 3 diff= 0
D= 4 diff= 0
D= 5 diff= 0
```

## 4. How this might connect (heuristic only)

1. **Half-density QFT draft.**
The computation is directly promotable as a worked example in `papers/half-density-qft/main.md`, since it shows explicitly how the half-density scalarization gauge changes the kinetic operator in a concrete metric class.

2. **“Special dimensions” filter.**
Independently of the Planck-area scale sieve, the coefficient \(D(4-D)\) suggests \(D=4\) is a simplification point for this half-density conjugation in a conformal background. Whether this has an invariant meaning (and whether it persists beyond the conformal ansatz) is an open sub-question.

