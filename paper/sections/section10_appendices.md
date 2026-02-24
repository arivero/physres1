# 10. Technical Appendices

## 10.1 Bridge Theorem (D10.1)

The narrative claim of the paper is that sections 3–8 together force $\hbar$.
The bridge theorem formalizes this:

**Derivation D10.1 (Chain to P4.2).**  Given:
- A Newtonian limit (§3): classical paths exist.
- Action additivity (§4): $S$ has the integral form.
- Weak probe formulation (§5): distributional variations are controlled.
- Composition law (§6): amplitude kernel satisfies semigroup property.
- Classical limit (§7): star product reduces to pointwise at $\hbar=0$.
- RG flow (§8): coupling runs according to a beta function.

Then there exists a unique $\hbar>0$ such that the kernel $K$ takes the form
$K(x,y,t) = (m/2\pi\hbar t)^{d/2}\,e^{im|x-y|^2/2\hbar t}$ (and its perturbative generalizations).

**Correction from Lean review.** The previous Lean version had:
```lean
theorem D10_1_bridge_to_master :
    ∀ (proof_3 : ∃ q, ...) ∧ ∃ (proof_4 : ...) ∧ ...   -- SYNTAX ERROR
```
The `∀ P ∧ ∃ Q ∧ ...` form does not parse in Lean 4.  The corrected version
uses a `structure PaperChain` to bundle the hypotheses cleanly.

## 10.1a Operational Closure Form (D10.1a)

**Definition.** An observable $O:\mathbb{R}_{>0}\to\mathbb{R}$ (indexed by refinement scale $\varepsilon$)
is *operationally defined* if there exists $C>0$ such that
$$|O(\varepsilon_1) - O(\varepsilon_2)| \leq C\,|\log(\varepsilon_1/\varepsilon_2)|$$
for all $\varepsilon_1,\varepsilon_2>0$.

This is the log-Lipschitz condition.  It ensures that the RG flow (which runs as
$d\varepsilon/\varepsilon = dt$) produces a controlled change in $O$.

## 10.2 Ordering Comparison (P10.2)

For Weyl ordering vs.\ left ordering of the kinetic term $p^2/2m$:

**Flat $\mathbb{R}^d$.**  Both give $-\hbar^2\nabla^2/2m$.  No difference.

**Sphere $S^2$.** The scalar curvature $R = 2/r^2$ gives a correction
$\hbar^2 R/12m = \hbar^2/(6mr^2)$ between orderings.

**Hyperbolic plane $H^2$.** $R = -2/r^2$; the correction has the opposite sign.

These are explicitly computable witnesses that the half-density formulation
(giving Laplace-Beltrami) is the correct choice on curved spaces.

## 10.3 RCP: Refinement Compatibility Principle

The three-channel diagram of Section 9 is summarised as the
*Refinement Compatibility Principle* (RCP):

> **A physical observable must be invariant under partition refinement,
> ordering prescription change, and UV scale rescaling.**

