# Derivatives of the Diagonal Delta Kernel (Half-Densities, Lie Derivatives, Contact Terms)

Date: 2026-02-10

This note is a small dictionary entry for “derivatives of the delta” in the repo’s half-density kernel language.
It is motivated by two recurring themes:
1. **Weak/extremal equations**: integration by parts produces delta kernels and their derivatives.
2. **QFT counterterms/contact terms**: local differential operators correspond, at the kernel level, to diagonal distributions (delta kernels and their derivatives).

The key point is that for densities/half-densities there is a *connection-free* derivative notion: the **Lie derivative** along a vector field.

## 1. The identity kernel as a canonical bi-half-density distribution

Let \(M\) be a \(D\)-dimensional manifold and \(|\Omega|^{1/2}\) the half-density bundle.
The identity operator on half-densities has Schwartz kernel
\[
\delta_{\mathrm{diag}}(x,y)
=\delta^{(D)}(x-y)\,|dx|^{1/2}|dy|^{1/2},
\]
viewed as an element of \(\mathcal D'(M\times M;\;|\Omega|^{1/2}\boxtimes|\Omega|^{1/2})\).
This kernel is canonical: it does not require choosing a background measure.

## 2. Coordinate-free “derivative in x equals minus derivative in y”

The kernel \(\delta_{\mathrm{diag}}\) is invariant under the **diagonal action** of diffeomorphisms:
for any diffeomorphism \(\Phi:M\to M\),
\[
(\Phi\times\Phi)_*\,\delta_{\mathrm{diag}}=\delta_{\mathrm{diag}}.
\]
Let \(V\) be a vector field with flow \(\Phi_t\). Differentiating at \(t=0\) gives the Lie-derivative identity
\[
(\mathcal L_{V_x}+\mathcal L_{V_y})\,\delta_{\mathrm{diag}}=0,
\]
where \(V_x\) denotes the vector field acting on the \(x\)-factor of \(M\times M\), and similarly \(V_y\).
Equivalently,
\[
\boxed{\ \mathcal L_{V_x}\delta_{\mathrm{diag}}=-\mathcal L_{V_y}\delta_{\mathrm{diag}}.\ }
\]

This is the coordinate-free version of the familiar distribution identity
\[
\partial_{x^\mu}\delta^{(D)}(x-y)=-\partial_{y^\mu}\delta^{(D)}(x-y),
\]
obtained by taking \(V=\partial/\partial x^\mu\) in a chart.

## 3. Pairing interpretation (integration by parts)

Let \(\Psi(x,y)\) be a compactly supported test bi-half-density on \(M\times M\). Then
\[
\langle \delta_{\mathrm{diag}},\Psi\rangle = \int_M \Psi(x,x),
\]
and for any vector field \(V\),
\[
\langle \mathcal L_{V_x}\delta_{\mathrm{diag}},\Psi\rangle
=-\langle \delta_{\mathrm{diag}},\mathcal L_{V_x}\Psi\rangle
=-\int_M (\mathcal L_{V_x}\Psi)(x,x).
\]
Using \(\mathcal L_{V_x}\delta_{\mathrm{diag}}=-\mathcal L_{V_y}\delta_{\mathrm{diag}}\) amounts to the statement that “derivatives can be moved from the \(x\) slot to the \(y\) slot” when the distribution is supported on the diagonal.

This is exactly the kernel-level counterpart of the integration-by-parts step that produces \(\delta\) and \(\delta'\) terms in weak Euler–Lagrange analyses.

## 4. Point splitting and \u03b4' (link to S15)

In \(\mathbb R\), take the translation vector field \(V=\partial_x\). Then \(\mathcal L_V\delta=\delta'\).
The point-splitting/difference-quotient realization is
\[
\frac{\delta(x+\varepsilon)-\delta(x)}{\varepsilon}\xrightarrow[\varepsilon\to 0]{}\delta'(x),
\]
with the sign fixed by pairing \(\langle\delta',\varphi\rangle=-\varphi'(0)\).

This is the distributional analogue of the smooth subtraction toy model discussed in
`blackboards/2026-02-10-difference-quotients-counterterms-and-delta-prime.md`.

## 5. Why QFT counterterms live on the diagonal (and why half-densities help)

Local counterterms correspond to local differential operators added to the kinetic operator \(P\) (e.g. \(\delta Z\,\partial^2\), curvature couplings, etc.).
At the kernel level this means: modifications supported at \(x=y\), i.e. linear combinations of
\[
\delta_{\mathrm{diag}},\quad \mathcal L_{V_x}\delta_{\mathrm{diag}},\quad \mathcal L_{V_x}\mathcal L_{W_x}\delta_{\mathrm{diag}},\ \ldots
\]
and the corresponding expressions with \(x\leftrightarrow y\).

In the half-density kernel formalism, these objects are canonically meaningful without first fixing a background integration measure: “locality = diagonal support” is literally a statement about the support of distributional kernels.

