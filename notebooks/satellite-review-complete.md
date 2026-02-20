# Complete Satellite Review Record
<!-- author: critic -->
Date: 2026-02-20

## Summary

All 13 satellites reviewed. No severity-1 (correctness) errors found in any paper.
Total algebra/numerical checks: 93 across all papers.

## Final Quality Ranking

| Rank | Paper | Lines | Refs | Sev-1 | Sev-2 | Key Finding |
|------|-------|-------|------|-------|-------|-------------|
| 1 | planck-area | 736 | 9 | 0 | 0 | BEST: honest framing, hypothesis ladder exemplary |
| 2 | dirac-probes | 257 | 6 | 0 | 3 | BEST structure, safe/unsafe dichotomy genuine |
| 3 | half-density-qft | 265 | 7 | 0 | 0 | Cleanest short paper, intentionally narrow |
| 4 | delta-objects | 218 | 6 | 0 | 0 | Clean dictionary, cautious framing |
| 5 | relativistic-central-orbits | 296 | 2 | 0 | 0 | Standard material, thin refinement framing |
| 6 | action-angle | 241 | 38 | 0 | 2 | Modest original math (Prop 4.2), extensive survey |
| 7 | uncuttable | 241 | 38 | 0 | 6 | Survey/perspective, no original math |
| 8 | fermionic-mediators | 245 | 40 | 0 | 5 | Survey, ~5 lines original content |
| 9 | rooted-tree-bookkeeping | 431 | 5 | 0 | 3 | Good framing but 3 math errors in order-3 trees |
| 10 | rg-fundamental | 724 | 10 | 0 | 3 | Sound math, overclaims: "RG is definitional" |
| 11 | path-integral-normalization | 450 | 3 | 0 | 2 | Sound math, independence overclaim |
| 12 | ordering-equivalence | 400 | 2 | 0 | 2 | Weyl label error, PDM numerics off |
| 13 | rcp-foundations | 380 | 6 | 0 | 2 | Weakest: redundant axiom, Noether overclaim |

## Classification by Genre

### Research papers (contain original mathematical content)
- planck-area (hypothesis ladder, parity lemma, heat-kernel witness)
- dirac-probes (safe/unsafe dichotomy, worked model)
- half-density-qft (densitized scalar computation)
- delta-objects (half-density dictionary for point interactions)
- rooted-tree-bookkeeping (Butcher/RG dictionary, Hopf coproduct)
- rg-fundamental (multi-channel RCP bridge)
- path-integral-normalization (d/2 exponent from composition)
- ordering-equivalence (PDM worked example, deformation perspective)
- rcp-foundations (three-channel axiom system)
- action-angle (circular uncertainty Prop 4.2, though modest)

### Standard-material papers (correct exposition, limited original contribution)
- relativistic-central-orbits (textbook SR/GR orbits, q_crit rule is modestly original)

### Survey/perspective papers (no original math, extensive review)
- uncuttable (survey of limit control from Cauchy to constructive QFT)
- fermionic-mediators (survey of fermionic forces via loops/composites)

## Cross-Cutting Observations

### 1. Overclaiming pattern (sev-2, systematic)
- Diagnosed in cross-paper-overclaiming-diagnostic.md
- Affects: rcp-foundations, rg-fundamental, path-integral-normalization, ordering-equivalence
- Pattern: "RCP forces X" language when RCP organizes/reframes X
- The calculations are correct; the interpretive framing overreaches

### 2. Survey inflation (sev-2, structural)
- Three papers (uncuttable, fermionic-mediators, action-angle) are >90% remarks by volume
- Remark density: uncuttable 1/7, fermionic 1/11, action-angle 1/8
- These papers function as well-organized reviews, not research notes
- Recommendation: either reclassify or add one original computation each

### 3. Reference count bimodality
- Short research papers: 2-9 refs (appropriate)
- Survey papers: 38-40 refs (appropriate for reviews, heavy for research notes)

### 4. Mathematical cleanliness
- Zero sev-1 errors across 93 algebra checks
- The rooted-tree-bookkeeping paper has 3 sev-2 math errors (order-3 tree formalism), the only paper with mathematical issues
- The Weyl label error in ordering-equivalence was a terminological error, not a calculation error

### 5. Strongest individual contributions
- planck-area: hypothesis ladder (H2.1-H2.5) is the most original structural contribution
- dirac-probes: safe/unsafe delta dichotomy (Section 5) is the best conceptual clarification
- rooted-tree-bookkeeping: Butcher/RG dictionary is the most ambitious cross-domain bridge
- action-angle: circular uncertainty relation (Prop 4.2) with von Mises saturation is a complete small result

