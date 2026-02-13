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

## 2026-02-13 (S203+C243+Q129: self-adjoint extensions in delta-objects + infrastructure cleanup)
- Focus: promote self-adjoint extensions remark; archive cleanup; foundational goals.
- Work:
  - S203+C243: Fixed BB1 reviewer errors (H¹→H², ε^{-d/2}→Λ^{d-2}). Promoted as Remark 4.2 in delta-objects. Added Derezinski 2024 ref. +10 lines, now 188 (4pp).
  - Q129: Referee pass on C243 (running).
  - Infrastructure: archived ~640 completed cycle files to cycles/archive/. Compacted index.md (664→47 lines). Split research-log.md (3428→73 lines). Added context-budget rules to CLAUDE.md, cycles/README.md, MEMORY.md. Added Foundational Goals section to motivations.md.
- Result: delta-objects 4pp with self-adjoint extensions remark. Context startup cost reduced from ~4000 to ~700 lines.
- Sources touched: [Derezinski2024] added.
- Next: apply Q129 fixes; continue expansion of below-limit satellites; open questions.

## 2026-02-13 (S200+S201+C241+S202+C242+Q128+S203: fermionic + HD-QFT + delta + infrastructure)
- Focus: targeted expansion of below-limit satellites; infrastructure (page counting, policy updates).
- Work:
  - S200+S201+C241: Promoted Born approximation bridge (Remark 2.3) and heavy-mediator decoupling (Remark 4.6) into fermionic paper. +7 lines, now 244 lines (13pp compiled).
  - S202+C242: Studied heat kernel as bi-half-density (BB0). Promoted as Remark HD-D4.2 into HD-QFT. +17 lines, now 226 lines (4pp compiled). Added DeWitt 1965 + Vassilevich 2003 refs.
  - Q128: Referee pass on HD-QFT found critical σ notation clash (Synge vs conformal), incorrect VVD transport equation, missing mass term in a₁, imprecise bi-half-density reasoning. All fixed.
  - S203: Self-adjoint extensions blackboard (BB1) for delta-objects paper. Under review.
  - Infrastructure: Created `scripts/count-pages.sh` (elsarticle 3p twocolumn = PLB format). Downloaded elsarticle.cls. Created pandoc template. Updated AGENTS.md page limit to use compiler. Created `docs/motivations.md` with 5 open questions + lifecycle rule. Updated CLAUDE.md read-first list.
- Result: HD-QFT now 4pp with heat kernel remark. Fermionic 13pp (PRD-length, acceptable). Page counts validated by compiler — old line-count heuristic was wrong.
- Sources touched: [DeWitt1965] added, [Vassilevich2003] added, [AppelquistCarazzone1975] added.
- Next: Promote S203 (self-adjoint extensions) → C243 in delta-objects. Continue with open questions from motivations.md.

## 2026-02-13 (S198+C239+S199+C240: Pegg-Barnett + superfluid vortices in action-angle)
- Focus: expand action-angle Section 2 (Pegg-Barnett) and Section 3 (superfluid vortices).
- Work: S198 studied Pegg-Barnett hermitian phase operator for Remark 2.3. Quantum optics reviewer caught (1) commutator statement needs matrix-element qualification (HIGH), (2) MUB claim → soften to "complementary bases with uniform overlap" (HIGH), (3) POVM reproduction via limiting expectation values (MEDIUM). All corrections applied. Promoted as Remark 2.3: truncation-and-limit approach, complementary bases, matrix-element convergence of commutator. S199 studied quantized vortices in superfluids for Remark 3.4. Condensed matter reviewer caught (1) "energetically unstable" → "dynamically unstable" for n>1 vortices (HIGH), (2) add healing length for vortex core (MEDIUM), (3) add Madison 2000 citation (MEDIUM). All corrections applied. Promoted as Remark 3.4: Onsager-Feynman circulation quantization, topological core singularity, BEC vortex imaging, Abrikosov lattice, Anderson-Josephson relation. 3 new refs: PeggBarnett1989, Feynman1955, Matthews1999.
- Result: action-angle 231→240 (+9, 19pp). Uncuttable 240 (19pp). Fermionic 237 (19pp). All three now 237+ lines.

