# Cycle Board

> **Context-saving rule:** Do NOT read this file line-by-line at session start.
> Skim the summary counts and jump to **Next Action**. Completed cycle files
> live in **git history** (removed from working tree via `git rm`). To read one,
> use `git show <commit>:cycles/<ID>-execution.md`. Never bulk-recover archived
> cycles into the working tree.

## Completed (archived in git history)

| Track | Count | Range |
|-------|-------|-------|
| Content (`Cnn`) | 295 | C00–C302 (gaps: none) |
| Bibliography (`Bnn`) | 28 | B00–B27, B33 |
| Study (`Snn`) | 278 | S00–S286 (gaps: S276–S278 active) |
| Quality (`Qnn`) | 178 | Q00–Q184 (gaps: Q110–Q111) |
| Discovery triage (`Dnn`) | 30 | D00–D28, D32 (dormant) |
| Discovery explore (`DXnn`) | 11 | DX01–DX11 (dormant) |
| Publication (`Pnn`) | 2 | P00–P01 |

**Total archived: ~3270 cycle files.**

## Active / In Progress

- `S276` (initial pass done): generalized marginal map beyond monomial \(A(L)\).
- `S277` (initial + analytic-closure iteration done): scale-window validity for mixed kinetic exponents.
- `S278` (initial + iteration-2 done): potential-channel drift diagnostics for non-power corrections.
- `D23` (completed): ordering vs unitarity in the \(H=qp\) discretization witness. S280 completed (`notebooks/ordering-unitarity-dilation-generator.md`). Safe claim: symmetry selects \(\alpha=1/2\); scope disclaimer on domain-dependent self-adjointness.
- `D24` (completed): delta-object dictionary + "\(\delta(\delta S)\)" meaning audit. S281 completed (blackboards/1.md).
- `D25` (completed): random impulses + Itô/Stratonovich link to time-slicing conventions. S282 completed (blackboards/2.md).
- `D26` (completed): heat-kernel / half-density semantics as a QFT-grade witness. S283 completed (blackboards/5.md).
- `D27` (completed): odd-\(d\) scalarization scale supplier vs transmutation. S284 completed (blackboards/0.md). Parity lemma: monomial sieve is even-\(d\) only; transmutation is parity-blind; d=3 delta witness supplies \(a^{3/2} = \text{length}^{d/2}\). B32 deferred.
- `D28` (completed): Newton polygonal convergence statement + failure mode witness. S285 completed (blackboards/6.md). Promotable paragraph ready for future C-cycle targeting Section 3.
- `D32` (completed): Does composition force universality of κ across sectors? S286 completed (blackboards/4.md). Verdict: universality forced for coupled systems (single-exponential-weight assumption prevents factorization); decoupled sectors can have independent κ. Transitivity of interaction makes κ=ℏ universal across all interacting physics.
- `D30` (completed): Does P4.2 (ℏ-necessity) extend to curved configuration spaces? S287 completed (blackboards/5.md). Verdict: **P4.2 extends cleanly**. Van Vleck determinant Δ^{1/2} composes via DeWitt-Morette law; d/2 normalization forced identically; Δ and √|g| are geometric (metric-dependent) but ℏ-independent. Metric provides **no escape route** from κ-necessity. Major strengthening: P4.2 is **metric-independent**.
- `D29` (completed): Can hypothesis (L) (local exponential weight) be weakened? S288 completed (blackboards/1.md). **Major discovery**: (L) = (L_loc) + (L_exp), where (L_exp) is a **THEOREM** (not assumption) derived from composition semigroup. Functional equation uniquely forces exponential form for action-dependent kernels. Only escape: Lévy-Khintchine (jump processes, non-action-dependent). P4.2 hypothesis count is effectively **3.5, not 4**.
- `D31` (completed): What is the measure-theoretic κ→0 obstruction? S289 completed (blackboards/2.md). **Rigorous result**: κ→0 fails via **three redundant obstructions** (support shift to x₀(y,t)≠y, oscillatory divergence exp(iS_cl/κ), non-commutativity of limits). Primary: residual action S_cl(x₀,y;t) generically nonzero → distributional limit does not exist. Free particle (V=0) is unique exception (trivial). P4.2(iii) now mathematically rigorous.
- `D35` (completed): Is there tension between Section 7 (all orderings equivalent) and Section 10.2 (half-density selects canonical)? S290 completed (blackboards/3.md). **Verdict**: Tension is **apparent, not real**. Four-layer stratification: (1) principal symbol—all agree, (2) connection term—half-density fixes uniquely, (3) scalar potential—deformation freedom persists, (4) domain—independent. Half-density is **canonical choice** within deformation equivalence class (like Lorenz gauge), not unique physics. Sections 7 and 10.2 are complementary.