## Recommendations for Publication Track

### Ready for submission (PLB format, frozen at limit)
1. half-density-qft (6pp) — cleanest, no changes needed
2. delta-objects (6pp) — clean, no changes needed
3. planck-area (14pp) — accept as PRD-length

### Ready after minor revisions
4. dirac-probes (7pp) — 3 sev-2 fixes (Remark 2.3, Section 4.5, Remark 5.2b)
5. relativistic-central-orbits (6pp) — no changes needed (thin refinement framing is honest)

### Needs sev-2 fixes before submission
6. rg-fundamental (12pp) — overclaiming language pass
7. path-integral-normalization (9pp) — independence claim revision
8. ordering-equivalence (8pp) — Weyl relabel done; PDM numerics need checking
9. rcp-foundations (7pp) — A2 redundancy, Noether overclaim
10. rooted-tree-bookkeeping (8pp) — 3 order-3 tree corrections

### Needs genre decision
11. uncuttable (13pp) — reclassify as review/perspective, or add original computation
12. fermionic-mediators (13pp) — reclassify as review/perspective, or add original computation
13. action-angle (13pp) — strongest of the three survey-types; Prop 4.2 is genuine but modest

## Post-Review Structural Assessment (Critic, 2026-02-20)

### The asymmetry of the three channels

The project claims three channels of Refinement Compatibility: partition, representation, scale. After reviewing all 14 satellites + the cornerstone, the channels have unequal evidential support:

**Partition channel (STRONG):** P4.2 is a theorem. Composition forces kappa=hbar. The derivation is clean, the hypothesis reduction (P4.2c-h) is rigorous, and the single-axiom result (P4.2h) is the strongest claim in the project. Multiple satellites independently verify different aspects (path-integral-normalization: d/2 exponent; tangent-groupoid-bridge: groupoid reading; delta-objects: half-density dictionary).

**Representation channel (MODERATE):** The ordering-equivalence satellite provides concrete calculations (PDM four-layer stratification, Weyl vs LR symmetric, star-product automorphism). D9.1f in the cornerstone shows domain data must be transported. The evidence is computational but not a uniqueness theorem — the ordering equivalence result says different orderings are equivalent (a gauge freedom), not that one is forced.

**Scale channel (WEAK):** H6.3 is a heuristic, not a theorem. The rg-fundamental satellite shows RG CAN be read as compatibility, but doesn't prove it MUST be. The 2D delta example (Section 5 of rg-fundamental) is sound but doesn't demonstrate that RG is forced — it demonstrates that RG works. The distinction between "forced" (partition) and "works" (scale) is the gap.

### The honest version of the project's claim

The cornerstone (Section 9.3-9.4) already acknowledges this asymmetry, which is why D10.1c says "the first two witnesses make RCP constructive... the third is a structural heuristic." This honesty is exemplary. The satellite papers sometimes fail to maintain this calibration — the overclaiming pattern (4 satellites affected) arises precisely when satellite authors treat the scale channel as if it had the same evidential status as the partition channel.

### What would strengthen the scale channel

To elevate H6.3 from heuristic to derivation, one would need: a proof that for interactions with singular short-distance behavior, the only composition-compatible regularization scheme is one that introduces scale-dependent parameters (i.e., RG flow is the unique solution). The 2D delta example comes closest — there, the coupling MUST run for the T-matrix to be cutoff-independent — but this is a specific model, not a general theorem.

### Tangent-groupoid-bridge as partial bridge

The new tangent-groupoid satellite partially bridges this gap: TG-P1.1 shows d/2 is forced by Fourier multiplicativity + dimensional homogeneity (a groupoid-algebraic derivation). The open problem TG-Q3 (contact groupoid for non-topological theories) is precisely the question of whether the scale channel can be given a groupoid reading. If resolved affirmatively, it would provide the missing algebraic backbone for the scale channel.

### Summary of channel evidential status

| Channel | Crown witness | Status | What's missing |
|---------|--------------|--------|----------------|
| Partition | P4.2 (theorem) | STRONG | Nothing at the QM level; QFT extension (P9.1a) is open |
| Representation | D9.1f + OE satellite | MODERATE | No uniqueness theorem; gauge equivalence, not forcing |
| Scale | H6.3 (heuristic) | WEAK | General forcing proof; only specific models demonstrated |
