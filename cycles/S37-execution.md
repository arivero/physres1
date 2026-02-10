# S37 Execution: Monte Carlo Check for \(\sigma_q\)

## Work Completed
- Ran a reproducible Monte Carlo toy (250k samples) for
  \[
  q=\frac12\,\mathbf n\cdot(\mathbf r\times\mathbf v),
  \]
  comparing linear Jacobian propagation against sampled variance.
- Obtained:
  - \(\sigma_q^{\rm linear}=6.6998\times10^{-3}\),
  - \(\sigma_q^{\rm MC}=6.6918\times10^{-3}\),
  - relative difference \(\approx 0.12\%\),
  - negligible mean bias (\(\sim4.2\times10^{-6}\)).
- Logged setup + command in `blackboards/2026-02-10-monte-carlo-check-for-projected-areal-uncertainty.md`.

## Result
For mild uncertainty and weak nonlinearity, the linear uncertainty scaffold is accurate at sub-percent level; manuscript can safely include a concise caveat that nonlinear checks are recommended in stronger-nonlinearity regimes.

