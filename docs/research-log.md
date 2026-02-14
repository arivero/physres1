# Research Log

Chronological lab notebook for this repo.
This file is **not** a citable source; it can mention `conv_patched.md` only as an idea generator.

> **Context-saving rule:** This file keeps only the ~10 most recent entries.
> Older entries are in `docs/research-log-archive.md` (~3400 lines, ~420 entries).
> **Never read the archive** unless you need a specific historical entry.
> When this file exceeds ~100 lines, move older entries to the archive.

## Template (Copy for New Entries)

### YYYY-MM-DD
- Focus:
- Question:
- Work:
- Result:
- Sources touched (keys + status changes):
- Next:

## 2026-02-14 (C301+Q183+C302+Q184+B33: Newton convergence + ordering-symmetry + bibliography)
- Date: 2026-02-14, 04:42-04:58 CET

## 2026-02-14 (C301+Q183+C302+Q184: Newton polygonal convergence + ordering-symmetry promotions)
- Focus: Promote D28/S285 convergence theorem and D23/S280 symmetry-selection criterion into cornerstone manuscript Section 3 and Section 6.
- Question: Can the convergence theorem (for polygonal orbits) and symmetry-selection criterion (for H=qp ordering) be promoted without overloading their respective sections?
- Work: C301 added Remark H1.2a to Section 3.3 (O(h) convergence under Lipschitz forces, r=0 collision failure mode, connection to H1.1a hedge). Q183 reviewed (PASS WITH MINOR REVISIONS: missing HLW06 citation → B33, nabla V notation → optional C-wave). C302 added Remark D4.1c to Section 6.3 (symmetry defect i ħ (2α-1) ⟨u,v⟩ selects α=1/2, logical chain unitarity → self-adjointness → symmetry, domain-dependence of essential self-adjointness). Q184 reviewed (PASS WITH MINOR REVISIONS: all minor, no blockers).
- Result: Both promotions passed referee review. Section 3.3 now has explicit convergence statement with failure mode. Section 6.3 now clarifies that symmetry (not unitarity) is the minimal selector for α=1/2. Heuristic H0.2 bullet 2 wording remains imprecise ("unitarity selects") but is logically compatible with D4.1c's refined statement. Diffstat: +3 lines (C301), +3 lines (C302), total +6 lines in paper/main.md.
- Sources touched: HLW06/HNW93 added to bibliography via B33.
- Next: Optional future C-wave to harmonize H0.2 bullet 2 wording; continue with more D/S/C cycles from blackboard promotion queue.

## 2026-02-14 (B33: Hairer-Lubich-Wanner bibliography additions)
- Focus: Add HLW06 and HNW93 citations recommended by Q183 for convergence theorem references.
- Question: Can we acquire these Springer textbooks via OA routes?
- Work: Added two bibliography entries: [HairerLubichWanner2006GNI] (Geometric Numerical Integration, 2006) and [HairerNorsettWanner1993ODE1] (Solving ODEs I, 1993). Recorded ISBN, DOI, and specific theorem numbers (IX.3.1, II.3.1). Checked Archive Ouverte UNIGE and author sites for OA copies. Found partial chapter PDFs but not full text.
- Result: Bibliography entries complete with theorem annotations. Status: PENDING_LIBRARY (institutional access needed for full textbooks). No manuscript edits (citation insertion deferred to future optional C-wave). Partial PDFs insufficient for specific theorem verification; full library access is appropriate route for comprehensive textbooks.
- Sources touched: paper/bibliography.md updated with entries #50-51, DOI audit #39-40, OA status #38-39.
- Next: Optional future C-wave to insert explicit [HLW06] / [HNW93] citations into Remark H1.2a if referee requests.

## 2026-02-14 (D27+S284: odd-d scalarization scale supplier vs transmutation)
- Focus: Determine what the half-density scalarization program can honestly claim in odd dimensions, where the required scale has dimension length^{d/2} with half-integer exponent.
- Question: Can odd-d scalarization be achieved via monomial couplings, or does it require transmutation / non-analytic dependence?
- Work: D27 triaged the three hypothesis branches (monomial sieve, transmutation, fractional powers). Established a parity lemma: all admitted couplings under PA-H2.7a have integer length dimensions, so Z-linear combinations of integers are integers, making half-integer targets unreachable. S284 produced a blackboard note (slot 0, overwriting stale S211 content) with: (1) explicit coupling dimension table for d=1..5; (2) scale-supplier table classifying each d by parity, monomial sieve status, and transmutation availability; (3) the YM loophole analysis (g_d has half-integer dimension for odd d but is not an admitted coupling); (4) proof that transmutation is parity-blind (Lambda_*^{-d/2} is smooth for positive Lambda_*); (5) explicit d=3 witness: 3D delta interaction scattering length a supplies a^{3/2} = length^{d/2}.
- Result: The monomial sieve (PA-H2.5a) is an even-d filter: the parity obstruction is categorical. Transmutation (PA-H2.13) is parity-blind and available in all d where a marginal/relevant coupling exists. d=4 is uniquely selected by gravity-only monomial sieve. The Planck-area note's Open Problem 3 is partially resolved: odd-d universality requires the transmutation branch, which is structurally appropriate (not a defect).
- Sources touched: none (builds on existing PA-E5, Jackiw, Derezinski citations).
- Next: future C-cycle to promote a scope-boundary remark into the Planck-area note clarifying that the monomial sieve applies to even d only. B32 (transmutation anchor) deferred as unnecessary.

