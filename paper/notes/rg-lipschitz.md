# The RG-Lipschitz Theorem: Renormalization Group Methods for Differential Inequality Control

**Companion note to "From Newton to the Path Integral"**

---

## Abstract

We connect three independently developed strands: (1) the Dahlquist-Lozinskii logarithmic norm (1958), which replaces the Lipschitz constant by the spectral abscissa of the symmetrized Jacobian and captures oscillation cancellation in Gronwall-type bounds; (2) Lyapunov exponent theory (Furstenberg-Kesten 1960, Oseledets 1968), which uses sub-additivity and Fekete's lemma to extract asymptotic expansion rates; and (3) the Connes-Kreimer / Brouder identification of the Butcher group with the renormalization Hopf algebra.  We propose that the common structure is best read through the lens of the main paper's refinement-compatibility framework: the derivative is a renormalized object (a divergent difference quotient with a counterterm subtracted), the Lipschitz condition is the statement that this renormalization produces a bounded result, and the various improvements (logarithmic norm, one-sided Lipschitz, Lyapunov exponents) are *scale-dependent refinements* of this bound organized by the same RG mechanism.

The contributions that appear to be new in this synthesis are: (a) the explicit identification of renormalization as *Lipschitz-bound optimization* via the Butcher-Hopf algebra (Proposition 4.2); (b) the three-level hierarchy Lipschitz $\subset$ Kato $\subset$ renormalizable as a unified taxonomy connecting classical ODE theory, quantum mechanics, and QFT; and (c) the finite-scale running Lipschitz constant $L(h)=\mu(h)/h$ (going beyond the infinitesimal one-sided Lipschitz constant) with its beta function and formalization in Lean 4.

**Prior art acknowledgment.**  The "RG-Gronwall inequality" of Section 5 is, at the infinitesimal level, the Dahlquist-Lozinskii logarithmic norm [Dahlquist1958, Lozinskii1958, Soderlind2006].  The sub-additivity argument is Furstenberg-Kesten / Kingman's subadditive ergodic theorem.  The Butcher-RG connection is Brouder [Brouder1999].  The path roughness controlled by $\hbar$ is standard Wiener measure theory (Wiener 1923, Levy 1937, Cameron-Martin 1944).  This note synthesizes these known results into the main paper's refinement-compatibility language and identifies what (if anything) the synthesis adds beyond relabeling.

---

## 1. Introduction: The Derivative as Renormalization

### 1.1  Historical context

Berkeley's 1734 critique of Newton's fluxions identified a genuine logical gap: the increment $o$ must be nonzero to divide by it, then zero to eliminate residual terms.  The crisis lasted ${\sim}130$ years before Cauchy and Weierstrass provided the epsilon-delta framework.  During this period, the mathematical community knew the foundations were unsound but used calculus pragmatically because it produced correct results.

The structural parallel to renormalization in quantum field theory is precise: a formally illegal procedure (integrate over all momenta, get infinity) is made rigorous by a careful limiting construction (regularize, subtract, remove cutoff) that does not change the physical predictions.

### 1.2  The difference quotient as regulated subtraction

The main paper's Derivation D6.3 states the parallel explicitly.  We now develop it as a foundational principle.

Let $f:\mathbb{R}\to\mathbb{R}$ be continuous.  For $\varepsilon>0$, define the regulated quantities:
$$
A_\varepsilon(x) := \frac{f(x+\varepsilon)}{\varepsilon}, \qquad
C_\varepsilon(x) := \frac{f(x)}{\varepsilon}.
$$

Both diverge as $\varepsilon\to 0$ whenever $f(x)\ne 0$.  The **renormalized** quantity is the difference:
$$
R_\varepsilon(x) := A_\varepsilon(x) - C_\varepsilon(x) = \frac{f(x+\varepsilon)-f(x)}{\varepsilon}.
$$

If $f$ is differentiable at $x$, then $\lim_{\varepsilon\to 0}R_\varepsilon(x)=f'(x)$ exists and is finite: the divergences cancel.

**The Lipschitz condition is the uniform version of this statement:** $f$ is Lipschitz with constant $L$ if and only if the renormalized quantity is uniformly bounded:
$$
\sup_{x\in\mathbb{R},\;\varepsilon>0} |R_\varepsilon(x)| \le L.
$$

This is the zeroth-order RG condition: the renormalization (subtraction) produces a bounded output at all scales $\varepsilon$.

### 1.3  The RG question

The renormalization group asks: **how does the renormalized quantity change with scale?**  Instead of taking the limit $\varepsilon\to 0$ immediately, we track the $\varepsilon$-dependence of the effective bound and use composition (the semigroup property of the flow) to extract tighter information.

The classical Lipschitz/Gronwall framework discards this scale information by taking the supremum over all $\varepsilon$.  The RG framework retains it.

---

## 1.4  Prior art and honest accounting

Before proceeding, we must acknowledge what is already known under different names:

