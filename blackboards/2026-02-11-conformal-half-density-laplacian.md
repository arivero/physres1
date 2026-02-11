# Blackboard: Conformal half-density Laplacian conjugation (\u007c g \u007c^{1/4}\u0394_g\u007c g \u007c^{-1/4}) and the \(D(4-D)\) coefficient

Date: 2026-02-11

## Goal
Reproduce (derivation-first) the conformal expansion used in the half-density QFT note:
\[
\widetilde\Delta := |g|^{1/4}\Delta_g|g|^{-1/4},
\qquad
g_{\mu\nu}=e^{2\sigma(x)}\delta_{\mu\nu},
\]
and verify it symbolically in \(D=4\) (optionally also \(D=3\)).

## Setup (Euclidean signature for the computation)
Let \(D=\dim M\) and take a conformally flat background
\[
g_{\mu\nu}=e^{2\sigma(x)}\delta_{\mu\nu}.
\]
Then
\[
\sqrt{|g|}=e^{D\sigma},\qquad g^{\mu\nu}=e^{-2\sigma}\delta^{\mu\nu}.
\]
The scalar Laplacian is
\[
\Delta_g f
=|g|^{-1/2}\partial_\mu\!\bigl(\sqrt{|g|}\,g^{\mu\nu}\partial_\nu f\bigr)
=e^{-D\sigma}\partial_\mu\!\bigl(e^{(D-2)\sigma}\partial_\mu f\bigr)
=e^{-2\sigma}\bigl(\partial^2 f+(D-2)\,\partial\sigma\cdot\partial f\bigr),
\]
where \(\partial^2=\delta^{\mu\nu}\partial_\mu\partial_\nu\) and \(\partial\sigma\cdot\partial f=\delta^{\mu\nu}(\partial_\mu\sigma)(\partial_\nu f)\).

## Derivation: conjugation by \(|g|^{1/4}\)
Define the half-density scalarization in coordinates:
\[
\psi := |g|^{1/4}\phi = e^{D\sigma/2}\phi,
\qquad\text{so}\qquad
\phi=e^{-D\sigma/2}\psi.
\]
Write \(f=e^{-D\sigma/2}\psi\). Then
\[
\partial_\mu f=e^{-D\sigma/2}\Bigl(\partial_\mu\psi-\frac{D}{2}(\partial_\mu\sigma)\psi\Bigr),
\]
and a short product-rule computation gives
\[
\partial^2 f
=e^{-D\sigma/2}\Bigl(
\partial^2\psi
-D\,\partial\sigma\cdot\partial\psi
-\frac{D}{2}(\partial^2\sigma)\psi
\frac{D^2}{4}(\partial\sigma)^2\psi
\Bigr).
\]
Also,
\[
\partial\sigma\cdot\partial f
=e^{-D\sigma/2}\Bigl(\partial\sigma\cdot\partial\psi-\frac{D}{2}(\partial\sigma)^2\psi\Bigr).
\]
Substitute into the conformal scalar Laplacian formula:
\[
\Delta_g f
=e^{-2\sigma}e^{-D\sigma/2}\Bigl(
\partial^2\psi
-2\,\partial\sigma\cdot\partial\psi
-\frac{D}{2}(\partial^2\sigma)\psi
\frac{D(4-D)}{4}(\partial\sigma)^2\psi
\Bigr).
\]
Multiplying by \(|g|^{1/4}=e^{D\sigma/2}\) yields the advertised expansion:
\[
\widetilde\Delta\psi
=e^{-2\sigma}\Bigl(
\partial^2\psi
-2\,\partial\sigma\cdot\partial\psi
-\frac{D}{2}(\partial^2\sigma)\psi
\frac{D(4-D)}{4}(\partial\sigma)^2\psi
\Bigr).
\]

**Witness:** the \((\partial\sigma)^2\) coefficient is \(D(4-D)/4\), so it vanishes at \(D=4\).

## SymPy verification (direct coordinate definition)
Command:
```bash
python3.12 - <<'PY'
import sympy as sp

def check_dim(D: int):
    coords = sp.symbols(f"x0:{D}")
    sigma = sp.Function("sigma")(*coords)
    psi = sp.Function("psi")(*coords)

    sqrtg = sp.exp(D * sigma)
    # In the conformal ansatz: g^{mu nu} = exp(-2 sigma) delta^{mu nu}
    # so sqrtg * g^{mu nu} = exp((D-2) sigma) delta^{mu nu}.
    def laplace_g(f):
        return (1 / sqrtg) * sum(
            sp.diff(sqrtg * sp.exp(-2 * sigma) * sp.diff(f, x), x) for x in coords
        )

    # Conjugated operator: |g|^{1/4} Δ_g |g|^{-1/4}
    f = sp.exp(-D * sigma / 2) * psi
    tilde = sp.exp(D * sigma / 2) * laplace_g(f)

    grad_sigma_dot_grad_psi = sum(sp.diff(sigma, x) * sp.diff(psi, x) for x in coords)
    grad_sigma_sq = sum(sp.diff(sigma, x) ** 2 for x in coords)
    d2_sigma = sum(sp.diff(sigma, x, x) for x in coords)
    d2_psi = sum(sp.diff(psi, x, x) for x in coords)

    rhs = sp.exp(-2 * sigma) * (
        d2_psi
        - 2 * grad_sigma_dot_grad_psi
        - (D / 2) * d2_sigma * psi
        + (D * (4 - D) / 4) * grad_sigma_sq * psi
    )

    diff = sp.simplify(sp.factor(tilde - rhs))
    return diff

for D in (3, 4):
    diff = check_dim(D)
    print(f"D={D}: diff == 0 ?", diff == 0)
    if diff != 0:
        print(diff)
PY
```

Observed output (2026-02-11):
```text
D=3: diff == 0 ? True
D=4: diff == 0 ? True
```

## Promotion note (what is safe to say later)
- The identity is an explicit coordinate check of \(|g|^{1/4}\Delta_g|g|^{-1/4}\) in the conformally flat metric class.
- It is not, on its own, evidence for a dimension-selection principle; keep the “\(D=4\) cancellation” phrasing as a worked simplification and include an explicit scope disclaimer.

