# Blackboard: Corners and Impulses from Weak Euler–Lagrange (\(\delta\) and \(\delta'\))

Date: 2026-02-10

## Purpose
Make the “extremals are distributional” claim concrete with a toy computation:
1. a **corner** (jump in \(\dot q\)) produces a \(\delta\)-term in \(\ddot q\),
2. the weak Euler–Lagrange equation forces a **jump condition** (typically continuity of momentum),
3. a **delta forcing in time** produces a controlled jump (impulse),
4. \(\delta'\) appears at higher distributional order (e.g. discontinuous \(q\), or higher-derivative actions).

This is meant as support math for the delta-objects thread and the “corners/impulses” agenda item, not as a standalone manuscript section yet.

## 1. Distribution basics (one identity we use)
Let \(H(t)\) be the Heaviside step function. In distributions, \(H'(t)=\delta(t)\), i.e.
\[
\langle H',\varphi\rangle=-\langle H,\varphi'\rangle=\varphi(0).
\]
More generally, for \(t_\ast\in\mathbb R\), \(H(t-t_\ast)'=\delta(t-t_\ast)\).

## 2. A corner produces a \(\delta\) in \(\ddot q\)
Consider a continuous, piecewise-\(C^1\) path with a single corner at \(t_\ast\), with left/right velocities
\[
\dot q(t)=
\begin{cases}
v_- & t<t_\ast,\\
v_+ & t>t_\ast.
\end{cases}
\]
Write this as a distribution:
\[
\dot q(t)=v_- + (v_+-v_-)\,H(t-t_\ast).
\]
Then
\[
\ddot q(t)=(v_+-v_-)\,\delta(t-t_\ast)
\]
in the sense of distributions (differentiate the Heaviside).

So “having a corner” is literally “having a delta in the second derivative”.

## 3. Weak Euler–Lagrange forces the corner jump to vanish (free particle)
Take the free-particle Lagrangian \(L=\frac{m}{2}\dot q^2\).
The Euler–Lagrange equation is \(m\ddot q=0\) (classically).
In weak/distributional form, the extremal condition is:
for all compactly supported test variations \(\eta\),
\[
0=\delta S[q;\eta]
=\int m\dot q\,\dot \eta\;dt
=-\int m\ddot q\,\eta\;dt,
\]
where the integration by parts is the *definition* of distributional derivative.

If \(\ddot q\) contains \((v_+-v_-)\delta(t-t_\ast)\), then
\[
\int m\ddot q\,\eta\;dt
= m(v_+-v_-)\,\eta(t_\ast),
\]
so for this to vanish for all \(\eta\) we must have \(v_+=v_-\).

Conclusion: for \(L=\frac{m}{2}\dot q^2\), a genuine extremal cannot have a corner; corners create a \(\delta\) defect in the distributional Euler–Lagrange equation.

## 4. General jump condition: continuity of momentum
For a general first-order Lagrangian \(L(q,\dot q,t)\), define the momentum \(p:=\partial L/\partial \dot q\).
If \(p(t)\) has a jump \(\Delta p:=p_+-p_-\) at \(t_\ast\), then its distributional derivative contains a delta:
\[
\frac{dp}{dt}=\text{(regular part)} + \Delta p\;\delta(t-t_\ast).
\]
The weak Euler–Lagrange equation
\[
\frac{\partial L}{\partial q}-\frac{d}{dt}\frac{\partial L}{\partial \dot q}=0
\quad\text{(as a distribution)}
\]
therefore forces \(\Delta p=0\) unless \(\partial L/\partial q\) also contains a compensating delta at the same point.

This is the simplest distributional derivation of the basic “corner condition”: **momentum is continuous across a free corner**.

## 5. Impulse example: delta forcing produces a controlled jump
Add a point-supported source in time to the action, e.g.
\[
S[q]=\int \frac{m}{2}\dot q^2\,dt \;-\; J\,q(t_\ast).
\]
Varying gives
\[
\delta S
=\int m\dot q\,\dot \eta\,dt \;-\; J\,\eta(t_\ast)
=-\int m\ddot q\,\eta\,dt \;-\; J\,\eta(t_\ast).
\]
Thus the distributional Euler–Lagrange equation is
\[
m\ddot q = J\,\delta(t-t_\ast),
\]
so a delta forcing produces the jump condition
\[
m(v_+-v_-)=J.
\]
This is the clean “impulse” picture: the defect delta in the equation exactly matches a delta in the forcing.

## 6. When does \(\delta'\) appear?
If \(q\) itself is discontinuous at \(t_\ast\), write
\[
q(t)=q_- + (q_+-q_-)\,H(t-t_\ast).
\]
Then \(\dot q\) contains a delta term \((q_+-q_-)\delta(t-t_\ast)\), and \(\ddot q\) contains \((q_+-q_-)\delta'(t-t_\ast)\).
So \(\delta'\) arises at **higher distributional order** (discontinuities, differentiated impulses, or higher-derivative actions).

In typical mechanical actions with \(L(q,\dot q)\), discontinuous \(q\) is excluded by finiteness/regularity assumptions, so \(\delta'\) terms usually signal that we left that class of admissible paths (or changed the action).

## 7. Promotion queue
1. If we later write a dedicated “corners/impulses” follow-up, this note provides the explicit toy computation.
2. In `papers/delta-objects/main.md`, we can (optionally) cite the impulse/jump computation as a worked example supporting §3.4’s “extremals are distributional” remark.

