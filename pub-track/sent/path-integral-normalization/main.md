---
title: "Path-Integral Normalization: The d/2 Exponent as Composition Compatibility Datum"
author: "A. Rivero and A.I.Scaffold"
date: "2026"
abstract: |
  The prefactor \((m/2\pi\hbar t)^{d/2}\) in the free-particle path-integral kernel is often derived from heuristic Gaussian-integral arguments without structural justification. This note proves that the \(d/2\) exponent is **forced by composition compatibility**: the requirement that the path integral obey the semigroup law, combined with translation homogeneity and dimensional homogeneity, uniquely selects this normalization. The same exponent governs path-integral temporal composition, heat-kernel diffusion, Van Vleck determinants in curved space, and renormalization thresholds for point interactions—these are not independent coincidences but manifestations of a single principle. The \(d/2\) exponent is the scalar representative of half-density quantization, making the composition integral coordinate-independent. This work connects to the Refinement Compatibility Principle (RCP) via the partition channel: temporal composition forces structural constants, and \(d/2\) is one such compatibility datum.
---

# 1. Introduction

The prefactor \((m/2\pi\hbar t)^{d/2}\) in the free-particle path-integral kernel appears so ubiquitously that it is often treated as a convention or derived from heuristic "Gaussian integral" arguments without deeper structural justification. This note argues that the \(d/2\) exponent is **forced by composition compatibility**: the requirement that the path integral obey the semigroup law \(K(x,z;t_1+t_2) = \int dy\, K(x,y;t_1)K(y,z;t_2)\) under dimensional homogeneity uniquely selects the \(d/2\) normalization.

The same exponent governs four apparently distinct settings:
1. **Path-integral temporal composition** (Section 2): Free kernel \(K(x,y;t) \sim (m/2\pi\hbar t)^{d/2}\exp(iS_0/\hbar)\).
2. **Heat-kernel diffusion** (Section 5): Euclidean kernel \(H(x,y;\tau) \sim (m/2\pi\hbar\tau)^{d/2}\exp(-m|x-y|^2/2\hbar\tau)\).
3. **Van Vleck determinant in curved space** (Section 4): Prefactor \((m/2\pi\hbar t)^{d/2}\Delta^{1/2}(x,y)\) with geometric factor \(\Delta\) independent of \(d\).
4. **Renormalization thresholds** (Section 6): Point-interaction divergence at \(d\ge 2\) from integral \(\int_0^\infty t^{-d/2}dt\).

These are not independent coincidences—they are manifestations of a single structural principle: **the d/2 exponent is the unique choice that preserves the composition semigroup under dimensional homogeneity** (Theorem P4.2 from the cornerstone manuscript).

**Relation to half-density formalism.** The \(d/2\) exponent is the kernel expression of half-density quantization: the kernel \(K(x,y;t)\) is a bi-half-density in the variables \((x,y)\), transforming as \(|dx|^{1/2}|dy|^{1/2}\) under coordinate changes. This makes the composition integral
\[
\int dy\, K(x,y;t_1)K(y,z;t_2)
\]
coordinate-independent: the two \(|dy|^{1/2}\) factors from the left and right kernels combine to give the integration measure \(|dy|\). The \(d/2\) exponent in flat space is the scalar representative of this half-density structure when the measure is taken to be Lebesgue measure \(d^d y\).

**Scope of this note.** We present explicit composition verifications in \(d=1,2,3\) (Section 2), show that alternative exponents fail to preserve composition (Section 3), derive the Van Vleck determinant composition law in curved space (Section 4), connect to the heat kernel via Wick rotation (Section 5), and identify the \(d/2\) exponent as the renormalization threshold for point interactions (Section 6). The conclusion is that \(d/2\) is a **universal compatibility datum**: not a convention, but a structural constant forced by composition.

# 2. Free-Particle Kernel and Composition

The free-particle propagator in \(d\) spatial dimensions is
\[
K_0(x,y;t)
= \left(\frac{m}{2\pi i\hbar t}\right)^{d/2}
\exp\!\left(\frac{im|x-y|^2}{2\hbar t}\right),
\]
where \(|x-y|^2 = \sum_{j=1}^d (x^j - y^j)^2\) is the Euclidean distance squared.

## 2.1 Composition Law (Semigroup Property)

The defining property of the path integral is the **composition law** (sewing law):
\[
K_0(x,z;t_1+t_2)
= \int_{\mathbb{R}^d} d^d y\; K_0(x,y;t_1)\,K_0(y,z;t_2).
\]

This states that the propagator from \(x\) to \(z\) over time \(t_1+t_2\) equals the sum over all intermediate paths passing through \(y\) at time \(t_1\).