## 2026-02-13 (S196+C237+S197+C238: Dedekind cuts + Feynman-Kac in uncuttable; Q126 fixes)
- Focus: expand uncuttable Section 1 (Dedekind cuts) and Section 3 (Feynman-Kac); apply Q126 fermionic fixes.
- Work: S196 studied Dedekind cuts vs Cauchy sequences for Remark 1.3. Rigorous mathematician reviewer caught (1) Dedekind cut definition incomplete — needs non-emptiness + no-max conditions (HIGH), (2) uniqueness statement needs completeness emphasis (MEDIUM), (3) duality connection to 4.8 loose — 3.8 stronger (MEDIUM). All corrections applied. Promoted as Remark 1.3: two structurally different completions (metric vs order-theoretic) yielding same complete ordered field via uniqueness of completeness, generalizations diverge (Cauchy→metric spaces, Dedekind→total orders). S197 studied Feynman-Kac formula for Remark 3.9. Mathematical physicist reviewer caught (1) potential condition V≥0 redundant/misleading → V bounded below (HIGH), (2) "derived from" Trotter → "proved using" (HIGH), (3) Cameron 1960 journal clarification (MEDIUM). All corrections applied. Promoted as Remark 3.9: Euclidean path integral as rigorous refinement limit via Wiener measure, Cameron's theorem (no Minkowski measure), Trotter proof connection, bridge to constructive QFT. Also applied Q126 fermionic fixes: (1) axial anomaly factor e/π→e/(2π), (2) removed dimensional transmutation claim, (3) removed "gauge anomalies can run" clause. 3 new refs: Dedekind1872, Kac1949, Simon1979.
- Result: uncuttable 227→240 (+13, 19pp). Fermionic 237 (19pp, fixes only). Action-angle 231 (18pp). All three now 231+ lines.

## 2026-02-13 (Q126: Referee review of C235 + C236 in fermionic)
- Focus: referee-style review of Remark 3.7 (Schwinger model) and Remark 6.6 (anomaly matching).
- Work: detailed factual/consistency/placement review of both remarks. Found 3 issues: (1) factor-of-2 error in axial anomaly formula of Remark 3.7 — (e/pi) should be (e/(2pi)) before epsilon^{mu nu} F_{mu nu}; (2) incorrect dimensional transmutation claim in Remark 3.7 — gauge coupling e has mass dim 1 in 1+1D, so no transmutation occurs; (3) incorrect claim in Remark 6.6 that gauge-current anomalies "can run with the coupling" — Adler-Bardeen theorem says anomaly is one-loop exact.
- Result: Remark 3.7 CONDITIONAL PASS (2 issues), Remark 6.6 CONDITIONAL PASS (1 issue). Also noted minor bib gap: in-text "(Coleman, 1975)" for bosonization has no standalone reference (ColemanJackiwSusskind1975 is the closest).
- Next: C-cycle fix for the 3 errors, optional B-cycle for Coleman 1975 solo bosonization reference.

## 2026-02-13 (S194+C235+S195+C236: Schwinger model + anomaly matching in fermionic)
- Focus: expand fermionic Section 3 (Schwinger model) and Section 6 (anomaly matching).
- Work: S194 studied Schwinger model (QED₁₊₁) for Remark 3.7. Lattice gauge theorist reviewer caught (1) Schwinger 1962 attribution — not "exact solution," bosonization from Coleman 1975 (HIGH), (2) θ-vacuum needs massive fermions (MEDIUM), (3) verify E = eθ/(2π) coefficient (MEDIUM). All corrections applied. Promoted as Remark 3.7: exact fermion-to-boson transmutation, m = e/√π exact to all orders, chiral anomaly mass generation, θ-vacuum restricted to massive case, dimensional transmutation. S195 studied 't Hooft anomaly matching for Remark 6.6. Particle theory reviewer caught (1) integrality overstated → discrete/quantized (MEDIUM), (2) HS constraint oversimplified (MEDIUM), (3) dichotomy incomplete — added SPT phases (MEDIUM). All corrections applied. Promoted as Remark 6.6: 't Hooft condition as RG invariant for global symmetries, WZW term carries quark anomaly to pions, π⁰→γγ as quantitative test, HS channel constraint clarified. 5 new references: Schwinger1962Mass, ColemanJackiwSusskind1975, tHooft1980, WessZumino1971, Witten1983WZW.
- Result: fermionic 226→237 (+11, 19pp). Uncuttable 227 (18pp). Action-angle 231 (18pp). All three now 227+ lines.

