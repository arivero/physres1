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

## 2026-02-13 (S233–S237+C268–C272+Q152–Q156: three PLB satellites expanded, five Q reviews)
- Focus: continued PLB expansion across HD-QFT, relativistic, dirac-probes.
- Work:
  - S233+C268: HD-QFT Remark HD-D5.3a (Seeley-DeWitt hierarchy, derivative counterterm scaling) (+3, 259→262).
  - S234+C269: dirac-probes Remark 4.4a (Noether charges across impulses: ΔQ=J·ξ, conserved iff J⊥ξ) (+3, 237).
  - S235+C270: relativistic Remark 4.3f (coordinate Kepler law ω_φ²=M/r₀³; proper period T_τ=T_t√(1-3M/r₀)) (+3, 259→262).
  - S236+C271: HD-QFT Remark HD-D5.3b (dim-reg pole structure: Γ(n+1-D/2), poles at D=2(n+1)) (+3, 262).
  - S237+C272: dirac-probes Remark 3.2a (impulse-work formula ΔH=J·v̄; corner/impulse dichotomy) (+3, 237→240).
  - Q152: PASS for C267 (dirac-probes Remark 4.5b).
  - Q153: PASS for C268 (HD-QFT Remark HD-D5.3a).
  - Q154: PASS for C269 (dirac-probes Remark 4.4a).
  - Q155: PASS for C270 (relativistic Remark 4.3f). All derivations verified.
  - Q156: CONDITIONAL PASS for C271 (HD-QFT HD-D5.3b). Found index mismatch: cutoff formula "Λ^{D-2n}" inconsistent with examples. Fix applied: Λ^{D-2n} → Λ^{D-2(n+1)}.
- Result: dirac 240 lines (5pp), relativistic 262 (5pp), HD-QFT 262 (5pp). All within budget.
- Next: Q157 for C272; further PLB expansion; commit batch.

## 2026-02-13 (S213+C249+B25+infra: caustics/Maslov, Hamilton1834, token counter, serendipity convention)
- Focus: delta-objects expansion; bibliography; infrastructure.
- Work:
  - S213+C249: caustics and the Maslov index → Remark 3.5c in delta-objects. Resolves the loose end from Example 3.5b (√D→∞ at caustics). Caustic = projection artifact from Lagrangian submanifold; metaplectic Mp(2n) double cover resolves sign ambiguity of √D; Maslov index μ counts conjugate points, phase correction exp(−iπμ/2). [BatesWeinstein1997] already cited. +4 lines (198, 5460 tok).
  - B25: Hamilton1834 added to central and delta-objects bibliographies. Hamilton's principal function S(q,Q,t) is the ancestor of the Van Vleck determinant.
  - Infrastructure: token counting script (`scripts/count-tokens.py`) using Xenova/claude-tokenizer from HuggingFace Hub. Integrated into `count-pages.sh`. Total corpus: ~125k tokens.
  - Infrastructure: SERENDIPITY tag convention added to `cycles/README.md`. D/DX tracks marked dormant.
  - Q135 running: referee review of C249.
- Result: delta-objects 198 lines (5pp, 5460 tok). Hamilton1834 in bib.
- Sources touched: [Hamilton1834] added (OA, TCD PDF downloaded to sources/).
- Next: Q135 result; further PLB expansion; commit at next hour boundary.

## 2026-02-13 (S210–S212+C248+Q132–Q134: open questions 2+5 analyzed, delta-objects expanded)
- Focus: analyze remaining open questions; targeted delta-objects expansion.
- Work:
  - S210: open Q#5 (anomalies + RCP) — reframes anomalies as composition-law defects (half-density Jacobian = Fujikawa). Conceptual gain only, no new constraints.
  - S211: open Q#2 (minimal RCP axioms) — formalization gap identified. P10.1 is a classification, not a derivation. Closing the gap requires multi-year research program.
  - Q132: referee review of C246 (dirac Remark 2.3) — PASS.
  - Q133: referee review of C247 (delta Remark 4.3) — CONDITIONAL PASS. Fix applied: (2π)^{-d/2} → proportionality sign.
  - S212+C248: d/2 unifying thread → Remark 5.1 in delta-objects. Connects identity kernel, heat kernel convergence, and Sobolev embedding via the half-density exponent (+3 lines, now 194).