## Next Action

**Page counts** (elsarticle 3p twocolumn = PLB format; run `scripts/count-pages.sh`):
- PLB-length (≤6pp): relativistic 6pp (296), HD-QFT 6pp (265), delta 6pp (218).
- PRD-length (>6pp): dirac 7pp (256), rg-fund 9pp, action-angle 13pp, fermionic 13pp, uncuttable 13pp, planck-area 14pp.
- Cornerstone: 23pp (Physics Reports target).
- **Total corpus: ~125k tokens (Claude tokenizer).**

**Recent completed:**
- C301+Q183: promoted Remark H1.2a (Newton polygonal O(h) convergence + collision singularity failure mode) into Section 3.3 of `paper/main.md`; Q183 PASS WITH MINOR REVISIONS (missing HLW06 citation → B33; nabla V notation → optional C302).
- S274+S275(iter4)+D20: threshold-bridge deepening continued without new C-cycle. Added \(L_{\mathrm{crit}}\) marginal map, ran same-ID caveat-coverage + compactness/readability iterations for compression candidates, and deferred C300 (no correctness defect).
- D18+S272+S273+D19: slowed the central-force threshold thread into stress-test cadence (coefficient-aware marginal analysis + assumption-break tests + evidence-gated `S274/S275 -> optional C300` queue).
- D17+S270+S271+C299+Q182: main-paper Section 3.3 bridge wave on `paper/main.md`. Added `Remark P1.1a` (asymptotic threshold \(q_{\mathrm{crit}}=\nu+1\), Newton \(3\) vs SR \(2\), explicit scope split from inverse-square dimensional identity); Q182 PASS.
- C298+Q181: readability pointer hardening on `paper/main.md` (Section 9.5 quick map + `D10.4a`); Q181 PASS.
- C297+Q180: RCP cross-link hardening on `paper/main.md` (`D10.1b` linking domain-data witness to operational closure map); Q180 PASS.
- C296+Q179: Package B deeper extension witness on `paper/main.md` (`D9.1f`, `D9.1g`); Q179 PASS.
- C295+Q178: Package A sanity-limit hardening on `paper/main.md` (`D12.3b`); Q178 PASS.
- C294+Q177: Package A exact nontrivial kernel benchmark on `paper/main.md` (`D12.3`, `D12.3a`); Q177 PASS.
- C293+Q176: main-paper Package A quantitative hardening on `paper/main.md`. Added `P12.2` bounded-potential remainder/composition-defect control; Q176 PASS.
- C291+Q174+C292+Q175: YOLO main-paper continuation on `paper/main.md`. Extended Package B to curved-manifold operator-domain witness (`D9.1d`, `D9.1e`) and Package A to first-order bounded-potential composition witness (`D12.2`, `D12.2a`). Q174/Q175 PASS.
- C289+Q172+C290+Q173: main-paper hardening wave on `paper/main.md`. Added Package C/D/A/E starter derivations (D6.4, D8.2a, D12.1/P12.1, compatibility map), then closed Package B starter with explicit `S^1` domain/symmetry witness (D9.1b, D9.1c). Q172/Q173 PASS.
- C288: converted Section 9 closing prose into task-driven Package A-E queue (`+27 -8`).

**Immediate:**
- Pick one open `S` branch (`S276`/`S277`/`S278`) to deepen next; keep others parked as ready alternatives.
- If continuing this thread: keep iterating same active S-cycle ID when unresolved; open new ID only on scope reset/change.
- Threshold-bridge queue (slow cadence): continue technical S-branches only (`S276`/`S277`/`S278`).
- `S275`, `D21`, `D22`, and `C300` are closed and archived in this session.
- Relativistic now at PLB boundary (6pp); treat as frozen unless compact replacement edit is required.
- HD-QFT at 6pp boundary.
- Delta-objects at PLB limit — frozen. Dirac-probes at 7pp — FROZEN.
- Bibliography: Lanczos, Fraser-Nakane, Delaunay, Nauenberg2003 source ingestion.
- Cornerstone queue: optional freeze-pass cycle for submission-oriented consistency sweep (notation, transitions, duplicate-claim trim) after commit batch.
- Scaffolding cadence: prefer batched C-waves (multiple paragraph-level promotions per cycle) to reduce cycle-directory overhead.

