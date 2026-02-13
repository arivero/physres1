# Step-Halving Control Map: Harmonic Oscillator Witness

Date: 2026-02-13
Cycle: S105

## Goal
Make the abstract step-halving control map (D6.2a, Section 8.4) concrete by applying it to a specific ODE: the harmonic oscillator \(y'' + y = 0\), written as a first-order system.

## Setup
The harmonic oscillator as a system:
\[
\begin{pmatrix} y \\ v \end{pmatrix}' = \begin{pmatrix} v \\ -y \end{pmatrix}
=: f\!\begin{pmatrix} y \\ v \end{pmatrix}
\]

The Jacobian is the constant matrix:
\[
f' = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}
\]

## Explicit Euler map
\[
E_h\begin{pmatrix} y \\ v \end{pmatrix}
= \begin{pmatrix} y \\ v \end{pmatrix} + h \begin{pmatrix} v \\ -y \end{pmatrix}
= \begin{pmatrix} y + hv \\ v - hy \end{pmatrix}
\]

## Step-halving comparison
Two half-steps of Euler:
\[
E_{h/2} \circ E_{h/2}\begin{pmatrix} y \\ v \end{pmatrix}
= E_{h/2}\begin{pmatrix} y + \frac{h}{2}v \\ v - \frac{h}{2}y \end{pmatrix}
\]

Second application:
\[
= \begin{pmatrix}
(y + \frac{h}{2}v) + \frac{h}{2}(v - \frac{h}{2}y) \\
(v - \frac{h}{2}y) - \frac{h}{2}(y + \frac{h}{2}v)
\end{pmatrix}
= \begin{pmatrix}
y + hv - \frac{h^2}{4}y \\
v - hy - \frac{h^2}{4}v
\end{pmatrix}
\]

## Discrepancy
\[
E_{h/2} \circ E_{h/2} - E_h
= \begin{pmatrix}
-\frac{h^2}{4}y \\ -\frac{h^2}{4}v
\end{pmatrix}
= \frac{h^2}{4} \begin{pmatrix} -y \\ -v \end{pmatrix}
= \frac{h^2}{4}\, f'(y,v)[f(y,v)]
\]

since:
\[
f'[f] = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix} \begin{pmatrix} v \\ -y \end{pmatrix}
= \begin{pmatrix} -y \\ -v \end{pmatrix}
\]

This confirms D6.2a's general formula: the \(O(h^2)\) discrepancy is \(\frac{h^2}{4}\,f'[f]\), and for the harmonic oscillator \(f'[f] = -\mathrm{Id}\) (proportional to the identity).

## The control map in action
The parametric family \(\Phi_h^{(a)}(y) = y + hf + ah^2 f'[f]\) becomes:
\[
\Phi_h^{(a)}\begin{pmatrix} y \\ v \end{pmatrix}
= \begin{pmatrix} y + hv - ah^2 y \\ v - hy - ah^2 v \end{pmatrix}
\]

Step-halving gives:
\[
\Phi_{h/2}^{(a)} \circ \Phi_{h/2}^{(a)}
= \Phi_h^{(\tau_2(a))} + O(h^3)
\]
with \(\tau_2(a) = a/2 + 1/4\), fixed point \(a_* = 1/2\).

At the fixed point \(a = 1/2\):
\[
\Phi_h^{(1/2)}\begin{pmatrix} y \\ v \end{pmatrix}
= \begin{pmatrix} y + hv - \frac{h^2}{2}y \\ v - hy - \frac{h^2}{2}v \end{pmatrix}
\]

This is the first three terms of the exact flow \(\cos(h), \sin(h)\):
\[
\begin{pmatrix} y\cos h + v\sin h \\ v\cos h - y\sin h \end{pmatrix}
= \begin{pmatrix} y + hv - \frac{h^2}{2}y + O(h^3) \\ v - hy - \frac{h^2}{2}v + O(h^3) \end{pmatrix}
\]

So the universal attractor \(a_* = 1/2\) produces exactly the second-order Taylor approximation to the exact flow — as proven abstractly in D6.2a.

## Accuracy vs symplecticity (subagent correction)
**Important distinction** (caught by rigorous-mathematician subagent):
- The \(a = 1/2\) map is **second-order accurate** (local error \(O(h^3)\)), NOT symplectic.
- The map matrix is \(M = (1-h^2/2)I + hJ\) with \(\det M = (1-h^2/2)^2 + h^2 = 1 + h^4/4 \neq 1\).
- So energy \(r^2 = y^2+v^2\) grows by a factor \(1 + h^4/4\) per step — tiny but nonzero.
- True energy preservation requires a symplectic map (e.g., implicit midpoint, which has \(\det = 1\)).

The control map \(\tau_2\) drives any initial \(a\) toward \(a_* = 1/2\) under repeated halving: the attractor is the **second-order accurate** approximation, not a symplectic one. Symplecticity is a separate condition not captured by the order-of-accuracy ansatz family.

**Note:** The harmonic oscillator has constant Jacobian (\(f'' = 0\)), so all higher B-series terms beyond \(f'[f]\) vanish. This makes it a maximally clean test case but also a degenerate one — it does not test closure at higher orders.

## Candidate text for promotion

After D6.2a in Section 8.4, insert:

```
`Derivation D6.2a-HO (Harmonic-oscillator witness for step-halving).`
Apply the control-map construction to $y'' + y = 0$ written as a system with $f(y,v) = (v,-y)$. The Jacobian is constant: $f'= \bigl(\begin{smallmatrix}0&1\\-1&0\end{smallmatrix}\bigr)$, so $f'(y,v)[f(y,v)] = (-y,-v)$ (the harmonic oscillator has $f''=0$, making the $O(h^3)$ analysis trivially clean).

The explicit Euler discrepancy is $E_{h/2}\circ E_{h/2} - E_h = (h^2/4)\,f'[f]$, confirming D6.2a. At the fixed point $a_\ast = 1/2$, the parametric map becomes $(y + hv - h^2 y/2,\; v - hy - h^2 v/2)$, which matches the exact flow $(y\cos h + v\sin h,\; v\cos h - y\sin h)$ to order $h^2$. The control map $\tau_2(a) = a/2 + 1/4$ drives any initial discretization toward this second-order-accurate scheme under repeated halving — exponential relaxation to the universal attractor, with rate $1/2$ per doubling.
```
