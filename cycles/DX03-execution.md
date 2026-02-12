# DX03 Execution: Post-C112 structural sweep — cross-connections and claim-graph gaps

Date: 2026-02-12

## Surprise inventory results
- No unexpected or paradoxical results from recent cycles.
- D6.2a-sg's semigroup law is elementary (affine maps) and closes exactly — no surprises.
- D9.1a's two-layer correction (O(ℏ) + O(ℏ²)) was expected from degree counting.
- S73's resolution of DX02 (scalarization ↔ ordering parallel is notational only) was clean.
- **No new anomalies** to add to docs/anomalies.md.

## Cross-thread probe results
- **Threads compared:** Thread 1 (main paper: RG as compatibility) + Thread 6 (ordering as equivalence class)
- **Expected connection:** D9.1a should be visible from both threads — it bridges ordering (Thread 6) with half-density geometry (Thread 2), and the resolution is distinct from deformation equivalence (Section 7).
- **Actual finding:** The connection exists and is substantive, but is **under-signaled** in the manuscript. Two specific gaps:

### Gap 1: Section 9.1 claim graph (line 1039)
Line 1039 says: "Section 8: divergent refinement is controlled by renormalization maps and RG semigroup consistency."
This is accurate but abstract. D6.2a-sg now provides the **concrete proof** that the control maps form a semigroup with an explicit beta function. The claim graph does not cite this witness.

**Spawned:** C113 — add a parenthetical "(Remark D6.2a-sg)" to line 1039 as concrete witness.

### Gap 2: Section 9.3 (line 1100)
Line 1100 says: "ordering appears as deformation-equivalence choice."
This is incomplete. D9.1a shows a **complementary** resolution: half-density conjugation selects a canonical ordering for kinetic operators, independent of deformation algebra. Section 9.3 should acknowledge both mechanisms.

**Spawned:** C114 — add a sentence or parenthetical to line 1100 noting the geometric half-density resolution (D9.1a, Appendix § 10.2).

## Framing stress-test results
- **Hardest case for current framing:** Are the two ordering-control mechanisms (deformation equivalence and half-density geometry) independent?
  - **Answer:** Yes, they operate at different levels. Deformation equivalence (Section 7) classifies orderings up to equivalence of star products — it says "all orderings with the same classical limit are related by gauge transformations." Half-density geometry (D9.1a) **selects a preferred representative** within that equivalence class — the one with no first-derivative (connection) term in the scalar picture. The first is algebraic (quotient by gauge), the second is geometric (canonical representative). They are complementary, not redundant.
- **Is the framing still adequate?** Yes. RCP v4 accommodates both: deformation equivalence is the "representation" leg, half-density selection is the "partition/composition" leg (it comes from the composition law's measure-free formulation). No principle revision needed.
- **One way the framing could be incomplete:** If the half-density selection and the deformation gauge were somehow inconsistent (e.g., if the half-density-preferred ordering were not related by a gauge transformation to the Weyl ordering). But they are: the half-density conjugation |g|^{1/4}(·)|g|^{-1/4} is precisely a gauge/similarity transformation in the deformation framework.

## Candidate principle
No new candidate this round. The existing v4 (RCP) remains adequate. The DX03 finding is that recent work **reinforces** the RCP framing by providing concrete witnesses (D6.2a-sg for the scale leg, D9.1a for the representation leg) that were previously missing.

## Updates made
- `docs/anomalies.md`: no changes (no new anomalies, no entries to resolve).
- `docs/research-state.md`: principle evolution log reviewed — no update needed (v4 holds). Will not modify (DX03 reinforces, does not extend).
- `docs/research-log.md`: entry added.

## Spawned cycles
- `C113`: add D6.2a-sg witness to Section 9.1 claim graph (line 1039).
- `C114`: add half-density ordering note to Section 9.3 (line 1100).
- (Optional) `S76`: formal probe of half-density ↔ deformation equivalence compatibility — low priority, the answer is already clear from standard theory.
