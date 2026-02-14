# D51 Execution: Are RCP commuting diagrams theorems or axioms?

Date: 2026-02-14

## Summary
Analyzed whether the cross-channel commuting diagrams in RCP Section 2.2 require an independent axiom (A6) or follow from A1-A5. **Result: No A6 needed.** All three pairwise commutativity relations are derivable.

## Key findings

1. **Partition × Representation:** Commutativity holds in the continuum limit (N→∞). At finite N, different orderings give different per-slice corrections O(ℏΔt). In the limit, all orderings agree at leading order (short-time universality). The cumulative ordering difference is O(ℏ), controlled by A3. Mechanism: A1 (composition) + A3 (representation equivalence).

2. **Partition × Scale:** Trivial commutativity. Partition refinement (Δt→0) and scale change (μ₁→μ₂) act on independent parameters. The beta function is defined in the continuum and is Δt-independent.

3. **Representation × Scale:** Commutativity holds for physical observables, not individual parameter flows. Different orderings give different beta functions at O(ℏ²), but deformation equivalence (D35/D38) ensures observable predictions agree. Mechanism: A3 (deformation equivalence) + A4 (scale invariance).

4. **Key distinction:** Commutativity is exact for observables, not for individual parameters. This is consistent with A3's statement (predictions agree "modulo controlled subleading corrections").

## Novelty assessment
**YES (structural economy).** The finding that A1-A5 suffice for cross-channel commutativity is a non-trivial structural result. It shows the RCP axiom system is more parsimonious than its diagram-level presentation suggests. The distinction between parameter-level and observable-level commutativity is a genuine insight.

## Blackboard deliverable
- `blackboards/0.md` Section 8 — appended to D49+D50 analysis

## Spawned cycles
- None. The result is self-contained. Could inform a future revision of RCP foundations Section 2.2 (add a remark that commutativity follows from A1-A5, is not assumed).
