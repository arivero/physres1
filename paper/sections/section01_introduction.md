# 1. Introduction

## 1.1 The Refinement Program

The question this paper addresses is not "how to quantize" but how to define a
stable continuum theory from iterative refinement. We treat Newtonian mechanics,
action principles, path integration, deformation quantization, and
renormalization as parts of one continuity problem. The program is constructive:
every new structure is retained as a *limit* or *compatibility condition* of the
previous one, not as a replacement. The chain is

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
Classical concentration is a property of oscillatory *integrals*, not of
individual amplitudes. The precise mechanism is stationary phase (D4.2).

**H0.2 (Three obstruction types).** Naive refinement encounters three difficulties:

1. **Singular probes.**  Point-supported variations lie outside the domain of the
   first-variation formula. Distributional treatment is mandatory (Section 5).

2. **Ordering ambiguity.**  Two discretizations can agree on $S[q]$ at every $N$
   while differing at $O(\hbar)$ as operators. Self-adjointness of the generator
   selects the midpoint prescription (Sections 6--7).

3. **UV divergence.**  $\int_1^\Lambda dk/k = \log\Lambda \to \infty$.
   No continuum limit exists without a running coupling (Section 8).

There is no nontrivial translation-invariant $\sigma$-finite Borel measure on
path space [Sudakov 1959; Glimm--Jaffe 1987], so $\mathcal{D}q$ is a
definition-by-refinement, not a limit of Lebesgue measure.

**H0.3 (Constants as control parameters).**  $\hbar$, $c$, $G$ emerge as the
unique couplings forced by composition:

| Constant | Compatibility condition | Paper section |
|----------|------------------------|---------------|
| $\hbar$  | Amplitude semigroup closure | Section 6 |
| $c$      | Relativistic composition | Section 9 |
| $G$      | Gravitational composition | Section 9 |

## 1.3 Contributions

1. A *refinement/composition reading* of the Newton to action to kernel chain.
2. An *intrinsic half-density* formulation of propagator composition.
3. A *semigroup-closure derivation* showing the $t^{-d/2}$ normalization is forced.
4. **P4.2** (master theorem): an action-dimensional scale $\kappa = \hbar$ is uniquely forced by composition.
5. A *refinement-compatibility framing* of renormalization.
6. A fully explicit *2D delta-interaction RG computation* as appendix witness.

## 1.4 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| H0.1 phase norm = 1 | `H0_1_phase_has_unit_norm` | proved |
| H0.2 log divergence | `H0_2_log_divergence` | sorry |
| H0.3 control params | `H0_3_control_parameters_are_positive` | trivial |
| P0.0 unique scale | `P0_0_unique_scale` | sorry |