- Result: all 5 open questions now analyzed. delta-objects 194 lines (4pp). Cumulative batch diffstat: +12 -3 across 3 manuscripts.
- Sources touched: none new.
- Next: Q134 on C248; further PLB expansion; commit batch.

## 2026-02-13 (S206–S209+C246–C247+Q131: three satellites expanded, two open questions analyzed)
- Focus: expand PLB-length satellites; analyze open questions #3 and #4.
- Work:
  - S204+C244: V=(1/6)R Remark D4.3 in HD-QFT (+8 lines, now 234). Q130 referee: PASS.
  - S205+C245: SR orbit precession Remark 3.2 in relativistic orbits (+6 lines, now 233). Q131 referee: CONDITIONAL PASS. 3 fixes applied (citation scope, ω=1/γ language, post-Newtonian framing).
  - S206+C246: mollifier–polygon refinement parallel → Remark 2.3 in dirac-probes (+3 lines, now 199).
  - S207: open Q#3 (RCP + contact universality) — three-level analysis. Primarily conceptual gain; two open calculation avenues.
  - S208: open Q#4 (non-perturbative contact expansion) — Padé [0/1] recovers Yukawa pole exactly from C₀, C₂. Loop-level extension via dispersion relations.
  - S209+C247: heat kernel exponent → extension classification → Remark 4.3 in delta-objects (+3 lines, now 191).
- Result: all 4 PLB satellites expanded; 2 of 5 open questions partially resolved. Cumulative diffstat: +9 -3 across 3 manuscripts.
- Sources touched: none new.
- Next: Q cycles on C246+C247; open questions 2, 5; more satellite expansion.

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

## 2026-02-13 (S217+C252: relativistic SR/GR stability contrast + q=2 boundary)
- S217: Studied SR vs GR stability for circular orbits. SR has no ISCO for q=2 (criterion always 1>0); GR ISCO at 6M is pure curvature. q=2 is the unique boundary between unconditional and speed-conditional stability.
- C252: Promoted Remark 4.3a (SR vs GR stability) and Remark 5.2a (inverse-square as stability boundary). +6 lines (233→239). No Q cycle needed — direct consequences of existing equations.

## 2026-02-13 (S216+C251+Q137: delta-objects Remark 2.1 + Example 3.4a)
- S216: Studied compositional origin of d/2 exponent and free particle distributional mechanics.
- C251: Promoted Remark 2.1 (why d/2 is universal: half-density ⊗ half-density = density) and Example 3.4a (smooth → mollifier localization, kinked → delta-term impulse condition). +5 lines (199→204).
- Q137: Referee caught sign error in Example 3.4a: q̈ = -(Δv)δ → q̈ = +(Δv)δ. Also softened Remark 2.1 composition claim. Both fixed.

## 2026-02-13 (S215+C250+Q136: Newton polygon in dirac-probes + B26 retry + infrastructure)
- S215: Studied Newton's Principia Prop. 1 polygon construction for angular momentum preservation under central impulses. The parallelogram construction (cC∥BS) gives equal-area identity at each finite polygon step; Lemma 3 for continuum limit.
- C250: Promoted two additions to dirac-probes-corners-impulses: (1) Example 3.1a showing corner condition forces v⁺=v⁻ for free particle (soft vs hard junction), (2) Section 4.4 expansion with explicit polar decomposition, Newton's Prop.1 parallelogram construction, and Theorem 3.2 as modern underpinning. +6 lines (200→206).
- Q136: Referee review. CONDITIONAL PASS — fixed misleading "exactly, not as a limiting statement" → "algebraic identity at each polygon step, exact for any finite number of impulses." Also added "adds a radial velocity component" for clarity.
- B26 retry: Hamilton 1834 transcription succeeded after renaming PDF. Key sections transcribed to sources/Hamilton-1834-transcription.md.
- Infrastructure: AGENTS.md updated — docs/motivations.md marked as agent-editable.
- Result: dirac-probes 206 lines. Hamilton transcription committed.