`Derivation PN-D1.1 (Explicit verification in d=1).`
For \(d=1\), the integral is
\[
\int_{-\infty}^\infty dy\;
\left(\frac{m}{2\pi i\hbar t_1}\right)^{1/2}e^{im(x-y)^2/2\hbar t_1}
\left(\frac{m}{2\pi i\hbar t_2}\right)^{1/2}e^{im(y-z)^2/2\hbar t_2}.
\]
Combining the prefactors:
\[
\left(\frac{m}{2\pi i\hbar}\right)\frac{1}{(t_1 t_2)^{1/2}}.
\]
The exponent is
\[
\frac{im}{2\hbar}\left[\frac{(x-y)^2}{t_1}+\frac{(y-z)^2}{t_2}\right]
= \frac{im}{2\hbar}\left[\left(\frac{1}{t_1}+\frac{1}{t_2}\right)y^2 - 2y\left(\frac{x}{t_1}+\frac{z}{t_2}\right) + \frac{x^2}{t_1}+\frac{z^2}{t_2}\right].
\]
Complete the square in \(y\):
\[
y_* = \frac{t_2 x + t_1 z}{t_1+t_2},
\qquad
\text{yields}\qquad
\frac{(x-z)^2}{t_1+t_2}.
\]
The Gaussian integral evaluates to
\[
\int_{-\infty}^\infty dy\; e^{-\alpha y^2 + \beta y}
= \sqrt{\frac{\pi}{\alpha}}\,e^{\beta^2/4\alpha},
\]
with \(\alpha = -im(t_1+t_2)/(2\hbar t_1 t_2)\). Since \(\alpha\) is purely imaginary (not positive real), the integral is oscillatory rather than damped; the formula holds by analytic continuation from \(\mathrm{Re}(\alpha) > 0\) (equivalently, by the \(i\varepsilon\) prescription that regularizes the Fresnel integral). The final result is
\[
\left(\frac{m}{2\pi i\hbar(t_1+t_2)}\right)^{1/2}
\exp\!\left(\frac{im(x-z)^2}{2\hbar(t_1+t_2)}\right)
= K_0(x,z;t_1+t_2).
\]
The composition law holds with the \(1/2\) exponent.

`Remark PN-D1.1a (Generalization to d dimensions).`
For general \(d\), the integral factorizes into \(d\) independent Gaussian integrals (one per spatial component), each identical to the \(d=1\) case. The prefactor becomes
\[
\left(\frac{m}{2\pi i\hbar}\right)^{d/2}\frac{1}{(t_1 t_2)^{d/2}}
=
\left(\frac{m}{2\pi i\hbar(t_1+t_2)}\right)^{d/2}
\left(\frac{t_1+t_2}{t_1}\right)^{d/2}
\left(\frac{t_1+t_2}{t_2}\right)^{d/2}.
\]
After the Gaussian evaluation, each of the \(d\) independent integrals contributes a factor \((t_j/(t_1+t_2))^{1/2}\) per dimension from completing the square (exactly as in \(d=1\)), so the geometric factors \(((t_1+t_2)/t_j)^{d/2}\) cancel against the Gaussian prefactors, yielding
\[
K_0(x,z;t_1+t_2)
= \left(\frac{m}{2\pi i\hbar(t_1+t_2)}\right)^{d/2}
\exp\!\left(\frac{im|x-z|^2}{2\hbar(t_1+t_2)}\right).
\]

## 2.2 Why d/2 Is Forced

The composition law holds **because** the prefactor has exponent \(d/2\). To see this, consider a general trial exponent \(\alpha\):
\[
K_\alpha(x,y;t)
= \left(\frac{m}{2\pi i\hbar t}\right)^{\alpha}
\exp\!\left(\frac{im|x-y|^2}{2\hbar t}\right).
\]

`Derivation PN-D1.2 (Composition fails for α ≠ d/2).`
The composition integral becomes
\[
\int d^d y\; K_\alpha(x,y;t_1)\,K_\alpha(y,z;t_2)
\propto (t_1 t_2)^{-\alpha}.
\]
The Gaussian integral yields a prefactor scaling as \((t_1+t_2)^{-d/2}\) (from the \(d\) independent integrals). For the composition to close—i.e., for the result to equal \(K_\alpha(x,z;t_1+t_2) \propto (t_1+t_2)^{-\alpha}\)—we require
\[
(t_1 t_2)^{-\alpha} (t_1+t_2)^{-d/2}
\propto (t_1+t_2)^{-\alpha}.
\]
This can only hold for all \(t_1, t_2 > 0\) if \(\alpha = d/2\), because the left side is a product \((t_1 t_2)^{-\alpha}\) while the right side is a function of the sum \((t_1+t_2)^{\alpha - d/2}\); these can be proportional for all \(t_1, t_2 > 0\) only if both are constant, i.e., \(\alpha = d/2\).

Therefore, **the d/2 exponent is uniquely forced by the requirement that the prefactor compose correctly** under the Gaussian integral. This derivation assumes a translation-invariant Gaussian kernel family with a power-law prefactor \(t^{-\alpha}\). The more general question — whether non-power-law prefactors \(f(t)\) or non-Gaussian kernels could also close under convolution — is addressed by Proposition PN-P1.3 below, which excludes both alternatives via the Cauchy functional equation and dimensional analysis. Readers seeking the complete uniqueness argument should proceed directly to Section 2.3.

## 2.3 Groupoid-Convolution Derivation

The composition argument admits a formulation in pair-groupoid language that makes the d/2 forcing transparent without invoking heat kernels or path measures.

`Proposition PN-P1.3 (d/2 from groupoid convolution).`
Let \(G = \mathbb{R}^d \times \mathbb{R}^d\) be the pair groupoid with Lebesgue measure \(d^d z\). Let \(f: G \times (0,\infty) \to \mathbb{C}\) satisfy:
- (C) Convolution: \(\int_{\mathbb{R}^d} f(x,z;t_1)\,f(z,y;t_2)\,d^d z = f(x,y;t_1+t_2)\),
- (T) Translation invariance: \(f(x,y;t) = h(x-y;t)\),
- (D) Dimensional consistency: \([f] = L^{-d}\),
- (M) Measurability: \(h(\cdot;t) \in L^1(\mathbb{R}^d)\) and \(\hat{h}(p;t) \neq 0\) for a.e.\ \(p, t\).

