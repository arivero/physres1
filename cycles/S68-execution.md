# S68 Execution: Euler step-doubling discrepancy through \(O(h^3)\)

Date: 2026-02-11

## Work performed
- Derived the explicit Euler step-doubling discrepancy through cubic order using a second-order Taylor expansion of \(f(y+\delta)\).
- Identified the new cubic-order term with the order-3 rooted tree \([\bullet,\bullet]\) (branch with two leaves), emphasizing the “hierarchy of correction data” under composed refinement.

## Artifacts produced
- `blackboards/2026-02-11-euler-step-doubling-order-h3-rooted-tree.md`

## Commands run (if any)
```bash
python3.12 - <<'PY'
import sympy as sp

y, h = sp.symbols('y h')
f = y**2

E_h = y + h*f
E_h2 = y + (h/2)*f
E_h2_h2 = sp.expand(E_h2 + (h/2)*(E_h2**2))

print(sp.series(E_h2_h2 - E_h, h, 0, 5))
PY
```

## Result
- The discrepancy expansion is promotion-ready and naturally written with the bracket action notation \(f'(y)[v]\), \(f''(y)[v,w]\).

## Promotion candidate (copyable block)
Define the explicit Euler one-step map \(E_h(y):=y+h f(y)\) for the autonomous ODE \(y'=f(y)\), where \(f:\mathbb R^n\to\mathbb R^n\) is smooth. Writing \(f'(y)[v]\) for the Jacobian action and \(f''(y)[v,w]\) for the bilinear second derivative, two half-steps satisfy
\[
E_{h/2}\!\circ E_{h/2}(y)
=y+h f(y)+\frac{h^2}{4}\,f'(y)[f(y)]+\frac{h^3}{16}\,f''(y)[f(y),f(y)]+O(h^4).
\]
Hence the step-doubling discrepancy is
\[
E_{h/2}\!\circ E_{h/2}(y)-E_h(y)
=\frac{h^2}{4}\,f'(y)[f(y)]+\frac{h^3}{16}\,f''(y)[f(y),f(y)]+O(h^4).
\]
In rooted-tree language, \(f'(y)[f(y)]\) is the order-2 elementary differential \(F([\bullet])\), while \(f''(y)[f(y),f(y)]\) is the order-3 branch-tree elementary differential \(F([\bullet,\bullet])\).

## Spawned cycles
- `C100`: promote unified elementary-differential notation (and optionally the cubic-order term remark) into the step-halving witness in `paper/main.md` and the rooted-tree witness in `papers/rg-fundamental/main.md`.

