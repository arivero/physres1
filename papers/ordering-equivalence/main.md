---
title: "Operator Ordering as Equivalence Class: Stratification and Measurability"
author: "Alejandro Rivero"
date: "2026"
abstract: |
  Quantum operator ordering is traditionally framed as an "ambiguity" requiring physical input to resolve. This note develops the complementary view that ordering is an **equivalence relation**: different prescriptions (Weyl, half-density, left/right) share the same principal symbol and differ only in ℏ-dependent corrections stratified across four layers. We present the four-layer decomposition (principal symbol, connection, scalar potential, domain), work through two explicit examples (position-dependent mass, curved configuration space), and analyze when ordering differences are physically measurable. The conclusion is that ordering choice is a gauge freedom, with half-density quantization serving as a canonical representative within the equivalence class—analogous to Lorenz gauge in electromagnetism. This work complements the **representation channel** of the Refinement Compatibility Principle (RCP), which demands that physical predictions survive controlled changes of quantization prescription.
---

# 1. Introduction

Quantum operator ordering is often presented as an "ambiguity" to be resolved by physical input or by appeal to a privileged prescription (e.g., Weyl symmetrization, half-density coupling). This note develops the complementary view that **ordering is an equivalence relation**: different orderings of the same classical symbol yield quantum operators that share the same principal symbol and differ only in lower-order (ℏ-dependent) corrections. The physically meaningful content is the equivalence class, not a particular representative.

The key structural result is a **four-layer stratification**:
1. **Layer 1 (Principal symbol):** All orderings agree on the leading classical term.
2. **Layer 2 (Connection):** Certain orderings (half-density, Weyl) naturally incorporate connection-type terms (e.g., derivatives of the mass function in position-dependent mass systems).
3. **Layer 3 (Scalar potential):** O(ℏ²) corrections that distinguish prescriptions within the equivalence class (deformation freedom).
4. **Layer 4 (Domain):** Self-adjoint extension parameters, independent of ordering choice.

This stratification clarifies when ordering differences are **physically measurable** (typically Layer 3 effects, which are often tiny) versus when they are **scheme-dependent but physically equivalent** (Layers 1 and 2, where prescriptions agree).

**Relation to refinement compatibility.** Ordering equivalence is the **representation channel** of the Refinement Compatibility Principle (RCP): physical predictions must survive controlled changes of quantization prescription, with the equivalence class serving as the invariant structure. See [RCPFoundations] for the multi-channel framework.

**Scope of this note.** We present two worked examples (position-dependent mass, curved configuration space), connect ordering to star-product automorphisms and path-integral discretization, and analyze when ordering differences matter for observable quantities. The conclusion is that ordering is a gauge freedom, with half-density quantization playing the role of a "canonical gauge" (analogous to Lorenz gauge in electromagnetism).

# 2. The Four-Layer Stratification

Let \(H_{\mathrm{cl}}(q,p)\) be a classical Hamiltonian. Quantization assigns an operator \(\hat H\) on \(L^2(\mathbb R^d)\) (or a densitized version). Different ordering prescriptions yield different operators, but the differences are stratified:

`Proposition OE-P1.1 (Four-layer structure of ordering ambiguity).`
Let \(\alpha\) and \(\beta\) label two admissible ordering prescriptions (e.g., Weyl, left, right, half-density). Then the operators \(\hat H_\alpha\) and \(\hat H_\beta\) satisfy:

**Layer 1 (Principal symbol):** Both operators have the same classical limit:
\[
\hat H_\alpha = H_{\mathrm{cl}}(q,p) + O(\hbar),
\qquad
\hat H_\beta = H_{\mathrm{cl}}(q,p) + O(\hbar).
\]

**Layer 2 (Connection):** For systems with position-dependent coefficients (e.g., mass \(m(q)\), metric \(g_{ij}(q)\)), both prescriptions incorporate the same first-derivative connection term (if the prescription is "geometric"). For instance, in 1D position-dependent mass:
\[
\hat H_\alpha
= -\frac{\hbar^2}{2}\,f'(q)\frac{\partial}{\partial q} + O(\hbar^2),
\]
where \(f(q)=1/m(q)\). The same term appears in \(\hat H_\beta\) if \(\beta\) is also a geometric prescription.

