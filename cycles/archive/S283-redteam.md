# S283 Red Team: Heat-Kernel Witness Failure Modes

Date: 2026-02-14

## Failure modes

1. **Sign/convention drift with the HD-QFT paper:**
   - Risk: The blackboard derivation uses \(\omega = \tfrac{1}{4}\ln|g|\) while the HD-QFT paper writes the conjugation as \(|g|^{1/4}P|g|^{-1/4}\). These are consistent, but any future promotion must verify sign conventions match exactly.
   - Mitigation: The blackboard explicitly references HD-D1.3b and uses the same notation. A promotion C-cycle should run a sign-check pass.

2. **Overclaiming "universal" for a scalarization-dependent quantity:**
   - Risk: \(V = \tfrac{1}{6}R\) depends on the choice \(|g|^{1/4}\). A referee could object that this is "just a gauge choice."
   - Mitigation: The blackboard's Section 6 explicitly states what is canonical (the Seeley-DeWitt coefficients, the pole structure) vs what is scalarization-dependent (the split \(V\) vs \(\xi R\)). The word "universal" is qualified as "within the metric scalarization."

3. **Conformal coupling computation error:**
   - Risk: The algebra \(\tfrac{1}{6} - \tfrac{D-2}{4(D-1)} = \tfrac{4-D}{12(D-1)}\) is elementary but could have a sign slip.
   - Mitigation: Checked by explicit LCD computation in the blackboard. Cross-checks: at \(D=4\), \(\xi_{\mathrm{conf}} = 1/6\) (standard). At \(D=2\), \(\xi_{\mathrm{conf}} = 0\), giving \(a_1 = R/6\) (correct: in \(D=2\) the Gauss-Bonnet term). At \(D=6\), \(\xi_{\mathrm{conf}} = 1/5\), giving \(a_1 = (1/6 - 1/5)R = -R/30\) -- this has the right sign for the negative residual.

4. **Derivation is not genuinely new (just reorganization):**
   - Risk: The blackboard assembles known ingredients without adding novel content.
   - Mitigation: This is by design (D26's goal is a "single witness," not a new result). The value is in the unified presentation, not the novelty of individual steps.
