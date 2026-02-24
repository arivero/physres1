# 1. Introduction

## 1.1 The Refinement Program

The historical and technical problem addressed here is not "how to quantize" but
"how to define a stable continuum theory from iterative refinement."  The paper
treats Newtonian mechanics, action principles, path integration, deformation
quantization, and renormalization as parts of one continuity problem.

The program is constructive: every new structure is retained as a *limit* or
*compatibility condition* of the previous one, not as a replacement.  The chain
is

$$
\text{Newton's polygon} \;\longrightarrow\;
\text{continuous action} \;\longrightarrow\;
\text{path integral} \;\longrightarrow\;
\text{renormalized observable}
$$

and the question at each arrow is: which structure is preserved, and what new
parameter must emerge for that preservation to hold?

## 1.2 Three Recurring Obstructions

**H0.1 (Phase amplitude).** For any $S, \hbar > 0$,
$$
\left|e^{iS/\hbar}\right| = 1.
$$
Classical *concentration* is not a property of individual amplitude magnitudes;
it is a property of oscillatory *integrals*.  The precise statement is Proposition
D4.2 (stationary-phase theorem).

**H0.2 (Three obstruction types).** Naive refinement-to-zero encounters three
recurring difficulties:

1. **Singular probes.**  Point-supported variations $\delta(t - t_0)$ lie outside
   the domain of the standard first-variation formula.  Distributional treatment
   (mollifiers, weak forms) is mandatory (Section 5).

2. **Ordering/discretization ambiguity.**  Two discretizations can agree on the
   classical action $S[q]$ at every $N$ while differing at $O(\hbar)$ as operators.
   The minimal resolution is to require self-adjointness of the generator, which
   selects the midpoint (half-density) prescription (Sections 6–7).

3. **UV divergence.**  The prototypical toy divergence is
   $$\int_1^\Lambda \frac{dk}{k} = \log\Lambda \;\xrightarrow{\Lambda\to\infty}\; \infty.$$
   No continuum limit exists without a compensating running coupling (Section 8
   and Appendix 10.5).

**H0.2a (No Lebesgue measure on path space).** There is no nontrivial
translation-invariant $\sigma$-finite Borel measure on the space of continuous
paths [Sudakov 1959; Glimm–Jaffe 1987].  The symbol $\mathcal{D}q$ is therefore a
definition-by-refinement, not a raw limit of Lebesgue measure.

**H0.3 (Constants as control parameters).**  $\hbar$, $c$, $G$ are not a priori
"given" constants; they emerge as the unique couplings forced by distinct
compatibility conditions:

| Constant | Compatibility condition | Paper section |
|----------|------------------------|---------------|
| $\hbar$  | Amplitude semigroup closure | P4.2 (§6) |
| $c$      | Relativistic composition | §9 (discussed) |
| $G$      | Gravitational composition | §9 (discussed) |

## 1.3 Methodological Anchors

**First anchor: Newton's polygon.**  Replace a curve by short segments, impose a
local update rule, and pass to a limit while controlling what "vanishing" means.
The key object is a *refinement procedure with invariant content*, not a smallest
geometric piece.

**Second anchor: Action additivity.**  $S[\gamma_{if}] = S[\gamma_{im}] + S[\gamma_{mf}]$
under temporal partition is the algebraic structure that compares coarse and fine
descriptions.  The bridge to quantum amplitudes: if weights compose
multiplicatively while the underlying functional is additive, exponential weighting
is structurally forced (P0.2 / D0.1).

**Third anchor: Two limit-control mechanisms.** Deformation quantization controls
the classical-to-quantum passage via algebraic deformation [Landsman 1998].
Renormalization controls divergent refinements by regulator-dependent intermediate
steps [Connes–Kreimer 2000].

## 1.4 Contributions

1. A *refinement/composition reading* of the Newton → action → kernel chain.
2. An *intrinsic half-density* formulation of propagator composition.
3. A *semigroup-closure derivation* showing the $t^{-d/2}$ normalization is forced.
4. **Proposition P4.2** (master theorem): an action-dimensional scale $\kappa = \hbar$ is uniquely forced by composition.
5. A *refinement-compatibility framing* of renormalization.
6. A fully explicit *2D delta-interaction RG computation* as appendix witness.

## 1.5 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| H0.1 phase norm = 1 | `H0_1_phase_has_unit_norm` | ✅ proved |
| H0.2 log divergence | `H0_2_log_divergence` | ✅ proved |
| H0.3 control params | `H0_3_control_parameters_are_positive` | ✅ trivial |
| P0.0 unique scale | `P0_0_unique_scale` | 🔲 sorry |

---
*Transition to §2.* With the program stated, the next section fixes formal
vocabulary and the claim taxonomy (P/D/H).
