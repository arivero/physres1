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

### 2026-02-21 — Painlevé equations as Stage 2.5 integrable completion (source: Student, serendipity + literature)
- **What happened:** Exact WKB literature (Les Houches 2024-25 lectures; van Spaendonck-Vonk arXiv:2204.09062) reveals Painlevé equations as isomonodromy deformations of linear ODEs. Two-parameter transseries structure encodes monodromy invariants. The nonperturbative structure (Stokes phenomena, alien calculus) arises from integrability, not RG monotonicity. Raises question: is there a Stage 2.5 regime where composition + integrability force Painlevé isomonodromy structure, midway between QM (Stage 2) and QFT (Stage 3)?
- **Why it matters:** Our Stage 2→3→4 chain uses RG as the scale-control mechanism (Stage 3). But 2D integrable QFTs (exactly solvable models, N=4 SYM, Liouville theory, TBA systems) achieve nonperturbative resummation via isomonodromy + Voros periods, not RG beta functions. Opens question: is there a unifying principle that covers BOTH? Does composition force isomonodromy in integrable systems and RG in generic ones?
- **Status:** PARTIALLY ASSESSED (sev-3, single-agent mathematician, blackboards/2.md). Key finding: (C) is compatible with isomonodromy (parallel transport IS composition) but does NOT force it — additional integrability axiom (I_int) = Lax pair required. Two distinct Stage 2.5 branches: (C)+(I_int)→Painlevé vs (C)+(Virasoro)→c/24. Scale channel status unclear (isomonodromy may be A4 fixed point). Needs second agent: physicist for physical interpretation of H6.2 (isomonodromy ≠ RG), computationalist for τ-function = groupoid partition function claim.

### 2026-02-21 — Modular forms as forced structure in Feynman integrals (source: Student, literature)
- **What happened:** Brown-Schnetz (arXiv:1304.5342) and recent work (Fantini-Rella 2024 modular resurgence, arXiv:2505.00799) show Feynman amplitudes match Fourier coefficients of modular forms (weights ≤8, levels ≤17). The mechanism is not obvious — it's not derivable from dimensional analysis or standard field theory. Recent 2025 work connects modular forms to resurgence (transseries, alien calculus).
- **Why it matters:** If composition forces modular structure, it would be a Level 1-2 discovery: a new universal output alongside d/2, ℏ, etc. Alternatively, modular forms might be RG-invariant structures (CFT data encode fixed-point modular forms; RG flow interpolates between them). Connection to anomalies.md entry 2026-02-20 (CFT sewing): are modular forms ↔ RG fixed points ↔ conformal structure?
- **Status:** PARTIALLY ASSESSED (sev-3, single-agent mathematician, notebooks/arithmetic-feynman-rcp-assessment.md §8). (C) does NOT force modular forms — requires genus-1 Symanzik variety (algebraic geometry, independent of composition). Mechanism: elliptic curves (genus 1) have PSL(2,ℤ) monodromy → periods are modular. RCP channels ARE realized in arithmetic program (A1↔coaction/Hopf, A3↔scheme independence, A4↔cosmic Galois grading) but as realizations, not derivations. Closest to forcing: (C)+(I_int)[isomonodromy] → Painlevé τ-function → theta function → modular form, but (I_int) is an independent axiom. Recommended paper claim (sev-3): "RCP channels realized in arithmetic program" — NOT "composition forces modular structure." Needs second agent before any paper edit.

### 2026-02-21 — Quantum groups in lattice gauge theory q-deformation (source: Student, literature)
- **What happened:** 2024-2025 experimental progress (Nature Physics 2025, qudit-based lattice gauge simulation) combines with theoretical work on q-deformed Chern-Simons actions and q-commuting gauge fields. Raises question: do quantum groups arise naturally when composition laws are discretized (lattice) or q-deformed?
- **Why it matters:** Our composition axiom (C) is continuous (path integral). Discretization or q-deformation might force quantum group structure (non-cocommutative Hopf algebra) as replacement for ordinary Hopf algebra (rooted-tree Butcher algebra). Physical realization via quantum computing platforms (2024 experiments) suggests this is not purely mathematical.
- **Status:** OPEN (Level 2-3 serendipity; promising but speculative). Next step: check if lattice discretization of path integral composition forces q-deformation of the structure group. If yes, candidate for "Quantum Field Theory on Lattices: q-Composition" satellite.

