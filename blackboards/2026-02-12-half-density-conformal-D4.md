# Half-Density Conjugation vs Conformal Laplacian: Why D=4 Is Special

Date: 2026-02-12 (S72)

## Question
The half-density conjugated Laplacian (HD-D1.3) has a term \(D(4-D)(\partial\sigma)^2/4\) that vanishes at \(D=4\). Is this the same as the conformal Laplacian (Yamabe operator)? Does the cancellation survive beyond the conformal metric class?

## Setup
On \((M,g)\) with \(g_{\mu\nu}=e^{2\sigma}\delta_{\mu\nu}\), define:
- Half-density conjugation: \(\widetilde\Delta := |g|^{1/4}\Delta_g|g|^{-1/4}\)
- Yamabe operator: \(Y := -\Delta_g + \frac{D-2}{4(D-1)}R\)

## 1. Algebraic verification of the D(4-D)/4 coefficient

Set \(\phi = |g|^{-1/4}\psi = e^{-D\sigma/2}\psi\). Then:

\(\partial_\mu\phi = e^{-D\sigma/2}[\partial_\mu\psi - \frac{D}{2}\partial_\mu\sigma\cdot\psi]\)

\(\partial^2\phi = e^{-D\sigma/2}[\partial^2\psi - D\,\partial\sigma\cdot\partial\psi - \frac{D}{2}\partial^2\sigma\cdot\psi + \frac{D^2}{4}|\partial\sigma|^2\psi]\)

Using \(\Delta_g f = e^{-2\sigma}[\partial^2 f + (D-2)\partial\sigma\cdot\partial f]\):

\(\Delta_g\phi = e^{-2\sigma}e^{-D\sigma/2}[\partial^2\psi + (-D + D - 2)\partial\sigma\cdot\partial\psi + (-\frac{D}{2}\partial^2\sigma + \frac{D^2}{4}|\partial\sigma|^2 - \frac{D(D-2)}{2}|\partial\sigma|^2)\psi]\)

Coefficients:
- \(\partial\sigma\cdot\partial\psi\): \(-D + (D-2) = -2\) ✓
- \(\partial^2\sigma\): \(-D/2\) ✓
- \(|\partial\sigma|^2\): \(D^2/4 - D(D-2)/2 = D^2/4 - D^2/2 + D = D(4-D)/4\) ✓

Multiply by \(e^{D\sigma/2}\):

\(\widetilde\Delta\psi = e^{-2\sigma}[\partial^2\psi - 2\,\partial\sigma\cdot\partial\psi - \frac{D}{2}(\partial^2\sigma)\psi + \frac{D(4-D)}{4}|\partial\sigma|^2\psi]\)

**At \(D=4\), the \(|\partial\sigma|^2\) potential term vanishes identically.**

## 2. Comparison with the Yamabe operator

For the conformal metric, the Ricci scalar is:
\(R = -e^{-2\sigma}[2(D-1)\partial^2\sigma + (D-1)(D-2)|\partial\sigma|^2]\)

The Yamabe operator on a scalar \(\phi\):
\(Y\phi = e^{-2\sigma}[-\partial^2\phi - (D-2)\partial\sigma\cdot\partial\phi] + \frac{D-2}{4(D-1)}R\phi\)

The zeroth-order (potential) terms in the Yamabe operator are:
\(-\frac{D-2}{2}\partial^2\sigma - \frac{(D-2)^2}{4}|\partial\sigma|^2\) (times \(e^{-2\sigma}\))

Compare half-density potential:
\(-\frac{D}{2}\partial^2\sigma + \frac{D(4-D)}{4}|\partial\sigma|^2\) (times \(e^{-2\sigma}\))

**Differences:**
| Term | Half-density | Yamabe |
|------|-------------|--------|
| \(\partial\sigma\cdot\partial\psi\) coeff | \(-2\) | \(-(D-2)\) |
| \(\partial^2\sigma\) coeff | \(-D/2\) | \(-(D-2)/2\) |
| \(|\partial\sigma|^2\) coeff | \(D(4-D)/4\) | \(-(D-2)^2/4\) |
| Conformal weight | \(D/2\) | \((D-2)/2\) |

These operators differ in all terms. The conformal weights differ by 1 (half-density weight \(D/2\) vs Yamabe weight \((D-2)/2\)).