Then \(\hat{h}(p;t) = \exp(t\,\varphi(p))\) for some \(\varphi: \mathbb{R}^d \to \mathbb{C}\) (Cauchy's theorem for measurable additive functions applied to \(\log \hat{h}\)). For a quadratic Lagrangian (\(\varphi(p) = c\,p^2\)), the inverse Fourier transform forces the normalization \(N(t) \propto t^{-d/2}\). Lévy-stable alternatives (\(\varphi(p) = -c_\alpha|p|^\alpha\), \(\alpha \neq 2\)) are excluded by dimensional analysis: the characteristic exponent \(c_\alpha\) has dimension \([c_\alpha] = [L^\alpha T^{-1}]\). For \(\alpha = 2\), \([c_2] = [L^2 T^{-1}] = [\hbar/m]\), which is constructible from \(\{m, \hbar\}\). For \(\alpha \neq 2\), \([c_\alpha] = [L^\alpha T^{-1}]\) cannot be built from any rational combination of \([m] = M\) and \([\hbar] = ML^2T^{-1}\), because the system \(a + b = 0\) (mass), \(2b = \alpha\) (length), \(-b = -1\) (time) yields \(b = 1\) and \(\alpha = 2\). Thus the dimensional basis \(\{m, \hbar\}\) uniquely selects the Gaussian (\(\alpha = 2\)) family.

In groupoid language: (C) is groupoid convolution (composition of morphisms), (T) is homogeneity of \(G\) under diagonal \(\mathbb{R}^d\) action, and \(\varphi(p) = c\,p^2\) corresponds to the Lie-algebroid exponential at the groupoid identity. No path measure, heat equation, or Feynman-Kac formula is invoked.

# 3. Dimensional Analysis and P4.2 Connection

The dimensional structure of the kernel provides a complementary perspective on the \(d/2\) exponent, making the same composition constraint explicit in dimensional-analysis language.

## 3.1 Dimensional Homogeneity

The action \(S_0 = m|x-y|^2/(2t)\) has dimension \([\text{action}] = ML^2T^{-1}\). For the exponential \(\exp(iS_0/\hbar)\) to be dimensionless, we require \([\hbar] = [\text{action}]\).

The kernel \(K(x,y;t)\) must have dimension \([L^{-d}]\) (probability amplitude per unit volume in \(d\) dimensions). Dimensional analysis gives
\[
[K] = \left[\frac{m}{\hbar t}\right]^{d/2}
= \frac{[M]^{d/2}}{[\hbar]^{d/2}[T]^{d/2}}
= \frac{[M]^{d/2}}{[M]^{d/2}[L]^d[T]^{-d/2}[T]^{d/2}}
= [L]^{-d},
\]
using \([\hbar] = ML^2T^{-1}\). The full prefactor is \((m/2\pi\hbar t)^{d/2}\), where the factors of \(\hbar\) are essential (not implicit) for dimensional correctness.

Thus the prefactor \((m/\hbar t)^{d/2}\) is forced by dimensional consistency.

## 3.2 Connection to P4.2 (ℏ-Necessity Theorem)

The cornerstone manuscript proves (Theorem P4.2) that the composition semigroup forces the existence of an action-dimensional scale \(\kappa = \hbar\) and forbids both the classical limit \(\kappa \to 0\) and the trivial limit \(\kappa \to \infty\). (Dimensional homogeneity (D) was originally listed as an independent hypothesis, but it is in fact a theorem of composition on \(\mathbb{R}^d\): the integral \(\int K \cdot K\, d^dz = K\) forces \([K]=L^{-d}\) by dimensional consistency. See [RCPFoundations] Remark RCP-P6.1.)

The \(d/2\) exponent is the **normalization constant** that makes this composition law explicit. Specifically:
- **Composition (C):** The semigroup law \(K(x,z;t_1+t_2) = \int dy\, K(x,y;t_1)K(y,z;t_2)\) is the operational content of temporal partition compatibility.
- **Dimensional homogeneity (D):** All terms in the kernel must have consistent dimensions built from \(\{m, \hbar\}\).
- **d/2 forcing:** The unique exponent satisfying both (C) and (D) is \(d/2\), as shown in Section 2.2.

`Proposition PN-P1.1 (d/2 as compatibility datum).`
The d/2 exponent is not a free parameter or convention—it is the unique choice that makes the path integral satisfy:
1. Composition semigroup closure (Section 2.1),
2. Dimensional homogeneity (Section 3.1),
3. Coordinate invariance (half-density transformation, mentioned in Section 1).

Alternative exponents \(\alpha \neq d/2\) fail composition (Derivation PN-D1.2), violating the fundamental requirement that the kernel represent a consistent quantum evolution.

# 4. Van Vleck Determinant and Curved Space

On a Riemannian manifold \((M,g)\), the free-particle kernel generalizes to
\[
K(x,y;t)
= \Delta^{1/2}(x,y)\left(\frac{m}{2\pi i\hbar t}\right)^{d/2}
\exp\!\left(\frac{iS_{\mathrm{cl}}(x,y;t)}{\hbar}\right),
\]
where \(S_{\mathrm{cl}}(x,y;t)\) is the classical action along the geodesic connecting \(x\) and \(y\) in time \(t\), and \(\Delta(x,y)\) is the **Van Vleck determinant**:
\[
\Delta(x,y)
= \det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial x^i\,\partial y^j}\right).
\]

## 4.1 Geometric Meaning of Δ

