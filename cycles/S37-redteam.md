# S37 Redteam: Failure Modes

## Failure Modes
1. **Toy overfitting:** overgeneralizing one benign numerical case.
2. **Metric myopia:** comparing only standard deviation, ignoring tail behavior/skew.
3. **Sampling complacency:** using insufficient Monte Carlo size in harder regimes.

## Mitigations
1. Frame result as regime-specific demonstration.
2. Mention shape diagnostics as next-level check.
3. Keep pilot MC as gating tool, not final inference method.

