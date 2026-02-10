# Half-Density Laplacian Under Conformal Rescaling: a Coordinate-Free Formula (and the D=4 Cancellation)

Date: 2026-02-10

This note strengthens the conformal computation behind `Heuristic H2.6a` by removing the “flat base” restriction.
We assume a **conformal rescaling**
\[
g = e^{2\sigma}\,\bar g
\]
on a \(D\)-dimensional manifold, and derive the transformation of the half-density conjugated Laplacian
\[
\widetilde\Delta_g := |g|^{1/4}\,\Delta_g\,|g|^{-1/4}.
\]

The main point: the coefficient of \(|\nabla\sigma|^2\) is universally \(D(4-D)/4\), hence cancels at \(D=4\) for any base metric \(\bar g\) (still within the conformal class).

## 1. Input: conformal transformation of the scalar Laplacian

For a scalar function \(f\), the Laplace–Beltrami operators satisfy the standard identity
\[
\Delta_g f
= e^{-2\sigma}\Big(\Delta_{\bar g} f + (D-2)\,\langle\nabla\sigma,\nabla f\rangle_{\bar g}\Big),
\]
where \(\nabla\) and the pairing are with respect to \(\bar g\).

## 2. Apply the conjugation to half-densities

Let \(\psi\) denote the coordinate representative of a half-density (so that \(\int d^Dx\,\psi_1\psi_2\) is the pairing).
Write
\[
|g|^{1/4} = e^{\frac{D}{2}\sigma}\,|\bar g|^{1/4},
\qquad
|g|^{-1/4} = e^{-\frac{D}{2}\sigma}\,|\bar g|^{-1/4}.
\]
Set \(u:=|\bar g|^{-1/4}\psi\) (a scalar function).
Then
\[
|g|^{-1/4}\psi = e^{-\frac{D}{2}\sigma}\,u.
\]

Compute using the product rule identities
\[
\Delta_{\bar g}(e^{-a\sigma}u)
=e^{-a\sigma}\Big(\Delta_{\bar g}u - 2a\,\langle\nabla\sigma,\nabla u\rangle_{\bar g}
 (a^2|\nabla\sigma|_{\bar g}^2 - a\,\Delta_{\bar g}\sigma)\,u\Big),
\]
and
\[
\langle\nabla\sigma,\nabla(e^{-a\sigma}u)\rangle_{\bar g}
=e^{-a\sigma}\Big(\langle\nabla\sigma,\nabla u\rangle_{\bar g} - a\,|\nabla\sigma|_{\bar g}^2\,u\Big).
\]

With \(a=D/2\), plug into the conformal Laplacian identity:
\[
\Delta_g(e^{-\frac{D}{2}\sigma}u)
=e^{-2\sigma}e^{-\frac{D}{2}\sigma}\Big(
\Delta_{\bar g}u
-2\,\langle\nabla\sigma,\nabla u\rangle_{\bar g}
-\frac{D}{2}(\Delta_{\bar g}\sigma)\,u
+\frac{D(4-D)}{4}\,|\nabla\sigma|_{\bar g}^2\,u
\Big).
\]
Now multiply by \(|g|^{1/4}=e^{\frac{D}{2}\sigma}|\bar g|^{1/4}\) to obtain:

\[
\boxed{
\widetilde\Delta_g\psi
= e^{-2\sigma}\,|\bar g|^{1/4}\Big(
\Delta_{\bar g}u
-2\,\langle\nabla\sigma,\nabla u\rangle_{\bar g}
-\frac{D}{2}(\Delta_{\bar g}\sigma)\,u
+\frac{D(4-D)}{4}\,|\nabla\sigma|_{\bar g}^2\,u
\Big),
\qquad u=|\bar g|^{-1/4}\psi.
}
\]

### D=4 cancellation (robust within conformal rescaling)
At \(D=4\), the \(|\nabla\sigma|^2\) term vanishes identically. This shows the cancellation observed in the conformal-to-flat computation is not a flat-space artifact: it holds for any base metric \(\bar g\), as long as the change is conformal.

## 3. What this does (and does not) imply

- This is **stronger than “conformal to flat”** but still restricted: it does not address general (non-conformal) metric variations.
- Interpreted as a heuristic filter: if one demands that scalarization-gauge changes modeled by conformal rescalings do not generate quadratic-gradient “potential terms” in the half-density kinetic operator, then \(D=4\) is singled out.
- This is independent of the H2.5 coupling-dimension sieve: it is about operator simplicity, not about supplying a \(\text{length}^{D/2}\) normalization scale.

Optional comparison remark (not used as an argument): the standard “conformal Laplacian” achieves conformal covariance for a different weight choice and includes curvature terms; our half-density operator is singled out instead by measure-free kernel composition and symmetry in the coordinate pairing.

