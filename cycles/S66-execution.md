# S66 Execution: Step-doubling discrepancy and the first rooted tree (Euler)

Date: 2026-02-11

## Work performed
- Derived the Taylor/elementary-differential expansion for the exact flow \(\Phi_h\) through the first nontrivial terms.
- Computed the composed-map discrepancy \(E_{h/2}\circ E_{h/2}-E_h\) for explicit Euler and identified the leading term as the rooted-tree elementary differential \(f'(f)\).
- Derived the first modified-equation coefficient for Euler (the \(O(h)\) correction to the vector field).

## Artifacts produced
- `blackboards/2026-02-11-euler-step-doubling-rooted-tree.md`

## Commands run (symbolic sanity check)
```bash
python3.12 - <<'PY'
import sympy as sp

y, h = sp.symbols('y h')
f = y**2  # model ODE: y' = y^2

E_h = y + h*f
E_h2 = y + (h/2)*f
E_h2_h2 = sp.expand(E_h2 + (h/2)*(E_h2**2))

print("E_h (series):", sp.series(E_h, h, 0, 4))
print("E_{h/2}∘E_{h/2} (series):", sp.series(E_h2_h2, h, 0, 4))
print("Difference (series):", sp.series(E_h2_h2 - E_h, h, 0, 4))
PY
```

Output summary:
- \(E_{h/2}\circ E_{h/2}-E_h = \tfrac12 h^2 y^3 + O(h^3)\), matching \(\frac{h^2}{4}f'(f)\) since \(f'(f)=2y^3\) for \(f(y)=y^2\).

## Result
The computation is stable and ready to promote as a compact worked witness in Section 4 of `papers/rg-fundamental/main.md`.

## Promotion candidate (copyable block)
Consider an autonomous ODE \(y'=f(y)\) and the explicit Euler map \(E_h(y)=y+h f(y)\).
Composing two half-steps gives
\[
E_{h/2}\!\circ E_{h/2}(y)
=y+h f(y)+\frac{h^2}{4}\,f'(y)\,f(y)+O(h^3),
\]
so the leading discrepancy between composed refinement and a single coarse step is
\[
E_{h/2}\!\circ E_{h/2}(y)-E_h(y)=\frac{h^2}{4}\,f'(f)+O(h^3),
\]
which is exactly the order-2 rooted-tree (elementary-differential) term \(f'(f)\).
This makes the “two steps vs one step” correction data explicit in the simplest possible setting: even before QFT, composed refinement forces a definite correction organized by rooted-tree bookkeeping.

## Spawned cycles
- `C98`: promote the worked example into `papers/rg-fundamental/main.md` (expand Section 4).
- `Q55`: referee pass on `C98`.