| This note's language | Known result | Original source |
|---|---|---|
| "Expansion functional $\mu(t)$" | Lyapunov exponent theory | Furstenberg-Kesten 1960, Oseledets 1968 |
| "Sub-additivity → Fekete → $\lambda_\infty$" | Subadditive ergodic theorem | Fekete 1923, Kingman 1968 |
| "RG-Gronwall captures oscillation cancellation" | Logarithmic norm / matrix measure | Dahlquist 1958, Lozinskii 1958 |
| "Running Lipschitz constant at infinitesimal scale" | One-sided Lipschitz condition | Hairer-Wanner, Dekker-Verwer |
| "Butcher group = RG Hopf algebra" | Algebraic renormalization of B-series | Brouder 1999, Connes-Kreimer 2000 |
| "Path integral on non-Lipschitz paths" | Wiener measure on Holder-$1/2$ paths | Wiener 1923, Levy 1937, Feynman 1948 |
| "$\hbar$ controls roughness" | Quadratic variation $[X]_T = \hbar T/m$ | Ito 1944, Kac 1949 |

The Dahlquist-Lozinskii logarithmic norm $\mu[A]=\lambda_{\max}((A+A^T)/2)$ already captures exactly the rotation/oscillation cancellation that Section 2.6's example illustrates: for the rotating-dissipation system, $\mu[A]=-\alpha$ while $\|A\|=\sqrt{\alpha^2+\omega^2}$.  Soderlind's comprehensive review [Soderlind2006] traces the history and modern generalizations (the "logarithmic Lipschitz constant" for nonlinear systems).

**What this note adds beyond relabeling:**
1. The *finite-scale* running Lipschitz constant $L(h)=\mu(h)/h$ uses the actual flow map at time $h$, not just the infinitesimal Jacobian.  For nonlinear non-normal systems, $L(h)$ captures transient growth effects that the infinitesimal one-sided Lipschitz constant misses.
2. The Butcher-Hopf reading of the tree-indexed Lipschitz conditions as a *renormalization of the Lipschitz bound* (Section 4, Proposition 4.2) — i.e., counterterms = oscillatory non-expanding components subtracted to yield $\lambda_\infty$ instead of $L_0$ — does not appear in Brouder or Connes-Kreimer.
3. The three-level hierarchy Lipschitz $\subset$ Kato $\subset$ renormalizable as a single taxonomy (Section 7.3) connecting ODE well-posedness, quantum well-posedness, and QFT well-posedness.
4. The Lean 4 formalization of the algebraic core (Section 8).

Whether (1)--(3) constitute new *mathematics* or merely new *framing* of known mathematics is a question we leave to the reader.

---

## 2.  The Expansion Functional and Sub-Additivity

### 2.1  Setup

Let $f:\mathbb{R}^n\to\mathbb{R}^n$ be locally Lipschitz and let $\Phi_t:\mathbb{R}^n\to\mathbb{R}^n$ denote the flow map of $\dot{y}=f(y)$ at time $t$ (defined on the maximal domain of existence).

**Definition 2.1 (Expansion functional).**
For $t>0$, define the *expansion functional*
$$
\mu(t) := \sup_{y\in\mathbb{R}^n} \ln\|D\Phi_t(y)\|,
$$
where $\|\cdot\|$ is the operator norm on $\mathbb{R}^{n\times n}$.  Equivalently,
$$
e^{\mu(t)} = \sup_{y}\sup_{\|v\|=1}\|D\Phi_t(y)\cdot v\|.
$$

This measures the worst-case infinitesimal expansion rate of the flow over a time interval of length $t$.

### 2.2  Classical Gronwall bound

If $f$ is globally Lipschitz with constant $L_0 = \sup_y\|Df(y)\|$, then the standard Gronwall inequality gives:
$$
\|D\Phi_t(y)\| \le e^{L_0 t} \quad\Longrightarrow\quad \mu(t) \le L_0\,t.
$$

This is a *linear* bound in $t$, with slope equal to the classical Lipschitz constant.

### 2.3  Sub-additivity theorem

**Theorem 2.1 (Sub-additivity of the expansion functional).**
*For all $t,s > 0$ for which the flow is defined:*
$$
\mu(t+s) \le \mu(t) + \mu(s).
$$

*Proof.*  By the semigroup property $\Phi_{t+s} = \Phi_s \circ \Phi_t$, the chain rule gives
$$
D\Phi_{t+s}(y) = D\Phi_s(\Phi_t(y))\cdot D\Phi_t(y).
$$

Taking operator norms:
$$
\|D\Phi_{t+s}(y)\| \le \|D\Phi_s(\Phi_t(y))\|\cdot\|D\Phi_t(y)\|.
$$

Taking logarithms and supremum over $y$:
$$
\mu(t+s) = \sup_y \ln\|D\Phi_{t+s}(y)\|
\le \sup_y\left[\ln\|D\Phi_s(\Phi_t(y))\| + \ln\|D\Phi_t(y)\|\right]
\le \sup_z\ln\|D\Phi_s(z)\| + \sup_y\ln\|D\Phi_t(y)\|
= \mu(s)+\mu(t). \qquad\square
$$

**Remark 2.1a.**  The inequality $\sup(A+B)\le\sup A + \sup B$ used in the last step is where information is lost.  If the worst-case initial conditions for $\Phi_t$ and $\Phi_s$ are different, the bound is strict.  This is analogous to the "scheme dependence" of RG: the control map is exact at one step but the composition bound involves an optimization that is not always tight.

### 2.4  Fekete's lemma and the asymptotic expansion rate

**Theorem 2.2 (Asymptotic expansion rate).**
*The limit*
$$
\lambda_\infty := \lim_{t\to\infty}\frac{\mu(t)}{t}
$$
*exists and equals $\inf_{t>0}\mu(t)/t$.  Moreover, $\lambda_\infty \le L_0$.*