## 2026-02-13 (S192+C233+S193+C234: OAM + Gabor limit in action-angle)
- Focus: expand action-angle Section 3 (OAM) and Section 4 (Gabor limit).
- Work: S192 studied orbital angular momentum of light for Remark 3.3. Quantum optics experimentalist reviewer caught (1) doughnut description fails for ℓ=0 (HIGH), (2) orbital vs total J unclear (MEDIUM), (3) petal count is 2|ℓ| (MEDIUM), (4) selection rule needs multipolar context (MEDIUM). All corrections applied. Promoted as Remark 3.3: Allen et al. 1992 LG beams, OAM ℓℏ per photon (total (ℓ+σ)ℏ clarified), doughnut for |ℓ|≥1 only, 2|ℓ| petals, phase vortex topology, Mair et al. 2001 entanglement. S193 studied Gabor limit for Remark 4.6. Time-frequency analysis specialist reviewer caught (1) phase-space cell area is ℏ not ℏ/2 (HIGH), (2) Gabor frame condition ab<1 not ab≤1 with Balian-Low at ab=1 (HIGH), (3) normalization convention note needed (MEDIUM), (4) circular "analog" not identical to Gabor limit (MEDIUM). All corrections applied. Promoted as Remark 4.6: Gabor 1946 logons, Gaussian = coherent state, frames ab<1, Balian-Low at ab=1, circular analog, von Mises↔Gaussian, Hirschman-Beckner, Slepian-Landau-Pollak. 4 new references: Allen1992, Mair2001, Gabor1946, Daubechies1992.
- Result: action-angle 221→231 (+10, 18pp). Uncuttable 227 (18pp). Fermionic 226 (17pp). All three now 226+ lines.

