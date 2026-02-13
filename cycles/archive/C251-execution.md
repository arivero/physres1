# C251 Execution: Delta-Objects Expansion — Remark 2.1 + Example 3.4a

## Changes Made

### 1. Remark 2.1 (after Section 2, line 44)
Explains WHY d/2 is universal: composing two half-density kernels requires
each to carry |dz|^{1/2}; product gives |dz| which integrates to scalar.
Cross-references companion note Section 4.5 (N+1)/2 exponent.
+3 lines.

### 2. Example 3.4a (after Section 3.4, line 112)
Worked example: free particle with smooth and kinked trajectories.
- Smooth: mollifier integral → pointwise EL (Theorem 2.1 of companion)
- Kinked: distributional derivative q̈ = (Δv)δ(t-t*), forced equation
  mq̈ = Jδ → mΔv = J (Theorem 3.2 of companion)
+3 lines.

### Q137 referee fixes applied
- Sign error: q̈ = -(Δv)δ → q̈ = +(Δv)δ (HIGH)
- "Makes composition well-defined" → "makes near-diagonal kernel scaling
  compatible with composition" (MEDIUM)

## Diffstat
```
papers/delta-objects/main.md: +5 net lines (199 → 204)
```