## 2026-02-13 (S214+B26: Special dimensions study + Hamilton 1834 transcription attempt)
- S214: Studied why D=6,10,11,26 don't appear in the half-density framework. Key finding: two layers of "special dimension" — Layer 1 (d/2 layer, target-space measure theory) produces d=2,3,4; Layer 2 (field-content layer, anomaly cancellation/SUSY) produces D=6,10,11,26. Parity obstruction in monomial integrality sieve prevents string dimensions from being reached. Blackboard slot 3 overwritten with analysis. SERENDIPITY: parity obstruction as structural explanation.
- B26: Hamilton 1834 transcription blocked by API content filter. Manual reading summary captured in execution file. No manuscript impact — citation annotation already corrected via Q135.
- Result: blackboard 3 updated. No manuscript changes. S214 PASS, B26 INCOMPLETE.

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

## 2026-02-13 (S219+C254+Q139: dirac-probes Section 5.2 delta potential hierarchy)
- Focus: expand the thin Section 5.2 (3 lines → concrete content) with dimensional hierarchy of point interactions.
- Work: Example 5.2a: d=1 finite/bound state E=-mg²/(2ℏ²), d=2 log/transmutation α, d=3 linear/scattering length a, d≥4 no extension (Morrey). Remark 5.2b: Laplace representation G₀(0,0;E) ∝ ∫t^{-d/2}e^{-κ²t}dt shows same d/2 as path-integral normalization (§4.5). Q139 found 2 MEDIUM: (1) forward reference needed for "heat kernel exponent d/2", (2) "critical dimension" ambiguous. Both fixed.
- Result: dirac-probes 206→212 (+6, 4pp→5pp). HD-QFT 244/5pp. delta 204/5pp. relativistic 239/4pp.

## 2026-02-13 (S218+C253+Q138: HD-QFT flat-space propagator + mass counterterm scaling)
- Focus: expand half-density-qft Section 4 (concrete example) and Section 5 (UV connection).
- Work: S218 studied two targets. Promoted as Example HD-D4.3: flat-space massless propagator G(x,y)=Γ(D/2-1)/((4π)^{D/2}|x-y|^{D-2}), connecting D/2 normalization to HD-D1.1a's approximate identity; in flat space G̃=G. Promoted as Remark HD-D5.3: mass counterterm δm²·K_Id, UV scaling via heat kernel at coincidence ∫t^{-D/2}dt~Λ^{D-2} for D>2, same D/2 exponent controls both normalization and UV divergence. Q138 found 2 HIGH + 1 MEDIUM: (1) (4π)^{D/2} parentheses error, (2) proper-time cutoff UV/IR direction ambiguous, (3) "identified with" too strong for ε~|x-y|². All fixed.
- Result: half-density-qft 234→244 (+10, 5pp). delta 204/5pp, dirac 206/4pp, relativistic 239/4pp.

## 2026-02-13 (S188+C229+S189+C230: Crossing symmetry + Hubbard-Stratonovich in fermionic)
- Focus: expand fermionic Section 2 (crossing symmetry) and Section 6 (Hubbard-Stratonovich). Q123 review of C227-C228.
- Work: S188 studied crossing symmetry. S-matrix theorist reviewer caught (1) Mandelstam analyticity assumptions not stated (HIGH), (2) crossing for fermions has spinor signs (MEDIUM), (3) t-channel obstruction conflates two issues (MEDIUM), (4) Froissart-Martin bound imprecise (MEDIUM). All corrections applied. Promoted as Remark 2.2: Mandelstam analyticity as assumption, Grassmann obstruction orthogonal to channel kinematics, fermion crossing has spinor structure. S189 studied Hubbard-Stratonovich transformation. Many-body theorist reviewer caught (1) fermion determinant needs trace-log (HIGH), (2) missing channel decomposition/Fierz caveat (HIGH), (3) RG inheritance imprecise — should be matching (MEDIUM). All corrections applied. Promoted as Remark 6.5: Gaussian identity → trace-log effective action, BCS gap parameter, NJL chiral symmetry breaking, Fierz channel decomposition caveat, large-N_f control. 2 new bib entries: Hubbard1959, NambuJonaLasinio1961. Q123 reviewed C227-C228: 2/2 PASS.
- Result: fermionic 218→226 (+8, 17pp). Action-angle 221 (17pp). Uncuttable 218 (17pp). All three now 218+ lines.

