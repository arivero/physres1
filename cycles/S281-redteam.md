# S281 Red Team: Delta-Object Dictionary

Date: 2026-02-14

## Failure modes

1. **Overstating rigor of the criterion:**
   - Risk: Claiming mollifier universality as a theorem when it is really a classification principle.
   - Mitigation: The blackboard states it as a "criterion" (organizational tool), not as a new theorem. The underlying mathematics (Schwartz impossibility, distributional change of variables) is standard.

2. **Missing a delta-object type:**
   - Risk: The five-way classification may miss a construction used elsewhere in the manuscripts (e.g., delta on a constraint surface for gauge fixing, or delta in phase space for Wigner functions).
   - Mitigation: The classification covers all delta objects currently appearing in the three relevant papers (main, delta-objects, dirac-probes). If new types appear in future work, the dictionary extends naturally.

3. **Nondegeneracy assumption too strong:**
   - Risk: The stationary-set identity delta(f') = sum delta(x-x_i)/|f''(x_i)| requires nondegenerate critical points. Degenerate critical points (f''(x_i)=0) require a different treatment (catastrophe theory, higher-order stationary phase).
   - Mitigation: The assumption is stated explicitly. The manuscripts already restrict to nondegenerate cases (Derivation D3.5a). A remark noting the degenerate case as a separate regime would be appropriate in a future C cycle.

4. **Promotion friction:**
   - Risk: The dictionary paragraph is self-contained but long (~120 words). It may be hard to insert into the delta-objects paper without disrupting the existing flow.
   - Mitigation: The paragraph is designed as a standalone remark or a replacement for Outlook item 2 in the delta-objects paper. A C cycle should choose the insertion point carefully.