The Van Vleck determinant is the Jacobian of the exponential map: it measures how a small volume element at \(y\) is mapped to \(x\) under geodesic flow. In flat space, \(S_{\mathrm{cl}} = m|x-y|^2/(2t)\), so
\[
\frac{\partial^2 S_{\mathrm{cl}}}{\partial x^i\,\partial y^j}
= -\frac{m}{t}\delta^{ij},
\qquad
\Delta = \left(\frac{m}{t}\right)^d,
\qquad
\Delta^{1/2} = \left(\frac{m}{t}\right)^{d/2}.
\]
This recovers the flat-space normalization of Section 2: the \((m/t)^{d/2}\) factor is absorbed into \(\Delta^{1/2}\), leaving the \((2\pi i\hbar)^{-d/2}\) factor explicit.

## 4.2 DeWitt-Morette Composition Law (Semiclassical Regime)

The curved-space composition will be treated in the WKB / stationary-phase approximation throughout this section. The exact composition integral is
\[
\int_M d\mu(y)\; K(x,y;t_1)\,K(y,z;t_2),
\]
where \(d\mu(y) = \sqrt{|g(y)|}\,d^d y\) is the Riemannian volume element. Its evaluation requires stationary-phase methods; the result below is valid at leading semiclassical order, along a unique geodesic, and in the absence of caustics (conjugate points). In the presence of caustics, multiple geodesics contribute with Maslov index corrections and the simple product law fails.

The key semiclassical result is that the Van Vleck determinant **composes multiplicatively** at the stationary point (DeWitt [1957], eq. (3.41); Morette [1951], eq. (11)):
\[
\Delta(x,y_*)\,\Delta(y_*,z) = \Delta(x,z),
\]
when \(y_*\) lies on the unique geodesic from \(x\) to \(z\) with the correct time split.

`Derivation PN-D4.1 (Composition of the curved-space kernel at leading semiclassical order).`
Expanding the composition integral in stationary phase around the classical path \(y = y_*(x,z;t_1)\):
\[
\int_M d\mu(y)\;\Delta^{1/2}(x,y)\Delta^{1/2}(y,z)
\left(\frac{m}{2\pi i\hbar}\right)^{d}\frac{1}{(t_1 t_2)^{d/2}}
\exp\!\left(\frac{i(S_{\mathrm{cl}}(x,y;t_1)+S_{\mathrm{cl}}(y,z;t_2))}{\hbar}\right).
\]

At the stationary point \(y_*\):
\[
S_{\mathrm{cl}}(x,y_*;t_1) + S_{\mathrm{cl}}(y_*,z;t_2)
= S_{\mathrm{cl}}(x,z;t_1+t_2),
\]
and the DeWitt-Morette multiplicative law gives \(\Delta(x,y_*)\,\Delta(y_*,z) = \Delta(x,z)\).

The Gaussian fluctuation integral around \(y_*\) evaluates to the standard \((t_1 t_2)^{d/2}/(t_1+t_2)^{d/2}\) factor (the same calculation as in flat space, Section 2.1), yielding
\[
K(x,z;t_1+t_2)
= \Delta^{1/2}(x,z)\left(\frac{m}{2\pi i\hbar(t_1+t_2)}\right)^{d/2}
\exp\!\left(\frac{iS_{\mathrm{cl}}(x,z;t_1+t_2)}{\hbar}\right).
\]

`Proposition PN-P4.1 (d/2 exponent is metric-independent at leading semiclassical order).`
At leading semiclassical order (stationary-phase approximation, single geodesic, no caustics), the d/2 exponent in \((m/2\pi i\hbar t)^{d/2}\) is unchanged by the introduction of curvature. The Van Vleck determinant \(\Delta^{1/2}\) is a **geometric factor** (metric-dependent) that encodes the Jacobian of geodesic flow, but it does not alter the dimensional exponent \(d/2\), which is fixed by the Gaussian integral structure of the composition law. The d/2 exponent is exact as a **leading short-time singularity**: higher-order Seeley–DeWitt corrections \(a_n(x,y)\) are polynomial in \(t\) and do not modify the leading \(t^{-d/2}\) singularity. In this precise sense, the exponent is exact even though the full Van Vleck composition law is semiclassical.

This is the curved-space manifestation of Proposition PN-P1.1: the \(d/2\) exponent is a **universal compatibility datum**, independent of the background geometry.

# 5. Heat Kernel and Wick Rotation

The **heat kernel** (diffusion propagator) is the Euclidean continuation of the quantum-mechanical propagator, obtained by Wick rotation \(t \to -i\tau\) where \(\tau > 0\) is Euclidean time. This transformation maps the Schrödinger equation to the heat (diffusion) equation, revealing that the \(d/2\) exponent is shared between quantum dynamics and classical diffusion.

## 5.1 Wick Rotation and the Heat Kernel

Under the Wick rotation \(t \to -i\tau\), the free-particle kernel becomes
\[
K_0(x,y;t)
= \left(\frac{m}{2\pi i\hbar t}\right)^{d/2}\exp\!\left(\frac{im|x-y|^2}{2\hbar t}\right)
\quad\xrightarrow{t \to -i\tau}\quad
H_0(x,y;\tau)
= \left(\frac{m}{2\pi\hbar\tau}\right)^{d/2}\exp\!\left(-\frac{m|x-y|^2}{2\hbar\tau}\right).
\]

The heat kernel \(H_0(x,y;\tau)\) is the fundamental solution to the **diffusion equation**:
\[
\frac{\partial H_0}{\partial \tau}
= \frac{\hbar}{2m}\,\Delta_x H_0,
\]
where \(\Delta_x = \sum_{j=1}^d \partial^2/\partial x_j^2\) is the Laplacian in \(d\) dimensions. The diffusion coefficient is \(D = \hbar/(2m)\), which has dimension \([L^2 T^{-1}]\).

