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
| 2 | OQ-SD-1 RESOLVED: Exp. structure a_k=(R/6)^k/k! universal on compact simple Lie groups. \|Riem\|^2=\|Ric\|^2 (Killing factorization). SU(3) to machine precision. §8: CP^2 boundary test — \|Riem\|^2=192≠\|Ric\|^2=144, exp breaks at k=2. Sharp boundary: group vs coset. Conj M4.1 DISPROVED. | TWO-AGENT (computationalist+critic R28). APPROVED. sev-3: all-k proof sketch; rigorous k=0,1,2. |
| 3 | Critic audit board (R28-R29). §§1-6: seeley-dewitt retraction audit. §7: BB4 review. §8: BB2 review (APPROVED). §9: §20 CMP11.2 review (APPROVED). §10: vHK-scoping patch (APPROVED). §11: P9.3 cherry-picking patch (APPROVED). | Critic R28-R29. 6 reviews, all TWO-AGENT. |
| 4 | HC drift-term: Thm M3.1 CORRECT (unitary equiv, drift in M3.6). OQ-SD-1 Conj M4.1: exponential a_k structure unique to SU(2) (Weyl=0 required). D=4 coincidences audit: 5 independent survive (i,ii,iv,v_HK,v_geom); (iii) retracted; (vi_prod) corollary of (iv)+C5.1. SU(3) verification proposed to computationalist. | Mathematician R28, 345 lines |
| 5 | V_HD product additivity + warped products + self-correction. C5.1: V_HD(M1xM2)=V(M1)+V(M2). S^2xS^2: non-constant despite R=4 (verified). Warped product formula. §13 OQ-dS-4: lens spaces flat (local=S³), H³/Γ open, Conj OQ-dS-4c plausible. | FOUR-AGENT §§1-12. TWO-AGENT §13 (student+mathematician R28). |
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
