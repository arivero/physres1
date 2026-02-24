# 2. Notation and Claim Taxonomy

## 2.1 Dimension Conventions

- $d$ -- dimension of the **configuration space** $Q$ (nonrelativistic mechanics).
- $D = d+1$ -- spacetime dimension.
- $\hbar$ -- Planck-scale parameter; units of *action* $= [\text{mass} \cdot \text{length}^2 \cdot \text{time}^{-1}]$.
- $S[\gamma]$ -- action functional for path $\gamma:[t_i,t_f]\to\mathbb{R}^d$.

## 2.2 Core Objects

**Continuous action.**
$$S[q] = \int_{t_i}^{t_f} \mathcal{L}(q(t),\dot{q}(t),t)\,dt.$$

**Discrete action.** For partition $t_0 < t_1 < \cdots < t_N$ with $\Delta t_k = t_{k+1}-t_k$ and finite-difference velocity $v_k = (q_{k+1}-q_k)/\Delta t_k$:
$$S_N[q] = \sum_{k=0}^{N-1} \mathcal{L}(q_k, v_k, t_k)\,\Delta t_k.$$

**Areal velocity and angular momentum** (for planar central motion $q = (r,\theta)$):
$$\dot{A} = \tfrac{1}{2}r^2\dot\theta, \qquad L_\text{ang} = mr^2\dot\theta = 2m\dot{A}.$$

## 2.3 Claim Taxonomy

Every substantive claim is tagged by one of three types:

| Tag | Name | Meaning |
|-----|------|---------|
| **P** | Proposition | Intended as mathematically valid; `sorry` marks any gap |
| **D** | Derivation | Explicit step-by-step calculation from stated premises |
| **H** | Heuristic | Physically motivated; explicitly identified as non-rigorous |

## 2.4 Weak-Form Conventions

For point-like probes, we use smooth mollifier families $\rho_\varepsilon$ satisfying:
- $\int \rho_\varepsilon = 1$, $\text{supp}(\rho_\varepsilon) \subseteq [-\varepsilon,\varepsilon]$,
- $\rho_\varepsilon \rightharpoonup \delta_0$ in distributions as $\varepsilon \to 0^+$.

The standard choice is the Gaussian mollifier:
$$\rho_\varepsilon(x) = \frac{1}{\varepsilon\sqrt{2\pi}}\,e^{-x^2/2\varepsilon^2}.$$

Any use of Dirac-supported variations in this manuscript is understood as a
mollified limit unless explicitly labelled heuristic.

## 2.5 Seed Theorems

**P0.1 (Temporal additivity of discrete action).** For any partition split at $M$:
$$S_{M+N}[q] = S_M[q] + S_N[q_{(\cdot+M)}].$$
*Proof.* The sum $\sum_{k=0}^{M+N-1}$ splits into $\sum_{k<M}$ and $\sum_{k\geq M}$. $\square$

Lean: `P0_1_additive_structure` -- proved via `Finset.sum_range_add`.

**P0.2 (Exponential seed theorem).** Suppose $W$ is a weight on paths satisfying:
1. Multiplicativity: $W[\gamma_1 \circ \gamma_2] = W[\gamma_1] \cdot W[\gamma_2]$.
2. Log-additivity: $\log W[\gamma]$ depends on $\gamma$ only through an additive
   functional $S[\gamma]$, i.e.\ $\log W = f \circ S$ for some $f:\mathbb{R}\to\mathbb{C}$.

Then $f$ is linear, i.e.\ $f(s) = c\cdot s$ for some $c\in\mathbb{C}$, so
$$W[\gamma] = e^{c\,S[\gamma]}.$$
With unitarity ($|W|=1$) this forces $c = i/\kappa$ for some real $\kappa>0$.
Section 6 identifies $\kappa = \hbar$.

## 2.6 Three Compatibility Channels

| Channel | Refinement parameter | Key section |
|---------|---------------------|-------------|
| Partition | step size $\Delta t$ | Sections 3--4 |
| Representation | ordering prescription | Sections 6--7 |
| Scale | UV cutoff $\Lambda$ | Section 8 |

The central claim: all three channels yield the same physical
predictions, and this commutativity uniquely forces $\hbar$.

## 2.7 Nonrelativistic Limit (D0.2)

The relativistic free-particle action
$$S_\text{rel}[q] = -mc^2\int_{t_i}^{t_f}\sqrt{1 - \|\dot q\|^2/c^2}\,dt$$
expands at $\|\dot q\|\ll c$ as
$$S_\text{rel}[q] = \int(-mc^2 + \tfrac{1}{2}m\|\dot q\|^2 + O(c^{-2}))\,dt.$$
Subtracting the inert constant $-mc^2(t_f - t_i)$ recovers the Newtonian action.
In the path integral this subtraction is an overall phase $e^{-imc^2(t_f-t_i)/\hbar}$
which cancels in all physical amplitudes.

## 2.8 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P0.1 additivity | `P0_1_additive_structure` | proved |
| Gaussian mollifier unit integral | `gaussMollifier_integral` | sorry |
| P0.2 exponential seed | `P0_2_exponential_seed` | sorry |