## 2026-02-14 (D23+S280: ordering vs unitarity in the H=qp discretization witness)
- Focus: Determine what unitarity/self-adjointness actually implies for the \(\alpha\)-discretization family \(\hat H_\alpha = \hat p\hat q + \alpha i\hbar\); produce a referee-safe claim.
- Question: Does "unitarity selects midpoint" overclaim? Is symmetry, self-adjointness, or unitarity the operative selector for \(\alpha=1/2\)?
- Work: D23 triaged the problem. S280 computed the symmetry defect \(\langle u,\hat H_\alpha v\rangle - \langle \hat H_\alpha u,v\rangle = i\hbar(2\alpha-1)\langle u,v\rangle\) by integration by parts and cross-checked via commutator algebra. Analyzed essential self-adjointness on \(\mathbb{R}_+\) (automatic via dilation group, Stone's theorem) vs \(\mathbb{R}\) (deficiency indices (1,1) at \(q=0\)). Mapped \(\hat H_\alpha = -i\hbar(q\partial_q + (1-\alpha))\).
- Result: **Symmetry** (not unitarity) is the minimal selector: it forces \(\alpha=1/2\) independently of domain/boundary conditions. Unitarity additionally requires self-adjointness, which depends on the configuration space. The manuscript's "unitarity selects midpoint" (H0.2 bullet 2) is logically correct but imprecise; a future C-cycle should tighten to "symmetry of the generator selects midpoint." Computation written to `notebooks/ordering-unitarity-dilation-generator.md`.
- Sources touched: none (standard functional analysis: Stone's theorem, deficiency indices).
- Next: future C-cycle to tighten H0.2 bullet 2 wording; B28 deferred (no external anchor needed).

## 2026-02-14 (D24+S281: delta-object dictionary and stationary-set localization)
- Focus: Clarify which "delta objects" are legitimate across the manuscripts and establish a single safe/unsafe criterion.
- Question: Which delta-adjacent constructions (delta(f'), delta', diagonal delta kernels, delta potentials, "delta(delta S)") are rigorous, which require renormalization, and which are heuristic-only? Is there a single criterion that classifies them?
- Work: D24 triaged the problem and spawned S281. S281 produced a 6-section blackboard (slot 1) containing: (1) a 5-row dictionary table mapping each delta object to its definition, domain, and math status; (2) a do/don't table with 5 safe/unsafe pairs; (3) the mollifier-universality criterion as the single safe/unsafe test; (4) Witness A: point-splitting proof that (delta(x+eps)-delta(x))/eps -> delta'(x) in D'; (5) Witness B: distributional change-of-variables proof of delta(f') = sum delta(x-x_i)/|f''(x_i)| with multi-dimensional extension; (6) complete analysis of when "delta(delta S)" is acceptable (never literally; shorthand only with regulated substitute); (7) promotion-ready dictionary paragraph (~120 words).
- Result: All acceptance criteria met. The mollifier-universality criterion cleanly separates safe (objects 1-3) from unsafe (objects 4-5, where 4 is manageable via renormalization and 5 is heuristic-only). No new mathematical results discovered (synthesis contribution). Promotion candidate for delta-objects paper Outlook item 2 or main paper Section 5.6.
- Sources touched: none (Schwartz 1954, Hormander 2003, Bates-Weinstein 1997 already cited).
- Next: future C cycle to promote dictionary paragraph; B29 (coarea anchor) deferred as unnecessary.

## 2026-02-14 (D26+S283: heat-kernel witness in half-density language)
- Focus: Unify three scattered threads (identity kernel normalization, heat-kernel asymptotics, conjugation potential) into one self-contained derivation.
- Question: Can the half-density heat kernel \(\widetilde{K}(t)\) serve as a "single witness" tying the canonical identity kernel, the \(D/2\) UV pole structure, and the \(a_1 = (\tfrac{1}{6}-\xi)R\) curvature correction into one coherent argument?
- Work: D26 triaged the target. S283 produced a 7-section blackboard note (slot 5) covering: (1) half-density heat kernel setup and its \(t\to 0^+\) limit as the canonical identity kernel; (2) DeWitt-Schwinger expansion in bi-half-density form with the universal \((4\pi t)^{-D/2}\) normalization; (3) normal-coordinate derivation of the conjugation potential \(V(p) = \tfrac{1}{6}R\); (4) connection to \(a_1\) and the conformal coupling cancellation \(a_1|_{\xi_{\mathrm{conf}}} = (4-D)R/(12(D-1)) = 0 \iff D=4\); (5) trace and \(D/2\) pole structure; (6) canonical vs scalarization diagnostic; (7) promotable summary statement.
- Result: Acceptance criterion met. The unified derivation is self-contained and separates universal results from conformal-class-specific ones. No new discovery (by design: this is a synthesis witness, not a novelty claim). Promotion candidate for `papers/half-density-qft/main.md` via a future C-cycle.
- Sources touched: none (Vassilevich2003 and DeWitt1965 already cited in HD-QFT paper).
- Next: promotion C-cycle when HD-QFT paper is next targeted for expansion.

## 2026-02-14 (D25+S282: stochastic discretization dictionary)
- Focus: Map N-impulse refinement model to Itô/Stratonovich stochastic integral conventions.
- Question: Does the alpha-discretization parameter of Section 6.3 correspond cleanly to a stochastic integral convention, and what is the explicit Itô correction?
- Work: D25 triage selected geometric Brownian motion (g(q) = q) as the minimal multiplicative-noise witness. S282 computed the Itô correction via both direct discrete expansion and the general Stratonovich-to-Itô formula. Mapped the result to the impulse-work formula of Dirac-probes Remark 3.2a and the alpha-ordering of Derivation D4.1b.
- Result: Clean dictionary established. alpha = 0 (prepoint) = Itô, alpha = 1/2 (midpoint) = Stratonovich. The Itô correction for g(q) = q is (1/2) q dt. The energy-level difference Delta H_Strat - Delta H_Ito = J^2/(2m) per step. Both the O(hbar) ordering shift and the Itô correction arise from commuting a nonlinear function with an O(sqrt(Dt)) increment.
- Sources touched: none (standard stochastic calculus, no new bibliography needed).
- Next: promotion candidate for a compact remark in Dirac-probes Outlook item 4 or Section 6.3 of main paper, via a future C cycle.

## 2026-02-14 (D28+S285: Newton polygonal convergence statement + failure mode)
- Focus: State a modern convergence theorem for Newton's kick-drift (symplectic Euler) polygonal construction and identify the physically relevant failure mode.
- Question: Under what explicit hypotheses does the polygonal orbit converge to the continuous solution, and what is the minimal central-force failure mode?
- Work: D28 triaged the problem. S285 produced a blackboard note (slot 6) with: (1) explicit identification of the kick-drift map as symplectic Euler; (2) the standard O(h) global convergence theorem under Lipschitz forces (HLW06, Thm IX.3.1) translated into central-force language; (3) symplectic-structure bonus (exact angular momentum + equal-area at finite step, backward error analysis for energy); (4) failure mode witness: Kepler radial collision (L=0, V=-K/r), where force diverges as (t_c-t)^{-4/3} and fixed-step scheme produces O(1) errors; (5) promotable paragraph linking to the manuscript's existing hedge in `Remark H1.1a`.
- Result: Acceptance criteria met. The convergence theorem is classical (not novel); the value is explicitly stating it in the manuscript's language and identifying the collision singularity as the precise failure mode. The manuscript's "whenever the limit exists" hedge is confirmed as both necessary and sufficient. Promotable paragraph ready for a future C cycle.
- Sources touched: none (HLW06, HNW93, Nauenberg1994/2003 already known/cited).
- Next: future C-cycle to promote the paragraph as a scope-clarifying remark in Section 3.

## 2026-02-14 (S277 Iteration 4: generalized `Delta nu_b` gate)
- Extended kinetic mixed-regime drift from decade-only (`b=10`) to arbitrary scale factor `b`.
- Added closed-form peak-drift location `x_peak^2=b^{-2/3}+b^{-4/3}` and asymptotic safe-window estimates.
- Numeric validation shows strong high-`x` estimate accuracy and conservative low-`x` estimate behavior.
- Updated `blackboards/3.md` and promoted stabilized result to notebook memory.

## 2026-02-14 (D-task harvest: main paper + satellites)
- Read `paper/main.md` chapter-by-chapter and skimmed `paper/notes/*.md` and `papers/*/main.md` to extract physics-facing discovery targets (no manuscript edits).
- Opened new queued discovery cycles with concrete prompts + planned S-spawns:
  - `D23` (ordering vs unitarity in \(H=qp\)),
  - `D24` (delta-object dictionary; \(\delta(\delta S)\) audit),
  - `D25` (random impulses; Itô vs Stratonovich vs time slicing),
  - `D26` (heat kernel / half-density QFT witness),
  - `D27` (odd-\(d\) scalarization scale supplier vs transmutation),
  - `D28` (Newton polygonal convergence statement + failure mode).
- Updated `cycles/index.md` to list `D23`–`D28` as queued.
- Next: update cycle templates to reflect the numbered-blackboard + append-only-notebook conventions (templates currently mention dated blackboard filenames and `paper/notes/` for S-cycles).

## 2026-02-14 (Template refresh: blackboards/notebooks conventions)
- Updated cycle templates to make it explicit that math/derivations live in `blackboards/<0-6>.md` (optionally promoted to `notebooks/`), and that `D`/`S` are physics-only (no editorial drafting).
- Patched `cycles/templates/Dxx-{plan,execution}.md` to require S-witnesses with a named blackboard slot.
- Updated `cycles/templates/README.md` numbering note to allow 2+ digits (match `cycles/index.md` prefix style).
- Ignored macOS `.DS_Store` files via `.gitignore`.
