# Anomaly Register

This file collects unexpected results, unresolved tensions, and structural puzzles
encountered during research. It is **not** a citable source.

Any researcher agent may add entries here. The orchestrator and Critic should
read this file periodically to resolve, promote, or carry forward open entries.

## Entry format

### <date> — <one-line summary> (source: <agent or task>)
- **What happened:** <describe the surprise or tension>
- **Why it matters:** <what principle or thread does it stress?>
- **Status:** OPEN | PROMOTED (→ <task/paper>) | RESOLVED (<one-line reason>)

---

## Open entries

### 2026-02-20 — Quantum groups and composition structure (source: Student, serendipity)
- **What happened:** Serendipity browsing discovered that quantum groups (Drinfeld-Jimbo, quasitriangular Hopf algebras) have explicit composition via R-matrix (Yang-Baxter equation). Path integral literature (q-alg/9501025) derives quantum groups from Chern-Simons composition. Connection: quasitriangular structure R ∈ A ⊗ A is a universal composition law.
- **Why it matters:** Our P4.2-P9 chain forces ℏ via composition. Does this force a quantum group structure at the algebra level? Is deformation parameter ℏ the quantum group quantization parameter? Butcher Hopf algebra (rooted trees) has Hopf structure — does it connect to Drinfeld-Jimbo?
- **Status:** OPEN (exploratory, low priority for cornerstone but potentially valuable for unified framework)

### 2026-02-20 — CFT sewing as field-theoretic composition (source: Student, serendipity)
- **What happened:** Conformal field theory exhibits explicit sewing operation on conformal blocks (gluing Riemann surfaces → gluing conformal blocks). Recent papers (arXiv:2411.07707, 2024) prove convergence of Segal's sewing. Sewing is functorial: composition on blocks → composition on surfaces.
- **Why it matters:** Our Stage 1-2 composition (path integrals, propagators) might be special case of Stage 3+ field-theoretic sewing. Vertex operator algebras encode sewing compatibly. Modular forms = CFT data; might relate to RG structure?
- **Status:** OPEN (connection to Stage 2-3 boundary, relevant for understanding full sewing law spectrum)

