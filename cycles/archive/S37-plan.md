# S37 Plan: Lightweight Nonlinear Validation (Monte Carlo Toy)

## Goal
Test whether the linear Jacobian uncertainty estimate for \(q=\dot A_{\mathbf n}\) is reliable in a representative regime.

## Scope
1. Build a small Gaussian state-uncertainty toy model for \(x=[\mathbf r,\mathbf v]\).
2. Compare linear \(\sigma_q\) vs Monte Carlo \(\sigma_q\).
3. Record interpretation threshold for when nonlinear checks become necessary.

## Acceptance Tests
- Reproducible command and numeric comparison.
- Clear criterion for promoting a nonlinear-validation caveat.

