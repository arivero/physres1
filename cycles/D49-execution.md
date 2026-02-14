# D49 Execution: P4.2 ↔ RCP Axiom Mapping

Date: 2026-02-14

## Summary
Mapped P4.2's three effective hypotheses — (C) composition, (I) identity limit, (D) dimensional homogeneity — onto RCP axioms A1–A5. The mapping is **clean and bijective at the partition-channel level**: (C)↔A1, (I)↔A2, (D)↔A5. A3 (representation) and A4 (scale) are logically independent, providing the other two RCP channels.

## Key findings

1. **Bijection at partition level:** Each P4.2 hypothesis corresponds to exactly one RCP axiom restricted to the partition channel. No gaps, no redundancies.

2. **Proper containment globally:** Each RCP axiom (A1, A2, A5) is strictly broader than its P4.2 counterpart — they apply across all three channels (partition, representation, scale), while P4.2 hypotheses apply only to partition.

3. **Derived hypotheses confirmed as theorems:**
   - (L_exp) = theorem of A1 (functional equation forces Gaussian)
   - (L_loc) = theorem of A1+A5 (Lévy obstruction via dimensional analysis)
   - iε = theorem of A1 (degree-counting)
   - Continuum time = theorem of A5 (dimensional obstruction)

4. **A3 adds representation channel** (orthogonal to P4.2): ordering equivalence, domain data transport, four-layer stratification.

5. **A4 adds scale channel** (orthogonal to P4.2): RG flow, dimensional transmutation, beta function as compatibility map.

6. **P4.2 conclusion decomposition by axiom:**
   - d/2 exponent: A1 alone
   - ∃κ with [κ]=[action]: A1+A5
   - κ=ℏ: A5
   - κ→0 failure: A2
   - κ→∞ failure: A1

## Novelty assessment
- **YES (structural clarity):** The decomposition of P4.2 conclusions by individual axiom (Section 3 of blackboard) is new — it shows which axiom does what, and that A1 carries more weight than A2 or A5. This sharpens the "crown witness" narrative: d/2 and exponential weight are pure composition theorems; ℏ-necessity requires dimensional homogeneity; the failure of κ→0 requires the identity limit.
- The finding that A3 and A4 are operationally orthogonal to P4.2 confirms the three-channel decomposition is genuine (not redundant).

## Blackboard deliverable
- `blackboards/0.md` — complete mapping table + verdicts

## Spawned cycles
- None immediate. The blackboard content could be promoted via a future C-cycle into the RCP foundations paper Section 6 (adding the per-axiom decomposition table) if it adds clarity. This would be a substantial addition (~20+ lines with tables).