`Derivation PN-D5.1 (Verification of the diffusion equation).`
Starting from the heat kernel
\[
H_0(x,y;\tau)
= \left(\frac{m}{2\pi\hbar\tau}\right)^{d/2}\exp\!\left(-\frac{m|x-y|^2}{2\hbar\tau}\right),
\]
compute the time derivative:
\[
\frac{\partial H_0}{\partial \tau}
= H_0\left[-\frac{d}{2\tau} + \frac{m|x-y|^2}{2\hbar\tau^2}\right].
\]
The Laplacian acts only on the exponential factor:
\[
\Delta_x H_0
= H_0\left[-\frac{m}{\hbar\tau}\sum_{j=1}^d 1 + \left(\frac{m}{\hbar\tau}\right)^2|x-y|^2\right]
= H_0\left[-\frac{md}{\hbar\tau} + \frac{m^2|x-y|^2}{\hbar^2\tau^2}\right].
\]
Multiplying by \(\hbar/(2m)\):
\[
\frac{\hbar}{2m}\,\Delta_x H_0
= H_0\left[-\frac{d}{2\tau} + \frac{m|x-y|^2}{2\hbar\tau^2}\right]
= \frac{\partial H_0}{\partial \tau}.
\]
The diffusion equation is satisfied.

## 5.2 Composition Law for the Heat Kernel

The heat kernel obeys the same **composition semigroup** as the quantum propagator:
\[
H_0(x,z;\tau_1+\tau_2)
= \int_{\mathbb{R}^d} d^d y\; H_0(x,y;\tau_1)\,H_0(y,z;\tau_2).
\]

The calculation is identical to Section 2.1, except with real exponentials instead of oscillatory phases:
\[
\int d^d y\;
\left(\frac{m}{2\pi\hbar\tau_1}\right)^{d/2}e^{-m|x-y|^2/(2\hbar\tau_1)}
\left(\frac{m}{2\pi\hbar\tau_2}\right)^{d/2}e^{-m|y-z|^2/(2\hbar\tau_2)}
=
\left(\frac{m}{2\pi\hbar(\tau_1+\tau_2)}\right)^{d/2}e^{-m|x-z|^2/(2\hbar(\tau_1+\tau_2))}.
\]

The **d/2 exponent** is again forced by the Gaussian integral structure: the factorized integral over \(d\) components yields a prefactor scaling as \((\tau_1\tau_2)^{-d/2}\), which must combine with the integration measure to produce \((\tau_1+\tau_2)^{-d/2}\) for composition closure.

## 5.3 Connection to Quantum Mechanics

The Wick rotation \(t \to -i\tau\) is an analytic continuation, not merely a formal trick. It reveals that:
1. **Quantum propagation** (oscillatory kernel, Schrödinger equation) and **classical diffusion** (exponentially decaying kernel, heat equation) share the same normalization structure.
2. The \(d/2\) exponent is **universal across both regimes**: it arises from the Gaussian integral composition law, which is agnostic to whether the phase is real or imaginary.
3. The heat kernel is widely used in **quantum field theory at finite temperature** (imaginary-time formalism), **lattice gauge theory** (Euclidean path integral), and **spectral geometry** (heat-kernel asymptotics for the Laplacian).

`Remark PN-D5.1a (Heat kernel as partition function).`
The heat kernel \(H_0(x,y;\tau)\) can be interpreted as the transition amplitude for a particle diffusing from \(y\) to \(x\) in Euclidean time \(\tau\), or equivalently as the partition function \(Z(x,y;\beta)\) for a free particle in a "heat bath" at inverse temperature \(\beta = \tau\) (setting \(\hbar = k_B = 1\)). The diagonal element \(H_0(x,x;\tau) = (m/2\pi\hbar\tau)^{d/2}\) is the local partition function density, which diverges as \(\tau \to 0\) (ultraviolet limit). This divergence structure is dimension-dependent via the \(d/2\) exponent, connecting directly to the renormalization thresholds discussed in Section 6.

# 6. Renormalization Thresholds and the d/2 Divergence

The \(d/2\) exponent governing the path-integral normalization also determines the **renormalization threshold** for point interactions in quantum mechanics: the dimension \(d\) at which contact interactions require non-trivial renormalization. This connection shows that the \(d/2\) exponent is not merely a kinematic normalization—it encodes deep information about the ultraviolet structure of the theory.

## 6.1 Diagonal Green Function

The **diagonal free-particle Green function** (propagator evaluated at coincident points) is obtained by Fourier-transforming the energy-domain Green function:
\[
G_0(x,x;E)
= \int_0^\infty dt\; K_0(x,x;t)\,e^{iEt/\hbar}.
\]

For the free kernel in \(d\) dimensions,
\[
K_0(x,x;t)
= \left(\frac{m}{2\pi i\hbar t}\right)^{d/2},
\]
so
\[
G_0(0,0;E)
= \left(\frac{m}{2\pi i\hbar}\right)^{d/2}\int_0^\infty \frac{dt}{t^{d/2}}\,e^{iEt/\hbar}.
\]

## 6.2 Dimensional Threshold

The convergence of this integral depends critically on \(d\):