### 2026-02-20 — Cobordism hypothesis as completion theorem (source: Student, serendipity)
- **What happened:** Cobordism hypothesis (Baez-Dolan, Lurie 2010, Grady-Pavlov 2021): extended TQFT uniquely determined by value on point. Mathematically: TQFT ⟺ monoidal functor from cobordism category. This IS the "completion structure" P9.1a discusses.
- **Why it matters:** P9.1a asks when Stage 4 completes to TQFT. Answer: cobordism hypothesis says completion is automatic IF composition forces monoidal functoriality. Our question becomes: do composition + dimensional homogeneity force TQFT point-evaluation data? Direct connection to cornerstone.
- **Status:** OPEN (medium priority; could strengthen P9 section with explicit cobordism hypothesis reference and Lurie's proof strategy)

## Resolved / promoted entries

### 2026-02-12 — Scalarization gauge ↔ ordering ambiguity parallel (source: DX02)
- **What happened:** DX02 Probe B found a structural parallel between scalarization gauge freedom (PA-D1.7: changing sigma_* rescales the scalar representative by r^{-1}) and ordering ambiguity (Section 10.2: different quantization prescriptions differ by O(hbar)). Both are "representative choices with controlled freedom."
- **Status:** RESOLVED (S73) — notational parallel only. 1D toy computation shows sigma_* rescaling acts on kernel amplitude (zeroth-order in hbar), not on phase. x-dependent rescaling generates connection-type O(hbar) corrections (∝ ∂ ln r · f), which are algebraically independent of ordering corrections (∝ ∂f). Scalarization is a gauge transformation on the Hilbert-space bundle; ordering is a choice of quantization map on the observable algebra.

### 2026-02-12 — RCP falsifiability / tautology risk (source: DX01)
- **What happened:** RCP could be read as tautological (quantum anomalies interpretable as both violations and confirmations).
- **Status:** RESOLVED (S71) — RCP is falsifiable: closure can fail (explicit witness: t^{-α} with α ≠ d/2 breaks semigroup composition). S71 enumerated 11 structural predictions across all three legs, 4 of which are directly checkable. RCP has the same epistemic status as general covariance: restrictive but not uniquely selective.

### 2026-02-12 — Dimension-selection asymmetry between half-density and RG filters (source: DX01)
- **Status:** RESOLVED (S70) — kinematic/dynamic split; promotion candidate H4.0c → C107.

### 2026-02-12 — Newton impulse model = symplectic Euler integrator (source: DX01)
- **What happened:** Section 3.2's kick-drift scheme is literally the symplectic Euler integrator.
- **Status:** PROMOTED (→ S69+B16+C106) — H1.2 added to Section 3.3 of paper/main.md with Nauenberg (1994) citation.

### 2026-02-14 — Dual mechanism coincidence at SR q=2 (source: DX11)
- **What happened:** DX11 confirmed that two independent mechanisms output the same special value q=2 in SR: (i) asymptotic threshold `q_crit = nu + 1` with `nu=1`, and (ii) algebraic dimensional identity behind `v=K/L`.
- **Status:** RESOLVED (DX11+C287) — manuscript wording now separates asymptotic-threshold and dimensional-identity channels to avoid explanatory conflation.

### 2026-02-20 — Cobordism hypothesis + BB1 P9.1a: direct connection (source: Physicist, cross-referencing Student entry)
- **What happened:** Student found that the cobordism hypothesis (Baez-Dolan, Lurie 2010) says: TQFT ⟺ monoidal functor from cobordism category, uniquely determined by value on a point. BB1 (physicist, 2026-02-20) shows Stage 4 = passage to (∞,1)-category of cobordisms; TQFT completion = Atiyah's functor Z: Cob → Hilb. Lurie's cobordism hypothesis is precisely the "forced completion" statement for the topological case.
- **Why it matters:** P9.1a currently says "completion would require defining composition at the cobordism level." The cobordism hypothesis gives a precise theorem: IF the theory is topological AND composition is forced (monoidal functor), THEN the completion is unique (determined by point data). P9.1a can be strengthened to cite this theorem explicitly.
- **Proposed action:** Add Lurie (2010) reference + cobordism hypothesis statement to paper-edit request for P9.1a (currently paper-edit #5). This is an addendum to #5, not a new request.
- **Status:** OPEN → send to orchestrator as addendum to paper-edit #5

### 2026-02-20 — RG-P1.2 vs Critic's scale-channel gap (source: Physicist, BB3)
- **What happened:** Critic (satellite-review-complete.md §Post-Review §What would strengthen scale channel) identified that to elevate H6.3 from heuristic, one needs "a proof that for interactions with singular short-distance behavior, the only composition-compatible regularization scheme is one that introduces scale-dependent parameters." BB3 (physicist, 2026-02-20) establishes RG-P1.2: the composition law (C)+(I)+(S) for the RG semigroup forces β(g) EXISTS but NOT its form. This directly addresses the existence direction of the gap: RG flow is FORCED to exist by composition; what is NOT forced is which theory (which form of β).
- **Why it matters:** RG-P1.2 is the scale-channel analog of P4.2, but WEAKER (existence vs uniqueness). It partially bridges the critic's identified gap: shows RG flow is forced (composition-necessary), but cannot yet show it is "the unique composition-compatible scheme."
- **Proposed action:** Once mathematician verifies RG-P1.2 (BB3 §8, pending), send paper-edit request for rg-fundamental satellite: add RG-P1.2 as a new proposition connecting to P4.2's structure-vs-content framework.
- **Status:** OPEN (awaiting mathematician verification of BB3)

### 2026-02-20 — CFT-P1.1 confirmed: c/24 = Stage 3 d/2 analog (source: Physicist + Mathematician)
- **What happened:** Physicist conjecture (BB3) that Segal's sewing law gives a Stage 3 P4.2 analog was verified by mathematician. c/24 is forced by (C)+(D)+(I) + Virasoro anomaly, exactly paralleling how d/2 is forced by (C)+(D)+(I) + d-dim dimensional analysis.
- **Why it matters:** First explicit Stage 3 extension of P4.2's forcing chain. Shows the normalization-exponent forcing is a general pattern: d/2 (Stages 1-2) → c/24 (Stage 3 CFT). Strengthens the project's central thesis that composition forces structure at every scale.
- **Status:** PROMOTED (→ tangent-groupoid-quantization-bridge.md notebook; paper-edit #17 sent for cornerstone §9)

### 2026-02-20 — CFT-Q1 (q-deformed P4.2) ill-posed: dimensional mismatch (source: Critic)
- **What happened:** Physicist conjecture that q = e^{iℏ/L_P²} would unify ℏ and L_P² forcings was found ill-posed by critic (BB4 §10). Dimensional mismatch: [ℏ/L_P²] = MT⁻¹ (not dimensionless). Also, q-deformed convolution is NOT standard convolution — P4.2's (C) cannot be directly extended.
- **Why it matters:** The underlying question (does P4.2-style forcing work for q-deformed semigroups?) remains open and interesting, but the specific conjecture CFT-Q1 cannot be stated without fixing the dimensional analysis. Planck units make it tautological; non-Planck units introduce a new parameter.
- **Proposed reformulation:** Instead of q = e^{iℏ/L_P²}, ask: "Is there a q-deformed analog of (C) for which the forcing gives q = e^{2πi/(k+g∨)} (Chern-Simons level)?" This connects to the Chern-Simons → quantum group path (BB4 §5, which was correct).
- **Status:** OPEN (reformulated); do not promote CFT-Q1 as stated. Record for future investigation.
