# Momentum Point-Interactions Along the Path (Impulses) vs Spatial Point Potentials

Date: 2026-02-10

This note records why “point potentials” are not the only (or even the primary) delta-like object relevant to an action-extremum/quantization narrative.

## 1) Two different “point interactions”
### (A) Spatial point potential
In nonrelativistic QM, a “point potential” means a spatial contact term in the Hamiltonian, e.g.
\[
H=-\frac{\hbar^2}{2m}\Delta + g\,\delta^{(d)}(x),
\]
whose singularity is in **space**.

### (B) Point interaction along the path (impulse / corner defect)
In the variational language of trajectories \(q(t)\), a different kind of “point interaction” is a defect localized in **time** that changes the canonical momentum along the path.

This is closer to “stationary extremes of the action” because it is literally a distributional statement about the Euler–Lagrange operator.

## 2) Delta-in-time action term \(\Rightarrow\) momentum jump (derivation)
Let the base Lagrangian be \(\mathcal L_0(q,\dot q,t)\) and define a defect action
\[
S[q] = \int_{t_i}^{t_f}\mathcal L_0(q,\dot q,t)\,dt \;-\; \int_{t_i}^{t_f} U(q(t))\,\delta(t-t_0)\,dt,
\]
so the defect contributes \(-U(q(t_0))\).

The Euler–Lagrange equation in distribution form becomes
\[
\frac{d}{dt}\frac{\partial \mathcal L_0}{\partial \dot q}
\;-\;\frac{\partial \mathcal L_0}{\partial q}
\;=\; -\,\nabla U(q(t_0))\,\delta(t-t_0).
\]
Integrating across a small interval \([t_0-\varepsilon,t_0+\varepsilon]\) yields the jump condition
\[
\boxed{\ \left[\frac{\partial\mathcal L_0}{\partial \dot q}\right]_{t_0^-}^{t_0^+}
= -\,\nabla U\big(q(t_0)\big)\ }\tag{J}
\]
assuming \(\partial_{\dot q}\mathcal L_0\) has one-sided limits.

For \(\mathcal L_0=\frac{m}{2}\|\dot q\|^2 - V(q)\), the canonical momentum is \(p=m\dot q\), and (J) becomes
\[
m\big(\dot q(t_0^+)-\dot q(t_0^-)\big)= -\,\nabla U(q(t_0)).
\]
This is the clean “momentum point interaction along the path”: a time-localized action defect produces an **impulse**.

## 3) Time-slicing dictionary: “impulse” as an insertion/kick
In a time-sliced amplitude, a localized term \(-U(q)\delta(t-t_0)\) contributes a factor
\[
\exp\!\left(\frac{i}{\hbar}U(q(t_0))\right)
\]
in the slice containing \(t_0\). In this sense, impulses correspond to operator insertions / kick factors at a slice, rather than to static spatial contact terms.

This is conceptually distinct from spatial point potentials, which modify the weight for *all* slices through \(\exp\big(-\tfrac{i}{\hbar}\int g\,\delta(q(t))\,dt\big)\).

## 4) A cautionary \(\delta'\) remark (derivative-of-delta defects)
If one writes an Euler–Lagrange equation with a \(\delta'(t-t_0)\) term, the meaning must be defined by pairing:
\[
\langle \delta'(t-t_0),\varphi(t)\rangle = -\varphi'(t_0).
\]
Such terms typically arise from differentiating jump discontinuities (distributional derivatives) or from integrating by parts a boundary-type defect.

They should **not** be conflated with stationary-set deltas like \(\delta(f'(x))\), and products like \(\delta\cdot \delta'\) require an explicit regularization.

## 5) Promotion target
If needed, promote only the “dictionary” sentence from Section 3 into the delta/corner thread, keeping the main paper focused (Section 5.4 already contains the jump-condition core).

