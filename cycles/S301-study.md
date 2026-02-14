# S301 Study: Draft Ordering Equivalence Sections 1-3

Date: 2026-02-14

## Scope
Draft initial sections for new satellite paper `papers/ordering-equivalence/main.md`:
- Section 1: Introduction
- Section 2: Four-layer stratification
- Section 3: PDM worked example

Target: ~150-180 lines

---

## Section 1: Introduction

Quantum operator ordering is often presented as an "ambiguity" to be resolved by physical input or by appeal to a privileged prescription (e.g., Weyl symmetrization, half-density coupling). This note develops the complementary view that **ordering is an equivalence relation**: different orderings of the same classical symbol yield quantum operators that share the same principal symbol and differ only in lower-order (ℏ-dependent) corrections. The physically meaningful content is the equivalence class, not a particular representative.

The

 key structural result is a **four-layer stratification**:
1. **Layer 1 (Principal symbol):** All orderings agree on the leading classical term.
2. **Layer 2 (Connection):** Certain orderings (half-density, Weyl) naturally incorporate connection-type terms (e.g., derivatives of the mass function in position-dependent mass systems).
3. **Layer 3 (Scalar potential):** O(ℏ²) corrections that distinguish prescriptions within the equivalence class (deformation freedom).
4. **Layer 4 (Domain):** Self-adjoint extension parameters, independent of ordering choice.

This stratification clarifies when ordering differences are **physically measurable** (typically Layer 3 effects, which are often tiny) versus when they are **scheme-dependent but physically equivalent** (Layers 1 and 2, where prescriptions agree).

**Relation to refinement compatibility.** Ordering equivalence is the **representation channel** of the Refinement Compatibility Principle (RCP): physical predictions must survive controlled changes of quantization prescription, with the equivalence class serving as the invariant structure. See [RCPFoundations] for the multi-channel framework.

**Scope of this note.** We present two worked examples (position-dependent mass, curved configuration space), connect ordering to star-product automorphisms and path-integral discretization, and analyze when ordering differences matter for observable quantities. The conclusion is that ordering is a gauge freedom, with half-density quantization playing the role of a "canonical gauge" (analogous to Lorenz gauge in electromagnetism).

---

## Section 2: The Four-Layer Stratification

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

---

## Section 3: Worked Example — Position-Dependent Mass (PDM)

Consider the 1D Hamiltonian with position-dependent mass \(m(q)\):
\[
H_{\mathrm{cl}}(q,p) = \frac{p^2}{2m(q)} + V(q).
\]
Different quantization prescriptions yield different operators.

### 3.1 Weyl Ordering

Symmetrize the kinetic term:
\[
\hat H_W
= \frac{1}{2}\left[\frac{1}{m(q)}\hat p^2 + \hat p^2 \frac{1}{m(q)}\right] + V(q).
\]
Expanding with \(\hat p = -i\hbar \partial/\partial q\) and \(f(q):=1/m(q)\):
\[
\frac{1}{m(q)}\hat p^2 = -\frac{\hbar^2}{2} f(q)\frac{\partial^2}{\partial q^2},
\]
\[
\hat p^2\frac{1}{m(q)} = -\frac{\hbar^2}{2}\left[f''(q) + 2f'(q)\frac{\partial}{\partial q} + f(q)\frac{\partial^2}{\partial q^2}\right].
\]
Symmetrizing:
\[
\hat H_W
= -\frac{\hbar^2}{2}f(q)\frac{\partial^2}{\partial q^2}
-\frac{\hbar^2}{2}f'(q)\frac{\partial}{\partial q}
-\frac{\hbar^2}{4}f''(q)
+ V(q).
\]

### 3.2 Half-Density Ordering

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

### 3.3 Comparison: Layer-by-Layer

**Layer 1 (Principal symbol):** Both yield \(p^2/(2m(q)) + V(q)\) at O(ℏ⁰). ✓

**Layer 2 (Connection):** Both have the **same** first-derivative term \(-\frac{\hbar^2}{2}f'(q)\partial/\partial q\). ✓

**Layer 3 (Scalar potential):** They differ in the O(ℏ²) scalar:
\[
V_{\mathrm{HD}} - V_W
= -\frac{\hbar^2}{8}f''(q) - \frac{\hbar^2}{32}\frac{(f')^2}{f} + \frac{\hbar^2}{4}f''(q)
= \frac{\hbar^2}{8}f''(q) - \frac{\hbar^2}{32}\frac{(f')^2}{f}.
\]

### 3.4 Observable Test: PDM Harmonic Oscillator

Take \(f(q) = 1 + \alpha q^2\) (weak position-dependence, \(|\alpha| \ll 1\)) and \(V(q) = \frac{1}{2}m\omega^2 q^2\). The ground-state energy shift between Weyl and half-density orderings is:
\[
\Delta E_0^{(\mathrm{HD}-W)}
= -\frac{\hbar\omega\alpha_0^2}{16},
\]
where \(\alpha_0 = \alpha/(1+\alpha)\approx\alpha\) for small \(\alpha\).

**Numerical estimate (GaAs quantum well parameters):**
- \(\hbar\omega \sim 10\) meV,
- \(\alpha \sim 0.001\)–\(0.01\) (typical effective-mass variation),
- \(|\Delta E_0| \sim 0.006\)–\(0.06\) meV.

This is **below** typical experimental energy resolution (\(\sim 0.1\) meV), confirming that Layer 3 differences are **physically unmeasurable** in this system.

`Proposition OE-P1.2 (Deformation equivalence is physical).`
The first-order (O(α)) energy shift vanishes identically; the O(α²) shift is unmeasurably small in realistic parameter regimes. Weyl and half-density prescriptions agree on Layers 1 and 2 (principal symbol + connection), differing only in the O(ℏ²) scalar potential (Layer 3), which produces negligible observable effects.

---

## Line count
- Section 1: ~35 lines
- Section 2: ~50 lines
- Section 3: ~80 lines
Total: ~165 lines

## Sources
- D35/S290 (four-layer stratification discovery)
- D38/S294 (PDM energy shift calculation)
- Cornerstone Section 10.2 (f(q)p Weyl vs left example)
- Cornerstone Section 7.4 (deformation equivalence, Proposition P5.2)

## Next cycle
C323: Create `papers/ordering-equivalence/main.md` with drafted Sections 1-3