### 2026-02-21 — Efimov limit cycles and PSL(2,R) in three-body scale channel (source: Student + THREE-AGENT verification)
- **What happened:** Blackboard 3 THREE-AGENT analysis (physicist+mathematician+computationalist) confirmed that Efimov effect exhibits RG limit cycles (discrete scaling λ ≈ 22.7) governed by PSL(2,R) Möbius action on coupling space. Two-parameter transseries in Efimov case. Distinguished from partition (pair groupoid) and representation (star-product) channels by different groupoid structure (non-principal transformation groupoid).
- **Why it matters:** Efimov is the concrete witness that composition at unitarity + UV renormalization forces discrete scaling and limit cycles. PSL(2,R) ≠ pair groupoid; three channels have three distinct groupoid structures. Suggests the pattern "composition forces a groupoid" is more subtle than a single master groupoid.
- **Status:** RESOLVED at LEVEL 2 (promoted); THREE-AGENT + STUDENT confirmation (arXiv:1102.3789, arXiv:2405.09807 literature cross-check). Paper home: rcp-foundations §5 as Remark 5.5-Efimov. Open at LEVEL 3: is there a higher categorical structure (double groupoid, Hopf algebroid) unifying all three channels?

### 2026-02-20 — Quantum groups and composition structure (source: Student, serendipity)
- **What happened:** Serendipity browsing discovered that quantum groups (Drinfeld-Jimbo, quasitriangular Hopf algebras) have explicit composition via R-matrix (Yang-Baxter equation). Path integral literature (q-alg/9501025) derives quantum groups from Chern-Simons composition. Connection: quasitriangular structure R ∈ A ⊗ A is a universal composition law.
- **Why it matters:** Our P4.2-P9 chain forces ℏ via composition. Does this force a quantum group structure at the algebra level? Is deformation parameter ℏ the quantum group quantization parameter? Butcher Hopf algebra (rooted trees) has Hopf structure — does it connect to Drinfeld-Jimbo?
- **Status:** PARTIALLY RESOLVED (BB4 Q1a, 2026-02-21). Composition (coassociativity) holds for ALL q — does NOT force quantum group structure. ℏ is NOT the quantum group parameter (different algebraic roles: ℏ scales the exponential phase, q deforms the algebra). Butcher/CK Hopf algebra is COMMUTATIVE, not a quantum group (quantum groups are non-cocommutative). The genuine connection is at Level Q1c: cobordism + unitarity forces q, parallel to (C)+(D)+(I) forcing ℏ.

### 2026-02-20 — CFT sewing as field-theoretic composition (source: Student, serendipity)
- **What happened:** Conformal field theory exhibits explicit sewing operation on conformal blocks (gluing Riemann surfaces → gluing conformal blocks). Recent papers (arXiv:2411.07707, 2024) prove convergence of Segal's sewing. Sewing is functorial: composition on blocks → composition on surfaces.
- **Why it matters:** Our Stage 1-2 composition (path integrals, propagators) might be special case of Stage 3+ field-theoretic sewing. Vertex operator algebras encode sewing compatibly. Modular forms = CFT data; might relate to RG structure?
- **Status:** PARTIALLY RESOLVED (physicist, 2026-02-20). Stage 2 (QM) IS a special case of Stage 3 sewing: a 1D TQFT (no conformal structure, c=0). The propagator composition K(t₁+t₂)=K(t₁)∘K(t₂) is exactly the sewing of 1D intervals. The difference: Stage 2 has no Virasoro algebra (c=0, degenerate), while Stage 3 adds the full conformal structure. The four-stage table (TG notebook addendum) makes this hierarchy explicit: Stage 2 ⊂ Stage 3 ⊂ Stage 4 as increasing structure on the composition functor. Connection to RG: modular forms encode RG fixed-point data (CFTs are RG fixed points); the RG flow interpolates between Stages 2 and 3 by integrating out massive modes (reducing DOF, c decreases — Zamolodchikov c-theorem). Modular forms ≠ RG flow but are related at fixed points only.

