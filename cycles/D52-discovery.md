# D52 Discovery: Does d/2 extend to non-integer dimensions?

Date: 2026-02-14
Parent: path-integral-normalization paper Open Question 1

## Novelty target
Determine if the d/2 normalization exponent extends to non-integer d
(dimensional regularization, fractal geometries).

## Key computation
The Gaussian integral formula:
$$\int_{\mathbb{R}^d} e^{-az^2} d^dz = \left(\frac{\pi}{a}\right)^{d/2}$$
is an **analytic function of d** (defined by continuation from integer d).

The composition integral:
$$\int d^d z \, K(x,z;t_1) K(z,y;t_2) = K(x,y;t_1+t_2)$$
with $K = (m/2\pi\hbar t)^{d/2} \exp(im(x-y)^2/(2\hbar t))$
holds for any d (integer or not) because both sides are analytic in d.

## Verdict
**YES**: d/2 extends to non-integer d without modification.

The composition semigroup works analytically in d. In dimensional regularization
(d = 4-2ε), the kernel normalization $(m/2\pi\hbar t)^{2-\varepsilon}$ composes
correctly. UV divergences appear as poles at ε→0 in loop integrals, not from
composition failure.

**Subtlety**: For fractal geometries (non-integer Hausdorff dimension), the
Gaussian integral formula may not hold (the Lebesgue measure is not well-defined).
The extension to fractals requires spectral geometry (heat kernel on fractals,
where d/2 is replaced by d_s/2 with d_s the spectral dimension).

## Success criteria met
1. ✓ d/2 extends analytically to non-integer d (dimensional regularization)
2. ✓ Fractal case identified as genuinely distinct (spectral dimension replaces d)
