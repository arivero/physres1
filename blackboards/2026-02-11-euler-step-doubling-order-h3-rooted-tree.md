# Blackboard: Euler step-doubling discrepancy through \(O(h^3)\) and the next rooted tree

Date: 2026-02-11  
Cycle: `S68`

## Goal
Extend the explicit Euler “two half-steps vs one step” discrepancy by one term (through cubic order) and identify the new term as a rooted-tree elementary differential, using unambiguous action notation \(f'(y)[v]\), \(f''(y)[v,w]\).

## Setup and notation
Let \(f:\mathbb R^n\to\mathbb R^n\) be smooth and consider the autonomous ODE \(y'=f(y)\).
- \(f'(y)\): Jacobian (Fréchet derivative), a linear map \(\mathbb R^n\to\mathbb R^n\).
- \(f'(y)[v]\): action of the Jacobian on a vector \(v\).
- \(f''(y)\): second derivative, a symmetric bilinear map; \(f''(y)[v,w]\) is its action.

Rooted-tree elementary differentials (recall):
- Order 2 chain tree \([\bullet]\): \(F([\bullet])=f'(y)[f(y)]\).
- Order 3 branch tree \([\bullet,\bullet]\): \(F([\bullet,\bullet])=f''(y)[f(y),f(y)]\).

## Derivation: two half-steps vs one step (through cubic order)
Define the explicit Euler one-step map
\[
E_h(y):=y+h\,f(y).
\]
Then two half steps are
\[
E_{h/2}\!\circ E_{h/2}(y)
=y+\frac{h}{2}f(y)+\frac{h}{2}f\!\Big(y+\frac{h}{2}f(y)\Big).
\]
Write \(\delta=\tfrac{h}{2}f(y)\). Taylor expand \(f(y+\delta)\) to quadratic order:
\[
f(y+\delta)
=f(y)+f'(y)[\delta]+\frac12 f''(y)[\delta,\delta]+O(\|\delta\|^3).
\]
Substitute \(\delta=\tfrac{h}{2}f(y)\):
\[
f\!\Big(y+\frac{h}{2}f(y)\Big)
=f(y)+\frac{h}{2}f'(y)[f(y)]+\frac{h^2}{8}f''(y)[f(y),f(y)]+O(h^3).
\]
Therefore,
\[
E_{h/2}\!\circ E_{h/2}(y)
=y+h f(y)+\frac{h^2}{4}\,f'(y)[f(y)]+\frac{h^3}{16}\,f''(y)[f(y),f(y)]+O(h^4),
\]
and subtracting \(E_h(y)=y+h f(y)\) gives the discrepancy
\[
E_{h/2}\!\circ E_{h/2}(y)-E_h(y)
=\frac{h^2}{4}\,f'(y)[f(y)]
+\frac{h^3}{16}\,f''(y)[f(y),f(y)]
+O(h^4).
\]

## Rooted-tree interpretation
- The leading discrepancy term \(\tfrac{h^2}{4}f'(y)[f(y)]\) is the order-2 elementary differential \(F([\bullet])\).
- The next term \(\tfrac{h^3}{16}f''(y)[f(y),f(y)]\) is the order-3 branch-tree elementary differential \(F([\bullet,\bullet])\).

Remark (scope): the order-3 *chain* tree \([[\bullet]]\) with \(F([[\bullet]])=f'(y)[f'(y)[f(y)]]\) appears in the exact-flow expansion, but it does not appear in this Euler-vs-Euler step-doubling discrepancy through \(O(h^3)\).

## SymPy sanity check (scalar toy model \(y'=y^2\))
Command (run in repo root):
```bash
python3.12 - <<'PY'
import sympy as sp

y, h = sp.symbols('y h')
f = y**2

E_h = y + h*f
E_h2 = y + (h/2)*f
E_h2_h2 = sp.expand(E_h2 + (h/2)*(E_h2**2))

print("Series:", sp.series(E_h2_h2 - E_h, h, 0, 5))
PY
```

Output (summary):
- \(E_{h/2}\circ E_{h/2}-E_h = \tfrac12 h^2 y^3 + \tfrac18 h^3 y^4 + O(h^4)\).
  This matches \(\tfrac{h^2}{4}f'(f)+\tfrac{h^3}{16}f''(f,f)\) since for \(f(y)=y^2\),
  \(f'(y)[f(y)]=2y^3\) and \(f''(y)[f(y),f(y)]=2y^4\).

## Promotion target
Promote the discrepancy line (through \(O(h^3)\)) and the rooted-tree identification into:
- `paper/main.md` Section 8.4 (step-halving witness), and
- `papers/rg-fundamental/main.md` Section 4.1 (rooted-tree witness),
using consistent action notation \(f'(y)[v]\), \(f''(y)[v,w]\).

