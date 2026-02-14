# D35 Execution: Half-Density Ordering Resolution vs Deformation Equivalence

Date: 2026-02-14

## Status
Completed

## Work log
1. **12:40** — Opus scan identified D35 as #1 recommendation (High priority, Medium difficulty, most tractable)
2. **12:50** — Read all blackboards + sampled notebooks (ordering-unitarity relevant: α=1/2 selection for H=qp)
3. **13:00** — Created D35 cycle files, formulated question
4. **13:01** — Haiku context search (agent abb762e) completed
   - Found: de Gosson (Born-Jordan vs Weyl differ for L²), Rivero (orderings equivalent in classical limit), Groenewold (quantization correspondence problem)
   - Key tension: de Gosson says orderings give **different observables**; Rivero says **same classical limit**
5. **13:03** — Spawned S290 (Opus agent a472cc2) for half-density vs Moyal comparison
6. **13:06** — S290 completed with **four-layer stratification resolution**

## S290 verdict
**The tension is apparent, not real. Resolution is scope-dependent** (D35-plan Option 2).

**Four-layer stratification of quantization freedom:**
1. **Principal symbol** (O(ℏ⁰)): All prescriptions agree (classical Hamiltonian)
2. **Connection term** (O(ℏ), first-derivative): **Half-density fixes uniquely** (eliminates connection)
3. **Scalar potential** (O(ℏ²)): Deformation freedom persists (Section 7 star-product gauge)
4. **Domain/extensions**: Independent of ordering (Section 10.2, D9.1f)

**Key results:**
- Flat space, H = p²/(2m) + V(q): Half-density = Weyl = Born-Jordan (all agree)
- Curved space / position-dependent mass H = f(q)p²: **Half-density eliminates connection term**, Weyl adds O(ℏ) correction
- H = qp: All agree, giving (qp+pq)/2. Notebook's α=1/2 selection IS half-density (Jacobian |dq'/dq|^{1/2})
- de Gosson's Born-Jordan vs Weyl difference (for L²): Lives in layer 3 (O(ℏ²) corrections), consistent with Section 7

**Reconciliation:**
- **Section 7**: All star products related by automorphisms are **algebraically equivalent** (same classical limit)
- **Section 10.2**: Half-density selects **canonical operator realization** (distinguished gauge, like Lorenz gauge)
- **No contradiction**: Canonical ≠ unique physics; it's a convenient choice within equivalence class

## Novelty assessment
**Structural clarification:** The four-layer stratification makes explicit what was implicit. Half-density is **not** a replacement for deformation quantization (Section 7) but a **complementary framework** that fixes layers 1-2, leaving layers 3-4 free.

This resolves the apparent tension and strengthens both sections.

## Follow-up opportunities
- Promotion candidates (from S290 blackboard):
  1. Sharpen Section 9.3 item 5 (line 1206) to state four-layer structure explicitly
  2. Close Package B using f(q)p² comparison as concrete witness
- No manuscript revision needed (sections are compatible)

## Spawned cycles
- S290: Half-density vs Moyal comparison (completed by Opus a472cc2, blackboards/3.md)

## D35 closure
✓ Question answered definitively: tension is apparent, not real
✓ S290 comparison complete (blackboards/3.md)
✓ Four-layer stratification identified
✓ Section 7 and 10.2 are complementary (not contradictory)
✓ Ready for optional C-cycle promotion when appropriate
