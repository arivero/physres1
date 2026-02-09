# Blackboard: Scalarization Gauge Running and Wavefunction Renormalization

Date: 2026-02-10

## Purpose
We have two (compatible) stories in the repo:
1. **Half-densities first:** kernels are intrinsically bi-half-densities so composition is coordinate invariant without choosing a background measure.
2. **RG is compatibility:** when refinement/coarse-graining is used to *define* a theory, intermediate objects depend on a scale \(\mu\) and the RG is the consistency law.

This note explores a possible bridge: **scale dependence of scalar representatives** (after choosing a scalarization \(\sigma_\ast\)) looks formally like **wavefunction renormalization** (a \(Z(\mu)\) factor) and its anomalous dimension.

This is exploratory; promotion candidates are listed explicitly.

## Geometric baseline: scalarization is a choice of \(\sigma_\ast\)
Let \(M\) be a \(d\)-dimensional manifold and let \(\sigma_\ast\) be a nowhere-vanishing reference half-density (\(\rho_\ast=\sigma_\ast^2\) is a positive density).

Any half-density state \(\psi\) can be written as
\[
\psi = f\,\sigma_\ast,
\]
so scalar representatives live in \(L^2(M,\rho_\ast)\) with norm
\(\|\psi\|^2 = \int_M |f|^2\,\rho_\ast\).

Changing scalarization \(\sigma_\ast\mapsto \sigma_\ast' = r(x)\sigma_\ast\) gives
\[
f' = r^{-1} f,\qquad \rho_\ast' = r^2\rho_\ast,
\]
which is a unitary equivalence (pure representation choice).

For a bi-half-density kernel \(K_t(x,y)\) (propagator type),
\[
K_t(x,y) = k_t(x,y)\,\sigma_\ast(x)\sigma_\ast(y),
\]
composition becomes the scalar integral
\[
k_{t+s}(x,z)=\int_M k_t(x,y)\,k_s(y,z)\,\rho_\ast(y).
\]
Under \(\sigma_\ast\to r\sigma_\ast\), one has \(k_t\to k_t' = r(x)^{-1}k_t r(y)^{-1}\) and \(\rho_\ast\to r^2\rho_\ast\), so composition is invariant.

## Scale dependence: \(\sigma_\ast(\mu)\) as a “renormalization convention”
In the Planck-area draft we already allow the possibility that scalarization may be **scale dependent**:
\(\sigma_\ast=\sigma_\ast(\mu)\) with \(\mu\) a renormalization scale.

Even if \(\sigma_\ast(\mu)\) is only a global factor (no \(x\)-dependence),
\[
\sigma_\ast(\mu)=c(\mu)\,\sigma_0,
\]
the scalar representative \(f(\mu)=\psi/\sigma_\ast(\mu)\) acquires a \(\mu\)-dependence:
\[
f(\mu)=c(\mu)^{-1} f_0.
\]
This is mathematically identical to the way a field-strength renormalization factor acts:
\[
f_R(\mu)=Z(\mu)^{-1/2} f_B,\qquad Z(\mu)=c(\mu)^2.
\]

So a **running scalarization convention** can be reparameterized as a **running \(Z(\mu)\)**, and vice versa.

### Anomalous dimension as “running of scalarization”
Define
\[
\gamma(\mu):=\frac12\,\mu\frac{d}{d\mu}\ln Z(\mu)=\mu\frac{d}{d\mu}\ln c(\mu).
\]
Then
\[
\mu\frac{d}{d\mu}\ln f_R(\mu)=-\gamma(\mu).
\]

This does *not* make \(\sigma_\ast(\mu)\) physical; it suggests a bookkeeping identification:
some of what is called “wavefunction renormalization” can be viewed as the scale dependence of the chosen scalarization map from intrinsic half-density objects to scalars.

## Caution: geometric density weight vs anomalous scaling
Half-density transformation under *coordinate change* is fixed geometrically (square-root Jacobian).
Anomalous dimensions are about *scale transformations* under RG in interacting theories.

They are different mechanisms. The safe link is:
RG may force **scale dependence** in how we compare scalar representatives across resolutions, but the intrinsic half-density composition remains measure-free.

## Mini-model (toy-level) of where a \(Z(\mu)\) factor could enter
Suppose a coarse-graining step changes the normalization of scalar states by a factor \(Z(\mu)\) (e.g. by demanding a canonical kinetic term at each scale).
Then the intrinsic half-density \(\psi\) is unchanged, but the scalar representative used at scale \(\mu\) is rescaled:
\[
f(\mu)=Z(\mu)^{-1/2} f(\mu_0).
\]

Kernel language: choosing \(\sigma_\ast(\mu)\) amounts to writing
\[
K_t = k_t^{(\mu)}\,\sigma_\ast(\mu)\otimes\sigma_\ast(\mu),
\]
so
\[
k_t^{(\mu)} = Z(\mu)^{-1}\,k_t^{(\mu_0)}
\quad\text{if }\sigma_\ast(\mu)=Z(\mu)^{1/2}\sigma_\ast(\mu_0).
\]
This is exactly the “field renormalization sits at external legs” pattern in perturbation theory.

Again: this is a representation statement, not an observable; the observable content should be in RG-invariant combinations.

## Promotion candidates (if this stabilizes)
1. **Short bridge sentence (Planck-area draft):**
   “Allowing \(\sigma_\ast\) to depend on the renormalization scale is equivalent, in scalar representatives, to a wavefunction renormalization factor \(Z(\mu)\); physically meaningful statements must be phrased in terms of RG-invariant combinations.”
2. **Guardrail sentence (avoid category errors):**
   “Do not confuse the geometric half-density weight (square-root Jacobian under coordinate change) with anomalous scaling dimensions (RG).”

## Open questions
1. What operational condition would *force* a scale-dependent scalarization convention in an explicit interacting model (beyond the abstract possibility)?
2. Can we exhibit a toy model where keeping a composition law *and* a normalization condition simultaneously forces \(Z(\mu)\) running?
3. If yes, does this help (or obstruct) the “universal area scale” hypothesis in \(D=4\)?