## 2026-02-13 (S190+C231+S191+C232: Zeno's paradoxes + Constructive QFT in uncuttable)
- Focus: expand uncuttable Section 1 (Zeno's paradoxes) and Section 4 (constructive QFT). Q124 review of C231-C232.
- Work: S190 studied Zeno's paradoxes as proto-refinement limits. Historian of ancient mathematics reviewer caught (1) Zeno's intent mischaracterized — defending Parmenides' monism, not "against motion" (HIGH), (2) convergent series is anachronistic — must qualify as modern reading (HIGH), (3) arrow paradox oversimplified (MEDIUM), (4) "perfectly frames" too strong (MEDIUM), (5) "by fiat" tendentious (MEDIUM). All corrections applied. Promoted as Remark 1.2: reductio ad absurdum for Parmenides' monism, series as anachronistic modern reading, arrow resolved by derivative, atomists posit physical lower bound, arc "suggestively parallels." S191 studied constructive QFT — do the refinement limits exist? Mathematical physicist reviewer caught (1) Gross-Neveu attribution wrong — should be Gawędzki-Kupiainen + FMRS (HIGH), (2) 2D Yang-Mills mischaracterized — Migdal-Witten are exact/topological, Driver-Sengupta did rigorous construction (HIGH), (3) φ⁴₃ attribution incomplete (HIGH), (4) φ⁴₂ method conflation (MEDIUM), (5) triviality needs Aizenman-Fröhlich (MEDIUM), (6) structural lesson overstated (MEDIUM), (7) missing Balaban (MEDIUM). All corrections applied. Promoted as Remark 4.11: corrected attributions, Borel summability connection to Remark 2.5, Balaban as closest approach to 4D YM. 3 new bib entries: GlimmJaffe1987, Aizenman1981, Frohlich1982. Also fixed Unicode issues in action-angle (Vũ Ngọc) and fermionic (μm) for pdflatex compatibility.
- Result: uncuttable 218→227 (+9, 18pp). Fermionic 226 (17pp). Action-angle 221 (17pp). All three now 221+ lines.

## 2026-02-13 (S188+C229+S189+C230: Crossing symmetry + Hubbard-Stratonovich in fermionic)
- Focus: expand fermionic Section 2 (crossing symmetry) and Section 6 (Hubbard-Stratonovich). Q123 review of C227-C228.
- Work: S188 studied crossing symmetry. S-matrix theorist reviewer caught (1) Mandelstam analyticity assumptions not stated (HIGH), (2) crossing for fermions has spinor signs (MEDIUM), (3) t-channel obstruction conflates two issues (MEDIUM), (4) Froissart-Martin bound imprecise (MEDIUM). All corrections applied. Promoted as Remark 2.2: Mandelstam analyticity as assumption, Grassmann obstruction orthogonal to channel kinematics, fermion crossing has spinor structure. S189 studied Hubbard-Stratonovich transformation. Many-body theorist reviewer caught (1) fermion determinant needs trace-log (HIGH), (2) missing channel decomposition/Fierz caveat (HIGH), (3) RG inheritance imprecise — should be matching (MEDIUM). All corrections applied. Promoted as Remark 6.5: Gaussian identity → trace-log effective action, BCS gap parameter, NJL chiral symmetry breaking, Fierz channel decomposition caveat, large-N_f control. 2 new bib entries: Hubbard1959, NambuJonaLasinio1961. Q123 reviewed C227-C228: 2/2 PASS.
- Result: fermionic 218→226 (+8, 17pp). Action-angle 221 (17pp). Uncuttable 218 (17pp). All three now 218+ lines.

## 2026-02-13 (S204+C244+Q130+S205+C245: Half-density D=4 matching + SR orbit precession)
- Focus: open question #1 (half-density d=4 selection) and relativistic orbits expansion.
- Work: S204 derived V(p) = (1/6)R from normal-coordinate expansion of half-density conjugation potential — dimension-independent. Since ξ_conf = (D−2)/(4(D−1)) = 1/6 iff D=4, this gives a general-metric D=4 matching. SymPy verified. Pure mathematician reviewer confirmed correctness, suggested softening "selection" to "matching" and clarifying ω–σ notation. C244 promoted as Remark HD-D1.3b; updated HD-D1.3a transition. Q130 CONDITIONAL PASS → PASS after notation clarification. S205 derived SR orbit precession: Binet equation with ω² = 1 − K²/(c²L²), precessing ellipse solution, Δφ_SR = πGM/(c²a(1−e²)) = (1/6)Δφ_GR. Beautiful insight: ω = 1/γ_circ. Intuitive physicist reviewer confirmed correctness, flagged missing derivation sketch (resolved by citing BoscagginDambrosioFeltrin2020). C245 promoted as Remark 3.2 in relativistic orbits.
- Result: HD-QFT 227→234 (+7, 4pp). Relativistic orbits 218→233 (+15, 4pp). Open question #1 status updated in motivations.md. Lp-vs-ℏ sub-question added.

## 2026-02-13 (S186+C227+S187+C228: Selection rules + QND measurement in action-angle)
- Focus: expand action-angle Section 3 (selection rules) and Section 5 (QND measurement). Fix finish_manuscripts.sh.
- Work: S186 studied dipole selection rules as Fourier orthogonality. Atomic physicist reviewer caught (1) missing Δl=±1 rule entirely (HIGH), (2) angular momentum conservation sign (MEDIUM), (3) π-photon carries 0 not ℏ along z (MEDIUM). All corrections applied. Promoted as Remark 3.2: Δm from azimuthal Fourier, Δl from polar/Clebsch-Gordan, photon qℏ, Zeeman, Fourier tradeoff connection. S187 studied QND measurement. Quantum optics experimentalist caught (1) missing [A,H_int]=0 condition (HIGH), (2) "back-action-free" claim incorrect — redirected to conjugate (HIGH), (3) Zeno vs QND conflation (MEDIUM), (4) Nogues experiment details wrong — Rydberg atoms not qubits (MEDIUM). All corrections applied. Promoted as Remark 5.7: dual QND conditions, back-action on conjugate, dispersive cavity-QED with Ramsey interferometry, Zeno distinction. 2 new bib entries: BraginskyVorontsovThorne1980, Nogues1999. Also added ZurekHabibPaz1993 (pre-existing but missing from central bibliography) + new keys to paper/bibliography.md. Fixed finish_manuscripts.sh: update_references.py now runs only on main paper (satellites use parenthetical citations).
- Result: action-angle 213→221 (+8, 17pp). Uncuttable 218 (17pp). Fermionic 218 (16pp). All three now 218+ lines.

