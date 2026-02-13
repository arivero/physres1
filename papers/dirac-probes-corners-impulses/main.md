---
title: "Dirac-Supported Probes, Corners, and Impulses: A Variational Note"
author: "Alejandro Rivero"
date: "2026"
abstract: |
  Variational principles routinely invoke "point-like probes" of extrema, yet the precise hypotheses under which such probes are safe are often left implicit. This note collects the functional-analytic conditions that make mollifier-based localization of the Euler–Lagrange equation rigorous, states them as an explicit theorem, and works through a complete model — the free particle with a single delta-kick — to illustrate corners, impulse jumps, and the role of distributional forcing. A clean separation is maintained between *Dirac-supported variations* (always safe under stated regularity) and *delta potentials* (which require renormalization and are a distinct mathematical object).
---

This note is a companion to the cornerstone manuscript. It expands the content of Section 5 there into a self-contained treatment with sharper hypotheses and a worked model.

# 1. Motivation

The cornerstone manuscript (Section 5) introduces weak stationarity, mollifier probing, and corner/impulse conditions as Propositions P3.1–P3.4. Those statements are sufficient for the structural chain developed there, but they compress the hypotheses and omit worked computations. This satellite note serves three purposes:

1. State the mollifier localization result as a formal theorem with explicit, numbered hypotheses (Section 2).
2. Work through a complete model — the delta-kick free particle — showing trajectory, momentum jump, and action evaluation in full detail (Section 4).
3. Separate two superficially similar but logically distinct uses of the Dirac delta in variational mechanics (Section 5).

# 2. Mollifier Localization Theorem

We work on a time interval \([t_i,t_f]\) with Lagrangian \(\mathcal{L}(q,\dot{q},t)\) and candidate trajectory \(q:[t_i,t_f]\to\mathbb{R}^d\).

`Theorem 2.1 (Mollifier localization of the Euler–Lagrange equation).`
Assume:

(H1) \(q\in C^1([t_i,t_f];\mathbb{R}^d)\) and \(\mathcal{L}\) is \(C^2\) in \((q,\dot{q})\) and \(C^0\) in \(t\).

(H2) The first variation satisfies \(\delta S[q;\eta]=0\) for every \(\eta\in C_c^\infty((t_i,t_f);\mathbb{R}^d)\).

(H3) The Euler–Lagrange expression
\[
F[q](t):=\frac{\partial\mathcal{L}}{\partial q}(q,\dot{q},t)
-\frac{d}{dt}\frac{\partial\mathcal{L}}{\partial\dot{q}}(q,\dot{q},t)
\]
is continuous at a point \(t_0\in(t_i,t_f)\).

Then \(F[q](t_0)=0\).

`Proof.`
Fix a nonneg mollifier \(\rho\in C_c^\infty(\mathbb{R})\) with \(\int\rho=1\) and set \(\rho_\varepsilon(s)=\varepsilon^{-1}\rho(s/\varepsilon)\). For any unit vector \(u\in\mathbb{R}^d\), the test variation \(\eta_\varepsilon(t)=\rho_\varepsilon(t-t_0)\,u\) is in \(C_c^\infty\) for \(\varepsilon\) small enough. By (H2):
\[
0=\delta S[q;\eta_\varepsilon]=\int_{t_i}^{t_f}F[q](t)\cdot\rho_\varepsilon(t-t_0)\,u\,dt
=u\cdot\int_{t_i}^{t_f}\rho_\varepsilon(t-t_0)\,F[q](t)\,dt.
\]
By (H3) the convolution converges to \(F[q](t_0)\) as \(\varepsilon\to0^+\). Since \(u\) is arbitrary, \(F[q](t_0)=0\). \(\square\)

`Remark 2.2 (Role of each hypothesis).`
(H1) ensures \(F[q]\) is locally integrable so the distributional pairing makes sense. (H2) is the global stationarity input. (H3) is the local regularity gate: without it, mollifier limits may fail to converge or may converge to an averaged value rather than a pointwise one. If \(F[q]\) is continuous on all of \((t_i,t_f)\), iteration of Theorem 2.1 recovers the classical Euler–Lagrange equation everywhere.

# 3. Corners and Impulses: Formal Statements

When hypothesis (H3) fails — because \(\dot{q}\) or external forcing is discontinuous — two distinct situations arise.

## 3.1 Corners (unforced velocity jump)

`Theorem 3.1 (Corner condition / Weierstrass–Erdmann).`
Assume \(q\) is piecewise \(C^2\) with a single velocity discontinuity at \(t_0\), satisfying the unforced Euler–Lagrange equation on \((t_i,t_0)\) and \((t_0,t_f)\) separately. Then the canonical momentum is continuous at \(t_0\):
\[
\left[\frac{\partial\mathcal{L}}{\partial\dot{q}}\right]_{t_0^-}^{t_0^+}=0.
\]

`Proof.`
Integrate the Euler–Lagrange equation over \([t_0-\varepsilon,t_0+\varepsilon]\). The integral of \(\partial_q\mathcal{L}\) vanishes as \(\varepsilon\to0\) by boundedness; the derivative term yields the momentum jump. \(\square\)

## 3.2 Impulses (delta forcing)