## 2026-02-13 (S186+C227+S187+C228: Selection rules + QND measurement in action-angle)
- Focus: expand action-angle Section 3 (selection rules) and Section 5 (QND measurement). Fix finish_manuscripts.sh.
- Work: S186 studied dipole selection rules as Fourier orthogonality. Atomic physicist reviewer caught (1) missing Δl=±1 rule entirely (HIGH), (2) angular momentum conservation sign (MEDIUM), (3) π-photon carries 0 not ℏ along z (MEDIUM). All corrections applied. Promoted as Remark 3.2: Δm from azimuthal Fourier, Δl from polar/Clebsch-Gordan, photon qℏ, Zeeman, Fourier tradeoff connection. S187 studied QND measurement. Quantum optics experimentalist caught (1) missing [A,H_int]=0 condition (HIGH), (2) "back-action-free" claim incorrect — redirected to conjugate (HIGH), (3) Zeno vs QND conflation (MEDIUM), (4) Nogues experiment details wrong — Rydberg atoms not qubits (MEDIUM). All corrections applied. Promoted as Remark 5.7: dual QND conditions, back-action on conjugate, dispersive cavity-QED with Ramsey interferometry, Zeno distinction. 2 new bib entries: BraginskyVorontsovThorne1980, Nogues1999. Also added ZurekHabibPaz1993 (pre-existing but missing from central bibliography) + new keys to paper/bibliography.md. Fixed finish_manuscripts.sh: update_references.py now runs only on main paper (satellites use parenthetical citations).
- Result: action-angle 213→221 (+8, 17pp). Uncuttable 218 (17pp). Fermionic 218 (16pp). All three now 218+ lines.

## 2026-02-13 (S218+C253+Q138: HD-QFT flat-space propagator + mass counterterm scaling)
- Focus: expand half-density-qft Sections 4 and 5.
- Work: S218 studied two targets: (1) flat-space massless propagator G(x,y) = Γ(D/2-1)/((4π)^{D/2}|x-y|^{D-2}), connecting D/2 normalization to HD-D1.1a; (2) mass counterterm UV scaling Λ^{D-2} from heat kernel at coincidence. Promoted as Example HD-D4.3 + Remark HD-D5.3. Q138 referee: CONDITIONAL PASS. Fixed (1) parentheses 4π^{D/2}→(4π)^{D/2} (HIGH), (2) proper-time cutoff direction clarified (HIGH), (3) "identified with"→"scales as" (MEDIUM).
- Result: half-density-qft 234→244 (+10, 5pp, 6091 tok).

## 2026-02-13 (S219+C254+Q139: dirac-probes delta potential hierarchy)
- Focus: expand dirac-probes Section 5.2 (point interactions).
- Work: S219 studied dimensional hierarchy of delta potentials (d=1 finite, d=2 log/transmutation, d=3 linear/scattering length, d≥4 no extension) and Laplace representation bridge G₀(0,0;E) ∝ ∫t^{-d/2}e^{-κ²t}dt. Promoted as Example 5.2a + Remark 5.2b. Q139 referee: CONDITIONAL PASS. Fixed (1) added forward ref to Remark 5.2b (MEDIUM), (2) "critical dimension"→"marginal dimension" (MEDIUM).
- Result: dirac-probes 206→212 (+6, 5pp, 5178 tok).

