# Blackboard: Delta as a Bi-Half-Density Kernel (Identity) and Near-Diagonal Scaling

Date: 2026-02-10

## Purpose
We treat kernels as **bi-half-densities** (not scalar functions) and ask:
what is the coordinate-free meaning of the “delta kernel” and what does it teach us about the ubiquitous \(\varepsilon^{-d/2}\) normalization factor?

This note is meant to support the half-density priority thread (`paper/main.md` + `papers/planck-area/main.md`), and to clarify the “delta” objects that appear in the patched conversation as heuristic “\(\delta(\delta S)\)” / “square-root delta” language. No bibliography claims are made here.

Throughout, \(d\) is the dimension of the manifold being integrated over in the composition law (configuration-space dimension in the usual finite-dimensional kernels).

## 1. Half-densities and kernels (coordinate free)
Let \(M\) be a \(d\)-dimensional manifold and let \(|\Omega|^{1/2}\) denote the half-density line bundle.

- A (compactly supported) half-density is a section \(\psi\in\Gamma_c(|\Omega|^{1/2})\).
- A density is a section of \(|\Omega|\), which integrates canonically over \(M\).
- A kernel for an operator \(K:\Gamma_c(|\Omega|^{1/2})\to \Gamma(|\Omega|^{1/2})\) is naturally a **bi-half-density** distribution:
  \[
  \mathsf K\in \mathcal D'(M\times M;\;|\Omega|^{1/2}\boxtimes|\Omega|^{1/2}).
  \]

The action is
\[
(K\psi)(x)=\int_M \mathsf K(x,y)\,\psi(y),
\]
where the product \(\mathsf K(x,y)\psi(y)\) is a density in \(y\) valued in a half-density at \(x\), so the \(y\)-integral is coordinate invariant without choosing a background measure.

## 2. The identity kernel is the “delta” bi-half-density
The identity operator \(\mathrm{Id}:\Gamma_c(|\Omega|^{1/2})\to\Gamma(|\Omega|^{1/2})\) has a canonical Schwartz kernel \(\mathsf K_{\mathrm{Id}}\).
It is defined abstractly by the property
\[
\int_M \mathsf K_{\mathrm{Id}}(x,y)\,\psi(y)=\psi(x)
\qquad\text{for all }\psi\in\Gamma_c(|\Omega|^{1/2}).
\]

In a local coordinate chart \(x\mapsto (x^1,\dots,x^d)\), write a half-density as
\(\psi(y)=f(y)\,|dy|^{1/2}\).
Then the identity kernel has the familiar coordinate expression
\[
\mathsf K_{\mathrm{Id}}(x,y)=\delta^{(d)}(x-y)\,|dx|^{1/2}\,|dy|^{1/2},
\]
because
\[
\int \delta^{(d)}(x-y)\,|dx|^{1/2}\,|dy|^{1/2}\,f(y)\,|dy|^{1/2}
=|dx|^{1/2}\int \delta^{(d)}(x-y)\,f(y)\,|dy|
=f(x)\,|dx|^{1/2}.
\]

Key point: \(\mathsf K_{\mathrm{Id}}\) is canonical (coordinate free) as a bi-half-density distribution.
What is *not* canonical is any attempt to treat \(\delta^{(d)}(x-y)\) as a scalar function without specifying what it is paired against.

## 3. Near-diagonal scaling produces \(\varepsilon^{-d/2}\)
Write a near-diagonal coordinate \(y=x+\varepsilon v\), so \(|dy|=\varepsilon^d|dv|\) and \(|dy|^{1/2}=\varepsilon^{d/2}|dv|^{1/2}\).
Using \(\delta^{(d)}(x-y)=\delta^{(d)}(\varepsilon v)=\varepsilon^{-d}\delta^{(d)}(v)\), we find
\[
\delta^{(d)}(x-y)\,|dy|^{1/2}
=\varepsilon^{-d}\delta^{(d)}(v)\,\varepsilon^{d/2}|dv|^{1/2}
=\varepsilon^{-d/2}\,\delta^{(d)}(v)\,|dv|^{1/2}.
\]