## 3. Can the half-density potential be written as \(\xi R\) for some \(\xi\)?

Matching the \(\partial^2\sigma\) coefficient: \(-D/2 = -2(D-1)\xi \Rightarrow \xi = D/(4(D-1))\)

Matching the \(|\partial\sigma|^2\) coefficient: \(D(4-D)/4 = -(D-1)(D-2)\xi\)

Substituting the first \(\xi\): \(-(D-1)(D-2)\cdot D/(4(D-1)) = -D(D-2)/4\)

Comparing: \(D(4-D)/4 \ne -D(D-2)/4\) unless \(4-D = -(D-2)\), i.e. \(4 = 2\). **Contradiction.**

Remainder: \(D(4-D)/4 - (-D(D-2)/4) = D(4-D+D-2)/4 = D/2\).

**The half-density potential cannot be written as \(\xi R\) for any single \(\xi\).** The mismatch is a term \(D|\partial\sigma|^2/2\) that is independent of dimension. The half-density conjugation defines a genuinely distinct operator.

## 4. General-metric formulation

For any metric, writing \(\omega := \frac{1}{4}\ln|g|\), the conjugated Laplacian is:

\(\widetilde\Delta\psi = \Delta_g\psi - 2\nabla\omega\cdot\nabla\psi + (|\nabla\omega|^2_g - \Delta_g\omega)\psi\)

The "potential" is \(V = |\nabla\omega|^2_g - \Delta_g\omega\).

For conformal metric: \(\omega = D\sigma/2\), and the interplay between the two terms produces the \(D(4-D)/4\) factor. In a general metric, \(\omega\) depends on all components of \(g_{\mu\nu}\), not just the trace, and the cancellation structure at \(D=4\) is specific to the conformal ansatz.

Explicitly: the cancellation at \(D=4\) arises because:
1. The half-density weight is \(D/2\), contributing \(D^2/4\) to the \(|\partial\sigma|^2\) coefficient via the chain rule.
2. The conformal correction \((D-2)\partial\sigma\cdot\partial f\) in \(\Delta_g\) contributes \(-D(D-2)/2\) to the same coefficient.
3. Sum: \(D^2/4 - D(D-2)/2 = D(4-D)/4\), which vanishes at \(D=4\).

In a general metric, the analog of step (2) involves all Christoffel symbols, not just the trace part proportional to \(\partial\sigma\). So the partial cancellation is specific to metrics where \(\Gamma^\mu_{\mu\nu} \propto \partial_\nu\sigma\), i.e., the conformal class.

## 5. Summary of findings

| Statement | Status |
|-----------|--------|
| HD-D1.3 formula verified (coefficient algebra) | ✓ Confirmed |
| \(D=4\) cancellation of \(|\partial\sigma|^2\) potential | ✓ Confirmed |
| Half-density conjugation = Yamabe operator | ✗ False (different weights, different operators) |
| Half-density potential = \(\xi R\) for some \(\xi\) | ✗ False (mismatch \(D/2\)) |
| \(D=4\) cancellation extends to general metrics | ✗ No (conformal-class-specific) |
| PA-H2.6a correctly labels this as an "independent filter" | ✓ Confirmed |

## 6. Implications for the hypothesis ladder

- PA-H2.6a is correctly positioned as an independent \(D=4\) filter, distinct from the monomial sieve PA-H2.5.
- The half-density conjugation is **not** equivalent to conformal coupling (\(\xi_{\rm conf} = (D-2)/(4(D-1))\)). The relevant "coupling" would be \(\xi_{\rm HD} = D/(4(D-1))\), which at \(D=4\) gives \(\xi_{\rm HD} = 1/3\) vs \(\xi_{\rm conf} = 1/6\).
- The operator simplicity criterion (no \((\partial\sigma)^2\) potential under conformal changes of scalarization gauge) is a well-defined mathematical property that singles out \(D=4\).
- This filter does **not** supply a length/area scale by itself — it is a constraint on which dimensions allow "simple" scalarization, not a scale generator.

## 7. Question for future study
Does the half-density weight \(D/2\) have a categorical or representation-theoretic characterization that distinguishes it from the Yamabe weight \((D-2)/2\)? The difference is 1, suggesting a possible connection to the shift between half-density bundles and spinor/density bundles. This is speculative and not load-bearing.
