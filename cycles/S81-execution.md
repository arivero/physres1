# S81 Execution: Does the p=1 gauge-field preference have an independent half-density origin?

Date: 2026-02-12

## Summary
Analyzed whether the p=1 (1-form gauge field) selection at D=4 has a half-density origin independent of the RG marginality argument in H4.0c. Conclusion: it does not. The volume half-density filter is form-degree-independent.

## Work log
1. Identified two distinct mechanisms that select D=4 for gauge fields:
   - **Mechanism A (H4.0b)**: scalar half-density conjugation produces D(4-D)/4 coefficient → vanishes at D=4. Form-degree-independent.
   - **Mechanism B (H4.0c)**: Hodge-star conformal weight for (p+1)-forms → conformally invariant when D = 2(p+1). Gives D=4 for p=1.
2. Checked whether the half-density conjugation of the Hodge Laplacian on p-forms produces a p-dependent cancellation coefficient. Result: the conformal transformation of $\Delta_p$ does involve p through the Hodge-star weight and Weitzenböck curvature terms. The natural cancellation condition shifts to D = 2(p+1), which is Mechanism B.
3. Identified the structural coincidence: at (D=4, p=1), the half-density weight D/2 = 2 equals the middle-form degree p+1 = 2 equals the gravity coupling exponent d-2 = 2. All are "area."
4. Verified that H4.0c already correctly characterizes this: "the half-density version is universal (independent of matter content), while the RG version is coupling-specific."

## Key finding
The p=1 selection at D=4 is NOT forced by the volume half-density framework. It requires additional input from either RG marginality or middle-form conformal weight. The numerical coincidence D/2 = 2 = p+1 at (D=4, p=1) is a structural resonance — the number 2 plays three simultaneous roles (area weight, form degree, coupling dimension) — but the mechanisms selecting D=4 and p=1 are logically independent.

This resolves the deferred DX04 item: the p=1 preference does not have a purely independent half-density (volume) origin.

## Outputs
- Blackboard: `blackboards/2026-02-12-p1-gauge-half-density-origin.md`

## Spawned cycles
- Optional C: could add a remark in main paper clarifying the "triple resonance" at (D=4, p=1, area=2). Low priority — H4.0c already covers the essential content.
