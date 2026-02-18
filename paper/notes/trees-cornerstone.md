# The Cornerstone: Butcher Trees, Counterterm Subtraction, and Quantization

**Companion note to "From Newton to the Path Integral" and "RG-Lipschitz"**

---

## Abstract

We state and develop the missing identification: the rooted-tree algebra
that organizes Runge-Kutta order conditions IS the same algebra that
organizes perturbative renormalization, and the passage from classical
mechanics (one flow) to quantum mechanics (sum over flows) is forced by
requiring this tree-organized counterterm subtraction to compose. Each
vertex of a Butcher tree encodes one derivative, and each derivative is
one counterterm subtraction. The exact classical flow is the "fully
renormalized" character of the Hopf algebra. Quantization extends the
domain from one character to a weighted sum over characters. Renormalization
handles divergences in this sum using the same coproduct that organized
the original ODE.

---

## 1. The Derivative as a Single Counterterm Subtraction

From `rg-lipschitz.md` Section 6 and the main paper's D6.3:

$$
f'(x) = \lim_{\varepsilon\to 0} \underbrace{\frac{f(x+\varepsilon)}{\varepsilon}}_{\text{divergent}} - \underbrace{\frac{f(x)}{\varepsilon}}_{\text{counterterm}}
$$

The operation "form a ratio, subtract a local divergence, take the limit"
produces a finite result ($f'(x)$) from divergent ingredients ($f/\varepsilon$).
This is exactly the structure of a single renormalization subtraction.

**Notation.** We write this as a single vertex:

```
    ○           ← the subtraction point (one derivative acts here)
```

The vertex carries the data: "evaluate $f$, form the difference quotient,
subtract, take the limit." The OUTPUT is $f'(x)$.

---

## 2. Trees as Iterated Counterterm Subtractions

### 2.1 The first four Butcher trees

For the ODE $\dot{y} = f(y)$, the Taylor expansion of the exact flow
$\Phi_h(y)$ is indexed by rooted trees. Each tree prescribes a specific
pattern of nested derivatives of $f$. Since each derivative is a
counterterm subtraction, each tree is a specific pattern of nested
counterterm subtractions.

**Order 1: the root alone**

```
    ●                F(●) = f(y)
```

No derivative acts. Just evaluate $f$. This is the "bare" quantity,
not yet renormalized. Contributes the Euler step $y + hf(y)$.

**Order 2: the chain $\tau_2$**

```
    ●
    |               F(●→●) = f'(y)[f(y)]
    ●
```

Read bottom-up: evaluate $f(y)$ (bottom vertex), then apply $f'(y)[\cdot]$
(top vertex). The top vertex IS one counterterm subtraction:
$f'(y)[v] = \lim_\varepsilon (f(y+\varepsilon v) - f(y))/\varepsilon$.

The Lipschitz condition says $\|f'(y)\| \le L_0$, which bounds the output
of this single subtraction. The tree-indexed Lipschitz bound is:

$$\|F(\tau_2)(y)\| \le L_0 \cdot \|f\|_\infty$$

**Order 3: two trees**

```
    ●                        ●
   / \                       |
  ●   ●                      ●
                              |
                              ●

  τ_{3a} (branch)           τ_{3b} (chain)
  F = f''(y)[f(y),f(y)]     F = f'(y)[f'(y)[f(y)]]
```

The branch $\tau_{3a}$: two copies of $f(y)$ feed into $f''(y)[\cdot,\cdot]$.
The second derivative is TWO counterterm subtractions composed in parallel:

$$
f''(y)[u,v] = \lim_{\varepsilon\to 0}
\frac{f'(y+\varepsilon v)[u] - f'(y)[u]}{\varepsilon}
$$

Each inner $f'$ is itself a subtraction. So $\tau_{3a}$ is a subtraction
of subtractions — a nested counterterm.

The chain $\tau_{3b}$: $f(y) \to f'(y)[f(y)] \to f'(y)[\cdot]$ applied
to the result. Two subtractions in series: the inner one extracts $f'[f]$,
the outer one differentiates again.

**The pattern:** every vertex with $k$ children in the tree corresponds
to applying the $k$-th derivative $f^{(k)}(y)[\cdot,\ldots,\cdot]$,
which involves $k$ counterterm subtractions. The tree topology encodes
HOW the subtractions are nested.

### 2.2  General structure

For a rooted tree $\tau$ with vertices $v_1,\ldots,v_n$ (listed root-last),
the elementary differential is:

$$
F(\tau)(y) = f^{(k_r)}(y)\Big[
  F(\tau_1)(y),\; F(\tau_2)(y),\; \ldots,\; F(\tau_{k_r})(y)
\Big]
$$

where $k_r$ is the number of children of the root and $\tau_1,\ldots,\tau_{k_r}$
are the subtrees. Each application of $f^{(k)}$ involves $k$ counterterm
subtractions. The total number of subtractions in tree $\tau$ is:

$$
\text{(total subtractions)} = \sum_{v \in \tau} k_v = |\tau| - 1
$$

where $k_v$ is the number of children of vertex $v$, and $|\tau|-1$ is
the number of edges. **Every edge of a Butcher tree is one counterterm
subtraction.**

### 2.3  The tree table with subtraction count

```
 Tree          |τ|   Edges   F(τ)(y)                      Subtractions
─────────────────────────────────────────────────────────────────────────
   ●            1      0     f                             0 (bare)

   ●            2      1     f'[f]                         1
   |
   ●

   ●            3      2     f''[f,f]                      2 (parallel)
  / \
 ●   ●

   ●            3      2     f'[f'[f]]                     2 (serial)
   |
   ●
   |
   ●

    ●           4      3     f'''[f,f,f]                   3
   /|\
  ● ● ●

    ●           4      3     f''[f'[f],f]                  3
   / \
  ●   ●
  |
  ●

    ●           4      3     f''[f,f'[f]]                  3
   / \
  ●   ●
      |
      ●

    ●           4      3     f'[f'[f'[f]]]                3
    |
    ●
    |
    ●
    |
    ●

    ●           4      3     f'[f''[f,f]]                  3
    |
    ●
   / \
  ●   ●
```

At order 4 there are 4 distinct trees (we list 5 above because two
share a shape but differ in which branch carries the chain — they are
actually the same tree up to labeling in the unordered case). The exact
count is: order 1→1, order 2→1, order 3→2, order 4→4
(sequence: 1, 1, 2, 4, 9, 20, 48, 115, ... — Catalan-like).

---

## 3.  The Exact Flow as the "Fully Renormalized" Character

### 3.1  Characters of the Hopf algebra

The Connes-Kreimer Hopf algebra $\mathcal{H}_{\mathrm{CK}}$ is the
polynomial algebra generated by rooted trees, with the coproduct
$\Delta$ defined by admissible cuts.

A **character** is an algebra homomorphism
$\phi: \mathcal{H}_{\mathrm{CK}} \to \mathbb{R}$.
It assigns a real number $\phi(\tau)$ to each tree $\tau$.

The **exact flow** defines a character $\phi_{\mathrm{exact}}$:

$$
\phi_{\mathrm{exact}}(\tau) = \frac{1}{\sigma(\tau)}
$$

where $\sigma(\tau)$ is the symmetry factor of $\tau$. The B-series
with these coefficients IS the Taylor expansion of the exact flow:

$$
\Phi_h(y) = y + \sum_\tau h^{|\tau|}\,\phi_{\mathrm{exact}}(\tau)\,F(\tau)(y)
$$

**The exact flow is the unique character that makes ALL counterterm
subtractions exactly right at ALL orders.** It is the "fully renormalized"
element of the Butcher group.

### 3.2  Runge-Kutta methods as approximate characters

A Runge-Kutta method with Butcher tableau $(A,b,c)$ defines a different
character $\phi_{\mathrm{RK}}$:

$$
\phi_{\mathrm{RK}}(\tau) = \Phi_\tau(A,b,c) \quad\text{(a polynomial in the tableau entries)}
$$

**Butcher's order theorem:** The RK method has order $p$ if and only if

$$
\phi_{\mathrm{RK}}(\tau) = \phi_{\mathrm{exact}}(\tau) \quad\text{for all } |\tau| \le p.
$$

The **discrepancy** at order $p+1$ is:

$$
\delta_\tau := \phi_{\mathrm{RK}}(\tau) - \phi_{\mathrm{exact}}(\tau) \quad\text{for } |\tau| = p+1.
$$

This is the **counterterm** — the correction needed to bring the numerical
method up to the next order. The main paper's control map $\tau_2(a) = a/2 + 1/4$
is exactly the counterterm for the single tree $\tau_2 = $ (●→●) when
comparing a one-step method with step-halving.

### 3.3  The Butcher group product

The composition of two B-series (e.g., $\Phi_{h/2} \circ \Phi_{h/2}$) is
given by the Butcher group product, which is defined via the coproduct
$\Delta$ of $\mathcal{H}_{\mathrm{CK}}$:

$$
(\phi \star \psi)(\tau) = \sum_{(\tau)} \phi(\tau_{(1)})\,\psi(\tau_{(2)})
$$

where $\Delta(\tau) = \sum_{(\tau)} \tau_{(1)} \otimes \tau_{(2)}$ runs
over admissible cuts. This is the algebraic encoding of "compose two
flows and read off the tree coefficients of the result."

**Key fact:** the step-halving comparison $H(\Phi_h^{(a)}) = \Phi_h^{(\tau_2(a))}$
of D6.2a is the $|\tau|=2$ truncation of this group product. The full
tree-level comparison gives a control map $\tau_b^{(\tau)}$ for EACH tree,
not just the single parameter $a$.

---

## 4.  From One Character to All Characters: Why $\hbar$ Enters

### 4.1  The classical situation: one dominant tree

In classical mechanics, the flow $\Phi_t$ is deterministic. Given initial
conditions, there is ONE trajectory. The B-series computes this single
trajectory as an expansion in $h$:

$$
\Phi_h(y) = y + \sum_\tau h^{|\tau|}\,\frac{1}{\sigma(\tau)}\,F(\tau)(y)
$$

All trees contribute, but to a SINGLE character $\phi_{\mathrm{exact}}$.
There is no sum over paths, no weighting, no $\hbar$.

### 4.2  The compositional obstruction

Now ask: can this flow be written as a composition of infinitesimal
kernels?

$$
\Phi_t(x_0) \stackrel{?}{=} \lim_{N\to\infty} \underbrace{\Phi_{t/N}\circ\cdots\circ\Phi_{t/N}}_{N \text{ times}}(x_0)
$$

For the classical flow, YES — this is just the definition of the ODE
solution as a limit of the Euler method ($N\to\infty$ gives convergence
by Picard-Lindelöf, requiring the Lipschitz condition on $f$).

But now ask the compositional question of P4.2: can we write a
**transition kernel** $K(x,y;t)$ such that:

$$
K(x,y;t_1+t_2) = \int K(x,z;t_1)\,K(z,y;t_2)\,dz
$$

with the identity limit $K(x,y;t)\to\delta(x-y)$ as $t\to 0$?

The classical answer $K_{\mathrm{cl}}(x,y;t) = \delta(y - \Phi_t(x))$
satisfies composition (by the semigroup property of the flow) BUT
the identity limit is only consistent if $\Phi_t \to \mathrm{id}$
as $t\to 0$, which is true. So classically, no obstruction... yet.

### 4.3  The obstruction from smooth composition

The problem arises when we want $K$ to be a SMOOTH kernel (not a delta
function), which is needed for several reasons:

1. **Stability under perturbation:** the delta-kernel is infinitely
   sensitive to perturbation of initial conditions. Any smooth
   regularization requires a width parameter.

2. **Composition closure on smooth kernels:** if $K$ is Gaussian-like
   with width $\sigma$, then $K * K$ has width $\sigma\sqrt{2}$.
   For the family to close under convolution with the normalization
   $t^{-d/2}$, we need a scale in the exponential.

3. **Identity limit for smooth kernels:** as $t\to 0$, a smooth
   $K(x,y;t)$ must concentrate to $\delta(x-y)$. This forces
   the width $\sigma \propto \sqrt{t}$ and the exponent to have
   the form $\exp(-(x-y)^2/(2\kappa t))$ with $[\kappa] = [\text{action}]$.

This is P4.2: **composition + identity + smoothness forces $\kappa = \hbar > 0$.**

### 4.4  The tree-level reading

In the tree language, the classical situation has one character
$\phi_{\mathrm{exact}}$ contributing. The quantum situation has
**all characters** contributing, weighted by $e^{iS/\hbar}$:

$$
K(x,y;t) \sim \sum_{\text{paths}} e^{iS[\text{path}]/\hbar}
= \int_{\text{paths}} \exp\!\left(\frac{i}{\hbar}\sum_\tau
  \frac{t^{|\tau|}}{\sigma(\tau)}\,F(\tau)\right)
$$

The classical limit $\hbar\to 0$ selects the dominant path
(stationary phase $\to$ extremal path $\to$ the classical character
$\phi_{\mathrm{exact}}$). Finite $\hbar$ allows ALL characters
to contribute.

**The identification:**

| Classical (ODE) | Quantum (path integral) |
|---|---|
| One character $\phi_{\mathrm{exact}}$ | Sum over all characters, weighted by $e^{iS/\hbar}$ |
| Butcher trees index the Taylor expansion | Trees index the perturbative expansion |
| Order conditions: $\phi_{\mathrm{RK}}(\tau) = 1/\sigma(\tau)$ | Feynman rules: each diagram $\to$ an amplitude |
| Counterterm: $\delta_\tau = \phi_{\mathrm{RK}} - \phi_{\mathrm{exact}}$ | Counterterm: divergent part of diagram $\to$ subtract |
| The exact flow = fully renormalized | The physical amplitude = fully renormalized |
| $h$ (step size) $\to 0$ | $\varepsilon$ (regulator) $\to 0$ |
| Lipschitz condition: $\|f'\| \le L_0$ | Kato condition: $V \in \mathcal{K}_d$ |

---

## 5.  Renormalization Uses the Same Coproduct

### 5.1  The coproduct in ODE language

The Connes-Kreimer coproduct $\Delta$ on a tree $\tau$ is:

$$
\Delta(\tau) = \tau \otimes \mathbf{1} + \mathbf{1} \otimes \tau
+ \sum_{\text{admissible cuts}} P^c(\tau) \otimes R^c(\tau)
$$

where $P^c(\tau)$ is the pruned part and $R^c(\tau)$ is the trunk.

**In ODE language:** an admissible cut separates a subtree (a sub-pattern
of nested derivatives) from the rest. The coproduct enumerates all ways
to factor a composite derivative pattern into "inner" and "outer" parts.

Example for the chain $\tau_2 = $ ●→●:

$$
\Delta(\tau_2) = \tau_2 \otimes \mathbf{1} + \mathbf{1} \otimes \tau_2
+ \text{●} \otimes \text{●}
$$

The third term says: cut the edge, leaving the bottom vertex (●, which
is $f$) as the pruned part and the top vertex (●, which is $f'[\cdot]$
waiting for an argument) as the trunk.

**In step-halving language:** the coproduct encodes how a compound
counterterm (correcting a multi-step error) decomposes into simpler
counterterms. The D6.2a control map $\tau_2(a) = a/2 + 1/4$ comes from
the $\tau_2$ component of this decomposition.

### 5.2  The coproduct in QFT language

In perturbative QFT, the same coproduct $\Delta$ enumerates **nested
and overlapping divergences** in Feynman diagrams. An admissible cut
separates a divergent subdiagram (inner divergence) from the remaining
diagram (outer divergence).

The Birkhoff decomposition of a character $\phi$ into

$$
\phi = \phi_-^{-1} \star \phi_+
$$

extracts the counterterm $\phi_-$ (encoding the divergent parts) and
the renormalized character $\phi_+$ (the finite remainder). This is
BPHZ renormalization (Bogoliubov-Parasiuk-Hepp-Zimmermann) in
Hopf-algebraic form.

### 5.3  The identification

$$
\boxed{
\text{Same coproduct } \Delta : \begin{cases}
\text{ODE:} & \text{factoring composite derivative patterns} \\
& \text{(Butcher order conditions, control maps)} \\[6pt]
\text{QFT:} & \text{factoring nested divergences} \\
& \text{(BPHZ forest formula, counterterms)}
\end{cases}
}
$$

This is Brouder's theorem (1999): the Butcher group and the
Connes-Kreimer renormalization group are the SAME group.

What the present note adds: the **physical reading**. Each vertex is
a counterterm subtraction (the derivative). The coproduct decomposes
compound subtractions into simpler ones. The exact flow is the unique
character where all subtractions are correct. Quantization extends
from one character to all characters. Renormalization handles
divergences in the extended sum. **It is all one operation — counterterm
subtraction — applied at increasing levels of compositional complexity.**

---

## 6.  The Cornerstone Proposition

We now state the central claim. Parts (i)-(iii) are theorems (proved
by Butcher, Connes-Kreimer, Brouder, and the main paper's P4.2).
Part (iv) is the interpretive synthesis.

**Proposition (Cornerstone).** *Let $\mathcal{H}_{\mathrm{CK}}$ be the
Connes-Kreimer Hopf algebra of rooted trees, $G(\mathcal{H}_{\mathrm{CK}})$
its group of characters (= the Butcher group).*

*(i) (Trees = organized subtractions.)
The exact flow $\Phi_t$ of $\dot{y}=f(y)$ defines a character
$\phi_{\mathrm{exact}} \in G(\mathcal{H}_{\mathrm{CK}})$ via the
B-series coefficients $\phi_{\mathrm{exact}}(\tau) = 1/\sigma(\tau)$.
Each edge of $\tau$ encodes one application of the derivative of $f$,
which is one counterterm subtraction (D6.3). A Runge-Kutta method of
order $p$ is a character $\phi_{\mathrm{RK}}$ that agrees with
$\phi_{\mathrm{exact}}$ on all trees of order $\le p$; the discrepancy
$\delta_\tau$ at order $p+1$ is a counterterm.*

*(ii) (Composition = Hopf product.)
The composition $\Phi_s \circ \Phi_t$ corresponds to the convolution
product $\phi_s \star \phi_t$ in $G(\mathcal{H}_{\mathrm{CK}})$, defined
via the coproduct $\Delta$. The step-halving control map $\tau_b$ of
D6.2a is the $|\tau|=2$ truncation of this product. The semigroup law
$\tau_b \circ \tau_c = \tau_{bc}$ is a shadow of the group law in
$G(\mathcal{H}_{\mathrm{CK}})$.*

*(iii) (Composition forces $\hbar$.)
When the transition kernel $K(x,y;t)$ is required to be smooth,
compose via $\int K\cdot K\,dz$, and satisfy $K \to \delta$ as
$t \to 0^+$, then $K$ must take the form $K \propto t^{-d/2}
\exp(-Q(x,y)/(\kappa t))$ with $\kappa = \hbar > 0$
(main paper P4.2). The smooth kernel is parametrized by a FAMILY
of characters (one per path), weighted by $\exp(iS[\text{path}]/\hbar)$.
The classical limit $\hbar \to 0$ projects to the single extremal
character $\phi_{\mathrm{exact}}$.*

*(iv) (Renormalization = the same subtraction, extended.)
When the weighted sum over characters (path integral) produces
divergences, renormalization is the Birkhoff decomposition
$\phi = \phi_-^{-1} \star \phi_+$ in $G(\mathcal{H}_{\mathrm{CK}})$
— using the same coproduct $\Delta$ that organized the ODE order
conditions. The counterterm $\phi_-$ subtracts the divergent part of
each tree, exactly as the ODE counterterm $\delta_\tau$ corrects the
numerical method at each tree. **Quantization extends the domain of the
Hopf algebra action from one character to a weighted sum; renormalization
controls this extension using the same algebraic structure.***

### 6.1  Diagram of the cornerstone

```
                    DERIVATIVE
                  (one subtraction)
                        |
                        ▼
                   BUTCHER TREES
              (organized subtractions)
                   /           \
                  /             \
                 ▼               ▼
           RUNGE-KUTTA      EXACT FLOW
        (approx. character)  (exact character)
                  \             /
                   \           /
                    ▼         ▼
              COMPOSITION of characters
              (Hopf algebra product ★)
                        |
                        |  "require smooth kernel
                        |   + identity limit"
                        ▼
               ℏ > 0 IS FORCED (P4.2)
              (sum over ALL characters,
               weighted by exp(iS/ℏ))
                        |
                        |  "sum diverges for
                        |   some tree patterns"
                        ▼
               RENORMALIZATION
              (Birkhoff decomposition
               in the SAME Hopf algebra)
                        |
                        ▼
               QUANTUM FIELD THEORY
              (Frabetti: colored trees
               Hairer: decorated trees)
```

---

## 7.  Where This Is Precise and Where It Needs Work

### 7.1  What is a theorem

- **(i)** is a theorem: Butcher (1972), with the Hopf-algebraic
  reformulation by Connes-Kreimer (1998) and the explicit identification
  by Brouder (1999).

- **(ii)** is a theorem: the Butcher group product encodes B-series
  composition. This is standard numerical analysis
  (Hairer-Lubich-Wanner, *Geometric Numerical Integration*, 2006).

- **(iii)** is a theorem conditional on the main paper's P4.2, which
  itself rests on: Gaussian convolution closure (standard), Lévy-Khintchine
  (standard), and the identity-limit argument (the paper's contribution).

### 7.2  What is conjectural

- **(iv)** as stated is an INTERPRETATION, not a theorem. The difficulty:

  **The tree decoration is different.** In the ODE/B-series setting, trees
  are decorated by elementary differentials $F(\tau)$ — patterns of
  derivatives of the vector field $f$. In the QFT/Feynman setting, trees
  are decorated by residues of Feynman diagrams — patterns of propagators
  and vertices. Brouder's theorem says the UNDECORATED Hopf algebras are
  isomorphic. But the physical identification "which ODE tree corresponds
  to which Feynman diagram" is not a canonical bijection for general
  theories.

  For specific simple cases, the identification IS explicit:
  - Scalar $\phi^3$ theory: Feynman diagrams are binary trees, and
    the correspondence with B-series trees is direct (Brouder 1999).
  - The 1D anharmonic oscillator $\ddot{x} + x + \lambda x^3 = 0$:
    the B-series trees of $f(x,v)=(v,-x-\lambda x^3)$ DO map to
    the Feynman diagrams of $\phi^4$ in 0+1 dimensions.

  For gauge theories (QED, QCD), the tree structure is more complex:
  colored/planar trees (Frabetti 2000-2008), and the identification
  with B-series is not direct.

- **The claim "quantization = extending the domain"** needs a precise
  categorical statement. A possible formulation: quantization is a
  functor from $G(\mathcal{H}_{\mathrm{CK}})$ (the Butcher group of
  one-character flows) to $\text{Meas}(G(\mathcal{H}_{\mathrm{CK}}))$
  (measures on the Butcher group, i.e., weighted sums of characters),
  and $\hbar$ parametrizes the width of these measures.

### 7.3  The honest gap

The biggest gap: the path integral is NOT literally a sum over B-series
characters. A generic path in the Feynman integral is not smooth enough
to have a B-series expansion (Wiener paths are Hölder-$1/2$, not $C^\infty$).
The B-series / Butcher-tree description applies to the PERTURBATIVE
expansion of the propagator (expanding in powers of the coupling or $\hbar$),
not to individual paths.

So the precise statement is:

> The **perturbative** quantum propagator and the **perturbative** ODE
> solution (B-series) are organized by the same Hopf algebra. Quantization,
> at the perturbative level, is the passage from one character (the classical
> extremal) to a sum over characters (the loop expansion). Renormalization
> handles divergences in this sum using the same coproduct.

The non-perturbative content (tunneling, instantons, resurgence) goes
beyond the tree algebra. The main paper's Remark H6.3 discusses recovery
of non-perturbative content from perturbative data via Borel resummation
and Padé — this is the question of whether the tree algebra "sees"
everything, or only the perturbative sector.

---

## 8.  Connection to Frabetti and Hairer

The cornerstone as stated handles scalar ODE $\to$ scalar QM. The
extensions:

### 8.1  Frabetti colored trees (2000-2008)

Multiple species (electron, photon in QED) require multiple tree types
with a non-commutative Hopf algebra structure. In the ODE analogy, this
corresponds to systems of ODEs with different coupling types:

$$
\dot{y}_i = f_i(y_1, \ldots, y_n)
$$

where each $f_i$ may depend on the $y_j$ in different ways.
The elementary differentials acquire species labels, and the trees
become "colored" (one color per species). The coproduct respects the
coloring.

**Status:** Brouder-Frabetti proved the algebraic structure works.
The physical payoff was limited — it confirmed Connes-Kreimer extends
to gauge theories but didn't simplify calculations.

### 8.2  Hairer decorated trees (2014)

Singular stochastic PDEs (KPZ, $\Phi^4_3$) require trees decorated with
noise labels and negative-regularity data. In the cornerstone language:

- **ODE:** each vertex = one smooth derivative (counterterm subtraction
  of a smooth function)
- **SPDE:** each vertex = one distributional operation (counterterm
  subtraction of a distribution, which may not exist without
  renormalization)

Hairer's renormalization of regularity structures
(Bruned-Hairer-Zambotti 2019) is explicitly a Hopf-algebraic BPHZ
renormalization on decorated trees. The coproduct is the same structural
operation; the decorations encode the regularity data.

**The three-level tree hierarchy:**

```
Level 1:  Butcher trees          (smooth ODE, vertices = smooth derivatives)
              |
              | add species labels
              ▼
Level 2:  Frabetti colored trees (QFT with multiple fields)
              |
              | add regularity/noise decoration
              ▼
Level 3:  Hairer decorated trees (singular SPDE, constructive QFT)
```

This mirrors the main paper's refinement chain:
Picard-Lindelöf (Lipschitz) $\to$ quantum composition (Kato) $\to$
field-theoretic renormalization (renormalizable).

---

## 9.  What This Means for the Main Paper

### 9.1  The missing section

The main paper's Section 8 (Renormalization as Controlled Refinement)
presents D6.2a (control map) and H6.2 (rooted-tree bookkeeping) as an
**analogy** between Runge-Kutta and renormalization. The cornerstone
proposition says it is an **identity**: the same Hopf algebra, the same
coproduct, the same factorization problem.

A new subsection (perhaps 8.4b or a new 8.7) should state:

1. The exact flow is the fully renormalized character of $\mathcal{H}_{\mathrm{CK}}$.
2. A numerical method is an approximate character; order conditions = tree-by-tree matching.
3. The control map $\tau_b$ is the counterterm at tree level $|\tau|=2$.
4. Quantization extends from one character to all characters (weighted by $e^{iS/\hbar}$).
5. $\hbar > 0$ is forced by composition + identity (P4.2).
6. Renormalization handles divergences using the same coproduct (Brouder's theorem).

### 9.2  What it would prove

If made precise (overcoming the gap in 7.3), this would establish:

> **Quantization is the compositional completion of the counterterm-subtraction algebra.**

Classical mechanics uses one character. Quantum mechanics uses all characters.
The passage is forced by requiring smooth composition with identity.
Renormalization is what you do when the sum over characters diverges.
All three — derivative, quantization, renormalization — are instances
of the same algebraic operation (counterterm subtraction organized by
rooted trees) at increasing levels of compositional complexity.

This is the paper's thesis (refinement-compatibility forces the chain
Newton $\to$ quantum $\to$ QFT) stated in its most algebraic form.

---

## References

1. [Butcher1972] J. C. Butcher, "An algebraic theory of integration methods," *Math. Comp.* 26 (1972), 79--106.
2. [Brouder1999] Ch. Brouder, "Runge-Kutta methods and renormalization," arXiv:`hep-th/9904014`.
3. [ConnesKreimer2000] A. Connes and D. Kreimer, "Renormalization in QFT and the Riemann-Hilbert problem I," *Comm. Math. Phys.* 210 (2000), 249--273.
4. [BrouderFrabetti2000] Ch. Brouder and A. Frabetti, "Noncommutative renormalization for massless QED," arXiv:`hep-th/0011161`.
5. [Frabetti2008] A. Frabetti, "Groups of tree-expanded series," *J. Algebra* 319 (2008), 377--413.
6. [Hairer2014] M. Hairer, "A theory of regularity structures," *Inventiones Math.* 198 (2014), 269--504.
7. [BrunedHairerZambotti2019] Y. Bruned, M. Hairer, L. Zambotti, "Algebraic renormalisation of regularity structures," *Inventiones Math.* 215 (2019), 1039--1156.
8. [HairerLubichWanner2006] E. Hairer, C. Lubich, G. Wanner, *Geometric Numerical Integration* (2nd ed., Springer, 2006).
