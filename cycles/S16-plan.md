# S16 Plan: Conformal Metric Test of Half-Density Conjugation (D=4 Simplification)

## Goal
Study the explicit form of the conjugated Laplace–Beltrami operator on half-densities in a conformally flat metric,
and check whether any dimensions are singled out by simplifications.

Target computation:
\[
\widetilde\Delta := |g|^{1/4}\Delta_g|g|^{-1/4}
\]
for \(g_{\mu\nu}=e^{2\sigma}\delta_{\mu\nu}\) in \(D\) dimensions.

## Scope
- Produce one blackboard note with:
  - derivation of \(\widetilde\Delta\) in terms of \(\sigma\),
  - explicit observation that the \((\partial\sigma)^2\) term cancels in \(D=4\),
  - a small SymPy check on a reduced “\(\sigma(x)\) only” toy case to validate coefficients/signs.
- No promotion into manuscripts in this cycle (save for a later `C` cycle if stable and useful).

## Acceptance Tests
1. A new blackboard note exists with the final formula and a clear D=4 simplification statement.
2. The SymPy check (command + output) is recorded in the note.
3. The note explicitly labels any “dimension selection” implications as heuristic/hypothesis, not a theorem.

## Planned Outputs
- `blackboards/2026-02-10-half-density-laplacian-conformal-metric.md`
- `cycles/S16-{plan,debate,execution,redteam}.md`

