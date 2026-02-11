# Blackboard: Explicit Euler step-doubling and modified equation (promotion block)

Date: 2026-02-11  
Cycle: `S67`

## Goal
Provide a promotion-ready derivation (and one sanity check) for the “two half-steps vs one step” discrepancy of explicit Euler, with fully explicit notation for the elementary differential \(f'(y)[f(y)]\) and the \(O(h^2)\) modified-equation coefficient.

## Notation
Let \(f:\mathbb R^n\to\mathbb R^n\) be smooth.
- Write \(f'(y)\) for the derivative/Jacobian at \(y\), viewed as a linear map.
- For a vector \(v\in\mathbb R^n\), write \(f'(y)[v]\) for the action of that linear map.
- We will use the shorthand
  \[
  f'(y)f(y)\;:=\;f'(y)[f(y)].
  \]

## Derivation: two half-steps vs one coarse step
Define the explicit Euler one-step map
\[
E_h(y):=y+h\,f(y).
\]
Then two half steps give
\[
E_{h/2}\!\circ E_{h/2}(y)
=y+\frac{h}{2}f(y)+\frac{h}{2}f\!\Big(y+\frac{h}{2}f(y)\Big).
\]
Expand the last term to first order in \(h\):
\[
f\!\Big(y+\frac{h}{2}f(y)\Big)
=f(y)+\frac{h}{2}f'(y)[f(y)]+O(h^2).
\]
Substituting,
\[
E_{h/2}\!\circ E_{h/2}(y)
=y+h f(y)+\frac{h^2}{4}\,f'(y)[f(y)]+O(h^3).
\]
Therefore the leading “step-doubling discrepancy” is
\[
E_{h/2}\!\circ E_{h/2}(y)-E_h(y)
=\frac{h^2}{4}\,f'(y)[f(y)]+O(h^3).
\]
In rooted-tree language, \(f'(y)[f(y)]\) is the order-2 elementary differential associated to the chain tree \([\bullet]\).

## Modified equation (through order \(h^2\))
One can interpret the Euler map as the exact flow of a *step-size dependent* vector field (“modified equation”) up to a given order.
Seek
\[
f_h(y)=f(y)+h\,g(y)+O(h^2)
\]
such that the exact time-\(h\) flow \(\Phi_h^{(f_h)}\) satisfies
\[
\Phi_h^{(f_h)}(y)=E_h(y)+O(h^3).
\]
The exact-flow expansion through order \(h^2\) is
\[
\Phi_h^{(f_h)}(y)=y+h f_h(y)+\frac{h^2}{2}\,f_h'(y)[f_h(y)]+O(h^3).
\]
Substitute \(f_h=f+h g+O(h^2)\). Up to \(O(h^2)\),
\[
f_h'(y)[f_h(y)]=f'(y)[f(y)]+O(h),
\]
so
\[
\Phi_h^{(f_h)}(y)=y+h f(y)+h^2\Big(g(y)+\frac12 f'(y)[f(y)]\Big)+O(h^3).
\]
Matching \(E_h(y)=y+h f(y)\) forces
\[
g(y)=-\frac12\,f'(y)[f(y)].
\]
Thus, to this order,
\[
f_h=f-\frac{h}{2}\,f'(f)+O(h^2),
\]
where the shorthand \(f'(f)\) means \(f'(y)[f(y)]\).

## SymPy sanity check (scalar model \(y'=y^2\))
Command (run in repo root):
```bash
python3.12 - <<'PY'
import sympy as sp

y, h = sp.symbols('y h')

f = y**2
fp_f = sp.diff(f, y) * f  # f'(y)[f(y)] in 1D

# Explicit Euler
E_h = y + h*f
E_h2 = y + (h/2)*f
E_h2_h2 = sp.expand(E_h2 + (h/2)*(E_h2**2))

# Modified equation (truncate at O(h))
# f_h = f + h g, g = -1/2 f'(f)
g = -sp.Rational(1, 2) * fp_f
fh = f + h*g

# Exact flow series through O(h^3): y + h fh + h^2/2 fh' fh + O(h^3)
fhp_fh = sp.diff(fh, y) * fh
Phi = sp.expand(y + h*fh + (h**2)/2 * fhp_fh)

print("E_{h/2}∘E_{h/2} - E_h:", sp.series(E_h2_h2 - E_h, h, 0, 4))
print("Phi_h^{(f_h)} - E_h:", sp.series(Phi - E_h, h, 0, 4))
PY
```

Output (summary):
- \(E_{h/2}\circ E_{h/2}-E_h = \\tfrac{1}{2}h^2 y^3 + \\tfrac18 h^3 y^4 + O(h^4)\), consistent with \(\tfrac{h^2}{4}f'(f)\) since \(f'(f)=2y^3\).
- \(\Phi_h^{(f_h)}-E_h = -\\tfrac52 h^3 y^4 + O(h^4)\), i.e. the match holds through order \(h^2\) with \(g=-\\tfrac12 f'(f)\).

## Promotion block (copy/paste target)
The two displayed blocks:
1) the step-doubling discrepancy, and
2) the modified-equation coefficient \(g=-\tfrac12 f'(y)[f(y)]\),
are intended to be pasted into `papers/rg-fundamental/main.md` Section 4.1 with minimal editing.
