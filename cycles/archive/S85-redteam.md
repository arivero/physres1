# S85 Red Team

Date: 2026-02-13

## Failure modes

### 1. "Just additivity of logarithms" — too trivial?
- Risk: the semigroup property reduces to ln(a/b) + ln(b/c) = ln(a/c), which is elementary.
- Mitigation: the value is not the logarithm identity itself but the physical interpretation: it demonstrates that Wilsonian coarse-graining steps compose, connecting Section 2's abstract RG-P1.1 to a concrete computation. The triviality of the identity is a feature (cleanest possible witness), not a bug.

### 2. Sharp cutoff artifacts
- Risk: the sharp momentum cutoff is not a physical regulator; smooth cutoffs (e.g., heat-kernel, dimensional regularization) would give different finite parts.
- Mitigation: the beta function is scheme-independent for the 2D delta (only the logarithmic coefficient matters, and it is universal). The blackboard note explicitly mentions that threshold corrections are O(k²/Λ²) and do not affect the running. A remark about scheme independence should be included when promoting.

### 3. Sign conventions
- Risk: Wilsonian "lowering the cutoff" vs perturbative "raising μ" can create sign confusion.
- Mitigation: the blackboard note carefully identifies β = Λ' dg/dΛ' (same as μ dg/dμ) so both conventions give β = (m/πℏ²)g² > 0.
