# S283 Execution: Worked Heat-Kernel Witness in Half-Density Language

Date: 2026-02-14
Parent: D26

## Work performed
- Wrote a self-contained derivation in `blackboards/5.md` (overwriting previous S210 "anomalies as composition defects" content, which was assessed as thin/non-promotable).
- The derivation unifies three threads:
  1. Half-density heat kernel \(\widetilde{K}(t;x,y) = |g(x)|^{1/4}K(t;x,y)|g(y)|^{1/4}\) as a proper bi-half-density with \(t\to 0^+\) limit equal to the canonical identity kernel.
  2. The universal \((4\pi t)^{-D/2}\) normalization and its five manifestations (identity kernel, heat kernel, propagator, proper-time UV degree, dim-reg poles).
  3. The conjugation potential \(V(p) = \tfrac{1}{6}R\) computed in normal coordinates, its relation to \(a_1(x,x) = (\tfrac{1}{6}-\xi)R\), and the \(D=4\)-only cancellation with conformal coupling.
- Included a "canonical vs scalarization" diagnostic (Section 6 of the blackboard).

## Artifacts produced
- `blackboards/5.md`: full derivation (7 sections, ~196 lines).
- `blackboards/README.md`: slot index updated.

## Commands run (if any)
None (pure derivation; the algebra follows standard references [DeWitt1965, Vassilevich2003] and the existing HD-QFT paper's conventions).

## Result
- The derivation is self-contained and matches the D26 acceptance criterion verbatim.
- The "canonical vs scalarization" paragraph explicitly separates universal results from convention-dependent ones.
- The conformal coupling cancellation \(a_1|_{\xi_{\mathrm{conf}}} = \tfrac{4-D}{12(D-1)}R = 0 \iff D=4\) is explicitly computed.

## Promotion candidate (pointer)
- Location: `blackboards/5.md`, Section 7 ("Summary statement (promotable)").
- Target manuscript for future promotion: `papers/half-density-qft/main.md` (could strengthen Remark HD-D4.2 or become a new standalone remark).

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **no**
- The result is a clean unification of threads already present in the repo, as intended by D26. No genuinely new finding, but the unified presentation is substantially clearer than the scattered remarks.

## Spawned cycles
- No new cycles spawned. The blackboard content is a promotion candidate for a future C-cycle targeting `papers/half-density-qft/main.md`.
- `B31` deferred: Vassilevich2003 is already cited and available as OA (arXiv:hep-th/0306138).
