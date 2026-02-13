# Q100 Execution
Date: 2026-02-13

## Subagent referees
Two focused referees, each reading only the derivation + its surrounding section.

### Referee 1: D6.2a-HO (Section 8.4)
**Verdict: CLEAN.** No issues found. The derivation correctly identifies the a=1/2 fixed point as second-order accurate (not energy-preserving), the control-map rate 1/2 per doubling is correct, and the f''=0 simplification is properly stated.

### Referee 2: D4.1b (Section 6.3)
**Verdict: MEDIUM issue found.**
The verbal labels "left-point" (α=0→q̂p̂) and "right-point" (α=1→p̂q̂) and the operator formula Ĥ_α=(1-α)q̂p̂+αp̂q̂ are inconsistent with the path integral α-prescription q_α=(1-α)q_k+αq_{k+1}.

**Root cause:** The blackboard conflated two different α conventions:
- "Operator-ordering α": Op_α = (1-α)q̂p̂ + αp̂q̂ (α=0 is standard ordering)
- "Path-integral α": q_α = (1-α)q_k + αq_{k+1} (α=0 is prepoint → evaluates at ket eigenvalue → produces p̂q̂)

These two α's are complementary: PI-α corresponds to ordering (1-α).

## Fix applied
Rewrote D4.1b to use the path-integral convention consistently:
- Ĥ_α = αq̂p̂ + (1-α)p̂q̂ = p̂q̂ + αiℏ
- Matrix element: [αq'+(1-α)q] matches q_α=(1-α)q_k+αq_{k+1} with q'=q_{k+1},q=q_k
- α=0 (prepoint) → p̂q̂ (anti-standard)
- α=1 (postpoint) → q̂p̂ (standard)
- α=1/2 (midpoint) → Weyl ½(q̂p̂+p̂q̂) [unchanged]
- Labels changed from "left-point"/"right-point" to "prepoint"/"postpoint" (standard Kleinert terminology)

## Diffstat
No net line change (in-place correction, same line count).
