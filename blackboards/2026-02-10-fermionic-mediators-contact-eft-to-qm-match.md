# EFT Contact Matching Witness: Constant Amplitude \(\leftrightarrow\) \(\delta\) Potential

Date: 2026-02-10  
Cycle: `S61`  
Status: blackboard note (non-citable).

Goal: record one explicit, bounded matching calculation supporting Theme L:
if an interaction reduces to local operators at low resolution, then its “potential” is naturally **contact/boundary-condition data** (delta kernels and derivatives), not a Yukawa-style long-range function.

## 1) Minimal Fourier-transform identity
In \(d\) spatial dimensions,
\[
\int \frac{d^d q}{(2\pi)^d}\,e^{i q\cdot r} = \delta^{(d)}(r).
\]
More generally, polynomial factors of \(q\) become derivatives acting on the delta:
\[
\int \frac{d^d q}{(2\pi)^d}\,q_i\,e^{i q\cdot r} = -i\,\partial_i\delta^{(d)}(r),
\qquad
\int \frac{d^d q}{(2\pi)^d}\,q^2\,e^{i q\cdot r} = -\nabla^2\delta^{(d)}(r).
\]
So:
**polynomials in momentum space correspond to derivatives of \(\delta\) in coordinate space.**

This is the only invariant content we need; overall prefactors depend on scattering/Born conventions.

## 2) Low-energy EFT amplitude expansion \(\Rightarrow\) contact potential
In a low-energy two-body EFT, the leading interaction between two species is a local operator.
At the level of a two-body amplitude, locality implies an analytic expansion in momentum transfer \(q\) (for small \(q\)):
\[
\mathcal A(q) = C_0 + C_2 q^2 + O(q^4),
\]
where \(C_0, C_2,\dots\) are Wilson coefficients (scheme/scale dependent in general).

Interpreting \(\mathcal A(q)\) as the Fourier transform of an effective coordinate-space kernel \(V(r)\) (Born-level language), we obtain
\[
V(r)\ \propto\ \int \frac{d^d q}{(2\pi)^d}\,e^{i q\cdot r}\,\mathcal A(q)
\ \propto\ 
C_0\,\delta^{(d)}(r)\;-\;C_2\,\nabla^2\delta^{(d)}(r)\;+\;\cdots.
\]

So:
- \(C_0\) produces a \(\delta\)-supported contact term.
- \(C_2\) produces a derivative contact correction (a distribution supported at the same point).

In the repo’s half-density language this is “diagonal support”: contact terms are delta kernels on the diagonal and their derivatives.

## 3) What this clarifies for the “fermionic mediator” theme
If a microscopic theory contains fermions, integrating out heavy degrees of freedom (or matching onto a nonrelativistic sector) can produce local operators.

The clean IR statement is then:
> whatever the UV story is, the low-resolution effective interaction is encoded by **contact operators**, i.e. point-supported kernels / boundary-condition data.

This is more precise than saying “spin–angle uncertainty limits range.” Range is controlled by what degrees of freedom remain dynamical at the scale of interest; locality at low energy becomes contact.

## 4) RG caveat (singular contact limits)
In some dimensions and channels, the naive \(\delta\) potential is singular and needs a renormalization condition; the coupling runs and may generate an RG-invariant scale and a bound state (2D delta witness in this repo).

So the correct strengthened slogan is:
> contact data may carry **running** (scheme-dependent) parameters; physically meaningful statements are phrased in terms of RG-invariant combinations.

## 5) Promotion candidate (for a future dependent note)
At low energy, locality implies the two-body amplitude admits an analytic expansion \(\mathcal A(q)=C_0+C_2 q^2+\cdots\). By inverse Fourier transform, this corresponds to a coordinate-space interaction supported at a point:
\[
V(r)\ \propto\ C_0\,\delta^{(d)}(r)\;-\;C_2\,\nabla^2\delta^{(d)}(r)\;+\;\cdots,
\]
up to overall Born-convention factors. Thus, when a would-be mediator effect reduces to local operators at low resolution, the natural “potential” language is **contact/boundary-condition data** (delta kernels and derivatives), with RG running when the contact limit is singular.

