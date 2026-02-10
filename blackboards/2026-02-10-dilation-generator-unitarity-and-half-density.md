# Dilation Generator, Unitarity, and the Half-Density Factor (Control-Map View of Ordering)

Date: 2026-02-10  
Cycle: `S50`

## Purpose
Reinterpret the \(H=pq\) time-slicing ordering family as (partly) a **representation choice**:
the extra constant term in the generator is exactly the Jacobian/half-density factor needed for unitarity under dilations.

This supports the manuscript's language: a "control map" (compatibility condition) can select a preferred scheme.

## 1. Dilation as a classical flow
The classical Hamiltonian \(H=pq\) generates dilations in \(q\):
\[
\dot q = \frac{\partial H}{\partial p} = q,
\qquad
\dot p = -\frac{\partial H}{\partial q} = -p.
\]
So the flow is \(q(t)=e^{t}q(0)\), \(p(t)=e^{-t}p(0)\).

## 2. Quantum generators and the constant-term ambiguity
In the \(q\)-representation, \(\hat q=q\), \(\hat p=-i\hbar\partial_q\). Then
\[
\hat q\hat p = -i\hbar\,q\partial_q,
\qquad
\hat p\hat q = -i\hbar\,(q\partial_q+1),
\]
so orderings differ by a constant:
\[
\hat p\hat q - \hat q\hat p = -i\hbar.
\]
The symmetric (Weyl) choice is
\[
\hat D := \frac{1}{2}(\hat q\hat p+\hat p\hat q)
= -i\hbar\left(q\partial_q+\frac12\right).
\]

This is exactly the \(\alpha=\tfrac12\) case in the time-slicing family from `S49`.

## 3. Unitarity selects the symmetric constant (half-density factor)
Consider the dilation action on wavefunctions on \(\mathbb R_+\) with the usual inner product
\[
\langle \psi,\phi\rangle = \int_0^\infty \overline{\psi(q)}\,\phi(q)\,dq.
\]
If we define a "pure pullback" action
\[
(U_a^{(0)}\psi)(q)=\psi(e^{-a}q),
\]
then
\[
\|U_a^{(0)}\psi\|^2
=\int_0^\infty |\psi(e^{-a}q)|^2\,dq
=e^{a}\int_0^\infty |\psi(u)|^2\,du
=e^{a}\|\psi\|^2,
\]
so it is not unitary.

To compensate the Jacobian \(dq = e^{a}du\), we must include the half-density factor:
\[
(U_a\psi)(q)=e^{-a/2}\,\psi(e^{-a}q).
\]
Then \(\|U_a\psi\|=\|\psi\|\).

Differentiate at \(a=0\):
\[
\left.\frac{d}{da}\right|_{a=0} (U_a\psi)(q)
= -\frac12\psi(q) - q\psi'(q)
=-\left(q\partial_q+\frac12\right)\psi(q).
\]
Thus the **unitary** dilation generator is
\[
\hat D = -i\hbar\left(q\partial_q+\frac12\right),
\]
the symmetric ordering.

## 4. Moral: ordering ambiguity as a control-map / representation choice
For this toy model, the family \(q\partial_q + c\) corresponds to different ways of representing the same classical dilation flow on a Hilbert space:
the constant \(c\) encodes the density weight needed for the group action to preserve the chosen inner product.

So the "ordering ambiguity" witnessed by endpoint time slicing is not just arbitrary:
a natural control condition (unitarity of composition) selects a preferred scheme (the symmetric/half-density factor).

This is a clean micro-model of the broader manuscript theme:
kernel composition wants half-densities, and scalarization/measure choices can look like ordering ambiguities unless controlled explicitly.

## Promotion suggestion (for `C77`)
Optionally tighten the parenthetical witness in `Heuristic H0.2` item 2:
mention that different endpoint choices yield \(-\hat p\hat q\) vs \(-\hat q\hat p\), and that requiring unitary composition selects the symmetric (half-density) choice.