### 2026-02-20 — Cobordism hypothesis as completion theorem (source: Student, serendipity)
- **What happened:** Cobordism hypothesis (Baez-Dolan, Lurie 2010, Grady-Pavlov 2021): extended TQFT uniquely determined by value on point. Mathematically: TQFT ⟺ monoidal functor from cobordism category. This IS the "completion structure" P9.1a discusses.
- **Why it matters:** P9.1a asks when Stage 4 completes to TQFT. Answer: cobordism hypothesis says completion is automatic IF composition forces monoidal functoriality. Our question becomes: do composition + dimensional homogeneity force TQFT point-evaluation data? Direct connection to cornerstone.
- **Status:** RESOLVED (BB3 THREE-AGENT + critic FOUR-AGENT review, 2026-02-20). Remark P9.1a-Cob promoted to cornerstone §9.6 (line 1294). L1-L4 limitations explicitly stated. Cobordism hypothesis adds UNIQUENESS to P9.1a's EXISTENCE.

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
- **Status:** RESOLVED (2026-02-21, mathematician). Remark P9.1a-Cob added to cornerstone §9.6 (line 1294), citing Lurie 2009 (arXiv:0905.0465) with precise statement: TQFT uniquely determined by Z(point) for fully dualizable objects — Stage 4 uniqueness analog of P4.2 uniqueness at Stages 1-2.