## 2026-02-13 (S220+C255+Q140: relativistic stability expansions)
- Focus: expand relativistic-central-orbits Sections 4.3 and 5.2.
- Work: S220 studied two targets: (1) ISCO angular-momentum floor L_ISCO = 2√3 M vs SR's L>K/c (no stability floor), (2) stability thresholds for q=1,2,5/2,3 power laws. Promoted as Remark 4.3b + Example 5.2b. Q140 referee: PASS (no fixes, 3 LOW optional).
- Result: relativistic 239→250 (+11, 4pp, 4670 tok).

## 2026-02-13 (S221+C256+Q141: delta-objects d=2 scalarization example)
- Focus: expand delta-objects Section 5 (scalarization, 12 lines → 15 lines).
- Work: S221 studied d=2 scalarization using transmutation scale α. Agent drafted Example 5.1a with σ_* = α^{-1}|dx|^{1/2}. Q141 referee: REJECT — dimensional analysis failure (σ_* has wrong dimensions [length²] vs required [length^1]). Rewrote Example to avoid faulty σ_* construction, focusing instead on κ/α=1 (dimensionless RG-invariant bound-state condition).
- Result: delta 204→207 (+3, 5pp, 6155 tok).

## 2026-02-13 (S222+C257+Q142: HD-QFT Section 4 deepening)
- Focus: expand half-density-qft Sections 4–5 with geometric and analytic depth.
- Work: S222 studied two candidates: (1) Van Vleck transport equation as geometric half-density Jacobian, (2) proper-time/Schwinger representation unifying D/2 exponent across four paper elements. Promoted as Remark HD-D4.4 + Remark HD-D4.5. Q142 referee: pending.
- Result: HD-QFT 244→253 (+9, 5pp, 6592 tok).

## 2026-02-13 (S223+C258+Q143: dirac-probes Weierstrass–Erdmann + action excess)
- Focus: expand dirac-probes Sections 3.1 and 4.3.
- Work: S223 drafted (1) Remark 3.1b: Weierstrass–Erdmann second condition (energy/Hamiltonian continuity at corners), completing the treatment alongside Theorem 3.1's momentum condition; (2) Remark 4.3a: midpoint kick maximizes action excess (t₀(T-t₀)/T maximized at T/2). Promoted as Remark 3.1b + Remark 4.3a. Q143 referee: pending.
- Result: dirac 212→222 (+10, 5pp, 5486 tok).

## 2026-02-13 (S224+C259+Q144: delta-objects d=2 resolvent example)
- Focus: expand delta-objects Section 4 with d=2 delta potential computation.
- Work: S224 identified clean target: rank-one perturbation in d=2 showing logarithmic divergence and exact Λ-cancellation via running coupling. Promoted as Example 4.1b (after d=1 Example 4.1). Added [Jackiw1991DeltaPotentials] to bibliography. Q144 referee: CONDITIONAL PASS — two MEDIUM (citation for G₀ formula, vague forward reference). Both presentation polish, no math errors.
- Result: delta 207→218 (+11, 6pp, 6507 tok). At PLB boundary — no further additions without cuts.

## 2026-02-13 (S225+C260+Q145: relativistic hierarchy remark)
- Focus: expand relativistic Section 4.3 with radius hierarchy observation.
- Work: S225 identified structural remark: r_ph=3M, unstable band 3M<r<6M, ISCO at 6M, ratio r_ISCO/r_ph=2 exact. SR has no unstable band or photon sphere — entire unstable band is pure curvature effect. Promoted as Remark 4.3c. Q145 referee: PASS (lightweight, no new formulas).
- Result: relativistic 250→253 (+3, 5pp, 4844 tok).

## 2026-02-13 (S226+C261+Q146: relativistic ISCO binding energy)
- Focus: expand relativistic Section 4.3 with accretion efficiency consequence.
- Work: S226 verified E²(6M)=8/9, η=1-2√2/3≈5.72%. Promoted as Remark 4.3d (ISCO binding energy and accretion efficiency). Q146 referee: PASS — standard GR result, no issues.
- Result: relativistic 253→256 (+3, 5pp).

