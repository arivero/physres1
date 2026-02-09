# Blackboard: Half-Density Scalarization Scale from RG Invariants

Date: 2026-02-09

This note is exploratory and **not citable**. It is meant to clarify bookkeeping and to generate promotion candidates for `papers/planck-area/main.md`.

## 1) What is “\(d\)” in the half-density weight?
Half-densities carry a \(\text{(length)}^{d/2}\) Jacobian weight because a volume element scales as \(|dx|\sim \text{length}^{d}\), hence \(|dx|^{1/2}\sim \text{length}^{d/2}\).

The subtlety is that \(d\) is the dimension of the manifold whose coordinates are being integrated over in the *composition law*.

Two common cases:
1. **Nonrelativistic time-slicing.** The kernel composes by integrating over intermediate *spatial* points \(x\in\mathbb R^{d}\), so \(d\) is the number of spatial dimensions.
2. **Covariant/proper-time kernels.** One can build kernels that compose by integrating over intermediate *spacetime* points \(x\in\mathbb R^{d}\), so \(d\) is the spacetime dimension.

For field theory, a fully literal “kernel on configuration space” lives on an infinite-dimensional space; in practice one uses discretizations/coarse-grainings where the local dimensional bookkeeping reduces to a finite-dimensional integral per cell. Any “\(d=4\) gives an area” claim must therefore state which composition variable is meant (spacetime points vs spatial points vs discretized cells).

## 2) Why a universal \(\text{length}^{d/2}\) constant appears (hypothesis-dependent)
The half-density formalism by itself is just a coordinate-invariant way to compose amplitudes.
The *need* for a universal constant appears when we add a representational constraint:

- If we demand **dimensionless scalar representatives** (H2.3) and a **background-free constant reference half-density** (H2.4), then the scalarization reference must supply the full \(\text{length}^{d/2}\) weight. That is where a universal dimensionful constant \(C\) enters.

H2.5 is one possible selection rule for where \(C\) is allowed to come from (integer powers / analyticity in couplings), but it is not the only scale-supplier mechanism.

## 3) RG invariants as a scale-supplier mechanism (alternative to H2.5)
Whenever a running coupling \(g(\mu)\) satisfies an RG equation
\[
\mu \frac{dg}{d\mu}=\beta(g),
\]
one can form an RG-invariant scale (in regimes where \(\beta\) is nonzero and integrable):
\[
\Lambda_\ast
 :=
\mu \exp\!\left(-\int^{g(\mu)} \frac{dg'}{\beta(g')}\right).
\]
This is the abstract “dimensional transmutation” construction: \(\Lambda_\ast\) has whatever dimension is needed to make the expression consistent, and different schemes shift \(\Lambda_\ast\) by a finite multiplicative factor.

Example: if \(\beta(g)=-b g^2+O(g^3)\), then
\[
\Lambda_\ast \sim \mu\, e^{-1/(b g(\mu))}\times(\text{finite scheme factor}).
\]

### How this supplies the half-density scalarization constant
If H2.3+H2.4 demand a universal constant \(C\) with \([C]=\text{length}^{d/2}\), then an RG-invariant length \(\ell_\ast:=\Lambda_\ast^{-1}\) provides one by
\[
C \sim \ell_\ast^{\,d/2}.
\]
This is a different branch than H2.5:
- H2.5 forbids fractional powers but allows analytic monomials in couplings,
- RG transmutation typically produces **non-analytic** dependence (exponentials), so it can generate a scale even if all input couplings are classically dimensionless.

## 4) The \(d=4\) specialization (why “area” is natural)
If the relevant composition variable is \(d=4\)-dimensional (e.g. a covariant kernel composing over spacetime points), then the required weight is \(\text{length}^{d/2}=\text{length}^2\).
So any universal scalarization constant demanded by H2.3+H2.4 is naturally an **area scale**.

Calling it “Planck area” requires an extra identification step:
- gravity-only sieve branch: the only universal coupling is \(G_4\) (dimension \(\text{length}^2\)),
- RG-invariant branch: the area may be \(\ell_\ast^2\) for some dynamically generated length \(\ell_\ast\).

## Promotion candidates (into `papers/planck-area/main.md`)
1. A labeled derivation stating the general RG-invariant scale formula \(\Lambda_\ast\) and the scheme-factor ambiguity.
2. A short “what is \(d\)?” bookkeeping paragraph to prevent mixing spatial/spacetime/configuration dimensions.
3. A one-sentence bridge: “Relaxing H2.5, RG invariants can supply the universal scalarization scale demanded by H2.3+H2.4.”

## Open questions
1. In which contexts is the relevant \(d\) unambiguously spacetime dimension (as opposed to spatial or discretized degrees of freedom)?
2. If multiple RG invariants exist, what selects *the* scalarization scale (or is it a choice/gauge)?
3. Can one show a model where the scalarization scale is operationally unavoidable (not just a convention) while remaining “background-free”?