So the identity kernel already contains the **universal \(\varepsilon^{-d/2}\)** scaling once one treats it as a half-density object.
This is the same exponent that appears in:
1. the short-time kernel prefactor \(t^{-d/2}\) from semigroup closure,
2. the tangent-groupoid style \(\varepsilon\to 0\) scaling in near-diagonal limits.

## 4. Scalarization gauge: why a \(\text{length}^{d/2}\) scale appears
Choosing a nowhere-zero reference half-density \(\sigma_\ast\) trivializes \(|\Omega|^{1/2}\):
every half-density can be written \(\psi=f\,\sigma_\ast\) for a scalar \(f\).
Then kernels can be written as
\[
\mathsf K(x,y)=k(x,y)\,\sigma_\ast(x)\,\sigma_\ast(y),
\]
where \(k\) is now a scalar distribution.

If in coordinates we take
\[
\sigma_\ast(x)=L_\ast^{-d/2}\,|dx|^{1/2},
\]
then \(\sigma_\ast\) is dimensionless (all the \(\text{length}^{d/2}\) weight sits in the constant \(L_\ast^{d/2}\)).
In this scalarization, the identity kernel becomes
\[
\mathsf K_{\mathrm{Id}}(x,y)
=\delta^{(d)}(x-y)\,|dx|^{1/2}|dy|^{1/2}
=\big(L_\ast^{d}\delta^{(d)}(x-y)\big)\,\sigma_\ast(x)\sigma_\ast(y).
\]

So the scalar representative of the identity kernel is the **dimensionless** distribution
\[
k_{\mathrm{Id}}(x,y)=L_\ast^{d}\,\delta^{(d)}(x-y).
\]

Interpretation: insisting that scalar representatives be dimensionless forces a universal \(\text{length}^{d/2}\) constant \(L_\ast^{d/2}\) into the scalarization choice \(\sigma_\ast\).
Half-densities avoid this choice; scalarization reintroduces it.

## 5. Contact interaction as a rank-one half-density kernel (“square-root delta” viewpoint)
In Dirac notation, the contact interaction at a point is naturally a rank-one operator,
\[
V = g\,|0\rangle\langle 0|,
\]
so the Lippmann–Schwinger “loop integral at the origin” is literally
\(\langle 0 | (E-H_0+i0)^{-1} |0\rangle\).

In coordinate language (and in the half-density kernel calculus), this rank-one structure corresponds to a kernel supported at the *single point* \((0,0)\in M\times M\):
\[
\mathsf V(x,y)=g\;\delta^{(d)}(x)\,\delta^{(d)}(y)\,|dx|^{1/2}|dy|^{1/2}.
\]
This makes precise one safe meaning of “\(\delta^{1/2}\)” language:
the factors \(\delta^{(d)}(x)|dx|^{1/2}\) and \(\delta^{(d)}(y)|dy|^{1/2}\) are distributional half-densities supported at the point, and the contact interaction is their (tensor) product.

Under near-diagonal scaling, each half-density delta factor scales as \(\varepsilon^{-d/2}\), matching the same exponent that controls short-time kernel normalization. The coupling \(g\) retains its usual engineering dimension \([g]=\text{length}^{d-2}\) (in \(\hbar=c=1\) units), so the half-density view clarifies geometry/normalization without changing the standard dimensional analysis.

## 6. Promotion candidates
1. **For `papers/planck-area/main.md`:** use the identity kernel as the cleanest witness that the \(\varepsilon^{-d/2}\) scaling is intrinsic to half-densities, and that the “universal scale” problem is exactly the problem of choosing a dimensionless trivialization \(\sigma_\ast\sim L_\ast^{-d/2}|dx|^{1/2}\).
2. **For `paper/main.md` (optional, very short):** one sentence clarifying that the \(t^{-d/2}\) prefactor and the \(\varepsilon^{-d/2}\) near-diagonal scaling are already encoded in the half-density identity kernel \(\delta^{(d)}(x-y)|dx|^{1/2}|dy|^{1/2}\), independent of any background measure choice.
3. **For `papers/rg-fundamental/main.md` (optional):** a bridge remark that contact interactions are “delta kernels at coincident points”, and that half-density scalarization conventions can be viewed as a choice of measure against which the delta is defined (separating geometric normalization from RG running).