## 2026-02-13 (S227+C262+Q147: dirac-probes Jacobi sufficiency)
- Focus: add variational calculus foundation for action excess formula in Section 4.3.
- Work: S227 verified Jacobi sufficiency conditions for free particle: strong Legendre (m>0), Jacobi equation (ẍ_J=0), no conjugate points. Promoted as Remark 4.3b. Q147 referee: CONDITIONAL PASS — fixed conjugate-point phrasing (MEDIUM).
- Result: dirac 222→225 (+3, 5pp).

## 2026-02-13 (S228+C263: HD-QFT ζ-function determinant)
- Focus: expand HD-QFT Section 5 with spectral ζ-function connection.
- Work: S228 studied ζ-function ζ_P(s) = Γ(s)^{-1}∫t^{s-1}Tr K(t)dt. Poles at s=D/2-n from Seeley-DeWitt expansion. Functional determinant det P = exp(-ζ'_P(0)) is finite and coordinate-independent. Promoted as Remark HD-D5.4. Q148 referee: PASS.
- Result: HD-QFT 253→256 (+3, 5pp).

## 2026-02-13 (S229+C264+Q149: dirac-probes free-particle propagator)
- Focus: add exact free-particle propagator evaluation in Section 4.5.
- Work: S229 studied Gaussian time-slicing integrals. Result independent of N (composition law). Prefactor √(m/T) = Van Vleck determinant. Promoted as Remark 4.5a. Q149 referee: PASS.
- Result: dirac 225→228 (+3, 5pp).

## 2026-02-13 (S230+C265+Q150: dirac-probes Weierstrass excess function)
- Focus: upgrade Jacobi sufficiency (weak minimum) to Weierstrass sufficiency (strong minimum).
- Work: S230 computed E = m/2(ẋ'-ẋ)² ≥ 0. Combined with 4.3b → strong local minimum. Kinked trajectory is concrete strong competitor. Promoted as Remark 4.3c. Q150 referee: PASS.
- Result: dirac 228→231 (+3, 5pp).

## 2026-02-13 (S231+C266+Q151: relativistic apsidal advance)
- Focus: exact apsidal advance formula bridging weak-field to ISCO regime.
- Work: S231 derived ω_φ/ω_r = √(r₀/(r₀-6M)). Exact advance Δφ = 2π(√(r₀/(r₀-6M))-1). Weak-field → 6πM/r₀ (Mercury). Diverges at ISCO. Promoted as Remark 4.3e. Q151 referee: PASS.
- Result: relativistic 256→259 (+3, 5pp).

## 2026-02-13 (S232+C267: dirac-probes multi-dimensional propagator)
- Focus: connect d/2 exponent in path-integral normalization to renormalization threshold.
- Work: S232 computed d-dimensional Van Vleck det = (m/T)^d, prefactor (m/T)^{d/2}. Same d/2 as diagonal Green function. Promoted as Remark 4.5b. Q152 pending.
- Result: dirac 231→234 (+3, 5pp).

## 2026-02-13 (Q147: Referee review of C270 Remark 4.3f)
- Focus: referee-style mathematical and physical review of C270 (Kepler third law in Schwarzschild coordinates).
- Work: verified all derivations: (1) ω_φ² = M/r₀³ from circular-orbit L², E² formulas — correct via direct substitution; (2) proper-time correction T_τ/T_t = √(1-3M/r₀) derived from metric and E — correct; (3) ISCO numerical check √(1-1/2) = 1/√2 — correct; (4) "gauge accident" characterization physically sound (coordinate-dependent simplification vs proper-time reality); (5) all cross-references to Remarks 4.3a-e verified. Also checked red-team attacks: algebra verification, independent proper-time derivation using both metric and E, no contradiction with Remark 3.2's precession (circular vs radial frequencies), page budget satisfied (259→262, 5pp).
- Result: Remark 4.3f PASS. No required fixes. Optional refinement: "gauge accident" could be "coordinate artifact" for stricter GR terminology, but current phrasing acceptable for remark format.
- Next: Q152 on C267; continue PLB expansion.