`Theorem 3.2 (Impulse jump condition).`
Consider the forced distributional equation
\[
\frac{d}{dt}\frac{\partial\mathcal{L}}{\partial\dot{q}}
-\frac{\partial\mathcal{L}}{\partial q}
=J\,\delta(t-t_0),
\quad J\in\mathbb{R}^d.
\]
If \(\partial_{\dot{q}}\mathcal{L}\) has one-sided limits at \(t_0\), then
\[
\frac{\partial\mathcal{L}}{\partial\dot{q}}(t_0^+)
-\frac{\partial\mathcal{L}}{\partial\dot{q}}(t_0^-)
=J.
\]

`Proof.`
Same integration argument: the delta integrates to \(J\), the smooth remainder vanishes. \(\square\)

The distinction is structural: corners arise from variational boundary conditions (matching at a junction), while impulses arise from external forcing (a source term in the equation of motion).

# 4. Worked Model: Free Particle with a Single Delta-Kick

We give a complete computation that illustrates both Theorem 3.2 and the evaluation of action on a kinked trajectory.

## 4.1 Setup

Consider a particle of mass \(m\) in one dimension with Lagrangian \(\mathcal{L}=\frac{m}{2}\dot{q}^2\) and an external impulsive force \(J\,\delta(t-t_0)\) applied at time \(t_0\in(0,T)\). The equation of motion is
\[
m\ddot{q}=J\,\delta(t-t_0).
\]

## 4.2 Solution

The trajectory is piecewise linear:
\[
q(t)=\begin{cases}
q_i+v_-\,t & 0\le t<t_0,\\
q_i+v_-\,t_0+v_+\,(t-t_0) & t_0\le t\le T,
\end{cases}
\]
with the velocity jump \(v_+-v_-=J/m\) from Theorem 3.2.

Boundary conditions \(q(0)=q_i\), \(q(T)=q_f\) fix the velocities. Writing \(\Delta v=J/m\):
\[
v_-=\frac{q_f-q_i-\Delta v\,(T-t_0)}{T},
\qquad
v_+=v_-+\Delta v.
\]

## 4.3 Action evaluation

The action splits across the kink:
\[
S=\frac{m}{2}\bigl(v_-^2\,t_0+v_+^2\,(T-t_0)\bigr).
\]
In the unforced limit (\(J=0\), so \(\Delta v=0\)):
\[
S_0=\frac{m}{2}\frac{(q_f-q_i)^2}{T},
\]
the standard free-particle result. The impulse adds a positive-definite kinetic energy cost:
\[
S-S_0=\frac{m}{2}\frac{t_0(T-t_0)}{T}\,(\Delta v)^2>0\quad(J\neq0).
\]
This confirms that the delta-kick raises the action above the free minimum — the impulsive trajectory is not an extremum of the unforced problem.

## 4.4 Angular momentum preservation under central impulses

For a central force in the plane, the impulse is radial: \(J=J_r\,\hat{r}\). Since angular momentum depends only on the transverse velocity component,
\[
L=m\,r\,\dot{\theta},
\]
a purely radial impulse leaves \(\dot{\theta}\) (and hence \(L\)) unchanged across the kick, recovering the equal-area property of Newton's polygon at the distributional level.

# 5. Safe vs Unsafe Uses of the Dirac Delta in Variational Mechanics

The preceding sections involve two related but *logically distinct* mathematical objects. Conflating them is a common source of error.

## 5.1 Dirac-supported variations (safe under regularity)

Using mollifier sequences \(\rho_\varepsilon\to\delta\) as *test functions* against a continuous integrand is always safe — it is standard distribution theory. This is Theorem 2.1. No renormalization or regularization ambiguity arises; the \(\varepsilon\to0\) limit is unique and controlled by continuity.

## 5.2 Delta potentials (require renormalization)

A point interaction \(V(q)=g\,\delta(q)\) in the Hamiltonian is a different object. In dimensions \(d\ge2\), the naive coupling constant \(g\) requires renormalization (the resolvent acquires a logarithmic or power-law divergence depending on \(d\)). In \(d=1\) the delta potential is well-defined without renormalization, but this is an accident of low dimension, not a general principle. The companion note on delta objects treats the half-density kernel structure of point interactions in detail.

## 5.3 Summary table

| Object | Math status | Renormalization? |
|--------|-------------|------------------|
| Mollifier probe of \(F[q]\) (Thm 2.1) | Rigorous | No |
| Corner/impulse matching (Thms 3.1–3.2) | Rigorous | No |
| \(\delta\) potential, \(d=1\) | Well-defined | No |
| \(\delta\) potential, \(d\ge 2\) | Requires care | Yes |
| Products \(\delta(t)^2\) | Undefined | Always |

# 6. Outlook

1. Extend the single-impulse model to a sequence of \(N\) impulses and take the continuum limit, recovering stochastic forcing or the path-integral time-slicing prescription.
2. Treat the piecewise-smooth trajectory as a weak solution and examine whether the Hamilton–Jacobi equation acquires viscosity-solution structure at the kink.
3. Connect the corner-condition analysis to broken geodesics in Riemannian geometry (Synge's world function approach).

# References

1. [Gelfand1963] I. M. Gelfand and S. V. Fomin, *Calculus of Variations*, Prentice-Hall, 1963. (Reprinted by Dover, 2000.)
2. [Giaquinta1996] M. Giaquinta and S. Hildebrandt, *Calculus of Variations I: The Lagrangian Formalism*, Springer, 1996.
3. [AlbeverioGesztesyHoeghKrohnHolden2005] S. Albeverio, F. Gesztesy, R. Høegh-Krohn, and H. Holden, *Solvable Models in Quantum Mechanics*, 2nd ed., AMS Chelsea Publishing, 2005.
