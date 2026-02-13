# Q141 — Execution: Referee review of C256

## Verdict: REJECT → rewrite → fix applied

### Issues found
- **HIGH #1 (CRITICAL)**: Dimensional analysis failure in σ_* = α^{-1}|dx|^{1/2}. The half-density |dx|^{1/2} in d=2 has scaling dimension length^1. Combined with α^{-1} (dimension length^1), the product has dimension length^2, not the required length^1. The σ_* construction was dimensionally inconsistent.
- **HIGH #2**: Bound-state condition κ=α stated without derivation.
- **MEDIUM #1**: "T-matrix" language inconsistent with paper's resolvent terminology.

### Fix applied
Rewrote Example 5.1a to avoid the faulty σ_* formula entirely. New version:
- States d/2=1 means "one physical length needed" for scalarization
- References Remark 4.2 for α and Remark 4.3 for the Laplace representation
- Focuses on κ=α (correct physics) and κ/α=1 (dimensionless ratio)
- Avoids constructing σ_* explicitly (the paper already treats this conceptually in Section 5)
