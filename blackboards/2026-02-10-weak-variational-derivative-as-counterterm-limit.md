# Weak Variational Derivative as a Counterterm-Type Limit

Date: 2026-02-10  
Cycle: `S39`

## Goal
Make explicit the bridge between:
1. difference-quotient renormalization pattern,
2. distributional Euler-Lagrange derivatives.

The target is a compact promotion into `papers/rg-fundamental/main.md` (Section 3).

## Setup
Let \(p(t)\) be locally integrable and \(\eta\in C_c^\infty\) a compact-support test variation.
Define the forward finite-difference operator
\[
\Delta_\varepsilon p(t):=\frac{p(t+\varepsilon)-p(t)}{\varepsilon}.
\]
In strong form \(\Delta_\varepsilon p\) may diverge pointwise near singularities, but weak pairing is controlled:
\[
\int \Delta_\varepsilon p(t)\,\eta(t)\,dt
=
\int p(t)\,\frac{\eta(t-\varepsilon)-\eta(t)}{\varepsilon}\,dt.
\]
Taking \(\varepsilon\to0\):
\[
\int \Delta_\varepsilon p\,\eta
\xrightarrow[\varepsilon\to0]{}
-\int p(t)\,\dot\eta(t)\,dt
=\langle \dot p,\eta\rangle.
\]

Interpretation:
- the apparent divergence in each shifted term is removed by local subtraction,
- the limit is the distributional derivative \(\dot p\),
- this is the same regulate/subtract/limit grammar as the Section 3 calculus toy.

## Jump Example (delta generation)
Take
\[
p(t)=p_- + (p_+-p_-)\,H(t-t_0).
\]
Then as a distribution
\[
\dot p=(p_+-p_-)\,\delta(t-t_0).
\]
So in weak Euler-Lagrange form
\[
E[q]:=\frac{\partial L}{\partial q}-\frac{d}{dt}\frac{\partial L}{\partial\dot q},
\]
if \(p=\partial L/\partial\dot q\) has a jump at \(t_0\), then \(E[q]\) contains a point-supported term
\[
-(p_+-p_-)\,\delta(t-t_0),
\]
with sign from the integration-by-parts convention.

## Promotion Candidate
Add one concise remark in RG paper Section 3:
- derivative as local-subtraction limit in weak form,
- jump \(\Rightarrow\) delta contact term automatically.