`Derivation PN-D6.1 (Dimensional divergence structure).`
1. **d < 2:** The integral \(\int_0^\infty t^{-d/2}\,e^{iEt/\hbar}\,dt\) converges at \(t \to 0\) (UV limit) because \(-d/2 > -1\). The result is finite for \(E > 0\):
   \[
   G_0(0,0;E) \sim (mE/\hbar^2)^{d/2-1},
   \]
   understood in the \(E + i\varepsilon\) sense (the oscillatory integral converges conditionally at \(t \to \infty\) via Riemann–Lebesgue; adding \(\varepsilon > 0\) gives uniform absolute convergence).
   **No renormalization needed**: point interactions in \(d=1\) are non-singular.

2. **d = 2:** The integral \(\int_0^\infty t^{-1}\,e^{iEt/\hbar}\,dt\) has a **logarithmic divergence** at \(t \to 0\):
   \[
   \int_\epsilon^\Lambda \frac{dt}{t}\,e^{iEt/\hbar}
   \sim \log(\Lambda/\epsilon) + \mathcal{O}(E).
   \]
   **Marginal renormalization**: The coupling constant runs logarithmically with the cutoff. This is the canonical example discussed in the companion satellite [RGFundamental] and in the literature ([Jackiw1991DeltaPotentials]; [ManuelTarrach1994PertRenQM]), where the 2D delta-function potential requires a renormalized coupling \(g_R(\mu)\) with beta function
   \[
   \beta(g_R) = \frac{m}{\pi\hbar^2}\,g_R^2.
   \]

3. **d > 2 (especially d=3):** The integral \(\int_0^\infty t^{-d/2}\,e^{iEt/\hbar}\,dt\) has a **power-law divergence** at \(t \to 0\):
   \[
   \int_\epsilon^\Lambda dt\,t^{-d/2}
   \sim \Lambda^{1-d/2} - \epsilon^{1-d/2}.
   \]
   For \(d=3\), this is \(\sim \epsilon^{-1/2}\). **Power-law UV divergence; renormalizable non-perturbatively via self-adjoint extension**: in \(d=3\), the delta-function potential is regularized by introducing a **scattering length** \(a\) as the single physical parameter, via self-adjoint extensions of the Laplacian (boundary conditions at \(r=0\)). This is a genuine renormalization (trading a divergent bare coupling for a finite physical parameter), but it is non-perturbative — the naive perturbative expansion in the bare coupling diverges; see [Jackiw1991DeltaPotentials] and the companion satellite [RGFundamental].

## 6.3 Point Interactions and the d/2 Exponent

The dimensional hierarchy \(d<2\) (safe) / \(d=2\) (marginal) / \(d>2\) (dangerous) is **entirely determined by the d/2 exponent** in the path-integral normalization. Specifically:
- The integral \(\int_0^\infty t^{-d/2}\,dt\) converges at \(t \to 0\) if and only if \(-d/2 > -1\), i.e., \(d < 2\).
- The marginal case \(d=2\) corresponds to \(-d/2 = -1\), the threshold for logarithmic divergence.
- For \(d > 2\), the divergence becomes power-law, requiring non-perturbative renormalization (e.g., via self-adjoint extension with scattering length as physical parameter).

`Proposition PN-P6.1 (d/2 as RG threshold).`
The d/2 exponent in the path-integral kernel K₀(x,y;t) ~ (m/t)^{d/2} is the same exponent that governs the renormalization threshold for point interactions:
- **Dimension d < 2:** Point interactions are UV-finite (no RG flow needed).
- **Dimension d = 2:** Point interactions are marginally renormalizable (logarithmic RG flow).
- **Dimension d > 2:** Point interactions require non-perturbative renormalization (self-adjoint extension; scattering length as physical parameter).

This is not a coincidence—it is a manifestation of the **structural role of d/2 as a compatibility datum** linking temporal composition (Section 2), geometric normalization (Section 4), and renormalization group structure (this section).

## 6.4 Connection to the Cornerstone P4.2 Theorem

The cornerstone manuscript proves (Theorem P4.2) that composition semigroup closure under dimensional homogeneity forces the existence of an action-dimensional scale \(\hbar\) and forbids both the classical limit \(\hbar \to 0\) and the trivial limit \(\hbar \to \infty\). The renormalization threshold structure reinforces this:
- The divergence at \(d \ge 2\) arises from the **short-time (high-energy) behavior** of the propagator, which is controlled by the \(t^{-d/2}\) singularity.
- This singularity is **universal**: it appears in flat space, curved space (Section 4), and Euclidean continuation (Section 5).
- The \(d/2\) exponent is forced by composition (Section 2), making the renormalization threshold a **composition-determined exponent** whose value is fixed by semigroup closure and dimensional homogeneity.

In the language of Refinement Compatibility (satellite [RCPFoundations]), the RG flow in \(d \ge 2\) is the **scale-channel witness** that composition compatibility forces non-trivial scale dependence when the temporal partition is refined indefinitely. The \(d/2\) exponent is the **universal compatibility datum** that makes this scale channel explicit.

# 7. Conclusion: d/2 as Universal Compatibility Datum

We have shown that the \(d/2\) exponent in the path-integral normalization \((m/2\pi\hbar t)^{d/2}\) is **not a convention** but a **structural necessity** forced by the composition semigroup under dimensional homogeneity. This exponent appears in four distinct physical contexts, all of which are manifestations of a single underlying principle:

1. **Temporal composition (Section 2):** The free-particle kernel \(K_0(x,y;t) \sim (m/t)^{d/2}\exp(iS_0/\hbar)\) satisfies the semigroup law \(K(x,z;t_1+t_2) = \int dy\, K(x,y;t_1)K(y,z;t_2)\) **if and only if** the prefactor exponent is \(d/2\). Alternative exponents \(\alpha \neq d/2\) fail to preserve composition (Derivation PN-D1.2).