**Standing priorities:**
- Open questions from `docs/motivations.md` all analyzed. Focus shifts to expansion.
- P cycles for satellite submissions when ready.
- Future satellites: item C (Ordering), D (Rooted Trees), A (RCP).

**Deprioritized:**
- `[Landsman1998]`: PENDING_LIBRARY — requires institutional Springer access or physical library visit.

## Session Addenda (2026-02-14)
- Location semantics: files in `cycles/` are selectable active logs; completed files are `git rm`'d and live in git history only.
- Cycle artifacts are append-only in this session.
- Workflow rule: `S`/`D` must use blackboards/notebooks (no `paper/notes/`); `C` may use `paper/notes/` only when adding content to the same paper target.

## Session Addenda (2026-02-14, 03:05 CET)
- `S275` (iteration 5): added stricter 8-caveat compression gate; new default candidate `D4plus` (31 words, 8/8 caveat coverage, ~72.5% compression).
- `C300` remains deferred and optional (readability-only trigger, no correctness defect).

## Session Addenda (2026-02-14, 03:10 CET)
- Metric correction: `S275` selected candidate `D4plus` compresses by `~65.9%` (91 -> 31 words), not `~72.5%`.
- `D21` (iteration 3): launch gate now includes deterministic tie-break (coverage first, compression second); current recommendation remains `D4plus`.
- `S276` (iteration 3): added windowed uniqueness criterion (report global vs operating-window crossings + range bracket).
- `D22` (iteration 3): added bounded navigation gate; `X2` candidate parked, insertion still deferred to readability pass.
- `S277` (iteration 3): added decade-drift validity gate (`Delta nu_10`) for finite-window fixed-exponent claims.
- `S278` (iteration 3): added finite-window potential-drift gate (`Delta m_max`) and cross-family tolerance comparison.
- `D21` (iteration 4): integrated launch matrix added; C300 remains deferred by policy preference, not readiness gaps.
- `S275` (iteration 6): default compression candidate switched to TeX-ready `D6_tex_compact` (8/8 caveats, ~56% compression).
- `D21` (iteration 5): launch preference aligned to `D6_tex_compact` for lower promotion friction.
- Boundary correction: notation-style promotion-readiness checks reassigned from `S275` to `D21`/future `C300`; `S275` remains technical-only.
- Boundary correction (superseding prior split): notation-style harmonization is `C`-only (except explicit TeX-discovery tasks); `D21` kept to launch triage.
- Postmortem correction: D21 policy-heavy iterations marked as discovery-inactive/admin trace; D22 narrowed to discovery-only conceptual triage.
- `C300` (completed, uncommitted): compressed `Remark P1.1a` in `paper/main.md` to a caveat-preserving 2-sentence form (`+1 -1`).
- `C300` (closed, no promotion): paragraph restored by user request; manuscript net diff returned to `+0 -0`.
- `D22` closed: no new conceptual relation established in discovery pass.
- `D21` closed: administrative/policy trace only (not discovery).
- Drift postmortem: ambiguity came from missing explicit prohibition of policy/editorial tasks in `D`; fixed by adding `D` scope guard in `cycles/README.md` and strict track mapping in `AGENTS.md`/`docs/handoff.md`.
- `S277` (iteration 4): generalized drift gate to arbitrary scale factor `Delta nu_b`, with peak-location formula and asymptotic window estimates.

## Session Addenda (2026-02-14, 04:42 CET)
- `D23`+`S280` (completed): symmetry (not unitarity) selects α=1/2 for H=qp ordering; derivation in `notebooks/ordering-unitarity-dilation-generator.md`.
- `D24`+`S281` (completed): delta-object dictionary with mollifier-universality criterion; blackboard in slot 1.
- `D25`+`S282` (completed): midpoint=Stratonovich, prepoint=Itô; Itô correction (1/2)σσ' dt computed; blackboard in slot 2.
- `D26`+`S283` (completed): heat kernel as bi-half-density, D/2 normalization, V=(1/6)R curvature potential; blackboard in slot 5.
- `D27`+`S284` (completed): parity lemma blocks monomial sieve for odd d; transmutation parity-blind; blackboard in slot 0.
- `D28`+`S285` (completed): Newton kick-drift = symplectic Euler, O(h) convergence, central-force singularity failure mode; blackboard in slot 6.
- Blackboard promotions to notebooks: S208 Padé content → `notebooks/nonperturbative-contact-pade.md`, S213 caustics → `notebooks/caustics-maslov-half-density.md`.
- Active S-cycles parked: S276 (marginal map), S277 (scale-window drift), S278 (potential-channel drift).
