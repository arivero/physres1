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

## Computationalist Publication Vote Record — 2026-02-21
<!-- author: computationalist -->

### Verification methodology
SymPy symbolic verification + numerical spot checks on all key formulas.
Script: tmp/vote_verification.py (run 2026-02-21).

### Paper 1: Half-Density QFT

**VOTE: YES**

Verified:
- HD-D1.1a: Gaussian normalization (2*pi*eps)^{-D/2} * eps^{D/2} = 1 [exact]
- HD-D1.3: D(4-D)/4 coefficient: D=2→1, D=3→3/4, D=4→0 ✓
- HD-D1.3b: xi_conf = (D-2)/(4(D-1)) equals 1/6 only at D=4 ✓
- HD-D4.5: Proper-time integral t^{-D/2} → Gamma(D/2-1) via Schwinger ✓
- HD-D5.3: Mass counterterm Λ^{D-2} = Λ^{2(D/2-1)} from cutoff integral ✓
- HD-D5.3b: Gamma-function pole at D=2(n+1) for a_n counterterm ✓
- No dimensional inconsistencies found.

### Paper 2: Delta Objects

**VOTE: YES**

Verified:
- Section 2: eps^{-d}*eps^{d/2} = eps^{-d/2} [exact scaling]
- Example 4.1: kappa = |g|m/hbar^2, E = -mg^2/(2hbar^2) ✓
- Example 4.1b: kappa = alpha from denominator cancellation ✓
- Remark 4.3: Laplace integral = Gamma(1-d/2)*kappa^{d-2}, diverges at d=2 ✓
- Remark 5.1: Sobolev/Morrey embedding d<4 for H^2 ↪ C^0 ✓
- [K] = kg*m^3/s^2, [L] = kg*m^2/s, [K/L] = m/s ✓

### Paper 3: Relativistic Central Orbits

**VOTE: YES**

Verified:
- Section 3: K = gamma*m*v^2*r, L = gamma*m*r*v => K/L = v [exact]
- W_L(r)*r → Lc-K as r→0 ✓ [SymPy series]
- Stability criterion 1+(2-q)*gamma^2: reduces to 1 at q=2 ✓, to 1-gamma^2 at q=3 ✓
- V_eff'' at circular orbit: SymPy confirms 2M(r-6M)/(r^3(r-3M)) [exact, diff=0]
- L^2(ISCO) = 12M^2 ✓, E^2(ISCO) = 8/9 ✓
- Accretion efficiency: 1-2sqrt(2)/3 ≈ 5.72% ✓
- Photon sphere: SymPy solve gives r_ph = 3M [exact]
- Precession: Delta_phi ≈ pi*K^2/(c^2*L^2) for v<<c ✓
- Epicyclic ratio at q=2: omega_r^2/omega_phi^2 = 1-beta^2 = omega^2 ✓

One sev-3 (critic concurs): Remark 5.2d derivation gap — result correct, derivation implicit.

### Paper 4: Dirac Probes, Corners, Impulses

**VOTE: YES**

Verified:
- Action excess: S - S_0 = m*t_0*(T-t_0)*Delta_v^2/(2T) [exact SymPy, match=True]
- Maximum at t_0 = T/2: factor = T/4 ✓
- Weierstrass excess: m*(q_dot - q_dot')^2/2 >= 0 [exact factorization]
- Energy jump: Delta H = J*v_bar, diff=0 [exact SymPy]
- Van Vleck det in d dims: (m/T)^d, sqrt = (m/T)^{d/2} ✓
- Remark 5.2b: G_0(0,0;E) ~ integral t^{-d/2} e^{-kappa^2*t} dt, marginal at d=2 ✓

### Summary

| Paper | Computationalist Vote | Key checks |
|-------|----------------------|------------|
| Half-Density QFT | YES | 6 formulas verified |
| Delta Objects | YES | 5 formulas verified |
| Relativistic Central Orbits | YES | 9 formulas verified (all exact) |
| Dirac Probes/Corners/Impulses | YES | 5 formulas verified |

All computations consistent. No sev-1 or sev-2 errors found.
Agreement with Critic votes (critic-publication-votes-2026-02-21.md).