2. **Geometric invariance (Section 4):** In curved configuration spaces, the kernel acquires a Van Vleck determinant factor \(\Delta^{1/2}(x,y)\), but the \(d/2\) exponent in \((m/2\pi i\hbar t)^{d/2}\) is **metric-independent** (Proposition PN-P4.1). The DeWitt-Morette composition law \(\Delta(x,z) = \Delta(x,y)\Delta(y,z)\) ensures that the geometric factor composes separately, leaving the \(d/2\) normalization universal.

3. **Euclidean continuation (Section 5):** The Wick rotation \(t \to -i\tau\) transforms the oscillatory quantum kernel into the exponentially decaying heat kernel \(H_0(x,y;\tau) \sim (m/\tau)^{d/2}\exp(-m|x-y|^2/(2\hbar\tau))\), which satisfies the diffusion equation \(\partial H/\partial\tau = (\hbar/2m)\Delta H\). The **same d/2 exponent** governs both quantum propagation and classical diffusion, revealing that this normalization is agnostic to the sign of the phase.

4. **Renormalization thresholds (Section 6):** The integral \(\int_0^\infty dt\, t^{-d/2}e^{iEt/\hbar}\) converges at \(t \to 0\) if and only if \(d < 2\), establishing the **dimensional hierarchy** of point interactions: \(d=1\) (no renormalization needed), \(d=2\) (marginal/logarithmic), \(d \ge 3\) (non-perturbatively renormalizable via self-adjoint extension). The \(d/2\) exponent is the **threshold exponent** that determines when RG flow becomes necessary.

## 7.1 Connection to Refinement Compatibility

The \(d/2\) exponent is a **compatibility datum** in the sense of the Refinement Compatibility Principle (satellite [RCPFoundations]): it is the unique normalization constant that allows the path integral to survive controlled refinements of the temporal partition. Specifically:
- **Partition channel (temporal composition):** The semigroup law \(K(t_1+t_2) = K(t_1) \circ K(t_2)\) requires \(d/2\) to close under Gaussian integration.
- **Representation channel (half-density formalism):** The kernel \(K(x,y;t)\) is a bi-half-density transforming as \(|dx|^{1/2}|dy|^{1/2}\), making the composition integral \(\int dy\, K(x,y)K(y,z)\) coordinate-independent. The \(d/2\) exponent is the scalar manifestation of this half-density structure in flat space.
- **Scale channel (renormalization):** The \(t^{-d/2}\) singularity at \(t \to 0\) forces non-trivial RG flow in \(d \ge 2\), with \(d=2\) as the marginal threshold. The \(d/2\) exponent is the **universal RG threshold** that links short-time divergences to dimensional transmutation.

## 7.2 Why d/2 Is Not a Free Parameter

Three perspectives converge on the necessity of \(d/2\):

1. **Composition closure (Proposition PN-P1.1):** The Gaussian integral \(\int d^d y\, \exp(-(y-y_*)^2/\sigma^2)\) scales as \(\sigma^d\). For the composition integral to produce a prefactor \((t_1+t_2)^{-\alpha}\) from factors \((t_1 t_2)^{-\alpha}\), we require \(\alpha = d/2\).

2. **Dimensional homogeneity (Section 3):** The kernel must have dimension \([L^{-d}]\) to represent a probability amplitude density. Dimensional analysis forces \([K] = [m/t]^{d/2}\), with no freedom to adjust the exponent.

3. **Half-density transformation (Section 1):** Under coordinate changes \(x \to x'(x)\), the measure transforms as \(d^d x \to |\det(\partial x'/\partial x)|\,d^d x\). For the composition integral \(\int dy\, K(x,y)K(y,z)\) to be coordinate-invariant, the kernel must transform as a half-density in each variable: \(K \to J_x^{1/2}\,J_y^{1/2}\,K\) where \(J_x = |\det(\partial x'/\partial x)|\). Then the two \(J_y^{1/2}\) factors from the left and right kernels combine to give \(J_y = |\det(\partial y'/\partial y)|\), which exactly cancels the Jacobian of the integration measure \(d^d y\), making the integral invariant. In flat space with Lebesgue measure, this half-density structure manifests as the \(d/2\) exponent; see the companion satellite [HalfDensityQFT] for the full formalism.

These three arguments are not independent—they are different perspectives on the same underlying constraint: **the d/2 exponent is the unique choice that makes temporal composition, dimensional consistency, and geometric invariance mutually compatible**.

## 7.3 Broader Implications

The recognition that \(d/2\) is a **structural constant** (rather than a convention) has implications beyond the free-particle propagator:
- **Interacting theories:** The \(d/2\) normalization persists in perturbation theory (Feynman propagator \(\sim (p^2-m^2)^{-1}\) in momentum space has Fourier transform \(\sim (m/t)^{d/2}\) in the free limit).
- **Quantum field theory:** The heat-kernel expansion \(H(x,y;\tau) \sim (m/\tau)^{d/2}(a_0 + a_1\tau + \ldots)\) governs one-loop divergences, zeta-function regularization, and the trace anomaly. The \(d/2\) exponent sets the leading divergence structure.
- **Semiclassical methods:** The Van Vleck determinant \(\Delta^{1/2}(x,y)\) in WKB approximations is normalized by the \(d/2\) exponent, ensuring that semiclassical composition laws match the exact quantum result in the \(\hbar \to 0\) limit (though P4.2 forbids setting \(\hbar = 0\) exactly).

