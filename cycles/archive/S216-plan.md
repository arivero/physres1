# S216 Plan: Delta-Objects Expansion — Example 3.4a + Remark 2.1

## Target: papers/delta-objects/main.md (199 lines, 5pp)

### Change 1: Example 3.4a in Section 3.4
Add worked example showing the mollifier localization for a free particle:
- If q is smooth: mollifier integral → -mq̈(t*) = 0 (Theorem 2.1 of companion)
- If q has velocity jump Δv at t*: distributional derivative → mΔv δ(t-t*)
  recovering the impulse condition of Theorem 3.2 (companion paper)
Estimated: +5-7 lines

### Change 2: Remark 2.1 in Section 2
Brief remark explaining WHY d/2 is universal: half-density ⊗ half-density
= density (measure-theoretic necessity for composition). The ε^{-d/2} exponent
is not a computational accident but follows from the geometric requirement
that composing two half-density kernels yields a density kernel.
Estimated: +4-5 lines

### Total: +9-12 lines (199 → 208-211), still under 6pp