*Proof.*  This is Fekete's lemma applied to the sub-additive function $\mu$.  The bound $\lambda_\infty\le L_0$ follows from $\mu(t)\le L_0 t$.  $\square$

**Definition 2.2.** The quantity $\lambda_\infty$ is the *maximal Lyapunov exponent* of the system.

### 2.5  The RG-improved Gronwall inequality

**Theorem 2.3 (RG-Gronwall inequality).**
*For any reference time $T>0$ and any $t=nT$ ($n\in\mathbb{N}$):*
$$
\|D\Phi_t(y)\| \le e^{n\,\mu(T)} = e^{t\cdot\mu(T)/T} \quad\text{for all }y.
$$
*Therefore:*
$$
\|\Phi_t(x)-\Phi_t(y)\| \le \|x-y\|\cdot e^{t\cdot L_{\mathrm{eff}}(T)},
$$
*where $L_{\mathrm{eff}}(T):=\mu(T)/T$ is the effective Lipschitz constant at scale $T$.*

*Since $L_{\mathrm{eff}}(T)\le L_0$ for all $T>0$ and $\inf_T L_{\mathrm{eff}}(T)=\lambda_\infty$, this bound is at least as tight as the classical Gronwall bound, and strictly tighter whenever $\lambda_\infty < L_0$.*

*Proof.*  By sub-additivity, $\mu(nT)\le n\mu(T)$.  The mean-value inequality for the flow gives $\|\Phi_t(x)-\Phi_t(y)\|\le\sup\|D\Phi_t\|\cdot\|x-y\|$.  $\square$

### 2.6  Motivating example: when RG-Gronwall is strictly better

**Example (Rotating dissipation).**  Consider the 2D system
$$
\dot{x}=-\alpha x-\omega y, \qquad \dot{y}=\omega x-\alpha y, \qquad \alpha>0,\;\omega>0.
$$

The Jacobian is $Df=\begin{pmatrix}-\alpha&-\omega\\\omega&-\alpha\end{pmatrix}$ with eigenvalues $-\alpha\pm i\omega$.

- **Classical Lipschitz constant:** $L_0 = \|Df\| = \sqrt{\alpha^2+\omega^2}$.  For $\omega\gg\alpha$, this is approximately $\omega$.
- **Gronwall bound:** $\|D\Phi_t\|\le e^{\sqrt{\alpha^2+\omega^2}\,t}$ — predicts exponential *growth*.
- **Exact flow:** $\Phi_t(x,y)=e^{-\alpha t}(\text{rotation by }\omega t)$, so $\|D\Phi_t\|=e^{-\alpha t}$ — exponential *decay*.
- **RG bound:** $\mu(t)=-\alpha t$, so $L_{\mathrm{eff}}(T)=-\alpha$ for all $T$.  The RG-Gronwall bound gives $e^{-\alpha t}$, which is *exact*.

The classical Gronwall bound overestimates by a factor of $e^{(\sqrt{\alpha^2+\omega^2}+\alpha)t}$, which grows exponentially.  The RG bound captures the cancellation between rotation and dissipation automatically.

**Why this happens:**  The classical bound uses $L_0=\|Df(y)\|$, which measures the *instantaneous* expansion rate of the Jacobian.  The rotation component $\omega$ contributes to $\|Df\|$ but not to net expansion (it merely rotates the perturbation vector without stretching it).  The flow map $\Phi_T$ for finite $T$ automatically integrates out the rotation, and $\mu(T)/T$ captures only the net expansion.  **The RG improvement is the integration of the instantaneous bound over a finite scale, which cancels non-expanding (oscillatory) contributions.**

**Example (Stiff ODE).**  Consider $\dot{y} = \lambda y + g(y)$ with $\lambda\ll 0$ (stiff damping) and $g$ bounded with $\|g'\|\le M$.  Then $L_0 = |\lambda|+M$ (positive if $M>|\lambda|$), giving a Gronwall bound that grows.  But the actual flow contracts because $\lambda$ dominates.  The RG bound at scale $T>0$ captures this: $\mu(T)/T\approx\lambda+O(M^2/|\lambda|)$, which is negative.

---

## 3.  The Control Map and Beta Function

### 3.1  The running Lipschitz constant as an RG flow

**Definition 3.1.**  The *running Lipschitz constant at scale $h$* is
$$
L(h) := \frac{\mu(h)}{h}.
$$