## 7.4 Open Questions

While the \(d/2\) exponent is fully understood in the contexts explored here, several directions remain open:
1. **Fractional dimensions (partially resolved):** For dimensional regularization (\(d = 4-2\varepsilon\)), the \(d/2\) normalization extends by analytic continuation: the Gaussian integral \(\int d^dz\, e^{-az^2} = (\pi/a)^{d/2}\) is an analytic function of \(d\), and the composition law holds for any \(d\) by analyticity. The kernel normalization \((m/2\pi\hbar t)^{2-\varepsilon}\) composes correctly; UV divergences arise as poles at \(\varepsilon \to 0\) in loop integrals, not from composition failure. For fractal geometries (non-integer Hausdorff dimension \(d_H\)), the situation is subtler: the heat kernel satisfies \(K_t(x,y) \sim t^{-d_s/2}\) where \(d_s\) is the spectral dimension (not \(d_H\)). The heat semigroup property holds in a weak sense on fractals (see Barlow [1998] for diffusion on fractals and Kigami [2001] for the analytic framework), but classical path-integral formulations do not apply directly; the effective normalization exponent is \(d_s/2\).
2. **Gauge theories:** In Yang-Mills theory, the gauge-field propagator has different tensor structure than the scalar kernel. Does an analogous "universal compatibility datum" govern the normalization of Wilson lines or lattice path integrals?
3. **Quantum gravity:** If spacetime dimension is dynamical (varying \(d\)), how does the \(d/2\) exponent interact with the path integral over geometries?

These questions are speculative but illustrate that the \(d/2\) exponent, now understood as a **necessary structural datum**, may serve as a probe of deeper compatibility constraints in settings where composition, dimensional homogeneity, or geometric invariance are modified or generalized.

---

**Summary.** The \(d/2\) exponent in \((m/2\pi\hbar t)^{d/2}\) is forced by the requirement that the path-integral kernel satisfy temporal composition, dimensional homogeneity, and coordinate invariance. It is not a convention to be chosen, but a **universal compatibility datum** linking quantum propagation, classical diffusion, curved-space geometry, and renormalization thresholds. This exponent is a manifestation of the Refinement Compatibility Principle: physical laws must survive controlled refinements of partition, representation, and scale—and \(d/2\) is the normalization constant that makes this compatibility explicit.

# References

1. [Main] A. Rivero, "From Newton to the Path Integral," companion cornerstone manuscript in this series (2026), Theorem P4.2.
2. [VanVleck1928] J. H. Van Vleck, "The correspondence principle in the statistical interpretation of quantum mechanics," *Proc. Natl. Acad. Sci. USA* 14 (1928), 178–188. DOI `10.1073/pnas.14.2.178`. (Van Vleck determinant as semiclassical prefactor.)
3. [Morette1951] Cécile Morette, "On the definition and approximation of Feynman's path integrals," *Physical Review* 81 (1951), 848–852. DOI `10.1103/PhysRev.81.848`. (Rigorous definition of path-integral normalization via short-time kernel composition; composition law eq. (11).)
4. [DeWitt1957] Bryce S. DeWitt, "Dynamical theory in curved spaces. I. A review of the classical and quantum action principles," *Reviews of Modern Physics* 29 (1957), 377–397. DOI `10.1103/RevModPhys.29.377`. (Curved-space propagator, ordering ambiguity, Van Vleck determinant composition law eq. (3.41).)
5. [Vassilevich2003] Dmitri V. Vassilevich, "Heat kernel expansion: user's manual," *Physics Reports* 388 (2003), 279–360. arXiv:`hep-th/0306138`. DOI `10.1016/j.physrep.2003.09.002`. (Heat kernel asymptotics, Seeley-DeWitt coefficients, t^{-d/2} normalization.)
6. [FeynmanHibbs1965] Richard P. Feynman and Albert R. Hibbs, *Quantum Mechanics and Path Integrals*, McGraw-Hill, 1965. (Path integral as refinement limit of time-sliced amplitudes; foundational reference for composition semigroup.)
7. [RCPFoundations] A. Rivero, "Refinement Compatibility Principle: Axioms and Crown Witnesses," companion satellite paper in this series (2026).
8. [RGFundamental] A. Rivero, "Renormalization Group as a Fundamental Compatibility Principle," companion satellite paper in this series (2026).
9. [HalfDensityQFT] A. Rivero, "Half-Density Calculus for Quantum Field Theory," companion satellite paper in this series (2026).
10. [Jackiw1991DeltaPotentials] R. Jackiw, "Delta-function potentials in two- and three-dimensional quantum mechanics," MIT-CTP-1937 (Jan 1991). Reprinted in *M.A.B. Bég Memorial Volume* (World Scientific, 1991), pp. 25–42.
11. [ManuelTarrach1994PertRenQM] Cristina Manuel and Rolf Tarrach, "Perturbative Renormalization in Quantum Mechanics," *Physics Letters B* 328 (1994), 113–118. arXiv:`hep-th/9309013`. DOI `10.1016/0370-2693(94)90437-5`.
12. [Barlow1998] Martin T. Barlow, "Diffusions on fractals," in *Lectures on Probability Theory and Statistics*, Lecture Notes in Mathematics 1690, Springer, 1998, 1–121.
13. [Kigami2001] Jun Kigami, *Analysis on Fractals*, Cambridge Tracts in Mathematics 143, Cambridge University Press, 2001.
