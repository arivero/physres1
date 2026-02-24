# 8. Renormalization as Controlled Refinement

## 8.1 The Scale-Compatibility Problem

The partition and representation channels (Sections 3–7) produce theories that
agree in the appropriate limits.  The *scale channel* is different: when the
refinement limit involves UV modes (high momenta, short distances), the naive
limit $\Lambda\to\infty$ can diverge.

**Key reframing.** Renormalization is not a *patch* to remove infinities; it is
the *consistency condition* that two UV cutoffs $\Lambda_1 > \Lambda_2$ describe
the same physics iff their couplings $g(\Lambda_1)$, $g(\Lambda_2)$ are related
by the RG flow:
$$\frac{dg}{d\log\Lambda} = \beta(g).$$

## 8.2 P6.1: Renormalized Observables

**Proposition P6.1.**  An observable $O$ is *renormalized* if $O(g(\Lambda))$
converges as $\Lambda\to\infty$, where $g(\Lambda)$ is the running coupling.
Equivalently: for any $\varepsilon>0$, there exists $\Lambda_0$ such that for all
$\Lambda_1, \Lambda_2 \geq \Lambda_0$:
$$|O(g(\Lambda_1)) - O(g(\Lambda_2))| < \varepsilon.$$

**Lean formalization improvement.** The previous version had:
```lean
let O_ren := lim Λ → ∞, O (g Λ)   -- INVALID LEAN SYNTAX
```
The corrected `P6_1_renormalized_observable` uses the proper Cauchy condition from
`Metric.tendsto_atTop` and gives a complete proof from the convergence hypothesis.
Status: ✅ proved.

## 8.3 D6.1: Beta Function from Semigroup

**Derivation D6.1.**  Suppose $\{S_t\}_{t\geq 0}$ is a semigroup of coupling maps:
$$S_{t_1}\circ S_{t_2} = S_{t_1+t_2}, \qquad S_0 = \text{id}.$$
The infinitesimal generator $\beta(g) = \partial_t S_t(g)|_{t=0}$ satisfies:
$$\frac{d}{dt}S_t(g) = \beta(S_t(g)) \qquad \forall t.$$

**Lean formalization.** `D6_1_beta_function_from_semigroup` gives the existence of
a beta function from a semigroup.  The key insight (used but not proved): the
generator of a one-parameter semigroup is the infinitesimal generator of an ODE.
Status: 🔲 sorry.

## 8.4 D6.2: The UV Logarithmic Divergence

**Derivation D6.2.**  The prototype UV divergence:
$$\int_1^\Lambda \frac{dk}{k} = \log\Lambda \;\xrightarrow{\Lambda\to\infty}\; \infty.$$

This divergence is *logarithmic* (not power-law).  A running coupling $g(\Lambda)$
can absorb it:
$$g_\text{ren} = g_\text{bare} + c\cdot\log\Lambda + O(g^2)$$
where $c$ is the 1-loop coefficient.  The renormalized coupling $g_\text{ren}$ is
$\Lambda$-independent.

**Lean formalization.** `D6_2_log_divergence` proves $\int_1^\Lambda dk/k = \log\Lambda$.
Status: 🔲 sorry (requires `MeasureTheory.integral_Ioc_rpow_of_lt`).

`D6_2_log_slower_than_power` proves $\log\Lambda/\Lambda^\varepsilon\to 0$,
formalizing the statement that the divergence is logarithmic.
Status: ✅ proved via `Real.tendsto_log_div_rpow_atTop`.

## 8.5 D6.2a: Step-Halving as RG Flow

The discrete step-halving operation $\varepsilon\to\varepsilon/2$ is a toy model
for the RG flow at scale $\Lambda\to 2\Lambda$.  For the 2D contact interaction
with $\beta(g)=g^2/(2\pi)$:

$$g(\varepsilon/2) = \frac{g(\varepsilon)}{1 - g(\varepsilon)\cdot\log 2/(2\pi)}.$$

This is the exact 1-loop formula; the step-halving discretization reproduces the
continuous RG flow to 1-loop accuracy.

**Correction from Lean review.** The previous version used `log` (unqualified)
instead of `Real.log`.  Now corrected in `D6_2a_step_halving_rg`.

## 8.6 P6.3: Closure for Finite-Parameter Flow

**Proposition P6.3.**  For the 2D coupling $g'(t) = g(t)^2/(2\pi)$ with $g(0)=g_0>0$,
the solution
$$g(t) = \frac{g_0}{1 - g_0 t/(2\pi)}$$
stays finite and positive on $[0,T]$ provided $g_0 T < 2\pi$.

The Landau pole occurs at $t^* = 2\pi/g_0$: the coupling diverges at finite
RG scale.  This is the 2D analogue of the UV Landau pole in QED.

**Lean formalization.** `P6_3_rg_flow_bounded` gives an explicit formula for the
bound and proves it satisfies the ODE.  Status: 🔲 sorry (ODE HasDerivAt step).

## 8.7 D6.4: Truncation Error Quantification

**Derivation D6.4.**  If the exact beta function differs from the $N$-loop truncation
by $|\beta_\text{exact}(g) - \beta_N(g)| \leq C\cdot g^{N+2}$, the integrated
error in $g(T)$ is bounded by $C\cdot T\cdot g_0^{N+1}/(1-g_0)^2$ for $g_0<1$.

This gives explicit control over perturbative truncation, answering the question
"how good is 1-loop?" with a quantitative bound.

## 8.8 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P6.1 renormalized observable (Cauchy) | `P6_1_renormalized_observable` | ✅ proved |
| D6.1 beta from semigroup | `D6_1_beta_function_from_semigroup` | 🔲 sorry |
| D6.2 log divergence | `D6_2_log_divergence` | 🔲 sorry |
| D6.2 log slower than power | `D6_2_log_slower_than_power` | ✅ proved |
| D6.2a step-halving RG | `D6_2a_step_halving_rg` | 🔲 sorry |
| P6.3 flow bounded below Landau pole | `P6_3_rg_flow_bounded` | 🔲 sorry |
| D6.4 truncation error bound | `D6_4_truncation_error` | 🔲 sorry |

---
*Transition to §9.* With all three compatibility channels (partition, representation, scale)
established, the next section assembles them and audits for hidden leaps.
