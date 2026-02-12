# DX04 Execution: Post-S78 structural sweep — cross-thread audit and anomaly probe

Date: 2026-02-12

## Surprise inventory results
- No open anomalies. All previous entries in `docs/anomalies.md` are resolved.
- S78's Van Vleck × transmutation separation is a clean structural finding, not anomalous.
- No computations failed or gave unexpected results in the S76–S78–C114–C115 chain.

## Cross-thread probe results
- Threads compared: Thread 1 (main paper RG / Section 10.5) + Thread 2 (Planck-area / PA-E5a hierarchy)
- Expected connection: the 2D delta kernel should exhibit both the geometric half-density weight (Van Vleck) and the dynamical scalarization constant (κ*) as independent factors.
- Actual finding: **Confirmed.** The Lippmann–Schwinger factorization G = G₀ + G₀·T·G₀ separates them:
  - G₀ factors carry half-density weight at endpoints (geometric, from Van Vleck / PA-D1.4).
  - T(E) is a scalar at the interaction vertex containing κ* (dynamical, from RG / P11.1).
  - They combine multiplicatively. This is stated in the S78 blackboard but **not yet in any manuscript**.

## Full manuscript audit (via Explore agent)
- **Main paper**: 74+ named blocks across 11 sections. All internally referenced. Section 9 correctly cites D6.2a-sg, D9.1a, and the linear/nonlinear beta boundary.
- **Planck-area draft**: 68 named blocks. PA-E5a integrates the three-level hierarchy cleanly. All cross-references valid.
- **Half-density QFT**: 8 blocks, minimal companion note. HD-D1.3 referenced from main paper — valid.
- **RG-fundamental**: Early draft, 4 blocks. Not actively developed.

## Unpromoted blackboard findings (promotion queue)
1. **S78** (Van Vleck × transmutation): structurally independent, multiply in kernel. → **C116 candidate**.
2. **S76** (linear/nonlinear beta boundary): partially promoted (line 991 paragraph in main paper). Formalization as a standalone remark is optional, not urgent.
3. **S71** (RCP 11 predictions): enumerated in blackboard, not in manuscript. Future C candidate if needed for submission.
4. **S74** (quadratic-symbol ordering): extends D9.1 to f(q)p². Future C candidate.
5. **S70** (D=4 triple coincidence): scattered across H4.0b, H4.0c, HD-D1.3. Consolidation is optional.

## Framing stress-test results
- Hardest case for current framing: **Why does RCP not predict the specific value d = 4?** RCP says "predictions must survive refinement" but doesn't select a dimension. The dimension sieve (PA-H2.5) is an additional hypothesis layered on top of RCP. This is correctly reflected in the current framing — PA-H2.5 is a separate knob, not part of RCP itself. No correction needed.
- Is the framing still adequate? **Yes.** RCP v4 accounts for all three hierarchy levels: semigroup (partition compatibility), transmutation (scale compatibility with nonlinear β), and dimension sieve (PA-H2.5 as additional selection principle). The three-level hierarchy is a structural prediction of v4, not an extension.
- One way the framing could be wrong: if there exists a transmutation scale that *does* sieve dimensions (i.e., a mechanism between levels 2 and 3 that is non-analytic in couplings yet dimension-selective). Currently no such mechanism is known; S76 showed the boundary is at β order ≥ 2, and S77 confirmed transmutation is dimension-permissive.

## Candidate principle
No new candidate this round. The three-level hierarchy is a structural consequence of RCP v4, not a new principle. RCP v4 stands.

## Updates made
- `docs/anomalies.md`: no changes needed (no new anomalies, no open entries).
- `docs/research-state.md`: reviewed principle evolution log — v4 confirmed, no update warranted.
- `docs/research-log.md`: entry added.
- `cycles/index.md`: DX04 completed, next action updated.

## Spawned cycles
- **C116** (priority): promote S78 Van Vleck × transmutation structural separation into Planck-area draft (new remark after PA-E5a or PA-D1.4).
- After C116: Q71 (referee pass on C116), then S or B.
