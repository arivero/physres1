# S26 Execution: SR Stability Criterion (Power-Law Central Force)

## Work Completed
- Derived the SR circular-orbit condition using the fixed-\(L\) energy function
  \[
  W_L(r)=\sqrt{m^2c^4+\frac{L^2c^2}{r^2}}+U(r),
  \qquad U'(r)=\frac{K}{r^q},
  \]
  and confirmed it matches the earlier relation \(L^2=K\gamma m r^{3-q}\).
- Computed the small-radial-perturbation stability condition \(W_L''(r_0)>0\) at the circular orbit \(r_0\), yielding a compact criterion in terms of \(\gamma\) and \(q\).
- Recorded the derivation + limiting checks in `blackboards/2026-02-10-sr-circular-orbit-stability.md`, including a SymPy simplification sanity check.

## Result
SR stability reduces to the Newtonian criterion \(q<3\) in the \(\gamma\to 1\) limit, but for \(2<q<3\) it imposes an additional relativistic upper bound on \(\gamma\) (i.e. on orbital speed).

