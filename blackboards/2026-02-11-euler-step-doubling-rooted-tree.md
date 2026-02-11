# Blackboard: Euler step-doubling discrepancy and the first rooted tree

Date: 2026-02-11  
Cycle: `S66`

## Purpose
Produce a minimal, checkable witness for the slogan:
“composed refinement (two half steps) differs from one coarse step by a structured correction term”.

This is used only as an analogy witness for the Butcher/rooted-tree bookkeeping discussed in `paper/main.md` and `papers/rg-fundamental/main.md`.

## 1. Setup
Let \(f:\mathbb R^n\to\mathbb R^n\) be smooth and consider the autonomous ODE
\[
y'(t)=f(y(t)),
\qquad y(0)=y.
\]
Write \(f'(y)\) for the Jacobian (a linear map), and \(f''(y)\) for the bilinear second derivative.

## 2. Exact flow expansion (through cubic order)
Let \(\Phi_h(y)\) denote the exact time-\(h\) flow map.
Taylor expansion using \(y'=f(y)\), \(y''=f'(f)\), \(y'''=f''(f,f)+f'(f'(f))\) gives
\[
\Phi_h(y)
=y
+h\,f
+\frac{h^2}{2}\,f'(f)
+\frac{h^3}{6}\,\big(f''(f,f)+f'(f'(f))\big)
+O(h^4).
\]

Rooted-tree bookkeeping packages these “elementary differentials”:
- \(\tau_1=\bullet\) (one node): \(F(\tau_1)=f\).
- \(\tau_2=[\bullet]\) (a chain of length 2): \(F(\tau_2)=f'(f)\).
- At order 3 there are two trees: the chain \([[\bullet]]\) with \(F=f'(f'(f))\) and the branch \([\bullet,\bullet]\) with \(F=f''(f,f)\).

## 3. Explicit Euler and step-doubling
Define the explicit Euler one-step map
\[
E_h(y):=y+h f(y).
\]

Two half-steps are
\[
E_{h/2}\circ E_{h/2}(y)
=E_{h/2}\!\big(y+\tfrac{h}{2}f(y)\big)
=y+\frac{h}{2}f(y)+\frac{h}{2}f\!\big(y+\tfrac{h}{2}f(y)\big).
\]
Expand the last factor:
\[
f\!\big(y+\tfrac{h}{2}f(y)\big)
=f(y)+\frac{h}{2}f'(y)f(y)+O(h^2).
\]
Therefore
\[
E_{h/2}\circ E_{h/2}(y)
=y+h f(y)+\frac{h^2}{4}f'(y)f(y)+O(h^3),
\]
and the leading step-doubling discrepancy is
\[
E_{h/2}\circ E_{h/2}(y)-E_h(y)=\frac{h^2}{4}\,f'(f)+O(h^3).
\]

This term is exactly the order-2 rooted-tree elementary differential \(F([\bullet])=f'(f)\).

## 4. Modified-equation coefficient (Euler to order \(h^2\))
We can also ask for a vector field \(f_h=f+h g+O(h^2)\) whose *exact* time-\(h\) flow matches Euler up to \(O(h^2)\):
\[
\Phi_h^{(f_h)}(y)=E_h(y)+O(h^3).
\]
Using the exact-flow expansion with \(f_h\),
\[
\Phi_h^{(f_h)}(y)
=y+h(f+h g)+\frac{h^2}{2}f'(f)+O(h^3)
=y+h f+h^2\Big(g+\frac12 f'(f)\Big)+O(h^3).
\]
Matching \(E_h(y)=y+h f(y)\) forces
\[
g=-\frac12 f'(f),
\qquad\text{so}\qquad
f_h=f-\frac{h}{2}f'(f)+O(h^2).
\]
This is the simplest “running of effective data with the scale parameter \(h\)” witness.

## 5. SymPy sanity check (scalar model \(y'=y^2\))
Command (run in repo root):
```bash
python3.12 - <<'PY'
import sympy as sp

y, h = sp.symbols('y h')
f = y**2

E_h = y + h*f
E_h2 = y + (h/2)*f
E_h2_h2 = sp.expand(E_h2 + (h/2)*(E_h2**2))

print("E_h (series):", sp.series(E_h, h, 0, 4))
print("E_{h/2}∘E_{h/2} (series):", sp.series(E_h2_h2, h, 0, 4))
print("Difference (series):", sp.series(E_h2_h2 - E_h, h, 0, 4))
PY
```

Output (summary):
- \(E_{h/2}\circ E_{h/2}-E_h = \tfrac12 h^2 y^3 + O(h^3)\), consistent with \(\frac{h^2}{4}f'(f)\) since \(f'(f)=2y^3\) for \(f(y)=y^2\).

## Promotion target
Promote a compact version of Section 3 (and optionally the modified-equation line from Section 4) into `papers/rg-fundamental/main.md` Section 4, explicitly labeled as an analogy witness.

