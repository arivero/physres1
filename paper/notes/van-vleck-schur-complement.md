# Van Vleck Structure from Eliminating Intermediate Variables (Schur Complement Template)

Status: internal note (non-citable). Goal: show, in the cleanest finite-dimensional setting, why “integrate out intermediate coordinates” produces (i) Schur complements in the effective quadratic form and (ii) determinant prefactors. This is the algebraic template behind mixed Hessian determinants (Van Vleck type) appearing after time slicing.

## 1. Quadratic model and exact Gaussian elimination
Let \(x\in\mathbb R^n\) be “endpoint variables” and \(y\in\mathbb R^m\) be “intermediate variables”. Consider the quadratic phase
\[
f(x,y)=\frac12
\begin{pmatrix}x\\y\end{pmatrix}^{\!\top}
\begin{pmatrix}A & B\\ B^\top & C\end{pmatrix}
\begin{pmatrix}x\\y\end{pmatrix},
\]
with \(C\) invertible.

Complete the square in \(y\):
\[
f(x,y)=\frac12\,x^\top\!\left(A-B\,C^{-1}B^\top\right)x
\;+\;\frac12\left(y+C^{-1}B^\top x\right)^\top C\left(y+C^{-1}B^\top x\right).
\]

Define the (Euclidean-signature) Gaussian integral
\[
I(x):=\int_{\mathbb R^m} \exp\!\left(-\frac{1}{\hbar}f(x,y)\right)\,dy.
\]
Then the integral is exact and yields
\[
I(x)=\left((2\pi\hbar)^{m}\det C^{-1}\right)^{1/2}
\exp\!\left(-\frac{1}{2\hbar}\,x^\top\!\left(A-B\,C^{-1}B^\top\right)x\right)
\times (\text{constant phase/sign, depending on signature conventions}).
\]

Two universal outputs appear:
1. **Effective quadratic form (Schur complement):**
   \[
   A_{\mathrm{eff}}:=A-B\,C^{-1}B^\top.
   \]
2. **Determinant prefactor from eliminated variables:**
   \[
   (\det C)^{-1/2}.
   \]

This is the simplest explicit witness of the general pattern “extremize + fluctuations”: the effective action uses the classical extremum \(y_\ast(x)=-C^{-1}B^\top x\), while fluctuations contribute the determinant factor.

## 2. Mixed Hessians after eliminating intermediate variables
To see how *mixed* second derivatives arise, extend the model to two endpoint variables \(x\in\mathbb R^{n_1}\), \(z\in\mathbb R^{n_2}\) and intermediate \(y\in\mathbb R^m\), with a quadratic phase
\[
f(x,y,z)=\frac12
\begin{pmatrix}x\\y\\z\end{pmatrix}^{\!\top}
\begin{pmatrix}
 A & B & D\\
 B^\top & C & E\\
 D^\top & E^\top & F
\end{pmatrix}
\begin{pmatrix}x\\y\\z\end{pmatrix},
\qquad C\ \text{invertible}.
\]
Eliminating \(y\) produces an effective quadratic form in \((x,z)\) with block matrix equal to the Schur complement of \(C\):
\[
\begin{pmatrix}
 A & D\\
 D^\top & F
\end{pmatrix}_{\!\mathrm{eff}}
=
\begin{pmatrix}
 A & D\\
 D^\top & F
\end{pmatrix}
-
\begin{pmatrix}
 B\\
 E^\top
\end{pmatrix}
C^{-1}
\begin{pmatrix}
 B^\top & E
\end{pmatrix}.
\]
In particular, the mixed endpoint block becomes
\[
D_{\mathrm{eff}}
=D-B\,C^{-1}E.
\]

So the mixed second derivatives of the *effective* phase are not the same as the mixed block of the original Hessian; they are corrected precisely by a Schur-complement term coming from the eliminated variables.

## 3. Stationary phase is the oscillatory analogue
For an oscillatory integral
\[
J(x,z;\hbar)=\int_{\mathbb R^m}\exp\!\left(\frac{i}{\hbar}f(x,y,z)\right)\,dy,
\]
stationary phase about the critical point \(y_\ast(x,z)\) yields:
1. an effective phase \(f_{\mathrm{eff}}(x,z):=f(x,y_\ast(x,z),z)\),
2. a prefactor \(\propto |\det f_{yy}(x,y_\ast,z)|^{-1/2}\),
3. and the endpoint second derivatives of \(f_{\mathrm{eff}}\) are again governed by Schur-complement formulas (the quadratic case is exact and serves as the local model).

## 4. Why this matters for Van Vleck
In time slicing, one introduces many intermediate coordinates and then composes kernels/integrates them out. The semiclassical prefactor depends on:
- determinants associated with intermediate fluctuation blocks (giving products of \((\det C)^{-1/2}\)-type factors), and
- the effective endpoint second derivatives after elimination, which naturally take Schur-complement/mixed-Hessian form.

This note does not prove the full Van Vleck formula in the continuum; it records the finite-dimensional algebraic mechanism that makes “mixed Hessian determinants after elimination” unsurprising.

