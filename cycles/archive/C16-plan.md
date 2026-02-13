# C16 Plan

## Goal
Make the “half-density normalization needs a \(\text{length}^{d/2}\) scale” claim more concrete by deriving it from a near-diagonal scaling/composition model (tangent-groupoid style), and clarify how (and when) this becomes a *universal area scale* claim in \(d=4\).

## Scope
1. Add an explicit near-diagonal scaling derivation in `papers/planck-area/main.md` showing:
   - Jacobian scaling \(dy=\varepsilon^d dv\),
   - half-density scaling \(|dy|^{1/2}=\varepsilon^{d/2}|dv|^{1/2}\),
   - and why the “square-root Jacobian” prefactor \(\varepsilon^{-d/2}\) is forced by composition/refinement.
2. Use that derivation to sharpen the hypothesis ladder:
   - `H2.3` (dimensionless scalar representative) = convention,
   - `H2.4` (background-free constancy) = restrict scalarization gauge to a global scale,
   - `H2.5` (analyticity/no fractional powers) = dimension sieve for how that global scale may depend on couplings.
3. Keep the main manuscript (`paper/main.md`) lean: only add a short cross-reference if it improves flow; avoid turning it into a half-density specialist paper.

## Acceptance Tests
1. `papers/planck-area/main.md` gains one new labeled `Derivation` that explicitly computes the near-diagonal scaling and isolates the \(\varepsilon^{-d/2}\) factor.
2. `papers/planck-area/main.pdf` rebuilds without errors.
3. `rg -n 'C[0-9]{2}' paper/main.md` returns no matches.