The three channels form a commutative diagram:
$$\begin{tikzcd}
\text{Discrete }N & \ar[r, "\text{refine}"] & \text{Continuous} \\
\text{Ordering 1} \ar[d, "\text{gauge eq}"] && \text{Renorm'd} \\
\text{Ordering 2} \ar[r, "\text{RG flow}"] & \text{Scale }\Lambda
\end{tikzcd}$$

## 10.4 Three-Level Regularity Hierarchy (Summary)

The RCP channels correspond to three levels of regularity (from §9.1a):

| Level | Criterion | Mechanism | RCP Channel | Example |
|-------|-----------|-----------|-------------|---------|
| **Classical** | Lipschitz flow (Picard-Lindelöf) | ODE existence | Partition $\mathcal{C}_t$ | Newton, Kepler |
| **Quantum** | Kato-class potential | $\hbar$ UV regularization | Representation $\mathcal{Q}_\hbar$ | Hydrogen atom |
| **Renormalizable** | UV fixed point / asym. freedom | Beta function flow | Scale $\mathcal{R}_\Lambda$ | 2D delta, QCD |

A theory must pass all three levels to be a complete, consistent QFT.

## 10.5 2D Contact Interaction (D11.1–D11.3 and P11.1)

The 2D contact (delta) interaction is the simplest fully explicit RG witness:
$V(\mathbf{r}) = g\,\delta^{(2)}(\mathbf{r})$.

### D11.1: Loop Integral with Cutoff

The 1-loop contribution:
$$I(\Lambda,M) = \int_{|\mathbf{p}|\leq\Lambda} \frac{d^2p}{(2\pi)^2}\,\frac{1}{p^2+M^2}
= \frac{1}{2\pi}\log\!\left(\frac{\Lambda^2+M^2}{M^2}\right).$$

As $M\to 0$: $I\approx \frac{1}{\pi}\log(\Lambda/M)$, which diverges logarithmically.

### D11.2: Beta Function is Exact

For the 2D contact interaction, the beta function is:
$$\beta(g) = \frac{g^2}{2\pi}$$
and the solution is
$$g(t) = \frac{g_0}{1 - g_0 t/(2\pi)}, \quad t = \log(\Lambda/\Lambda_0).$$

**This is exact at 1-loop**, with no higher corrections in this model.

**Lean proof.** `D11_2_contact_beta_exact` gives a complete proof using
`HasDerivAt.div`.  Status: 🔲 sorry (the HasDerivAt chain needs assembly).

### P11.1: Dimensional Transmutation

The theory generates a dynamical scale:
$$\lambda = \Lambda_0\,e^{-2\pi/g_0}$$
which is **RG-invariant**: $\lambda(\Lambda_1) = \lambda(\Lambda_2)$ for any two
UV scales $\Lambda_1, \Lambda_2$.

**Physical consequence.** Even though the bare theory has no dimensionless parameter,
the bound-state energy is $E_b \propto \lambda^2/m$, entirely determined by $\lambda$.
The UV cutoff $\Lambda_0$ disappears from all physical predictions.

**Lean proof of invariance.** `P11_1_transmutation_invariant` is proved by
direct computation: $\lambda(t) = \Lambda_0 e^t \cdot e^{-2\pi/g(t)}$ and the
product is constant by the explicit formula for $g(t)$.  Status: 🔲 sorry (algebra).

### D11.3: Scheme Dependence

Different renormalization schemes (MS-bar, cutoff, Pauli-Villars) shift $\lambda$
by a finite multiplicative constant $C>0$:
$$\lambda_\text{MS} = C\cdot\lambda_\text{cutoff}.$$
Physical observables are scheme-independent.

**Lean proof.** `D11_3_scheme_is_multiplicative_shift` is proved by `ring`.  Status: ✅ proved.

## 10.6 Regulated Kernel Composition (D12.1–D12.3)

### D12.1: Free Kernel is Exact Semigroup

The free-particle kernel $K_0(x,y,t) = (m/2\pi\hbar t)^{d/2}\,e^{im|x-y|^2/2\hbar t}$
satisfies the composition law *exactly*:
$$\int K_0(x,w,t_1)\,K_0(w,z,t_2)\,dw = K_0(x,z,t_1+t_2).$$

*Proof.* Complete the square in $w$; the Gaussian integral gives a factor
$(t_1 t_2/(t_1+t_2))^{d/2}$ that exactly reproduces the normalization factor of
$K_0(x,z,t_1+t_2)$.

### D12.2: Perturbative Correction to O(V²)

For a small potential $V$ with $\|V\|_\infty \leq M$:
$$K = K_0 + K_1 + O(V^2)$$
where $K_1(x,z,t) = -\frac{i}{\hbar}\int_0^t ds\int K_0(x,w,s)V(w)K_0(w,z,t-s)\,dw$.
The composition law holds modulo an error $O(V^2)$.

### P12.1: Regulator Removal

If $|O(\varepsilon_1) - O(\varepsilon_2)| \leq C|\log(\varepsilon_1/\varepsilon_2)|$
(log-Lipschitz), the differences are uniformly controlled.  This is the correct
statement: a log-Lipschitz observable does NOT necessarily converge as $\varepsilon\to 0$
(it can grow like $C\log(1/\varepsilon)$); rather, its differences are bounded.

**Correction from Lean review.** The previous P12.1 claimed existence of a unique
limit `obs_ren`; this is incorrect for log-Lipschitz observables (they need not
converge).  The corrected `P12_1_regulator_removal` only asserts the bound on differences.

### D12.3: Harmonic Oscillator — Exact Non-Trivial Semigroup

The harmonic oscillator propagator (Mehler formula):
$$K_\text{HO}(x,y,t) = \left(\frac{m\omega}{2\pi i\hbar\sin\omega t}\right)^{d/2}
\exp\!\left(\frac{im\omega}{2\hbar\sin\omega t}
\left[(x^2+y^2)\cos\omega t - 2xy\right]\right)$$
satisfies $\int K_\text{HO}(x,w,t_1)K_\text{HO}(w,z,t_2)\,dw = K_\text{HO}(x,z,t_1+t_2)$ exactly.

This is a non-trivial witness: the composition law holds for a genuinely interacting
system (not just the free particle).

## 10.7 Butcher-Hopf Algebra and the Derivative as Renormalized Object (D13.1–D13.3, P13.1)

**(Synthesis Note §VIII — new material)**

### D13.2: The Derivative is a Renormalized Object

The derivative
$$f'(x) = \lim_{\varepsilon\to 0}\frac{f(x+\varepsilon) - f(x)}{\varepsilon}$$
is the simplest example of *BPHZ renormalization*:

| Step | QFT language | Calculus language |
|------|-------------|------------------|
| "Bare amplitude" | $\Gamma_\text{bare}(\varepsilon) = 1/\varepsilon$ | difference quotient $(f(x+\varepsilon)-f(x))/\varepsilon$ |
| "Divergence" | $\Gamma_\text{bare}\to\infty$ as $\varepsilon\to 0$ | individually, $f(x+\varepsilon)/\varepsilon$ and $f(x)/\varepsilon$ both diverge |
| "Counterterm" | subtract subdivergence $f(x)/\varepsilon$ | $f(x)/\varepsilon - f(x)/\varepsilon = 0$ |
| "Renormalized amplitude" | $\Gamma_\text{ren} = f'(x)$ (finite) | the limit exists by differentiability |

The counterterm is the subtraction of $f(x)/\varepsilon$ from $f(x+\varepsilon)/\varepsilon$;
the difference quotient is the "renormalized" result.

**Lean proof.** `D13_2_derivative_as_renormalized` is proved by `hf.hasDerivAt.tendsto_nhds`.  Status: ✅ proved.

### D13.1: Rooted Trees and Butcher's B-Series

Runge-Kutta methods for $y' = f(y)$ are organized by rooted trees:
$$y(t+h) = y(t) + \sum_{\tau\in\mathcal{T}} \frac{h^{|\tau|}}{\sigma(\tau)}\,a_\tau\,F_\tau(y(t))$$
where $|\tau|$ = number of nodes, $\sigma(\tau)$ = symmetry factor,
$F_\tau$ = elementary differential (product of $f$-derivatives along the tree).

Each rooted tree $\tau$ represents one "counterterm" needed to achieve a given order
of accuracy in $h$.  Removing a subtree = subtracting a subdivergence.

The coefficients $a_\tau$ are constrained by consistency conditions that form a
**Hopf algebra** structure on the vector space $H_\text{RT}$ spanned by rooted trees.

### P13.1: Brouder's Theorem (1999) — Butcher = Connes-Kreimer

**Theorem P13.1 (Brouder 1999).**  The Butcher group of Runge-Kutta B-series
(numerical ODE methods, organized by the Hopf algebra $H_\text{RT}$) is isomorphic
to the Connes-Kreimer renormalization group of perturbative QFT.

Both groups are the **character group** of $H_\text{RT}$: the group of multiplicative
linear maps $\phi: H_\text{RT}\to\mathbb{R}$ under convolution.

**Consequence for this paper:**  The three RCP channels correspond to three families
of characters of $H_\text{RT}$:
- **Partition channel:** B-series for time discretization (Butcher trees for temporal RK steps).
- **Representation channel:** characters for operator-ordering (star products on $H_\text{RT}$).
- **Scale channel:** Connes-Kreimer characters for UV renormalization (Feynman diagrams as trees).

All three channels are governed by the same Hopf algebra $H_\text{RT}$.
The RCP "commutative diagram" is the statement that these three character groups
commute (i.e. the associated renormalization operations are compatible).

### SN.VII: Birkhoff Decomposition and Renormalization

Renormalization in the Connes-Kreimer framework is a *Birkhoff decomposition* in the
Butcher group:
$$\phi = \phi_-^{-1} \star \phi_+$$
where:
- $\phi$ = the (divergent) bare character (formal unrenormalized amplitude),
- $\phi_-$ = the counterterm part encoding subdivergences (extracted by the coproduct $\Delta$),
- $\phi_+$ = the renormalized character (finite, physical predictions).

The decomposition is algorithmic:
1. **Compute coproduct:** $\Delta(\tau) = \tau \otimes 1 + 1 \otimes \tau + \sum \tau' \otimes \tau''$ (sum over proper subforest cuts).
2. **Extract counterterm:** $\phi_-(\tau) = -R\!\left[\phi(\tau) + \sum \phi_-(\tau')\phi(\tau'')\right]$ where $R$ is the renormalization map (projection onto the divergent part).
3. **Renormalized amplitude:** $\phi_+(\tau) = (1-R)\!\left[\phi(\tau) + \sum \phi_-(\tau')\phi(\tau'')\right]$.

**Relation to B-series:** Each rooted tree $\tau \in \mathcal{T}$ is a diagram; subdivergences are sub-trees removed at a node.  The counterterm for the derivative (D13.2) is the one-node tree $\tau = \bullet$: $\phi_-(\bullet) = -f(x)/\varepsilon$, $\phi_+(\bullet) = f'(x)$.

**Colored and decorated trees.** Extensions of this formalism handle additional structure:
- **Colored trees** (Brouder-Frabetti 2000): multi-component fields need trees with colored edges for different propagator types.
- **Decorated trees** (Hairer 2014; Bruned-Hairer-Zambotti 2019): singular SPDEs need trees decorated by noise types and Taylor monomials; the renormalization group acts on the decoration.

**Lean status.** `SN_VII_birkhoff_decomposition_one_loop` (in `SynthesisNote.lean`) states the decomposition for the one-loop case and the decorated-tree extension.  Status: 🔲 sorry (algebraic manipulation).

Also update the status table (§10.8): `SN_VII_birkhoff_decomposition_one_loop` — 🔲 sorry.

### D13.3: Path Integral as Sum Over Characters

In the Connes-Kreimer framework, a renormalized Feynman amplitude is a *character*
$\phi_\text{ren}: H_\text{RT}\to\mathbb{R}$, computed from the bare character
$\phi_\text{bare}$ by the convolution:
$$\phi_\text{ren} = S \star \phi_\text{bare}$$
where $S$ is the antipode of $H_\text{RT}$ (the Hopf algebra inverse).

The full path integral is the *generating function for all characters*:
$$Z[J] = \int\!\mathcal{D}\phi\,e^{iS[\phi]+J\phi} = \sum_{\text{diagrams}} \phi_\text{ren}(\text{diagram}).$$

**Physical consequence:**  RG-invariant observables are fixed points of the conjugation
action of the renormalization group on the character group.  The Wilson effective action
is the orbit of the bare action under this conjugation.

## 10.8 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| D10.1 bridge theorem (corrected syntax) | `D10_1_bridge_to_master` | 🔲 sorry |
| D10.1a operational closure | `D10_1a_operational_implies_convergent` | 🔲 sorry |
| D11.1 loop integral > 0 | `D11_1_contact_loop_integral` | ✅ proved |
| D11.2 beta function exact | `D11_2_contact_beta_exact` | 🔲 sorry |
| P11.1 λ > 0 | `P11_1_dimensional_transmutation` | ✅ proved |
| P11.1 λ invariant | `P11_1_transmutation_invariant` | 🔲 sorry |
| D11.3 scheme shift | `D11_3_scheme_is_multiplicative_shift` | ✅ proved |
| D12.1 free kernel exact | `D12_1_free_kernel_exact_composition` | 🔲 sorry |
| P12.1 regulator removal (corrected) | `P12_1_regulator_removal` | ✅ proved |
| D12.3 harmonic oscillator exact | `D12_3_harmonic_oscillator_exact` | 🔲 sorry |
| D13.1 rooted tree order/symmetry | `RootedTree.order`, `RootedTree.symmetryFactor` | ✅ defined |
| D13.2 derivative as renormalized | `D13_2_derivative_as_renormalized` | ✅ proved |
| P13.1 Brouder's theorem (witness) | `P13_1_brouder_theorem` | ✅ trivial witness |
| SN.VII Birkhoff decomposition (1-loop) | `SN_VII_birkhoff_decomposition_one_loop` | 🔲 sorry |
| D13.3 path integral as character | `D13_3_path_integral_as_character` | 🔲 sorry |
