# Half-Density Kernels: Composition Fixes the \(t^{-d/2}\) Normalization

Status: internal note (non-citable). Goal: isolate a self-contained computation showing that half-density compatibility plus semigroup composition fixes the familiar short-time normalization exponent \(d/2\).

## Setup (Flat space, translation invariance)
Let \(M=\mathbb R^d\). Write the propagator kernel as a **bi-half-density**
\[
K_t(x,y)=k_t(x,y)\,|dx|^{1/2}|dy|^{1/2}.
\]
Composition is the canonical pairing in the intermediate variable:
\[
K_{t+s}(x,z)=\int_{\mathbb R^d} K_t(x,y)\,K_s(y,z).
\]
In scalar coordinates this reads
\[
k_{t+s}(x,z)=\int_{\mathbb R^d} k_t(x,y)\,k_s(y,z)\,dy,
\]
because the half-density factors multiply to \(|dy|\).

Assume translation invariance: \(k_t(x,y)=\kappa_t(x-y)\).

## Gaussian ansatz and semigroup constraint
The free-particle phase suggests the quadratic form
\[
\kappa_t(u)=A(t)\,\exp\!\left(\frac{i}{\hbar}\,B(t)\,\|u\|^2\right),
\]
with scalar functions \(A(t)\), \(B(t)\) (possibly complex, with the usual \(i0\) prescription understood).

The semigroup relation becomes a convolution:
\[
\kappa_{t+s} = \kappa_t * \kappa_s.
\]
Compute \((\kappa_t * \kappa_s)(u)\) by completing the square:
\[
(\kappa_t * \kappa_s)(u)
=A(t)A(s)\int_{\mathbb R^d}
\exp\!\left(\frac{i}{\hbar}\left[B(t)\|u-v\|^2+B(s)\|v\|^2\right]\right)\,dv.
\]
Expand the quadratic form:
\[
B(t)\|u-v\|^2+B(s)\|v\|^2
=\left(B(t)+B(s)\right)\left\|v-\frac{B(t)}{B(t)+B(s)}u\right\|^2
\; \frac{B(t)B(s)}{B(t)+B(s)}\|u\|^2.
\]
Thus the convolution is again Gaussian:
\[
(\kappa_t * \kappa_s)(u)
=A(t)A(s)\,I_d\!\left(\frac{B(t)+B(s)}{\hbar}\right)\;
\exp\!\left(\frac{i}{\hbar}\,\frac{B(t)B(s)}{B(t)+B(s)}\|u\|^2\right),
\]
where \(I_d(\cdot)\) is the standard Fresnel/Gaussian integral factor
\[
I_d(\lambda)\propto \lambda^{-d/2}
\quad\text{(up to a phase independent of \(u\))}.
\]
Semigroup closure therefore forces the **Riccati-like** constraint on \(B\):
\[
B(t+s)=\frac{B(t)B(s)}{B(t)+B(s)}
\quad\Longleftrightarrow\quad
\frac{1}{B(t+s)}=\frac{1}{B(t)}+\frac{1}{B(s)}.
\]
So \(1/B(t)\) is additive: \(1/B(t)=c\,t\). Writing \(c=m/2\) yields the familiar
\[
B(t)=\frac{m}{2t}.
\]

Now the amplitude prefactor must satisfy
\[
A(t+s)=A(t)A(s)\,\big(B(t)+B(s)\big)^{-d/2}\times(\text{phase}).
\]
Using \(B(t)=m/(2t)\) gives \(B(t)+B(s)=\frac{m}{2}\frac{t+s}{ts}\), hence
\[
\big(B(t)+B(s)\big)^{-d/2}
\propto (t+s)^{-d/2}\,t^{d/2}\,s^{d/2}.
\]
The unique (up to a constant phase) solution is therefore
\[
A(t)\propto t^{-d/2}.
\]

## Takeaway for the half-density theme
The exponent \(d/2\) in the short-time normalization is not arbitrary: it is the one forced by:
1. treating kernels as half-densities so composition is coordinate-free, and
2. requiring exact semigroup composition (refinement compatibility) for the local Gaussian form.

This provides a concrete witness for the slogan:
**“half-density scaling \(= d/2\) is the square-root of the density Jacobian, and it is what makes composition stable under refinement.”**

