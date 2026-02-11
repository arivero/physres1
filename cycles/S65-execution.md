# S65 Execution: SymPy check for the conformal half-density Laplacian expansion

Date: 2026-02-11

## Work performed
- Derived the closed-form conformal expansion for \(\widetilde\Delta:=|g|^{1/4}\Delta_g|g|^{-1/4}\) acting on a scalar \(\psi\) when \(g_{\mu\nu}=e^{2\sigma}\delta_{\mu\nu}\).
- Verified the \(D=4\) case (and a cross-check at \(D=3\)) symbolically with SymPy by direct substitution into the coordinate definition of \(\Delta_g\).

## Artifacts produced
- `blackboards/2026-02-11-conformal-half-density-laplacian.md`

## Commands run (if any)
```bash
python3.12 - <<'PY'
import sympy as sp

def check_dim(D: int):
    coords = sp.symbols(f"x0:{D}")
    sigma = sp.Function("sigma")(*coords)
    psi = sp.Function("psi")(*coords)

    sqrtg = sp.exp(D * sigma)
    def laplace_g(f):
        return (1 / sqrtg) * sum(
            sp.diff(sqrtg * sp.exp(-2 * sigma) * sp.diff(f, x), x) for x in coords
        )

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
PY
```

## Result
- The conformal expansion used in `papers/half-density-qft/main.md` is reproduced cleanly, and the \(D(4-D)\) coefficient (hence the \(D=4\) cancellation of the \((\partial\sigma)^2\) term) is verified in the \(D=4\) symbolic check.

## Promotion candidate (copyable block)
In a conformally flat Euclidean background \(g_{\mu\nu}=e^{2\sigma(x)}\delta_{\mu\nu}\) (dimension \(D\)),
the scalar Laplacian is
\[
\Delta_g f = |g|^{-1/2}\partial_\mu\!\bigl(\sqrt{|g|}\,g^{\mu\nu}\partial_\nu f\bigr)
=e^{-2\sigma}\bigl(\partial^2 f+(D-2)\,\partial\sigma\cdot\partial f\bigr).
\]
For the half-density conjugation \(\widetilde\Delta:=|g|^{1/4}\Delta_g|g|^{-1/4}\) acting on \(\psi\),
one finds the explicit expansion
\[
\widetilde\Delta\psi
=e^{-2\sigma}\Bigl(
\partial^2\psi
-2\,\partial\sigma\cdot\partial\psi
-\frac{D}{2}(\partial^2\sigma)\,\psi
\;+\frac{D(4-D)}{4}(\partial\sigma)^2\,\psi
\Bigr),
\]
so the \((\partial\sigma)^2\) term cancels at \(D=4\) in this conformal ansatz.

## Spawned cycles
- `C97`: (optional) inline the “promotion candidate” block into `papers/half-density-qft/main.md` and remove remaining companion-note dependencies.