**Layer 3 (Scalar potential):** The prescriptions differ by an O(ℏ²) scalar:
\[
\hat H_\alpha - \hat H_\beta
= V_{\alpha\beta}(q) + O(\hbar^3),
\qquad
[V_{\alpha\beta}] = \text{energy}.
\]
This is the **deformation freedom** within the equivalence class.

**Layer 4 (Domain):** Self-adjoint extension parameters (boundary conditions, delta-extension data) are independent of ordering and must be specified separately.

`Remark OE-H1.1 (Layer 2 is the key distinction).`
The fact that Layers 1 *and* 2 are universal (not scheme-dependent) is the content of "deformation equivalence is physical": prescriptions agree on both the classical symbol and the connection geometry, differing only in the O(ℏ²) scalar potential (Layer 3). This was verified quantitatively in the position-dependent mass harmonic oscillator (see Section 3).

# 3. Worked Example — Position-Dependent Mass (PDM)

Consider the 1D Hamiltonian with position-dependent mass \(m(q)\):
\[
H_{\mathrm{cl}}(q,p) = \frac{p^2}{2m(q)} + V(q).
\]
Different quantization prescriptions yield different operators.

## 3.1 Left-Right Symmetric Ordering

Symmetrize the kinetic term via the anticommutator (left-right symmetric prescription):
\[
\hat H_{\mathrm{LR}}
= \frac{1}{2}\left[\frac{1}{m(q)}\hat p^2 + \hat p^2 \frac{1}{m(q)}\right] + V(q).
\]
(This is sometimes loosely called "Weyl ordering" in the physics literature, but differs from true Weyl quantization, which would give the totally symmetric form \(\frac{1}{4}(f\hat p^2 + 2\hat p f \hat p + \hat p^2 f)\) with scalar potential \(-\frac{\hbar^2}{8}f''\) instead of \(-\frac{\hbar^2}{4}f''\). The left-right form is simpler to compute and suffices for the Layer 3 comparison.)
Expanding with \(\hat p = -i\hbar \partial/\partial q\) and \(f(q):=1/m(q)\):
\[
\frac{1}{m(q)}\hat p^2 = -\frac{\hbar^2}{2} f(q)\frac{\partial^2}{\partial q^2},
\]
\[
\hat p^2\frac{1}{m(q)} = -\frac{\hbar^2}{2}\left[f''(q) + 2f'(q)\frac{\partial}{\partial q} + f(q)\frac{\partial^2}{\partial q^2}\right].
\]
Symmetrizing:
\[
\hat H_{\mathrm{LR}}
= -\frac{\hbar^2}{2}f(q)\frac{\partial^2}{\partial q^2}
-\frac{\hbar^2}{2}f'(q)\frac{\partial}{\partial q}
-\frac{\hbar^2}{4}f''(q)
+ V(q).
\]

## 3.2 Half-Density Ordering

Densitize the wavefunction \(\psi = m^{1/4}\phi\), where \(\phi\) is a half-density. The kinetic operator acts on \(\phi\) as:
\[
\hat H_{\mathrm{HD}}
= -\frac{\hbar^2}{2}(m^{-1/4})^{-1}\frac{\partial}{\partial q}(m^{-1/2})\frac{\partial}{\partial q}(m^{-1/4})^{-1}
+ V(q).
\]
Expanding (with \(f=1/m\)):
\[
(m^{-1/4})^{-1} = m^{1/4},
\qquad
(m^{-1/2})' = -\frac{1}{2}m^{-3/2}m' = \frac{1}{2}m^{-1/2}f'.
\]
Working through the derivatives:
\[
\hat H_{\mathrm{HD}}
= -\frac{\hbar^2}{2}f(q)\frac{\partial^2}{\partial q^2}
-\frac{\hbar^2}{2}f'(q)\frac{\partial}{\partial q}
-\frac{\hbar^2}{8}f''(q)
-\frac{\hbar^2}{32}\frac{(f')^2}{f}
+ V(q).
\]

## 3.3 Comparison: Layer-by-Layer

**Layer 1 (Principal symbol):** Both yield \(p^2/(2m(q)) + V(q)\) at O(ℏ⁰). ✓

**Layer 2 (Connection):** Both have the **same** first-derivative term \(-\frac{\hbar^2}{2}f'(q)\partial/\partial q\). ✓

**Layer 3 (Scalar potential):** They differ in the O(ℏ²) scalar:
\[
V_{\mathrm{HD}} - V_{\mathrm{LR}}
= -\frac{\hbar^2}{8}f''(q) - \frac{\hbar^2}{32}\frac{(f')^2}{f} + \frac{\hbar^2}{4}f''(q)
= \frac{\hbar^2}{8}f''(q) - \frac{\hbar^2}{32}\frac{(f')^2}{f}.
\]

## 3.4 Observable Test: PDM Harmonic Oscillator

Take \(f(q) = 1 + \alpha q^2\) (weak position-dependence, \(|\alpha| \ll 1\), dimensionless) and \(V(q) = \frac{1}{2}m\omega^2 q^2\). The Layer 3 scalar difference is:
\[
\delta V = V_{\mathrm{HD}} - V_{\mathrm{LR}}
= \frac{\hbar^2\omega}{4}\alpha - \frac{\hbar^2\omega}{8}\alpha^2 q^2 + O(\alpha^3).
\]
The \(O(\alpha)\) term is a constant (\(q\)-independent) shift affecting all energy levels equally. For energy *gaps* \(E_n - E_0\) (the spectroscopically relevant observable), this constant cancels and the leading ordering correction is:
\[
\delta(E_n - E_0)^{(\mathrm{HD}-\mathrm{LR})}
= -\frac{\hbar\omega\,\alpha^2\,n}{16} + O(\alpha^3).
\]

**Numerical estimate (GaAs quantum well parameters):**
- \(\hbar\omega \sim 10\) meV,
- \(\alpha \sim 0.001\)–\(0.01\) (typical effective-mass variation over the oscillator length),
- \(|\delta(E_1 - E_0)| \sim 6 \times 10^{-7}\)–\(6 \times 10^{-5}\) meV.

This is **below** typical experimental energy resolution (\(\sim 0.1\) meV), confirming that Layer 3 differences are **physically unmeasurable** in this system for spectroscopic observables. (The absolute energy shift \(\alpha\hbar\omega/4\) is larger but spectroscopically irrelevant since it is level-independent.)

`Proposition OE-P1.2 (Deformation equivalence is physical).`
First-order (\(O(\alpha)\)) corrections to energy *gaps* vanish identically (the \(O(\alpha)\) shift is a constant, affecting all levels equally). The \(O(\alpha^2)\) gap correction is unmeasurably small in realistic parameter regimes. Left-right symmetric and half-density prescriptions agree on Layers 1 and 2 (principal symbol + connection), differing only in the \(O(\hbar^2)\) scalar potential (Layer 3), which produces negligible observable effects.

# 4. Worked Example — Curved Configuration Space

When the configuration space is a Riemannian manifold \((M,g)\), the kinetic operator must respect the geometry. The natural generalization of the flat-space Laplacian is the **Laplace-Beltrami operator**, which can be written in multiple equivalent forms depending on the quantization prescription.

## 4.1 Minimal Coupling: ∇†∇ (Half-Density Prescription)

The "minimal coupling" prescription densitizes the wavefunction as a half-density \(\psi = |g|^{1/4}\phi\), where \(|g| = \det(g_{ij})\). The kinetic operator acts on \(\phi\) as:
\[
\hat H_{\mathrm{HD}}
= -\frac{\hbar^2}{2m}\,\nabla^\dagger\nabla
+ V(q),
\]
where \(\nabla\) is the covariant derivative and \(\nabla^\dagger\) is its adjoint with respect to the half-density inner product. In local coordinates:
\[
\nabla^\dagger\nabla\,\phi
= |g|^{-1/4}\partial_i\!\left(|g|^{1/2}g^{ij}\partial_j\!\left(|g|^{1/4}\phi\right)\right).
\]
Expanding:
\[
\nabla^\dagger\nabla\,\phi
= g^{ij}\partial_i\partial_j\phi
+ \left(\partial_i g^{ij} + \frac{1}{2}g^{ij}\partial_i\ln|g| + \frac{1}{4}g^{ij}\partial_j\ln|g|\right)\partial_j\phi
+ (\text{scalar terms}).
\]
The first-derivative term is the **connection** (Layer 2): it depends on the metric but not on the potential \(V\).

## 4.2 Weyl-Ordering Generalization

An alternative prescription symmetrizes the metric and momentum operators. In flat space this reduces to the standard Weyl ordering; on a curved manifold it yields:
\[
\hat H_W
= -\frac{\hbar^2}{2m}\,\frac{1}{2}\left[g^{ij}(q)\partial_i\partial_j + \partial_i\partial_j g^{ij}(q)\right]
+ V(q).
\]
This also incorporates a first-derivative connection term (Layer 2), though the exact form differs from the half-density prescription by terms of order \(\hbar^2\) (Layer 3).

## 4.3 Curvature Potential (Layer 3 Difference)

The scalar-term difference between prescriptions (Layer 3) can be expressed in terms of the Ricci scalar \(R\). For the heat-kernel (half-density) prescription, the effective potential includes a geometric contribution:
\[
V_{\mathrm{curv}}
= \frac{\hbar^2}{6m}R(q).
\]
This is the leading short-time correction to the free heat kernel on a curved manifold. It arises from the Van Vleck determinant expansion (see Section 4.4 below). Other prescriptions yield different coefficients for \(R(q)\), but all agree on the **form** of the curvature contribution (Layer 3 deformation).

`Proposition OE-P1.3 (Geometric prescriptions agree on Layers 1 and 2).`
On a Riemannian configuration space, geometric quantization prescriptions (half-density, Weyl-type, etc.) all produce:
1. **Layer 1:** The same classical Hamiltonian \(g^{ij}p_ip_j/(2m) + V(q)\).
2. **Layer 2:** Connection terms proportional to \(\partial_i g^{ij}\) and \(\partial_i\ln|g|\), differing only by scheme-dependent numerical coefficients.
3. **Layer 3:** Curvature-dependent scalar potentials proportional to \(R(q)\), with prescription-dependent coefficients (e.g., \(1/6\) for half-density).

## 4.4 Heat Kernel and Van Vleck Determinant

The heat-kernel representation of the propagator on a curved manifold is:
\[
K(x,y;t)
= \frac{1}{(2\pi\hbar t/m)^{d/2}}\,\Delta(x,y)^{1/2}\exp\!\left(\frac{iS_{\mathrm{cl}}(x,y;t)}{\hbar}\right)\left[1 + O(t)\right],
\]
where \(\Delta(x,y)\) is the Van Vleck determinant (the Jacobian of the exponential map). The short-time expansion of \(\Delta\) produces the curvature potential:
\[
\ln\Delta(x,y)^{1/2}
= -\frac{1}{6}R(y)\,t + O(t^2).
\]
Differentiating with respect to \(t\) at \(t=0^+\) yields the \((ℏ²/6m)R(q)\) term in the Hamiltonian.

`Remark OE-H1.2 (Curvature potential is universal in Layer 3).`
All geometric prescriptions produce a curvature-dependent scalar potential, but the coefficient (e.g., \(1/6\) vs \(1/8\) vs \(1/12\)) is scheme-dependent. This is the Layer 3 deformation freedom. The **form** of the correction (\(\propto R\)) is universal (determined by the metric), but the **magnitude** depends on the quantization prescription.

# 5. Star-Product Perspective: Ordering as Gauge Freedom

Deformation quantization provides an algebraic perspective on ordering: different quantization prescriptions correspond to **automorphisms** of the star-product algebra. This makes the "gauge freedom" interpretation precise.

## 5.1 The Moyal Product

For a flat configuration space \(\mathbb R^d\), the Moyal star product is defined by:
\[
(f \star g)(q,p)
= f(q,p)\exp\!\left(\frac{i\hbar}{2}\left(\overleftarrow{\partial_q}\overrightarrow{\partial_p} - \overleftarrow{\partial_p}\overrightarrow{\partial_q}\right)\right)g(q,p).
\]
Expanding to second order in \(\hbar\):
\[
f \star g
= fg + \frac{i\hbar}{2}\{f,g\} - \frac{\hbar^2}{8}\{\{f,g\}\} + O(\hbar^3),
\]
where \(\{f,g\} = \partial_q f\,\partial_p g - \partial_p f\,\partial_q g\) is the Poisson bracket.

The Moyal product corresponds to **Weyl ordering**: the operator \(\widehat{f \star g}\) is the Weyl quantization of the product \(f \star g\).

## 5.2 Vey Product and Ordering Equivalence

Other star products (e.g., the Vey product, standard-ordered product) differ from Moyal by terms of order \(\hbar^2\). For instance, the **standard-ordered** (or **Wick**) product can be written as:
\[
f \star_{\mathrm{std}} g
= fg + \frac{i\hbar}{2}\{f,g\} - \frac{\hbar^2}{4}\{\{f,g\}\} + O(\hbar^3).
\]
The difference is:
\[
f \star_{\mathrm{std}} g - f \star_{\mathrm{Moyal}} g
= -\frac{\hbar^2}{8}\{\{f,g\}\} + O(\hbar^3).
\]

`Proposition OE-P1.4 (Star products related by automorphism).`
Two star products \(\star\) and \(\star'\) on the same classical phase space are **equivalent** if there exists an invertible linear map \(T: C^\infty(\mathbb R^{2d}) \to C^\infty(\mathbb R^{2d})\) such that:
\[
T(f \star g) = T(f) \star' T(g).
\]
In the deformation-quantization framework, such a \(T\) is a **gauge transformation** or **equivalence** of quantizations. Different orderings (Weyl, standard, etc.) are related by such transformations, which modify only the \(O(\hbar^2)\) terms (Layer 3).

## 5.3 Conjugation and the Equivalence Class

Concretely, if \(\hat H_W\) is the Weyl-ordered Hamiltonian and \(\hat H_{\mathrm{std}}\) is the standard-ordered Hamiltonian, they are related by a unitary transformation (in the case of self-adjoint operators) or by a formal power-series conjugation (in the formal deformation setting):
\[
\hat H_{\mathrm{std}}
= \hat U^\dagger \hat H_W \hat U,
\]
where \(\hat U = 1 + O(\hbar)\). The eigenvalues of \(\hat H_W\) and \(\hat H_{\mathrm{std}}\) differ by \(O(\hbar^2)\), which is the Layer 3 deformation freedom.

`Heuristic OE-H1.3 (Half-density as "Lorenz gauge" for ordering).`
Just as the Lorenz gauge condition \(\partial^\mu A_\mu = 0\) in electromagnetism selects a convenient representative within the gauge-equivalence class (without breaking gauge invariance), the half-density prescription selects a **canonical representative** within the ordering-equivalence class. The physical content (eigenvalues, scattering amplitudes) is gauge-invariant, but the half-density choice simplifies calculations by making the connection term (Layer 2) manifest and minimizing scheme-dependent corrections (Layer 3).

# 6. Time-Slicing Prescriptions and Path Integrals

Ordering ambiguity in operator quantization has a direct analog in path-integral quantization: the choice of **time-slicing prescription** (midpoint, prepoint, postpoint) corresponds to the choice of ordering in the Hamiltonian operator.

## 6.1 Midpoint vs Prepoint Discretization

Consider the path integral for a particle with position-dependent mass \(m(q)\). The action is:
\[
S[q] = \int_0^T dt\,\left[\frac{1}{2}m(q(t))\dot q(t)^2 - V(q(t))\right].
\]
Discretizing the time interval into \(N\) steps of size \(\varepsilon = T/N\), the kinetic term at step \(k\) can be evaluated at different points:

**Prepoint (Itô):**
\[
\frac{1}{2}m(q_k)\left(\frac{q_{k+1} - q_k}{\varepsilon}\right)^2.
\]

**Midpoint (Stratonovich):**
\[
\frac{1}{2}m\!\left(\frac{q_k + q_{k+1}}{2}\right)\left(\frac{q_{k+1} - q_k}{\varepsilon}\right)^2.
\]

**Postpoint:**
\[
\frac{1}{2}m(q_{k+1})\left(\frac{q_{k+1} - q_k}{\varepsilon}\right)^2.
\]

These choices yield different discretized actions and, in the continuum limit \(\varepsilon \to 0\), produce different effective Hamiltonians (differing by \(O(\hbar)\) connection terms and \(O(\hbar^2)\) scalar corrections).

## 6.2 Itô vs Stratonovich and Ordering

In the stochastic calculus literature, the distinction between **Itô** and **Stratonovich** integrals is well-known. The connection to quantum operator ordering is:

`Proposition OE-P1.5 (Midpoint ↔ Stratonovich ↔ Half-Density).`
The midpoint discretization in the path integral corresponds to the **Stratonovich** interpretation of stochastic integrals and, upon quantization, yields the **half-density** (or minimal-coupling) operator ordering. The Itô (prepoint) discretization corresponds to a different ordering prescription, related to the half-density operator by an \(O(\hbar)\) connection-term shift.

The Itô correction term for a stochastic differential equation \(dX_t = \mu(X_t)dt + \sigma(X_t)dW_t\) is:
\[
\text{(Itô)} \quad \longrightarrow \quad \text{(Stratonovich)} + \frac{1}{2}\sigma(X_t)\sigma'(X_t)dt.
\]
This is the \(O(\hbar)\) connection term (Layer 2) that distinguishes the two prescriptions.

## 6.3 Sewing Law and Composition

The **sewing law** (composition property of path integrals) must be preserved under changes of discretization. For the path integral from \(q_0\) to \(q_2\) over time \(2\varepsilon\):
\[
K(q_2,q_0;2\varepsilon)
= \int dq_1\; K(q_2,q_1;\varepsilon)\,K(q_1,q_0;\varepsilon).
\]
Different time-slicing prescriptions yield different normalization factors and measure terms in the integral, but the sewing law must hold for the prescription to be consistent. This is the **composition compatibility** condition (RCP partition channel): the discretization choice must respect the semigroup structure of time evolution.

`Remark OE-H1.4 (Discretization as partition-channel RCP witness).`
The fact that different time-slicing prescriptions (midpoint, prepoint) produce the same continuum limit (up to Layer 3 corrections) is a manifestation of **partition compatibility** in the RCP framework: the physics is independent of how the time interval is partitioned, provided the discretization prescription is applied consistently. The Layer 2 connection terms encode the "transport data" needed to make the sewing law hold across refinement steps.

# 7. Physical Measurability and Conclusion

## 7.1 When Do Ordering Differences Matter?

The four-layer stratification provides a clear answer to the question: "When are ordering differences physically measurable?"

**Layer 1 (Principal symbol):** Never measurable—all orderings agree on the classical limit by construction.

**Layer 2 (Connection):** Not scheme-dependent for geometric prescriptions—half-density, Weyl, and other "natural" orderings all incorporate the same connection term (e.g., \(\propto f'(q)\) in PDM systems, \(\propto \partial_i\ln|g|\) on curved manifolds). This layer is **universal** within the class of geometric quantizations.

**Layer 3 (Scalar potential):** Measurable in principle, but typically **unmeasurably small** in realistic systems. The PDM harmonic oscillator example (Section 3.4) showed that the energy shift between Weyl and half-density orderings is \(|\Delta E_0| \sim 0.006\)–\(0.06\) meV for GaAs quantum well parameters, well below experimental resolution (\(\sim 0.1\) meV). Similarly, the curvature-potential coefficient difference (Section 4.3) produces effects that are negligible unless the curvature radius is comparable to the de Broglie wavelength.

**Layer 4 (Domain):** **Always measurable** when present—self-adjoint extension parameters (e.g., boundary conditions for contact interactions, delta-extension data) are independent of ordering and can have O(1) effects on spectra and scattering. However, Layer 4 is not an "ordering ambiguity" but rather a separate physical input.

`Proposition OE-P1.6 (Ordering equivalence is physical equivalence).`
Within the class of geometric quantization prescriptions (Weyl, half-density, minimal coupling), ordering differences affect only Layer 3 (O(ℏ²) scalar potentials). In typical quantum systems (bound states, scattering at moderate energies), these differences produce energy shifts and phase shifts that are **parametrically small** (\(\propto \hbar^2\)) and **numerically unmeasurable** with current experimental precision. Therefore, ordering equivalence is not merely a formal algebraic statement—it is a **physical equivalence** of predictions.

## 7.2 Half-Density as Canonical Gauge

Just as the Lorenz gauge condition \(\partial^\mu A_\mu = 0\) in electromagnetism does not break gauge invariance but rather selects a convenient representative within the equivalence class, the **half-density prescription** selects a canonical representative within the ordering-equivalence class.

**Advantages of half-density quantization:**
1. **Geometric naturality:** The half-density Laplace-Beltrami operator \(\nabla^\dagger\nabla\) is coordinate-independent and manifestly respects the Riemannian structure.
2. **Connection manifest:** The connection term (Layer 2) arises automatically from the densitization, making the coupling to geometry transparent.
3. **Minimal Layer 3 corrections:** For many systems, the half-density prescription minimizes the O(ℏ²) scalar potential, simplifying perturbative calculations.
4. **Path-integral correspondence:** Half-density ordering corresponds to the midpoint (Stratonovich) time-slicing prescription, which preserves the sewing law without extra correction terms.

However, other orderings (Weyl, standard) are equally valid and may be more convenient for specific calculations. The key insight is that the **choice of ordering is a gauge freedom**, not a physical ambiguity.

## 7.3 Connection to RCP: The Representation Channel

Ordering equivalence is the **representation channel** of the Refinement Compatibility Principle (RCP). The RCP operational form states that physical observables \(\mathcal{O}\) must satisfy:
\[
\mathcal{O}_{h,\theta} = \mathcal{O}_{h',\tau(\theta)} \circ \mathcal{T},
\]
where \(\theta\) is the parameter bundle (including the ordering prescription), \(\tau(\theta)\) is the transported data, and \(\mathcal{T}\) is the change-of-representation map.

For the representation channel:
- \(\theta\) includes the ordering choice (Weyl, half-density, etc.),
- \(\tau(\theta)\) is the Layer 3 scalar potential correction,
- \(\mathcal{T}\) is the unitary transformation (or star-product automorphism) relating the two orderings.

The four-layer stratification (Proposition OE-P1.1) is the **compatibility datum** that makes representation changes well-defined: Layers 1 and 2 are invariant, Layer 3 is the transport rule, and Layer 4 is independent.

For the full RCP framework (including the partition and scale channels), see [RCPFoundations].

## 7.4 Outlook: Beyond Quantum Mechanics

The ordering-equivalence perspective extends beyond non-relativistic quantum mechanics:

**Quantum field theory:** Half-density kernels (bi-half-densities for propagators) provide a coordinate-free formulation of Green functions. The ordering ambiguity becomes a choice of regularization/renormalization scheme, with Layer 3 deformation freedom corresponding to finite counterterm freedom (see [RGFundamental] for the scale-channel analog).

**Deformation quantization:** The star-product automorphism viewpoint (Section 5) connects ordering equivalence to the Fedosov/Kontsevich classification of deformation quantizations. All such quantizations are locally equivalent (related by automorphisms), but global topological obstructions can distinguish them.

**Stochastic mechanics:** The Itô vs Stratonovich distinction (Section 6.2) shows that ordering equivalence is not unique to quantum mechanics—it appears whenever a continuous-time theory is defined as the limit of a discrete-time approximation. The choice of discretization prescription is a gauge freedom, with the continuum limit preserving only the equivalence class.

## 7.5 Conclusion

Quantum operator ordering is not an "ambiguity" to be resolved, but rather a **gauge freedom** within an equivalence class. Different prescriptions (Weyl, half-density, left/right) yield operators that:
1. Agree on the principal symbol (Layer 1) and connection geometry (Layer 2),
2. Differ by O(ℏ²) scalar potentials (Layer 3) that are typically unmeasurably small,
3. Require independent specification of domain/boundary data (Layer 4).

The half-density prescription plays the role of a "canonical gauge" (analogous to Lorenz gauge in electromagnetism): it is geometrically natural, makes the connection term manifest, and simplifies calculations, but other gauges are equally valid. The physical content—eigenvalues, scattering amplitudes, expectation values—is gauge-invariant.

This ordering-equivalence structure is one instance of the broader **Refinement Compatibility Principle**: physical predictions must survive controlled changes of partition, representation, and scale, with the equivalence class (not a particular representative) serving as the invariant object.

# References

1. [RCPFoundations] A. Rivero, "Refinement Compatibility Principle: Axioms and Crown Witnesses," companion satellite paper (2026).
2. [RGFundamental] A. Rivero, "Renormalization Group as a Fundamental Compatibility Principle," companion satellite paper (2026).
