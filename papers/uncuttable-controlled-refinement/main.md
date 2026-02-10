---
title: "\"Uncuttable\" as Controlled Refinement"
author: []
date: ""
abstract: |
  This note fixes a project-internal meaning of "uncuttable" aligned with the refinement-compatibility thesis of `paper/main.md`.
  Here **uncuttable** does not mean "indivisible." It means: the quantity of interest is not determined by any *finite* dissection alone; it is a **limit object** whose definition requires a refinement rule and a comparison structure across refinements.
  
  The point is structural and mathematical: once a theory is built from composable local pieces, the continuum theory is the stable target of a refinement limit, and extra control data may be required for that limit to exist or be unique.
---

# 1. Definition
Call a quantity \(Q\) **uncuttable** (in this note's sense) if:
1. there exists a family of finite approximants \(Q_N\) produced by a finite dissection/refinement scheme of depth \(N\), but
2. the value of interest is not any finite \(Q_N\); it is a controlled limit \(Q=\lim_{N\to\infty}Q_N\), and
3. specifying the *rule of refinement* and the *comparison across refinements* is part of the definition of \(Q\).

This is the ordinary situation in analysis: finite partitions approximate, but the object is defined by a limiting procedure together with hypotheses that ensure convergence/uniqueness.

# 2. Toy model: an integral is already a refinement limit
Let \(f:[a,b]\to\mathbb R\). A prototypical refinement family is a partition
\(P_N=\{a=t_0<\cdots<t_N=b\}\) with mesh \(\|P_N\|:=\max_k(t_{k+1}-t_k)\to 0\).
Define the Riemann-sum approximants
\[
Q_N:=\sum_{k=0}^{N-1} f(\xi_k)\,(t_{k+1}-t_k),
\qquad \xi_k\in[t_k,t_{k+1}].
\]
In good cases, \(Q_N\to \int_a^b f(t)\,dt\) as \(\|P_N\|\to 0\), and the limit is independent of the tags \(\xi_k\). But this is not a tautology: the limit can fail to exist or can depend on the refinement rule unless hypotheses are stated.

In the present program, this is the basic moral:
finite cuts approximate, but the value is defined by **controlled refinement**.

# 3. Dynamics: action, stationarity, and the need for control data
The cornerstone manuscript uses the same template in mechanics.
Given a partition of time, the discrete action
\[
S_N[q]=\sum_k \mathcal L\!\left(q_k,\frac{q_{k+1}-q_k}{\Delta t_k},t_k\right)\Delta t_k
\]
is a finite refinement approximant. The continuum action \(S[q]=\int \mathcal L\,dt\) is a refinement limit.

Two "uncuttable" features appear immediately when one pushes beyond smooth classical paths:
1. **Singular probes and corners:** stationarity must be interpreted in weak/distributional form; point-supported variations require mollification.
2. **Non-uniqueness of refinement schemes:** different discretization conventions (even if classically equivalent) can produce distinct refined objects unless an equivalence or control map is specified.

These are exactly the obstructions enumerated in `paper/main.md` (`Heuristic H0.2`): the point is not indivisible atoms, but limit control.

# 4. Outlook: refinement compatibility as "the extra structure"
In this repo, the "extra structure" used to control refinement limits is made explicit:
- half-densities make kernel composition coordinate-free without hidden measure choices,
- control maps \(\tau\) encode how parameters must flow under refinement to maintain stability,
- renormalization is the compatibility rule when naive refinement limits diverge.

This note is therefore a small conceptual bridge: it isolates an early, analysis-level instance of the same meta-problem that reappears in quantization and in QFT.