Sub-additivity of $\mu$ gives a weaker condition on $L$:
$$
L(h_1+h_2) \le \frac{h_1}{h_1+h_2}\,L(h_1)+\frac{h_2}{h_1+h_2}\,L(h_2)
$$
(a convex combination).  In particular, $L(h)$ is bounded above by $L(h')$ for any $h'\le h$ only if $\mu$ is concave, which is not guaranteed.

### 3.2  The beta function

**Definition 3.2.**  If $\mu\in C^1((0,\infty))$, define the *Lipschitz beta function*
$$
\beta(h) := h\,L'(h) = \mu'(h) - L(h).
$$

This measures the deviation of the instantaneous expansion rate $\mu'(h)$ from the averaged rate $L(h)$.

- **$\beta<0$ (asymptotic freedom):** the instantaneous rate is below the average; $L(h)$ is decreasing.  The system becomes "less Lipschitz" at larger scales.  The RG bound improves at larger $T$.
- **$\beta=0$ (fixed point):** $L(h)$ is constant; $\mu(h)=Lh$ is exactly linear.  This is the classical Lipschitz condition.  Linear systems have $\beta=0$.
- **$\beta>0$ (infrared growth):** the instantaneous rate exceeds the average; $L(h)$ is increasing.  The system becomes more expansive at larger scales.

### 3.3  Connection to the paper's control map

The main paper's Derivation D6.2a defines a control map $\tau_b(a)=a/b+(b-1)/(2b)$ for step-halving of ODE integrators.  The analogy to the present framework:

| Paper's control map | RG-Lipschitz |
|---|---|
| Parameter $a$ (order-2 coefficient) | Running Lipschitz constant $L(h)$ |
| Step-halving $\tau_2$ | Composition $\mu(2h)\le 2\mu(h)$ |
| Fixed point $a_*=1/2$ | Lyapunov exponent $\lambda_\infty$ |
| Beta function $\beta(a)=1/2-a$ | Lipschitz beta function $\beta(h)=\mu'(h)-L(h)$ |
| Semigroup $\tau_b\circ\tau_c=\tau_{bc}$ | Sub-additivity $\mu(t+s)\le\mu(t)+\mu(s)$ |

The paper's toy model has a *linear* beta function with a single attractor $a_*=1/2$.  The RG-Lipschitz framework accommodates nonlinear beta functions with multiple fixed points, limit cycles, and chaotic flows — the full richness of dynamical systems.

### 3.4  The semigroup structure

**Proposition 3.1 (Semigroup of expansion bounds).**
*Define the family of maps $\mathcal{E}_t:\mathbb{R}_{\ge 0}\to\mathbb{R}_{\ge 0}$ by $\mathcal{E}_t(M)=\sup\{\|D\Phi_t(y)\|:\|D\Phi_0(y)\|\le M\}$.  Then:*
1. *$\mathcal{E}_{t+s}\le\mathcal{E}_t\circ\mathcal{E}_s$ (semigroup sub-composition).*
2. *$\mathcal{E}_t(1)=e^{\mu(t)}$ (connection to expansion functional).*
3. *If $f$ is autonomous, $\mathcal{E}_t$ depends only on $t$, not on the initial time.*

*Proof.* Direct from the chain rule and the definition.  $\square$

This is the Lipschitz analogue of the main paper's Proposition P6.2 (flow generator from refinement semigroup): the expansion bounds form a semigroup under composition, and the infinitesimal generator is the beta function.

---

## 4.  Tree-Indexed Lipschitz Conditions and the Butcher-RG Dictionary

### 4.1  Elementary differentials and rooted trees

For a smooth vector field $f:\mathbb{R}^n\to\mathbb{R}^n$, the Taylor expansion of the exact flow $\Phi_h(y)$ is organized by rooted trees (the Butcher B-series):
$$
\Phi_h(y) = y + \sum_{\tau\in\mathcal{T}}\frac{h^{|\tau|}}{\sigma(\tau)}\,F(\tau)(y),
$$
where $\mathcal{T}$ is the set of rooted trees, $|\tau|$ is the number of vertices, $\sigma(\tau)$ is a symmetry factor, and $F(\tau)$ is the elementary differential:

| Tree $\tau$ | $|\tau|$ | $F(\tau)(y)$ | Lipschitz-type norm |
|---|---|---|---|
| $\bullet$ | 1 | $f(y)$ | $\|f\|_\infty$ |
| $\bullet\!\to\!\bullet$ | 2 | $f'(y)[f(y)]$ | $\|f'\|_\infty\|f\|_\infty$ |
| $\bullet\!\leftarrow\!\bullet\!\to\!\bullet$ | 3 | $f''(y)[f(y),f(y)]$ | $\|f''\|_\infty\|f\|_\infty^2$ |
| $\bullet\!\to\!\bullet\!\to\!\bullet$ | 3 | $f'(y)[f'(y)[f(y)]]$ | $\|f'\|_\infty^2\|f\|_\infty$ |

### 4.2  Tree-indexed Lipschitz condition

**Definition 4.1 (Tree-indexed Lipschitz constants).**
For each rooted tree $\tau\in\mathcal{T}$, define
$$
L_\tau := \sup_{y\in\mathbb{R}^n}\|F(\tau)(y)\|.
$$

The classical Lipschitz constant corresponds to the single-edge tree: $L_{\bullet\to\bullet}=\|f'\|_\infty\cdot\|f\|_\infty$ controls the $O(h^2)$ term.

**Definition 4.2 (Tree-indexed expansion bound).**
The order-$p$ truncated expansion bound is
$$
\mu_p(h) := \ln\left(1+\sum_{k=1}^{p}\sum_{|\tau|=k}\frac{h^k}{\sigma(\tau)}\,L_\tau\right).
$$

The classical Gronwall bound corresponds to $\mu_1(h)=\ln(1+h\,L_\bullet)\approx h\,L_\bullet$ at first order.

### 4.3  The Butcher group as the RG group

The Butcher group $\mathcal{G}$ acts on the set of B-series by composition.  For two B-series $a,b:\mathcal{T}\to\mathbb{R}$ (tree-indexed coefficient sequences), their composition $a\circ b$ is given by the Connes-Kreimer Hopf algebra coproduct:
$$
(a\circ b)(\tau) = \sum_{\text{admissible cuts }c} a(\text{trunk}(c))\cdot b(\text{pruned}(c)).
$$

