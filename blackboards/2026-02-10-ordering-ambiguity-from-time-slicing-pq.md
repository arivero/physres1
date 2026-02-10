# Ordering Ambiguity from Time Slicing: A Minimal \(H=pq\) Example

Date: 2026-02-10  
Cycle: `S49`

## Purpose
Make the "non-uniqueness" obstruction in `Heuristic H0.2` concrete with a one-page calculation:
different time-slicing conventions (left/right/midpoint) for the **same classical Hamiltonian** can lead to **quantum-distinct generators** that differ by \(O(\hbar)\).

This is not a pathology; it is a precise sense in which "refine \(\to 0\)" is not unique unless one supplies a compatibility rule (ordering prescription / equivalence).

## Setup: a toy Hamiltonian linear in \(p\)
Consider the 1D classical Hamiltonian \(H(q,p)=p\,q\).
Define a one-step time-sliced propagator in the \(q\)-representation by
\[
(U_{\varepsilon}^{(\alpha)}\psi)(q')
=\int_{\mathbb R} dq\int_{\mathbb R}\frac{dp}{2\pi\hbar}\;
\exp\!\Bigl(\frac{i}{\hbar}p(q'-q)\Bigr)\,
\exp\!\Bigl(-\frac{i\varepsilon}{\hbar}\,p\,q_\alpha\Bigr)\,
\psi(q),
\]
where the slicing convention is encoded by
\[
q_\alpha := (1-\alpha)\,q + \alpha\,q',
\qquad \alpha\in[0,1].
\]
Special cases:
- \(\alpha=0\): "left-point" evaluation (\(q_\alpha=q\)).
- \(\alpha=1\): "right-point" evaluation (\(q_\alpha=q'\)).
- \(\alpha=\tfrac12\): midpoint / Weyl-like convention.

## Step 1: integrate out \(p\) (delta constraint)
The \(p\)-integral gives a delta constraint:
\[
\int \frac{dp}{2\pi\hbar}\exp\!\Bigl(\frac{i}{\hbar}p\bigl(q'-q-\varepsilon q_\alpha\bigr)\Bigr)
=\delta\!\bigl(q'-q-\varepsilon q_\alpha\bigr).
\]
So
\[
(U_{\varepsilon}^{(\alpha)}\psi)(q')
=\int dq\;\delta\!\bigl(q'-q-\varepsilon((1-\alpha)q+\alpha q')\bigr)\;\psi(q).
\]

Rewrite the delta argument as a linear function of \(q\):
\[
q'-q-\varepsilon((1-\alpha)q+\alpha q')
= q'(1-\varepsilon\alpha) - q(1+\varepsilon(1-\alpha)).
\]
Therefore,
\[
\delta\!\bigl(q'(1-\varepsilon\alpha) - q(1+\varepsilon(1-\alpha))\bigr)
=\frac{1}{1+\varepsilon(1-\alpha)}\;
\delta\!\left(q-\frac{1-\varepsilon\alpha}{1+\varepsilon(1-\alpha)}\,q'\right).
\]

## Step 2: evaluate the \(q\)-integral (Jacobian matters)
We obtain an explicit action on wavefunctions:
\[
(U_{\varepsilon}^{(\alpha)}\psi)(q')
=\frac{1}{1+\varepsilon(1-\alpha)}\;
\psi\!\left(\frac{1-\varepsilon\alpha}{1+\varepsilon(1-\alpha)}\,q'\right).
\]
Expand to first order in \(\varepsilon\):
\[
\frac{1}{1+\varepsilon(1-\alpha)} = 1-\varepsilon(1-\alpha)+O(\varepsilon^2),
\qquad
\frac{1-\varepsilon\alpha}{1+\varepsilon(1-\alpha)} = 1-\varepsilon+O(\varepsilon^2).
\]
Hence,
\[
(U_{\varepsilon}^{(\alpha)}\psi)(q')
=\bigl(1-\varepsilon(1-\alpha)\bigr)\,\bigl(\psi(q')-\varepsilon q'\psi'(q')\bigr)
+O(\varepsilon^2)
=\psi(q')-\varepsilon\bigl(q'\psi'(q')+(1-\alpha)\psi(q')\bigr)+O(\varepsilon^2).
\]

So the generator (defined by \(U_\varepsilon^{(\alpha)}=1+\varepsilon L_\alpha+O(\varepsilon^2)\)) is
\[
L_\alpha = -\left(q\frac{d}{dq} + (1-\alpha)\right).
\]

## Operator-ordering interpretation
If we write the Schrödinger evolution as \(U_\varepsilon^{(\alpha)}=\exp\!\bigl(-\tfrac{i\varepsilon}{\hbar}\hat H_\alpha\bigr)\), then
\[
\hat H_\alpha = i\hbar\left(q\frac{d}{dq} + (1-\alpha)\right).
\]
Using \(\hat q=q\) and \(\hat p=-i\hbar\,\frac{d}{dq}\), we have
\[
\hat q\hat p = -i\hbar\,q\frac{d}{dq},\qquad
\hat p\hat q = -i\hbar\left(q\frac{d}{dq}+1\right).
\]
Therefore
\[
\hat H_\alpha = -\bigl((1-\alpha)\hat p\hat q+\alpha \hat q\hat p\bigr),
\]
and the three special cases become:
- \(\alpha=0\): \(\hat H_0 = -\hat p\hat q\).
- \(\alpha=1\): \(\hat H_1 = -\hat q\hat p\).
- \(\alpha=\tfrac12\): \(\hat H_{1/2} = -\tfrac12(\hat p\hat q+\hat q\hat p)\) (symmetric/Weyl).

These operators differ by constants \(\sim i\hbar\), i.e. they are **classically equivalent** but **quantum distinct**.

## Moral for the refinement narrative
The time-slicing refinement scaffold does not uniquely determine the quantum generator:
the endpoint/midpoint choice is invisible at the classical level but survives at \(O(\hbar)\).

This is exactly the "non-uniqueness" obstruction in `Heuristic H0.2`:
refinement limits require an explicit compatibility choice (ordering prescription or equivalence class).

## Promotion target (for `C76`)
Add a short companion sentence near `Heuristic H0.2` item 2:
time-slicing a classical expression like \(H=pq\) yields different quantum operators depending on endpoint/midpoint evaluation (e.g. \(\hat p\hat q\) vs \(\hat q\hat p\)), differing by \(O(\hbar)\).

