# RCP as an Explicit Compatibility Diagram: Toy Family and Closure Constraint

Date: 2026-02-11  
Cycle: `S63`  
Status: blackboard note (non-citable).

Goal: turn the Refinement Compatibility Principle (RCP) from a slogan into an *operational closure statement* that can fail, by (i) writing an explicit “compatibility diagram” form and (ii) giving one toy-family witness where closure forces a concrete normalization exponent.

## 1) Operational schema: a family closed under three operations
Let \(\mathcal O_{h,\theta}\) denote a family of prediction maps (or kernels, amplitudes, expectation functionals, etc.) indexed by:
- a “ruler” / resolution parameter \(h>0\) (time step, lattice spacing, coarse-graining scale, …),
- a parameter vector \(\theta\) (couplings, normalizations, and any fixed conventions).

RCP can be expressed as a **closure requirement**: for each of three operations, there exists a parameter-update map \(\tau\) such that the operation followed by parameter update lands back in the same family.

### (i) Partition compatibility (temporal composition / refinement)
Let \(\mathcal C_{b,h}\) denote the “compose \(b\) fine steps at ruler \(h/b\) into one step at ruler \(h\)” operation (e.g. integrate intermediate variables in a time-sliced kernel).
Partition compatibility is the existence of \(\tau_C\) such that
\[
\mathcal O_{h,\theta}
\;=\;
\mathcal O_{h,\tau_C(b,h;\theta)}\circ \mathcal C_{b,h},
\qquad b\in\mathbb N,\ h>0.
\]

### (ii) Representation compatibility (ordering / quantization conventions)
Let \(\mathcal Q_\alpha\) denote a change of representation within a fixed classical-limit class (e.g. different time-slicing/ordering conventions related by controlled \(O(\hbar)\) terms).
Representation compatibility is the existence of \(\tau_Q\) such that
\[
\mathcal O_{h,\theta}
\;=\;
\mathcal O_{h,\tau_Q(\alpha;\theta)}\circ \mathcal Q_\alpha.
\]

### (iii) Scale compatibility (coarse-graining / renormalization)
Let \(\mathcal R_b\) denote a scale-change operation (coarse-grain by factor \(b>1\), or compare predictions across resolutions).
Scale compatibility is the existence of \(\tau_R\) such that
\[
\mathcal O_{h,\theta}
\;=\;
\mathcal O_{h,\tau_R(b;\theta)}\circ \mathcal R_b.
\]

The point of writing \(\tau\) explicitly is that the closure can fail: there may be no \(\theta'\) in the admissible parameter set for which the post-operation object is representable inside the same family.

## 2) Toy-family witness: free Gaussian kernel forces the \(h^{-d/2}\) exponent
As a concrete instance of “closure can fail,” consider the free short-time kernel ansatz on \(\mathbb R^d\):
\[
K_h(x,y)=A(h)\exp\!\left(\frac{i}{\hbar}\frac{\|x-y\|^2}{2h}\right),
\qquad h>0,
\]
with an *a priori unknown* normalization \(A(h)\).

Partition composition is the semigroup law
\[
K_{h_1+h_2}(x,z)=\int_{\mathbb R^d} K_{h_1}(x,y)\,K_{h_2}(y,z)\,dy,
\]
which is exactly the “\(\mathcal C\)” operation in this toy family.

Gaussian integration shows that the convolution preserves the same functional form (phase with \((h_1+h_2)^{-1}\)) **only if** the amplitude normalization satisfies a functional equation whose solution is
\[
A(h)\propto h^{-d/2}
\quad\text{(up to an overall constant phase)}.
\]
If one picks any other power \(A(h)\propto h^{-\alpha}\) with \(\alpha\neq d/2\), the family fails to close under composition: no parameter update can restore the semigroup law.

This is the minimal witness that “refinement/composition” is not just a limit-taking slogan: it imposes a concrete compatibility constraint that fixes data (here, the half-density normalization exponent).

## Promotion candidate (copyable block)
RCP can be written as a closure requirement on a family \(\{\mathcal O_{h,\theta}\}\) of prediction maps indexed by a ruler \(h\) and parameters \(\theta\): for each operation (temporal composition \(\mathcal C\), representation change \(\mathcal Q\), and scale comparison \(\mathcal R\)) there must exist a parameter-update map \(\tau\) such that the post-operation object lands back in the same family, e.g.
\(\mathcal O_{h,\theta}=\mathcal O_{h,\tau_C(b,h;\theta)}\circ\mathcal C_{b,h}\) for composing \(b\) fine steps into one coarse step. This is a falsifiable constraint: closure can fail. In the free-particle kernel ansatz \(K_h(x,y)=A(h)\exp\!\big(\tfrac{i}{\hbar}\tfrac{\|x-y\|^2}{2h}\big)\), demanding the semigroup law \(K_{h_1+h_2}=\int K_{h_1}K_{h_2}\) forces \(A(h)\propto h^{-d/2}\) (up to a constant phase). Thus refinement compatibility fixes the half-density normalization exponent; it is not merely a narrative about “taking a limit.”

