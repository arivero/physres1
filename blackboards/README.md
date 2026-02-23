# Blackboards (Shared Chalkboard)

Ephemeral scratch for active work — the seminar-room chalkboard. Anyone can
write, erase, correct a sign, or chalk a counterexample. Content lives here
while it is being worked on; once it stabilizes, it exits.

**Any researcher agent may read, write, edit, erase, and overwrite any blackboard.**

## Hard Limit: 7 Blackboards (0-6)

Files `0.md` through `6.md`. Max **300 lines** each. When all slots are full,
**overwrite** the least relevant (priority: promoted > superseded > stale > lowest).

**The Wastepaper Basket Principle:** Discard aggressively. Wrong, superseded,
or going nowhere — erase it. Blackboards are scratch, not archives.

## Exit paths

When an argument stabilizes:
- **To a notebook**: rewrite as clean exposition and append. Do not paste raw
  blackboard content — strip speaker tags, status markers, session metadata.
- **To a manuscript**: file a patch (`patches/`) with a unified diff.
- **To the wastepaper basket**: overwrite the slot. Normal workflow, not failure.

## Rules
1. **Not citable.** Blackboards are internal scratch.
2. **Mathematical deliverables go here** (or to notebooks for stable material).
   Results only in agent memory do NOT count as completion.
3. Promotion or discard is the exit. Once exited, the slot is free for reuse.

## Slot Index (update when overwriting)
| Slot | Topic | Status |
|------|-------|--------|
| 0 | V_HD on compact Lie groups with bi-invariant metrics. Prop M0.1: V_HD constant (bi-invariance). Thm M0.3: V_HD = -R/6 = -\|rho\|^2 (analytic proof: RNC + constancy). SU(2,3,4) verified to 10^{-7}. §9 intrinsic vs coordinate: composition forces coord-volume trivialization; eigenvalue comparison intrinsic. | FIVE-AGENT (mathematician+physicist+critic+computationalist+mathematician-analytic) |
| 1 | Spectral invisibility of half-density normalization. Δ_{1/2} isospectral to bare (E'=0). Physical content: measure choice (L²(dx) vs L²(dvol)), composition without |g|^{1/2}. D=4 coincidences (i-iv) + conformal (v) survive. O3=-Δ+V_HD is distinct (radial, a_k=2^k/k!). "Composition determines MEASURE, not SPECTRUM." §S9 critic: APPROVED (sev-3 ξ_eff). §M1 mathematician: APPROVED (sev-2 V_HD not scalar, chart-dependent). OQ-SI-2: V_HD+V_conf=0 explains conformal HK flatness on S³. | THREE-AGENT (physicist+critic+mathematician R26). APPROVE. sev-2 §S5. |
| 2 | D=4 coincidences: (iv) V_HD on S^{D-1} constant iff D=4 (§§1-8 APPROVED). §9: de Sitter partition function — **INVALIDATED for Δ_{1/2}** (BB3 R26: conjugation isospectral to bare, a_1=R/6, a_2≠0). Fifth coincidence (a₂=0) SURVIVES for conformal operator (BB4 CMP9b.4), not Δ_{1/2}. §9 physical consequences need re-attribution. | THREE-AGENT on §§1-8 (physicist+mathematician+critic) APPROVED; §9 INVALIDATED (R26 critic). |
| 3 | Definitive Gilkey sign resolution (critic R26). THREE operators: O1=-Δ_g, O2=conjugation |g|^{1/4}(-Δ)|g|^{-1/4} (isospectral to O1), O3=-Δ-1 (shifted). O2≠O3: drift W^i=B^i cancels connection (SymPy-verified). E'=0 universally. a_1(O2)=R/6 (not 0). D9.1p,q WRONG. OQ-R26-1 RESOLVED: composition forces O2 (conjugation). §13: decomposition proof. §14: collateral table. §15: mathematician review (APPROVE). | TWO-AGENT (critic+mathematician R26). APPROVE. Patch filed: patches/critic-patch-retract-D91pq.md |
| 4 | Correct SD coefficients: a_k(Δ_{1/2};S³)=2^k/k! (sign error corrected R26). Conformal -Δ+R/6 is heat-kernel flat (a_k=0 all k). Jacobi theta proof: a_k(-Δ;S³)=1/k! via Poisson summation. CMP9.1: a₂(conf;S^d)=-d(d-1)(d-3)/180. CMP11.1: closed forms for a_3,a_4,a_5 all have d(d-1)(d-3) factor. Even/odd pattern: (d+2) at odd k. Perfect-square identity PH8.1. KL≠SD clarification. | THREE-AGENT (physicist+computationalist+physicist-3rd) §§1-9. TWO-AGENT §§10-11 (needs review). |
| 5 | V_HD product additivity + warped products + self-correction. C5.1: V_HD(M1xM2)=V(M1)+V(M2). S^2xS^2: non-constant despite R=4 (verified). CORRECTION: full V_HD(S^3) non-constant in geodesic polar (radial=-1, full has angular terms). Warped product formula: V_ang/f^2 coupling. Constancy in left-inv coords (M0.1), not geodesic polar. Spectral shift intrinsic. **NOTE (R26): "a_1=0 universal" (mathematician §10.3) is WRONG per BB3 — a_1=R/6 for Δ_{1/2}.** | FOUR-AGENT (computationalist+physicist+critic+mathematician). UNANIMOUS APPROVE. BB3 R26 revises HK claims. |
| 6 | H^2 (Poincare disk) ordering witness D9.1k. V_HD = 1/4 - 1/(4 sinh^2 rho). Non-compact, negative curvature, continuous spectrum. Left ordering erases spectral gap 1/4 = -R/8. New formula: V_HD(const) = -(d-1)R/(4d) on constant-curvature spaces. D=4 connection: S^{D-1} has constant V_HD iff D=4. | FOUR-AGENT (computationalist+mathematician+critic+physicist) |

## Reading Blackboards
Blackboards are the active working memory (max 7 slots, ~300 lines each, <50KB total).
Agents may read blackboards whenever they find it useful — for example:
- Before choosing a task (to avoid duplicating work)
- When looking for connections between active threads
- To identify promotion candidates or stale slots

Reading blackboards is the agent's choice, not a mandatory step.

**For notebooks:** Consider random sampling (2-3 files) to check for related stable content.
Strategy: `ls notebooks/*.md | sort -R | head -n 3` then read those files.
Notebooks are memory (stable technical exposition), blackboards are scratch (active work).

## Collaboration Use (Multi-Agent Discussion)
Blackboards are the discussion surface for multi-agent reasoning.
- Use explicit speaker tags (e.g., `Physicist:` / `Mathematician:` / `Critic:`) when running adversarial or complementary passes.
- Keep disagreements and reconciliations on the board before promoting any stabilized conclusion.
- Promote only the reconciled result to notebooks/manuscripts.
