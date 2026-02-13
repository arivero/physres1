# S04 Execution

## Work
- Computed the 2D and 3D cutoff loop integrals \(I_d(E;\Lambda)\) in the exact conventions used in the repo, using SymPy to sanity-check antiderivatives and large-\(\Lambda\) expansions.
- Recorded the \(+i0\) branch choice needed to get the correct \(i\pi\) (2D) and \(ik\) (3D) imaginary parts.
- Mapped the 2D boundary-condition constant \(2e^{-\gamma}\) (from the \(K_0\) expansion) to the finite-subtraction scheme constant \(C\) and the rescaling of the transmutation scale \(\kappa_\ast\).

## Result
- New note: `blackboards/2026-02-10-delta-convention-map.md`.
- The loop-integral formulas in `papers/rg-fundamental/main.md` / `paper/main.md` match the computed asymptotics once the \(1/(2\pi)^d\) measures and log-branch are fixed.

## Status
Completed.
