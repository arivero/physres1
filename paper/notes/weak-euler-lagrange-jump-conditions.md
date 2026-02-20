# Weak Euler-Lagrange with Point-Supported Sources: δ vs δ′ (Toy Model)

This note is an internal derivation supporting the "singular probes" thread: once we admit corners, impulses, or point-supported terms in the action, Euler-Lagrange equations are naturally **distributional**.

The key dictionary is:
- \(\delta_{t_0}\) probes values: \(\langle \delta_{t_0},\eta\rangle=\eta(t_0)\).
- \(\delta_{t_0}'\) probes derivatives: \(\langle \delta_{t_0}',\eta\rangle=-\eta'(t_0)\).

Throughout, let test variations \(\eta\in C_c^\infty(\mathbb R)\) (compact support).

## 1. Weak Euler-Lagrange (reminder)
For an action \(S[q]=\int L(q,\dot q,t)\,dt\), the first variation is
\[
\delta S[q;\eta]
=\int \Bigl(\frac{\partial L}{\partial q}-\frac{d}{dt}\frac{\partial L}{\partial \dot q}\Bigr)\eta(t)\,dt,
\]
after integrating by parts (boundary terms vanish for compact support or fixed endpoints).

Thus the extremal condition is the **distributional identity**
\[
\frac{\partial L}{\partial q}-\frac{d}{dt}\frac{\partial L}{\partial \dot q}=0
\quad \text{in }\mathcal D'(\mathbb R).
\]

## 2. δ forcing produces a momentum jump
Take the 1D Lagrangian \(L=\tfrac{m}{2}\dot q^2 - V(q)\), and add a point-supported term
\[
S[q] = \int \Bigl(\tfrac{m}{2}\dot q(t)^2 - V(q(t))\Bigr)\,dt\;-\;J\,q(t_0).
\]
Interpret \(q(t_0)\) as the distribution pairing \(q(t_0)=\langle \delta_{t_0}, q\rangle\).

The variation of the point term is \(\delta(-J q(t_0))=-J\,\eta(t_0)=-J\langle \delta_{t_0},\eta\rangle\).
So the weak Euler-Lagrange equation becomes
\[
m\,\ddot q(t) + V'(q(t)) = J\,\delta(t-t_0)
\quad \text{in }\mathcal D'(\mathbb R).
\]

Integrate across a small interval \((t_0-\varepsilon,t_0+\varepsilon)\):
\[
\int_{t_0-\varepsilon}^{t_0+\varepsilon} m\,\ddot q(t)\,dt
= m\bigl(\dot q(t_0^+)-\dot q(t_0^-)\bigr)
= \int_{t_0-\varepsilon}^{t_0+\varepsilon} J\,\delta(t-t_0)\,dt = J.
\]
Hence δ forcing encodes an **impulse**:
\[
m\bigl(\dot q(t_0^+)-\dot q(t_0^-)\bigr)=J.
\]

This is the cleanest toy model for how "corner/impulse" data appears as δ terms in weak form.

## 3. δ′ forcing produces a configuration jump
Now consider a point-supported term that couples to \(\dot q\) at \(t_0\):
\[
S[q] = \int \Bigl(\tfrac{m}{2}\dot q(t)^2 - V(q(t))\Bigr)\,dt\;-\;K\,\dot q(t_0).
\]
Formally, \(\dot q(t_0)=\langle \delta_{t_0},\dot q\rangle\). Integrating by parts against test functions suggests the equivalent distributional representation
\[
\dot q(t_0) = -\langle \delta_{t_0}', q\rangle
\quad(\text{in the sense that } \langle \delta_{t_0}',\eta\rangle=-\eta'(t_0)).
\]
Then the point term variation becomes \(\delta(-K\dot q(t_0)) = +K\,\eta'(t_0) = -K\langle \delta_{t_0}',\eta\rangle\), and the weak Euler-Lagrange equation reads
\[
m\,\ddot q(t) + V'(q(t)) = -K\,\delta'(t-t_0)
\quad \text{in }\mathcal D'(\mathbb R).
\]

This forcing has a different discontinuity signature. Integrating once gives
\[
m\,\dot q(t) = -K\,\delta(t-t_0) + (\text{regular}),
\]
so \(\dot q\) acquires a δ spike and \(q\) acquires a **step**:
\[
q(t_0^+)-q(t_0^-)= -\frac{K}{m}.
\]

So δ′ forcing is naturally associated with a configuration jump, whereas δ forcing is associated with a momentum jump.

## 4. Do not conflate δ′ with δ(f′)
The δ′ above is the **distributional derivative** of δ (probing derivatives of test functions).
It is unrelated to stationary-set localization distributions like \(\delta(f')\) that appear when one writes "extremal = root of derivative".

## Promotion target
A later content task could add a one-line pointer near the "singular probes" discussion in `paper/main.md`:
"In weak form, δ sources encode impulses (momentum jumps) and δ′ sources encode steps (configuration jumps); see `paper/notes/weak-euler-lagrange-jump-conditions.md`."

