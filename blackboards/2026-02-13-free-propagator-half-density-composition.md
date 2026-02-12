# Free-Propagator Composition Closes the Half-Density Normalization Loop

Date: 2026-02-13
Thread: Half-densities / Planck-area (Open Problem #1)
Parent: S82

## 1. Setup

The free quantum propagator on \(\mathbb{R}^d\) is

$$
K(x,z;t) = \left(\frac{m}{2\pi i\hbar t}\right)^{d/2}
\exp\!\left(\frac{im|x-z|^2}{2\hbar t}\right).
$$

As a bi-half-density (PA-H2.1):

$$
\mathbf{K}(x,z;t) = k(x,z;t)\,|dx|^{1/2}\,|dz|^{1/2},
$$

where \(k(x,z;t) = \left(\frac{m}{2\pi i\hbar t}\right)^{d/2}\exp\!\left(\frac{im|x-z|^2}{2\hbar t}\right)\) is the scalar coefficient.

## 2. Composition as half-density pairing

The composition law is:

$$
\mathbf{K}(x,z;t_1+t_2) = \int_{\mathbb{R}^d} \mathbf{K}(x,y;t_1)\,\mathbf{K}(y,z;t_2).
$$

Expanding the half-density product:

$$
\mathbf{K}(x,y;t_1)\,\mathbf{K}(y,z;t_2)
= k(x,y;t_1)\,k(y,z;t_2)\;|dx|^{1/2}\underbrace{|dy|^{1/2}\,|dy|^{1/2}}_{=\,|dy|}\,|dz|^{1/2}.
$$

The two half-density factors in \(y\) pair to produce a density \(|dy|\), which is exactly the coordinate-invariant integration measure. This is the entire mechanism of half-density composition: no background measure choice is needed.

The result inherits \(|dx|^{1/2}\,|dz|^{1/2}\) from the outer variables — the composed kernel is again a bi-half-density.

## 3. The Gaussian integral: verifying the d/2 exponent

We must show that the scalar coefficient of the composed bi-half-density equals \(k(x,z;t_1+t_2)\).

**Quadratic form in \(y\).** The exponent of the integrand is:

$$
\frac{im}{2\hbar}\left(\frac{|x-y|^2}{t_1} + \frac{|y-z|^2}{t_2}\right)
= \frac{im}{2\hbar}\left(\frac{t_1+t_2}{t_1 t_2}|y|^2 - 2\!\left(\frac{x}{t_1}+\frac{z}{t_2}\right)\!\cdot y + \frac{|x|^2}{t_1}+\frac{|z|^2}{t_2}\right).
$$

**Completing the square.** The minimum is at

$$
y_0 = \frac{t_2 x + t_1 z}{t_1+t_2}.
$$

Substituting \(y = y_0 + u\):

$$
\text{exponent} = \frac{im}{2\hbar}\frac{|x-z|^2}{t_1+t_2} + \frac{im}{2\hbar}\frac{t_1+t_2}{t_1 t_2}|u|^2.
$$

**\(d\)-dimensional Gaussian integral over \(u\):**

$$
\int_{\mathbb{R}^d} \exp\!\left(\frac{im(t_1+t_2)}{2\hbar\,t_1 t_2}|u|^2\right) d^d u
= \left(\frac{2\pi i\hbar\,t_1 t_2}{m(t_1+t_2)}\right)^{d/2}.
$$

**Assembling the prefactors:**

$$
\underbrace{\left(\frac{m}{2\pi i\hbar t_1}\right)^{d/2}}_{\text{from }K_1}
\;\cdot\;
\underbrace{\left(\frac{m}{2\pi i\hbar t_2}\right)^{d/2}}_{\text{from }K_2}
\;\cdot\;
\underbrace{\left(\frac{2\pi i\hbar\,t_1 t_2}{m(t_1+t_2)}\right)^{d/2}}_{\text{Gaussian volume}}
= \left(\frac{m}{2\pi i\hbar(t_1+t_2)}\right)^{d/2}.
$$

This is exactly the prefactor of \(K(x,z;t_1+t_2)\). The semigroup property holds, and the \(d/2\) exponent is the structural pivot: it enters three times (twice from the kernels, once from the Gaussian integral), and the cancellation is exact only because all three carry the same \(d/2\).

## 4. Why d/2? The half-density origin

**Claim.** The \(d/2\) exponent in \(\left(\frac{m}{2\pi i\hbar t}\right)^{d/2}\) is the bi-half-density weight, not a numerical coincidence.

**Argument from Van Vleck (PA-D1.4).** The free-particle action is \(S_{\mathrm{cl}}(x,z;t) = \frac{m|x-z|^2}{2t}\). The mixed Hessian is:

$$
-\frac{\partial^2 S_{\mathrm{cl}}}{\partial x^i\,\partial z^j} = \frac{m}{t}\,\delta_{ij}.
$$

Its determinant is \((m/t)^d\), and the square root is \((m/t)^{d/2}\). This is the Van Vleck prefactor, which transforms as a bi-half-density (PA-D1.4). The remaining \((2\pi i\hbar)^{-d/2}\) comes from the stationary-phase normalization of a \(d\)-dimensional oscillatory integral.

**Argument from near-diagonal scaling (PA-D1.2a).** Set \(\varepsilon = \hbar t/m\) (diffusion length squared). Then the prefactor is proportional to \(\varepsilon^{-d/2}\), exactly as in PA-D1.2a where the near-diagonal coordinate change \(y = x + \varepsilon v\) produces \(|dy|^{1/2} = \varepsilon^{d/2}|dv|^{1/2}\), and the scalar coefficient must absorb \(\varepsilon^{-d/2}\) to remain finite.

## 5. Scalarization forces a length^{d/2} constant

Now suppose we scalarize: choose a constant reference half-density (PA-H2.2 + PA-H2.4)

$$
\sigma_\ast = L_\ast^{-d/2}\,|dx|^{1/2}
$$

so that the scalar representative of the kernel is

$$
f(x,z;t) := \frac{k(x,z;t)}{\sigma_\ast(x)\,\sigma_\ast(z)}
= L_\ast^{d}\left(\frac{m}{2\pi i\hbar t}\right)^{d/2}\exp\!\left(\frac{im|x-z|^2}{2\hbar t}\right).
$$

**Dimensional analysis (in \(\hbar = c = 1\) units):**

- \([m/t] = \text{mass}/\text{time} = \text{length}^{-2}\).
- \([(m/t)^{d/2}] = \text{length}^{-d}\).
- For \(f\) to be dimensionless (PA-H2.3), need \([L_\ast^d] = \text{length}^d\), i.e., \([L_\ast] = \text{length}\).

The scalarization constant has dimension \(L_\ast^{d/2} = \text{length}^{d/2}\).

**In \(d = 4\):** this is \(L_\ast^2 = \text{area}\). If the only available coupling is \(G_4\) with \([G_4] = \text{length}^2\), then \(L_\ast^2 = G_4 \propto \ell_P^2\) (Planck area), recovering PA-D1.3.

## 6. Summary: what the computation proves

| Statement | Status | Mechanism |
|-----------|--------|-----------|
| Composition is coordinate-invariant | Proved (PA-D1.1) | \(|dy|^{1/2} \times |dy|^{1/2} = |dy|\) pairs to a density |
| d/2 exponent in prefactor = half-density weight | Proved | Van Vleck determinant (PA-D1.4) = \(\det(m/t \cdot \delta_{ij})^{1/2} = (m/t)^{d/2}\) |
| Semigroup property requires d/2 | Proved (this note) | Cancellation of three d/2 factors (two from kernels, one from Gaussian) is exact only for this exponent |
| Scalarization forces length^{d/2} | Proved (PA-P1.2 + this note) | Dimensional analysis of \(f = k / (\sigma_\ast \sigma_\ast)\) |
| d=4 gives area scale | Conditional on PA-D1.3 | Gravity-only sieve: \(d/2 = d-2\) iff \(d = 4\) |

**What this does NOT prove:** that \(L_\ast\) must be the Planck length specifically. That requires the universality hypotheses PA-H2.4–H2.5 plus the gravity-only sieve PA-D1.3. This computation proves the structural necessity of a length^{d/2} constant for scalarization, and shows concretely how the d/2 exponent enters kernel composition.

## 7. Tangent-groupoid connection (for promotion)

In Connes' tangent-groupoid picture, the parameter \(\varepsilon \to 0\) deforms the groupoid from the pair groupoid \(M \times M\) (at \(\varepsilon > 0\)) to the tangent bundle \(TM\) (at \(\varepsilon = 0\)). The rescaled kernel is:

$$
k_\varepsilon(x,v) := \varepsilon^{d/2} \cdot k(x, x + \varepsilon v; \varepsilon^2 T)
$$

where \(T\) is a fixed reference time. For the free propagator:

$$
k_\varepsilon(x,v) = \varepsilon^{d/2}\left(\frac{m}{2\pi i\hbar \varepsilon^2 T}\right)^{d/2}
\exp\!\left(\frac{im|v|^2}{2\hbar T}\right)
= \left(\frac{m}{2\pi i\hbar T}\right)^{d/2}
\exp\!\left(\frac{im|v|^2}{2\hbar T}\right).
$$

The \(\varepsilon^{d/2}\) rescaling factor is precisely the half-density Jacobian from \(|dy|^{1/2} = \varepsilon^{d/2}|dv|^{1/2}\) (PA-D1.2a). In the limit, the rescaled kernel is a function on \(TM\) — the symbol of the quantum operator — and the passage from kernel to symbol absorbs the half-density weight.

This confirms: the tangent-groupoid rescaling is a *change of half-density trivialization*, not an arbitrary normalization convention. The d/2 exponent is forced by the half-density bundle structure.