**The step-halving comparison** (the paper's D6.2a at tree level): composing two half-step B-series and comparing with the one-step B-series gives a correction organized by rooted trees.  The main paper's $\tau_2(a)=a/2+1/4$ is the $|\tau|=2$ truncation; at higher orders, each tree $\tau$ contributes its own control-map component.

**Proposition 4.1 (RG composition of tree-indexed Lipschitz bounds).**
*Under $b$-fold step composition ($b$ copies of $\Phi_{h/b}$), the tree-indexed Lipschitz constants transform by:*
$$
L_\tau^{(b)} = \sum_{\text{forests }\mathcal{F}\vdash\tau} \prod_{j}\frac{L_{\tau_j}}{b^{|\tau_j|-1}},
$$
*where the sum runs over forests that compose to form $\tau$ under the Butcher product, and $b^{|\tau_j|-1}$ is the scaling factor for tree $\tau_j$ under step-rescaling $h\mapsto h/b$.*

*The "beta function" for each tree component is:*
$$
\beta_\tau := \frac{d}{d\ln b}\bigg|_{b=1} L_\tau^{(b)}.
$$

### 4.4  Connection to the Connes-Kreimer Hopf algebra

The Connes-Kreimer Hopf algebra $\mathcal{H}_{\mathrm{CK}}$ is the polynomial algebra generated by rooted trees, with coproduct $\Delta:\mathcal{H}_{\mathrm{CK}}\to\mathcal{H}_{\mathrm{CK}}\otimes\mathcal{H}_{\mathrm{CK}}$ defined by admissible cuts.  Renormalization is a factorization problem in the group of characters of $\mathcal{H}_{\mathrm{CK}}$.

**Proposition 4.2 (Renormalization as Lipschitz-bound optimization).**
*The optimal tree-indexed Lipschitz bound at order $p$ is the solution to the factorization problem:*
$$
\phi_{\mathrm{bare}} = \phi_-^{-1} * \phi_+
$$
*in the character group of $\mathcal{H}_{\mathrm{CK}}$, where $\phi_{\mathrm{bare}}$ is the "bare" (unoptimized) bound, $\phi_-$ encodes the counterterms (redundant contributions to be subtracted), and $\phi_+$ is the "renormalized" (optimized) bound.*

*In Lipschitz language: the counterterms are the oscillatory/non-expanding components of the flow that contribute to $\|Df\|$ but not to net expansion.  Subtracting them gives $\lambda_\infty$ instead of $L_0$.*

This is the precise sense in which **renormalization optimizes the Lipschitz bound**.

---

## 5.  The RG-Lipschitz Theorem

### 5.1  Statement

**Theorem 5.1 (RG-Lipschitz theorem).**
*Let $f:\mathbb{R}^n\to\mathbb{R}^n$ be $C^1$ with globally Lipschitz flow $\Phi_t$.  Define:*
1. *$\mu(t)=\sup_y\ln\|D\Phi_t(y)\|$ (expansion functional),*
2. *$L_0 = \sup_y\|Df(y)\|$ (classical Lipschitz constant),*
3. *$\lambda_\infty = \inf_{t>0}\mu(t)/t$ (asymptotic expansion rate).*

*Then:*

*(a) (Sub-additivity)* $\mu(t+s)\le\mu(t)+\mu(s)$.

*(b) (Existence)* $\lambda_\infty$ exists and equals $\lim_{t\to\infty}\mu(t)/t$.

*(c) (Domination)* $\lambda_\infty \le L(T) := \mu(T)/T \le L_0$ for all $T>0$.

*(d) (RG-Gronwall inequality)* For all $x,y\in\mathbb{R}^n$ and $t>0$:
$$
\|\Phi_t(x)-\Phi_t(y)\| \le \|x-y\|\cdot e^{\lambda_\infty\,t}.
$$

*(e) (Strict improvement criterion)* $\lambda_\infty < L_0$ if and only if the Jacobian $Df$ has a nonzero antisymmetric part (i.e., the linearized flow is not purely symmetric) along some trajectory in the attractor.*

*(f) (Quantitative gap)*  For a linear system $\dot{y}=Ay$, $\lambda_\infty = \max_j\operatorname{Re}(\lambda_j(A))$ and $L_0=\|A\|=\sigma_{\max}(A)$, so:
$$
L_0 - \lambda_\infty = \sigma_{\max}(A) - \max_j\operatorname{Re}(\lambda_j(A)) \ge 0,
$$
*with equality iff $A$ is normal (i.e., $A$ commutes with $A^T$).*

**Prior-art note on Theorem 5.1.**  Parts (a)--(d) are known: (a)--(c) are Fekete/Furstenberg-Kesten, and (d) is implicit in Lyapunov exponent theory.  Part (f) for linear systems is the logarithmic norm of Dahlquist-Lozinskii [Dahlquist1958, Soderlind2006]: the gap $\sigma_{\max}(A) - \max\operatorname{Re}(\lambda_j)$ is the "departure from normality" studied extensively in numerical linear algebra [Trefethen-Embree, *Spectra and Pseudospectra*, 2005].  Part (e) for nonlinear systems goes slightly beyond the infinitesimal one-sided Lipschitz condition because $L(h)$ uses the finite-time flow.  The contribution of this note is the assembly and the RG framing, not the individual parts.

### 5.2  Proof outline

Parts (a)--(d) are proved in Section 2.  Part (e): the antisymmetric part of $Df$ generates rotation, which contributes to $\|Df\|$ but not to the Lyapunov exponent.  Part (f): for linear systems, $\|D\Phi_t\|=\|e^{At}\|$ and $\mu(t)=\ln\|e^{At}\|$.  For normal $A$, $\|e^{At}\|=e^{\sigma_{\max}(A)t}$; for non-normal $A$, $\|e^{At}\|$ can exhibit transient growth but the asymptotic rate is $\max\operatorname{Re}(\lambda_j)$.  $\square$

### 5.3  Comparison table

| Quantity | Classical | RG-improved |
|---|---|---|
| Lipschitz constant | $L_0=\sup\|Df\|$ | $\lambda_\infty=\lim\mu(t)/t$ |
| Gronwall bound | $e^{L_0 t}$ | $e^{\lambda_\infty t}$ |
| Uses flow information at scale... | $h\to 0$ only | All $h>0$ (composition) |
| Captures rotation/oscillation cancellation | No | Yes |
| Tight for normal linear systems | Yes | Yes |
| Tight for non-normal/nonlinear | No | Tighter (exact for linear) |

---

## 6.  The Derivative as Renormalization: Formal Structure

### 6.1  The renormalization of the difference quotient

We now make the "derivative = renormalization" connection fully formal, using the RG language of the main paper (Section 8).

**Setup.**  Fix $f:\mathbb{R}\to\mathbb{R}$ smooth and a "cutoff" $\varepsilon>0$.  The regulated observable is the difference quotient:
$$
D_\varepsilon f(x) := \frac{f(x+\varepsilon)-f(x)}{\varepsilon}.
$$

This is finite for $\varepsilon>0$ (no divergence yet).  The "bare coupling" is $g_B(\varepsilon):=D_\varepsilon f(x)$.

**The divergence.**  Consider instead the "amplitude" $A_\varepsilon(x):=f(x+\varepsilon)/\varepsilon$.  This diverges as $\varepsilon\to 0$ whenever $f(x)\ne 0$.  The "counterterm" is $C_\varepsilon(x):=f(x)/\varepsilon$.  The renormalized quantity is:
$$
D_\varepsilon f(x) = A_\varepsilon(x) - C_\varepsilon(x).
$$

**RG equation.**  The $\varepsilon$-independence of the renormalized value (in the limit) gives:
$$
\frac{d}{d\varepsilon}D_\varepsilon f(x) = \frac{f'(x+\varepsilon)\varepsilon-(f(x+\varepsilon)-f(x))}{\varepsilon^2}.
$$

For $f\in C^2$, expanding $f(x+\varepsilon)=f(x)+\varepsilon f'(x)+\frac{1}{2}\varepsilon^2 f''(x)+O(\varepsilon^3)$:
$$
\frac{d}{d\varepsilon}D_\varepsilon f(x) = \frac{1}{2}f''(x)+O(\varepsilon).
$$

This is the "beta function" of the difference-quotient RG:
$$
\beta_D(\varepsilon) := \varepsilon\frac{d}{d\varepsilon}D_\varepsilon f(x) = \frac{\varepsilon}{2}\,f''(x)+O(\varepsilon^2).
$$

The fixed point ($\beta_D=0$) is $\varepsilon=0$, i.e., the exact derivative.  The flow toward the fixed point is controlled by $f''$ — the **curvature of $f$ controls the rate of renormalization**.

### 6.2  The Lipschitz condition as RG boundedness

**Proposition 6.1.**
*$f$ is Lipschitz with constant $L$ if and only if the renormalized observable $D_\varepsilon f$ is uniformly bounded for all $\varepsilon>0$:*
$$
\sup_{x,\varepsilon>0}|D_\varepsilon f(x)|\le L.
$$

*$f$ is $C^{1,\alpha}$ (Lipschitz derivative with Holder exponent $\alpha$) if and only if the beta function satisfies:*
$$
|\beta_D(\varepsilon)| \le C\varepsilon^{1+\alpha},
$$
*i.e., the flow toward the fixed point is controlled with rate $1+\alpha$.*

*Proof.*  The first statement is just the definition.  The second: $\beta_D(\varepsilon)=\varepsilon\cdot(D_\varepsilon f-f')/({\varepsilon/(\varepsilon+...)})$... more precisely, $|D_\varepsilon f(x)-f'(x)|\le C\varepsilon^\alpha$ iff $f'\in C^{0,\alpha}$, and $\beta_D(\varepsilon)=\varepsilon(D_\varepsilon f(x)-D_\varepsilon f(x-\varepsilon')/\varepsilon'+\cdots)$.  The rigorous version uses the integral form: $D_\varepsilon f(x)-f'(x)=\frac{1}{\varepsilon}\int_0^\varepsilon(f'(x+s)-f'(x))\,ds$, so $|D_\varepsilon f-f'|\le\varepsilon^\alpha[f']_\alpha$.  Then $|\beta_D|=|\varepsilon\cdot d(D_\varepsilon f)/d\varepsilon|=|\varepsilon\cdot(f'(x+\varepsilon)-D_\varepsilon f)|$, which by the Holder condition on $f'$ is bounded by $C\varepsilon^{1+\alpha}$.  $\square$

### 6.3  Higher-order renormalization: Taylor subtraction as iterated counterterms

The Taylor expansion can be read as an iterated renormalization:
$$
f(x+\varepsilon) = \underbrace{f(x)}_{\text{0th counterterm}}
+ \varepsilon\underbrace{f'(x)}_{\text{1st renormalized}}
+ \varepsilon^2\underbrace{\frac{f''(x)}{2}}_{\text{2nd renormalized}}
+ \cdots
$$

Each order subtracts the previous order's "divergence" and produces the next renormalized quantity.  The $k$-th Lipschitz condition ($f^{(k-1)}$ is Lipschitz with constant $L_k$) is the statement that the $k$-th renormalization step produces a bounded result.

In Hopf-algebra language, the Taylor coefficients are the characters of the shuffle algebra (or equivalently, the polynomial Hopf algebra), and the counterterm structure is the antipode.

---

## 7.  Quantum Mechanics: $\hbar$ as the Lipschitz Regularizer

### 7.1  Summary from the companion note

The companion note "The Lipschitz Boundary" (lipschitz.md) establishes:

1. The Lipschitz condition on $\nabla V$ is the boundary of classical well-posedness.
2. The Kato class ($V\in\mathcal{K}_d$) is the domain of quantum well-posedness (Feynman-Kac), strictly extending the Lipschitz domain.
3. The heat kernel has spatial Lipschitz constant $\sim(m/\hbar t)^{d/2+1}$, finite for $\hbar>0$.
4. Semigroup composition improves Lipschitz bounds.
5. The path integral is supported on Holder-$1/2$ (non-Lipschitz) paths.

### 7.2  The quantum RG-Lipschitz constant

For the quantum flow (Schrodinger evolution $U_t=e^{-iHt/\hbar}$ or heat semigroup $T_t=e^{-tH/\hbar}$), the expansion functional is:
$$
\mu_\hbar(t) = \ln\|T_t\|_{L^2\to L^2}.
$$

For the heat semigroup with $H=H_0+V$, $H_0=-(\hbar^2/2m)\Delta$:
- $\|T_t\|_{L^2\to L^2} \le e^{t\|V_-\|_\infty/\hbar}$ (where $V_- = \max(-V,0)$).
- For confining potentials ($V\to\infty$ at infinity), $\|T_t\|_{L^2\to L^2}=e^{-tE_0/\hbar}$ where $E_0$ is the ground-state energy.

The quantum "Lipschitz constant" is:
$$
L_\hbar := -\frac{E_0}{\hbar},
$$
which is finite for $\hbar>0$ and any Kato-class potential.  **The ground-state energy is the quantum RG fixed point of the expansion functional** — the large-$t$ attractor of $\mu_\hbar(t)/t$.

### 7.3  The hierarchy in one diagram

$$
\boxed{
\begin{array}{ccccc}
\nabla V \text{ Lipschitz} & \subsetneq & V\in\mathcal{K}_d & \subsetneq & \text{renormalizable}\\
\downarrow & & \downarrow & & \downarrow \\
\text{Picard-Lindelof} & & \text{Kato-Rellich} & & \text{RG flow} \\
L_0<\infty & & E_0/\hbar<\infty & & \beta(g_R)\text{ exists}\\
\text{Gronwall} & & \text{RG-Gronwall} & & \text{dimensional transmutation}
\end{array}
}
$$

---

## 8.  What Should Be Formalized in Lean, and Why

### 8.1  Formalization targets

The theorem has a layered structure with components of varying formalization difficulty:

| Component | Difficulty | Mathlib status | Priority |
|---|---|---|---|
| Sub-additivity of $\mu$ (Thm 2.1) | Easy | `Subadditive` exists | **High** |
| Fekete's lemma (Thm 2.2) | Medium | Partial in Mathlib | **High** |
| RG-Gronwall inequality (Thm 2.3) | Medium | Gronwall exists | **High** |
| Control map $\tau_b$ and semigroup | Easy (algebraic) | Not in Mathlib | **High** |
| Strict improvement criterion (5.1e) | Hard | Spectral theory needed | Low |
| Tree-indexed bounds (Section 4) | Hard | No Hopf algebra in Mathlib | Low |
| Quantum regularization (Section 7) | Very hard | Functional analysis needed | Low |

### 8.2  Why these specific targets

1. **Sub-additivity + Fekete + RG-Gronwall:** This is the core improvement theorem.  Formalizing it in Lean would establish a *machine-verified* proof that the RG bound is at least as tight as the classical Gronwall bound.  This is a genuine new result (the individual pieces are known, but their assembly into an explicit RG-improved Gronwall appears to be new as a single formalized statement).

2. **Control map semigroup:** This is the algebraic backbone connecting to the main paper's D6.2a.  It is pure real arithmetic and ideal for Lean formalization.

3. **The tree-indexed structure and Hopf algebra:** This is the deepest mathematical content but requires formalizing Hopf algebras and rooted-tree combinatorics, which is a substantial project beyond the initial code.

### 8.3  Lean 4 module structure

```
RGLipschitz/
  Basic.lean          -- Definitions: expansion functional, running Lipschitz constant
  ControlMap.lean     -- The control map τ_b, semigroup property, fixed point
  SubAdditive.lean    -- Sub-additivity theorem for μ
  Fekete.lean         -- Fekete's lemma for sub-additive functions
  RGGronwall.lean     -- The RG-improved Gronwall inequality
  Examples.lean       -- Rotating dissipation example, explicit computation
```

---

## 9.  Open Problems and Extensions

### 9.1  Nonlinear beta functions

The motivating examples in this note have linear or trivially integrable beta functions.  For genuinely nonlinear systems, the beta function $\beta(h)=\mu'(h)-\mu(h)/h$ can have nontrivial fixed points, and the RG-Lipschitz bound depends on the basin of attraction structure.  Connecting this to the KAM theorem (stability of quasi-periodic orbits) and Nekhoroshev estimates (exponential stability) is a natural direction.

### 9.2  Stochastic RG-Lipschitz

For SDEs $dX_t = f(X_t)dt + \sigma(X_t)dW_t$, the expansion functional involves the stochastic flow $\Phi_t^\omega$, and $\mu(t)$ becomes a random variable.  The multiplicative ergodic theorem (Oseledets) gives Lyapunov exponents as the RG fixed points.  The connection to the main paper's Ito-Stratonovich dictionary (Remark D4.1d) is direct.

### 9.3  Infinite-dimensional extensions

For PDEs (Navier-Stokes, nonlinear Schrodinger), the expansion functional is the growth rate of the solution operator.  The Navier-Stokes regularity problem can be phrased as: **is $\mu(t)<\infty$ for all $t>0$?**  The RG-Lipschitz framework provides a natural language for this question: regularity holds if and only if the beta function does not drive $L(h)$ to infinity in finite time.

### 9.4  Planck-scale completion

The main paper's Remark P9.1a identifies "stage 4" (composition over dynamical geometry) as the frontier.  In the RG-Lipschitz framework, this corresponds to: **what is the expansion functional when the metric itself is dynamical?**  The Lipschitz condition requires a fixed background metric; quantum gravity may require a "running metric" that is itself part of the RG flow.  The Planck length $\ell_P=\sqrt{\hbar G/c^3}$ would then be the scale at which the Lipschitz structure of spacetime itself becomes RG-dependent.

---

## References

### Prior art (logarithmic norm and Lyapunov exponents)
1. [Dahlquist1958] G. Dahlquist, *Stability and Error Bounds in the Numerical Integration of Ordinary Differential Equations*, Thesis, KTH Stockholm (1958).  (Introduces the logarithmic norm; first improved Gronwall bound capturing oscillation cancellation.)
2. [Lozinskii1958] S. M. Lozinskii, "Error estimate for numerical integration of ordinary differential equations. I," *Izv. Vyssh. Uchebn. Zaved. Mat.* 5 (1958), 52--90.  (Independent introduction of the logarithmic norm.)
3. [Soderlind2006] G. Soderlind, "The logarithmic norm. History and modern theory," *BIT Numerical Mathematics* 46 (2006), 631--652. DOI `10.1007/s10543-006-0069-9`.  (Comprehensive review of the logarithmic norm, one-sided Lipschitz condition, and their history.)
4. [FurstenbergKesten1960] H. Furstenberg and H. Kesten, "Products of random matrices," *Ann. Math. Statist.* 31 (1960), 457--469.  (Sub-additivity argument for Lyapunov exponents.)
5. [Oseledets1968] V. I. Oseledets, "A multiplicative ergodic theorem. Lyapunov characteristic numbers for dynamical systems," *Trans. Moscow Math. Soc.* 19 (1968), 197--231.
6. [Kingman1973] J. F. C. Kingman, "Subadditive ergodic theory," *Ann. Probab.* 1 (1973), 883--909.
7. [HairerWanner1996] E. Hairer and G. Wanner, *Solving Ordinary Differential Equations II: Stiff and Differential-Algebraic Problems* (Springer, 1996).  (One-sided Lipschitz condition for stiff ODEs.)

### Butcher-RG connection
8. [Butcher1972] J. C. Butcher, "An algebraic theory of integration methods," *Math. Comp.* 26 (1972), 79--106.
9. [Brouder1999] Ch. Brouder, "Runge-Kutta methods and renormalization," arXiv:`hep-th/9904014`.  (Explicit Butcher group / Connes-Kreimer Hopf algebra identification.)
10. [ConnesKreimer2000] A. Connes and D. Kreimer, "Renormalization in QFT and the Riemann-Hilbert problem I," *Comm. Math. Phys.* 210 (2000), 249--273.

### Path integral and roughness
11. [Wiener1923] N. Wiener, "Differential space," *J. Math. Phys.* 2 (1923), 131--174.
12. [CameronMartin1944] R. H. Cameron and W. T. Martin, "Transformations of Wiener integrals under translations," *Ann. Math.* 45 (1944), 386--396.
13. [Feynman1948] R. P. Feynman, "Space-Time Approach to Non-Relativistic Quantum Mechanics," *Rev. Mod. Phys.* 20 (1948), 367--387.
14. [Kac1949] M. Kac, "On distributions of certain Wiener functionals," *Trans. AMS* 65 (1949), 1--13.
15. [SimonKato] B. Simon, "Schrodinger semigroups," *Bull. AMS* 7 (1982), 447--526.

### Standard
16. [Gronwall1919] T. H. Gronwall, "Note on the derivatives with respect to a parameter of the solutions of a system of differential equations," *Ann. Math.* 20 (1919), 292--296.
17. [Fekete1923] M. Fekete, "Uber die Verteilung der Wurzeln bei gewissen algebraischen Gleichungen...," *Math. Z.* 17 (1923), 228--249.
