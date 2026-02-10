# Blackboard: Delta Contact Integrals (2D/3D) and Convention Map

Date: 2026-02-10

## Purpose
This note supports the “RG is compatibility” thread by pinning the **cutoff integrals** and the **scheme constants** for the \(d=2\) and \(d=3\) contact interaction in the specific conventions used in:
- `papers/rg-fundamental/main.md` (Sections 5.1–5.8), and
- `paper/main.md` (Appendix 10.5).

It is a study note: no manuscript edits here. The goal is to make “up to conventions” explicit.

## Conventions used in the repo
We define the loop integral (free resolvent at the origin) by
\[
I_d(E;\Lambda)
=\int_{|q|<\Lambda}\frac{d^d q}{(2\pi)^d}\,
\frac{1}{E-\frac{\hbar^2 q^2}{2m}+i0},
\]
and the (scalar) \(T\)-matrix by the algebraic Lippmann–Schwinger form
\[
T(E;\Lambda)=\frac{1}{g_B(\Lambda)^{-1}-I_d(E;\Lambda)}.
\]
Different normalizations of plane waves can move factors of \(2\pi\) between \(I\), \(g\), and \(T\); the load-bearing RG content is the \(\ln\Lambda\) (2D) or \(\Lambda\) (3D) divergence and the \(\mu\)-independence condition, which are convention robust once a scheme is fixed.

For computations it is convenient to set
\[
a:=\frac{\hbar^2}{2m},\qquad E=a k^2\ (E>0).
\]

## 2D integral (log divergence + \(i\pi\))
Start from polar coordinates:
\[
I_2(E;\Lambda)
=\frac{1}{(2\pi)^2}\int_0^{2\pi} d\theta\int_0^\Lambda dq\,\frac{q}{E-aq^2+i0}
=\frac{1}{2\pi}\int_0^\Lambda dq\,\frac{q}{E-aq^2+i0}.
\]

SymPy check (exact antiderivative, ignoring \(i0\) branch choices):
```bash
python3.12 - <<'PY'
import sympy as sp
q,E,a,L=sp.symbols('q E a L', positive=True)
expr2 = sp.integrate(q/(E-a*q**2), (q,0,L))
print(sp.simplify(expr2))
PY
```
Output:
\[
\frac{\log(-E)-\log(-E+a\Lambda^2)}{2a}.
\]

For \(E>0\) with the \(+i0\) prescription in the *original* denominator \(E-aq^2+i0\), one should take
\(\log(-E-i0)=\ln(E)-i\pi\),
while \(-E+a\Lambda^2\) is positive real for \(\Lambda>k\).
Thus for \(\Lambda\gg k\),
\[
I_2(E;\Lambda)
=\frac{1}{2\pi}\cdot\frac{\ln(E)-i\pi-\ln(a\Lambda^2)}{2a}
=-\frac{1}{4\pi a}\Big[\ln\!\Big(\frac{a\Lambda^2}{E}\Big)+i\pi\Big]
O\!\Big(\frac{k^2}{\Lambda^2}\Big).
\]
Restoring \(a=\hbar^2/(2m)\) and \(E=a k^2\) gives the repo formula:
\[
I_2(E;\Lambda)
=-\frac{m}{2\pi\hbar^2}\left[\ln\!\Big(\frac{\Lambda^2}{k^2}\Big)+i\pi\right]
O\!\Big(\frac{k^2}{\Lambda^2}\Big).
\]

## 3D integral (linear divergence + \(ik\))
Use spherical coordinates:
\[
I_3(E;\Lambda)
=\frac{1}{(2\pi)^3}\int d\Omega\int_0^\Lambda dq\,\frac{q^2}{E-aq^2+i0}
=\frac{1}{2\pi^2}\int_0^\Lambda dq\,\frac{q^2}{E-aq^2+i0}.
\]

SymPy check (exact integral, again branch choices implicit):
```bash
python3.12 - <<'PY'
import sympy as sp
q,E,a,L=sp.symbols('q E a L', positive=True)
expr3 = sp.integrate(q**2/(E-a*q**2), (q,0,L))
print(sp.simplify(expr3))
PY
```
Output (one convenient form):
\[
\frac{-\sqrt{E}\,a\log(-\sqrt{E}+\Lambda\sqrt{a})+\sqrt{E}\,a\log(\sqrt{E}+\Lambda\sqrt{a})
+i\pi\sqrt{E}\,a-2\Lambda a^{3/2}}{2a^{5/2}}.
\]

Set \(E=a k^2\). Expanding for large \(\Lambda\) yields
```bash
python3.12 - <<'PY'
import sympy as sp
L,k,a=sp.symbols('L k a', positive=True)
E=a*k**2
expr3 = (-sp.sqrt(E)*a*sp.log(-sp.sqrt(E) + L*sp.sqrt(a))
         + sp.sqrt(E)*a*sp.log(sp.sqrt(E) + L*sp.sqrt(a))
         + sp.I*sp.pi*sp.sqrt(E)*a - 2*L*a**sp.Rational(3,2))/(2*a**sp.Rational(5,2))
print(sp.simplify(expr3))
print(sp.series(sp.simplify(expr3), L, sp.oo, 2))
PY
```
Series:
\[
-\frac{\Lambda}{a}+\frac{i\pi k}{2a}+\frac{k^2}{\Lambda a}+O(\Lambda^{-2}).
\]
Multiplying by \(1/(2\pi^2)\) and restoring \(a=\hbar^2/(2m)\) gives
\[
I_3(E;\Lambda)
=-\frac{m}{\pi^2\hbar^2}\Lambda
i\,\frac{m}{2\pi\hbar^2}k
O\!\Big(\frac{k^2}{\Lambda}\Big),
\]
matching the expression used in `papers/rg-fundamental/main.md` (Section 5.8.1).

## Scheme constants and the \(2e^{-\gamma}\) factor (2D boundary condition form)
In the 2D “point removed” formulation, s-wave solutions near \(r=0\) behave as
\(\psi(r)=A\ln r+B+o(1)\), and a point interaction imposes a boundary condition relating \(A\) and \(B\), often written as
\[
\psi(r)=A\ln(r/R)+o(1)
\quad\text{for some length }R>0.
\]
For a bound state \(E=-\hbar^2\kappa^2/(2m)\), the decaying solution is \(\psi(r)=A K_0(\kappa r)\), with
\[
K_0(z)=-\ln(z/2)-\gamma+O(z^2).
\]
Matching gives
\[
R=\frac{2e^{-\gamma}}{\kappa}.
\]

This is the same “finite constant in the log” as scheme dependence in the subtraction definition of \(g_R(\mu)\):
changing the finite subtraction by \(C\) rescales the RG-invariant scale,
\(\kappa_\ast^{2}\mapsto e^{C}\kappa_\ast^2\),
and hence rescales \(R\) by \(R\mapsto e^{-C/2}R\).
The beta function is unchanged; the transmutation scale is scheme dependent up to an overall multiplicative factor fixed by one physical datum.

## Promotion candidates
1. Add a short “convention map” appendix note in `papers/rg-fundamental/main.md` that quotes the 2D/3D integrals with the \(1/(2\pi)^d\) measures explicitly, to preempt factor objections.
2. When mentioning \(2e^{-\gamma}\), explicitly say “this is the finite constant accompanying \(\ln r\) and is scheme dependent; changing subtraction schemes rescales \(R\)”.

