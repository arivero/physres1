---
title: "\"Uncuttable\" as Controlled Refinement"
author: "Alejandro Rivero"
date: "2026"
abstract: |
  This note fixes a meaning of "uncuttable" aligned with the refinement-compatibility thesis of the cornerstone manuscript.
  Here **uncuttable** does not mean "indivisible." It means: the quantity of interest is not determined by any *finite* dissection alone; it is a **limit object** whose definition requires a refinement rule and a comparison structure across refinements.
  
  The point is structural and mathematical: once a theory is built from composable local pieces, the continuum theory is the stable target of a refinement limit, and extra control data may be required for that limit to exist or be unique.
---

# 1. Definition
Call a quantity \(Q\) **uncuttable** (in this note's sense) if:
1. there exists a family of finite approximants \(Q_N\) produced by a finite dissection/refinement scheme of depth \(N\), but
2. the value of interest is not any finite \(Q_N\); it is a controlled limit \(Q=\lim_{N\to\infty}Q_N\), and
3. specifying the *rule of refinement* and the *comparison across refinements* is part of the definition of \(Q\).

The historical resonance is deliberate. The Greek \(\acute\alpha\tau o\mu o\varsigma\) ("a-tomos," uncuttable) was coined by Leucippus and Democritus to denote indivisible substance — matter that cannot be divided further. The shift proposed here is from ontology to procedure: what is "uncuttable" is not a smallest piece of stuff, but a limit object that no single finite dissection captures. The indivisibility is not in the substance but in the definition: you cannot "cut" the limit into finitely many pieces and recover it without specifying how the pieces are to be reassembled and refined.

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

A concrete failure case appears already in calculus. Consider the difference quotient \(f(x+\varepsilon)/\varepsilon\): for each finite \(\varepsilon\), the quantity diverges as \(\varepsilon\to 0\). The "refinement limit" exists only after subtracting a counterterm \(f(x)/\varepsilon\), yielding the derivative \(f'(x)\). The subtraction is part of the definition of the limit — without it, the refinement procedure does not converge. This is the simplest model of renormalization: a "cut" at finite \(\varepsilon\) is not the answer; the answer requires a controlled \(\varepsilon\to 0\) limit with explicit subtraction rules.

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

These are exactly the obstructions discussed in the cornerstone manuscript: the point is not indivisible atoms, but limit control.

In the quantum setting, the "uncuttable" character becomes sharper. The path-integral amplitude
\[
K(q_f,t_f;q_i,t_i)=\int \prod_{k=1}^{N-1}dq_k\;\prod_{k=0}^{N-1}K_\Delta(q_{k+1},q_k;t_k)
\]
is a product of short-time kernels composed over a time partition of depth \(N\). No finite \(N\) gives the exact propagator; the propagator is the \(N\to\infty\) refinement limit. Crucially, the control parameter \(\hbar\) enters the short-time kernels as \(\exp(iS_\Delta/\hbar)\), and different discretization conventions (left-point, midpoint, symmetric) can produce distinct \(O(\hbar)\) corrections even though they share the same classical \(\hbar\to 0\) limit [FeynmanHibbs1965]. Thus the quantum amplitude is doubly "uncuttable": it requires both a refinement rule (time-slicing prescription) and a comparison/equivalence structure (ordering convention or half-density normalization) before the limit is well-defined.

# 4. Outlook: refinement compatibility as "the extra structure"
In the companion papers, the "extra structure" used to control refinement limits is made explicit:
- half-densities make kernel composition coordinate-free without hidden measure choices,
- control maps \(\tau\) encode how parameters must flow under refinement to maintain stability,
- renormalization is the compatibility rule when naive refinement limits diverge.

This note is therefore a small conceptual bridge: it isolates an early, analysis-level instance of the same meta-problem that reappears in quantization and in QFT.

# References

1. [BatesWeinstein1997] Sean Bates and Alan Weinstein, *Lectures on the Geometry of Quantization*, Berkeley Mathematics Lecture Notes, vol. 8, AMS, 1997. OA: <https://math.berkeley.edu/~alanw/GofQ.pdf>. (Half-density formalism for coordinate-free kernel composition.)
2. [FeynmanHibbs1965] Richard P. Feynman and Albert R. Hibbs, *Quantum Mechanics and Path Integrals*, McGraw-Hill, 1965. (Path integral as a refinement limit of time-sliced amplitudes.)