### 2026-02-20 — RG-P1.2 vs Critic's scale-channel gap (source: Physicist, BB3)
- **What happened:** Critic (satellite-review-complete.md §Post-Review §What would strengthen scale channel) identified that to elevate H6.3 from heuristic, one needs "a proof that for interactions with singular short-distance behavior, the only composition-compatible regularization scheme is one that introduces scale-dependent parameters." BB3 (physicist, 2026-02-20) establishes RG-P1.2: the composition law (C)+(I)+(S) for the RG semigroup forces β(g) EXISTS but NOT its form. This directly addresses the existence direction of the gap: RG flow is FORCED to exist by composition; what is NOT forced is which theory (which form of β).
- **Why it matters:** RG-P1.2 is the scale-channel analog of P4.2, but WEAKER (existence vs uniqueness). It partially bridges the critic's identified gap: shows RG flow is forced (composition-necessary), but cannot yet show it is "the unique composition-compatible scheme."
- **Proposed action:** Once mathematician verifies RG-P1.2 (BB3 §8, pending), send paper-edit request for rg-fundamental satellite: add RG-P1.2 as a new proposition connecting to P4.2's structure-vs-content framework.
- **Status:** RESOLVED (BB3 THREE-AGENT complete: physicist §1-7, critic §8, mathematician §9; paper-edit #27 APPLIED to D10.1c; Proposition D6.4b replaces H6.3 as conditional scale-channel theorem)

### 2026-02-20 — CFT-P1.1 confirmed: c/24 = Stage 3 d/2 analog (source: Physicist + Mathematician)
- **What happened:** Physicist conjecture (BB3) that Segal's sewing law gives a Stage 3 P4.2 analog was verified by mathematician. c/24 is forced by (C)+(D)+(I) + Virasoro anomaly, exactly paralleling how d/2 is forced by (C)+(D)+(I) + d-dim dimensional analysis.
- **Why it matters:** First explicit Stage 3 extension of P4.2's forcing chain. Shows the normalization-exponent forcing is a general pattern: d/2 (Stages 1-2) → c/24 (Stage 3 CFT). Strengthens the project's central thesis that composition forces structure at every scale.
- **Status:** PROMOTED (→ tangent-groupoid-quantization-bridge.md notebook; paper-edit #17 sent for cornerstone §9)

### 2026-02-20 — CFT-Q1 (q-deformed P4.2) ill-posed: dimensional mismatch (source: Critic)
- **What happened:** Physicist conjecture that q = e^{iℏ/L_P²} would unify ℏ and L_P² forcings was found ill-posed by critic (BB4 §10). Dimensional mismatch: [ℏ/L_P²] = MT⁻¹ (not dimensionless). Also, q-deformed convolution is NOT standard convolution — P4.2's (C) cannot be directly extended.
- **Why it matters:** The underlying question (does P4.2-style forcing work for q-deformed semigroups?) remains open and interesting, but the specific conjecture CFT-Q1 cannot be stated without fixing the dimensional analysis. Planck units make it tautological; non-Planck units introduce a new parameter.
- **Proposed reformulation:** Instead of q = e^{iℏ/L_P²}, ask: "Is there a q-deformed analog of (C) for which the forcing gives q = e^{2πi/(k+g∨)} (Chern-Simons level)?" This connects to the Chern-Simons → quantum group path (BB4 §5, which was correct).
- **Status:** RESOLVED (BB4, THREE-AGENT: mathematician+physicist+critic, 2026-02-21). Three-level analysis:
  - Q1a: (C_q) [coassociativity] holds for ALL q — no forcing from composition alone.
  - Q1b: (C_q) + unitarity forces q ∈ ℝ₊ ∪ S¹ only (partial constraint).
  - Q1c: Cobordism sewing + unitarity + normalization forces q = e^{2πi/(k+g∨)} — Reshetikhin-Turaev theorem (1991).
  Three physical mechanisms converge: WZW/π₃(G)=ℤ, Verlinde modular, RT surgery (physicist §10).
  RT-theorem is the Stage 4 analog of P4.2. No cornerstone edit needed (covered by P9.1a-Cob).
  See proposals/critic-bb4-cft-q1-review.md for final assessment.

### 2026-02-21 — Q1d Stage 3.5: Verlinde fusion non-negativity forces k ∈ ℤ (source: Mathematician + Physicist)
- **What happened:** After BB4 resolved CFT-Q1 at Q1c (cobordism + unitarity → q_QG), mathematician self-directed to Q1d: does Stage 3 Verlinde alone force anything about q_QG? Answer: YES — fusion non-negativity N^ij_k ≥ 0 (a Stage 3.5 condition, weaker than full Hilbert-space unitarity) forces the level k ∈ ℤ_≥0.
- **Why it matters:** Refines the Stage 4 RT theorem into two sub-stages: (3.5) fusion non-negativity forces the LEVEL k ∈ ℤ; (4) full unitarity forces the PARAMETER q_QG = e^{2πi/(k+g∨)} with the g∨ shift (dual Coxeter number = dynamical group content). Two independent derivations of k ∈ ℤ (Verlinde algebraic + WZW topological) confirm this is robust.
- **Updated four-stage table:** Now has entries at Stage 0→1, 1→2, 2→3, 3→3.5, 3.5→4, each with a distinct composition axiom + extra input → forced constant. See TG notebook §Q1d.
- **Status:** TWO-AGENT COMPLETE (BB1; mathematician + physicist). Promoted to tangent-groupoid-quantization-bridge.md. Needs critic as third agent before cornerstone paper-edit.

### 2026-02-21 — Publication track voting: FROZEN satellites are pedagogically mature (source: Student)
- **What happened:** Student assessed 4 FROZEN satellite papers (half-density-qft, delta-objects, relativistic-central-orbits, dirac-probes-corners-impulses) for publication readiness. All 4 received YES votes. Common strengths: clear exposition, complete worked examples, graduate-student accessible, well-structured progression of ideas. No sev-1 issues identified.
- **Why it matters:** Confirms that the 13-satellite corpus has reached publication maturity across pedagogical dimension. The papers support the cornerstone via worked examples and rigorous exposition, not via new theoretical claims — they are "foundations teaching" at research level.
- **Pedagogical observation:** Delta-objects exemplifies "three-way taxonomy" (identity kernel, stationary-set concentration, point interaction) as a pedagogical device for organizing seemingly different uses of a single mathematical object. This pattern may generalize: when a concept has multiple faces (e.g., composition at different scales, half-densities in different contexts), a taxonomy paper clarifies conceptual boundaries and aids graduate-student understanding.
- **Status:** OBSERVATION (no action needed; documents confirmation of publication readiness).
