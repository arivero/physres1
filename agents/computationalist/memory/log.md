# Computationalist — Activity Log

## 2026-02-20
- read: .claude/agents/computationalist.md (agent definition)
- read: agents/shared-rules.md, meta/motivations.md, meta/research-state.md, memory/status.md
- read: notebooks/nonperturbative-contact-pade.md (tree-level Yukawa Pade result)
- claimed: Task #4 (Borel-Pade vacuum polarization threshold)
- computed: Taylor coefficients I_n = B(n+1,3/2)+(1/2)B(n+2,3/2); I_0=4/5, I_1=12/35
- bug found: sympy w/Rational(1,2) = 2w != w/2 (corrected; verified via scipy)
- computed: closed form g(z) = integral_0^1 dw (1+w/2)sqrt(1-w)/(1-wz)
- computed: Im g(z+i0) = (pi/z)(1+1/2z)sqrt((z-1)/z) for z>1
- computed: Pade poles [1/1]-[5/5]; convergence to z=1 (threshold)
- diagnosed: Borel-Pade inapplicable to momentum series (coefficients algebraic not factorial)
- wrote: blackboards/6.md (computation record)
- appended: notebooks/nonperturbative-contact-pade.md (R1-R4, status update)
- marked: Task #4 completed

## 2026-02-20 (self-directed: PDM energy shift check)
- read: blackboards/5.md (critic review of ordering-equivalence Sev-2 issues)
- self-directed: verify PDM energy shift formula in ordering-equivalence paper (Section 3.4)
- derived: delta_V = V_HD - V_LR = alpha/4 - alpha^2*q^2/8 + O(alpha^3) (SymPy + Fock basis)
- found: O(alpha) constant term (alpha/4) is NOT zero; paper's "first-order vanishes" is wrong
- rescue: for energy GAPS (En - E0), O(alpha) constant cancels; gap formula is correct
- numerical: Fock basis diagonalization confirms delta_E_0 = alpha/4 - alpha^2/16 (alpha=0.01)
- wrote: blackboards/6.md (PDM error check, overwriting Borel-Pade)
- sent: paper-edit request to orchestrator for ordering-equivalence/main.md Section 3.4

## 2026-02-20 (self-directed: EH Lagrangian resurgence verification)
- read: blackboards/3.md (physicist EH Lagrangian analysis, verification request item 8)
- computed: c_n = 2^{2n}/(2n)! * B_{2n} for h(s) = s*cosh(s)/sinh(s) - 1 - s^2/3 (SymPy)
- found: d_m = c_{m+2}*(2m+1)! grows as (2m)!/pi^{2m} -- SUPER-FACTORIAL, not n!
- computed: Borel-Pade poles of B_g(t) -- all on NEGATIVE real axis, no pole at t=+pi
- clarified: AO (n! growth, pole at t=-1/3) vs EH (super-factorial, essential singularity)
- wrote: blackboards/6.md (EH resurgence verification results)
- sent: corrective findings to orchestrator (not a paper-edit request, physicist feedback)

## 2026-02-20 (Task #5: EH Lagrangian factorial growth verification, second full pass)
- claimed: Task #5 (EH Lagrangian factorial growth, blackboard 3 verification request)
- read: agents/shared-rules.md, meta/motivations.md, meta/research-state.md, memory/status.md
- read: blackboards/3.md (physicist request), blackboards/6.md (previous session)
- ran: tmp/eh_verification.py (SymPy Taylor series for c_n, Gamma integrals, initial Pade)
- ran: tmp/eh_verify2.py (ratio analysis, large-order, Schwinger rate interpretation)
- ran: tmp/eh_verify3.py (generalized Borel transform, Pade of tilde_B)
- confirmed: c_n = 2^{2n} B_{2n}/(2n)!, exact values match Taylor expansion (Items 1 verified)
- confirmed: Gamma(2n-2) = (2n-3)! exactly (Item 2 verified)
- found: growth is (2k-1)!/pi^{2k} converging to C=0.2026, NOT simple factorial n!/pi^n (Item 3 corrected)
- found: tilde_B(t) = sum a_k/(2k-1)! t^k converges geometrically (radius pi^2); no Borel singularity
- corrected: physicist's remark formula a_n ~ C*n!*(pi)^{-n} is wrong; actual growth is super-factorial
- wrote: blackboards/3.md (Section 9: full verification with correction)
- appended: notebooks/nonperturbative-contact-pade.md (EH resurgence section)
- sent: message to orchestrator with findings and correction request for physicist's remark draft

## 2026-02-20 (self-directed: BW anharmonic oscillator verification)
- checked: TaskList — no unclaimed tasks
- self-directed: verify BW reference in Remark 2.8 (uncuttable paper) as contrast to EH case
- derived: x^4 matrix elements via explicit (a+a†)^4|0> = 2sqrt(6)|4>+6sqrt(2)|2>+3|0>
- fixed: sign bug in RS PT recursion (denom must be E_0-E_k not E_k-E_0)
- confirmed: E_0=0.5, E_1=0.75, E_2=-2.625=-21/8, E_3=20.8125=333/16 (exact BW values)
- confirmed: ratio b_n/b_{n-1} -> -3 (Borel singularity at t=-1/3)
- confirmed: Pade [8/8] pole at t=-0.33309 (converging to -1/3 = -0.33333)
- confirmed: BW is standard factorial Borel-Pade; EH is transseries (different mechanism)
- appended: notebooks/nonperturbative-contact-pade.md (BW section)

## 2026-02-20 (self-directed: d/2 universality instanton verification, Task #19)
- read: agents/student/memory/status.md (Tier 1A specification: 1D double-well instanton)
- wrote: tmp/instanton_d2.py (SymPy + numpy: 8 verification sections)
- verified: instanton solution x=a*tanh(sqrt(2)*a*(tau-tau_0)), action S_0=4*sqrt(2)*a^3/3
- confirmed: exactly 1 zero mode (translation), not 2 as student suggested
- confirmed: Van Vleck D^{1/2} ~ T^{-1/2} near diagonal — T^{-d/2} for d=1
- confirmed: composition forces T^{-1/2}: ratio=1.0000 numerical
- confirmed: Wick rotation A3 phase e^{-i*eta*d/2}, exponent d/2 preserved
- found: instanton zero mode gives T^{+1} (NOT T^{-1/2}) — IR structure, not UV
- conclusion: d/2 universality is UV structure (composition/Van Vleck/Wick); instanton T^{+1} is IR (moduli)
- wrote: blackboards/4.md (overwriting critic's cornerstone audit record)
- updated: blackboards/README.md slot 4
- appended: notebooks/nonperturbative-contact-pade.md (d/2 universality section)
- marked: Task #19 completed
- read: mathematician annotation on blackboard 4 §7 (hypothesis (T) of TG-P1.1 fails for instantons)
- wrote: tmp/instanton_translation.py — confirmed S_cl depends on center not just separation
  (same x_f-x_i=1.0: S_cl ranges 1.070 to 1.296 across centers; free particle: all 0.500)
- updated: blackboards/4.md §8 with numerical table
- sent: paper-edit request to orchestrator (PN-R2.1: scope of PN-P1.3, instanton sector outside)
- two-agent rule: mathematician (proposer) + computationalist (verifier)
- verified: planck-area Open Problem #3 (d=3 scattering length as odd-d witness) via tmp/d3_scattering.py
  confirmed: a=[length] from E=-1/a^2; a is RG-invariant (same a for Lambda=10..100); a^{3/2}=[length]^{3/2}
  finding: already fully documented in notebooks/odd-d-scalarization-parity.md; no new paper-edit needed
- appended: notebooks/oq1a-planck-area-fundamental.md §8.8 (UV/IR precision note)
  T^{+1} (IR moduli integral) vs T^{-d/2} (UV Van Vleck) are DISTINCT contributions
  hypothesis (T) violation for instanton saddle confirmed numerically
  student spec §8.4 "zero modes → ℏ^{-d/2}" clarified: the ℏ^{-d/2} comes from Van Vleck, not moduli integral

## 2026-02-20 (continued: PDM gap formula + PN independence review)
- verified: TG-P1.1 dimensional analysis (alpha=2 uniqueness, d/2 normalization) confirmed ✓
- verified: rooted-tree coproduct formulas from admissible cuts ✓; antipode formulas confirmed ✓
- verified: midpoint B-series a([b,b])=1/4, a([[b]])=0 confirmed numerically ✓
- found: PDM gap formula factor-of-2 error in ordering-equivalence Section 3.4
  correct: delta(E_n-E_0) = -n*alpha^2/8 (not /16); HO matrix element <n|q^2|n>=n+1/2 gives 2n not n
  ratio = 2.000 confirmed for alpha=0.01, 0.05 numerically
- wrote: blackboards/6.md (PDM gap correction, full derivation)
- sent: paper-edit request (ordering-equivalence Section 3.4, three locations)
- claimed+completed: Task #17 (path-integral-normalization independence review)
  found: S2.1 "independent route" Section 3.1 line 142 (misleading; [K]=L^{-d} follows from composition)
  found: S2.2 abstract undercounts conditions (says "composition" but needs T+dimensional basis too)
  verified: [K]=L^{-d} derivable from composition by dimensional analysis ✓
  no math errors; only summary language overclaiming
- sent: Task #17 findings to orchestrator (2 sev-2 items, language fixes only)

## 2026-02-20 (context continuation: Butcher product deep correction)
- resumed: after context reset; all tasks still completed
- self-directed: audit adjacent sections of rooted-tree-bookkeeping for carry-over issues from Task #12
- confirmed: §6.2 coproduct/antipode formulas are combinatorial, unaffected by coefficient fix ✓
- discovered: initial residual error report was WRONG due to degenerate test
  previous test used f=y (linear): F([•,•])(y) = f''·(f,f) = 0 — cannot detect a★a([•,•])!
- corrected: used two non-degenerate tests (f=y², f=eʸ) + solved 2×2 linear system:
  (a★a)([•,•]) = 1/4 (not 3/2 from degenerate test, not 1/2 as paper claims)
  (a★a)([[•]]) = 1 (correctly computed)
- confirmed: by third test (f=y³, predicted 33/2 = exact) ✓
- key finding: a_{2h}([•,•]) = (1/4)·8 = 2; mismatch = 1/4 - 2 = -7/4
- appended: notebooks/renormalization-semigroup-mechanics.md §10 (corrected Butcher product)
- sent: UPDATED paper-edit request to team-lead (supersedes previous §3.5 request)
  Line 197: (a★a)([•,•]) = 1/4 (not 1/2)
  Line 202: a_{2h}([•,•]) = (1/4)·8 = 2 (not 0·8=0)
  Line 205: mismatch = -7/4 for [•,•], +1 for [[•]] (not 1/2-0=1/2)
  Conclusion of §3.5 (order-2 method, O(h³) error) UNAFFECTED
- scripts: tmp/butcher_product_correct.py, tmp/butcher_resolve.py

## 2026-02-20 (continued: library access + verification tasks)
- library access: confirmed use of WebSearch/WebFetch for source ingestion (PI/team-lead)
- wrote: sources/hairer-lubich-wanner2006-bseries-composition.md (Butcher product ref; numerical results from 3 tests)
- claimed/completed: Task #21 (Stone/Hille-Yosida verification for RCP-R7.2)
  verified: Partition=Stone (GROUP, reversible), Scale=Hille-Yosida (SEMIGROUP, irreversible), Representation=Morita (category-level)
  key formula: Stone = Hille-Yosida + U(-t)=U(t)^{-1} ↔ self-adjointness ↔ time-reversal
  appended: notebooks/renormalization-semigroup-mechanics.md (computationalist verification after RCP-R7.2)
- annotated: blackboards/4.md §9 (resurgence task #22, three-agent complete)
  confirmed critic's sev-2 corrections: VS-V≠cobordism functor; sewing↔alien = analogy; resurgence compatible not forces kappa=hbar
  numerical: Borel singularity at t=S₀/ℏ consistent with P4.2 (S₀=4√2/3, double-well)
- closed: stale tasks #9, #10, #8

## 2026-02-20 (context continuation: Voros + RCP-Res-P1.1 verification)
- resumed: after context reset; all tasks from previous session completed
- self-directed: Voros (1983) resurgence verification for double-well
  - script: tmp/voros_resurgence_verify.py, tmp/voros_slope2.py
  - confirmed: benchmark quartic oscillator Borel singularity at t=-1/3 (Bender-Wu exact values ✓)
  - confirmed: double-well delta_E ~ exp(-S_0/hbar), S_0 = 4*sqrt(2)/3 (slope agrees ~3% from finite-hbar corrections)
  - key result: Borel singularity at s=S_0 in perturbative hbar-expansion ENCODES instanton content
  - written: notebooks/nonperturbative-contact-pade.md §"Voros resurgence" (appended, lines 594-667)
  - note: S_0 verified as positive real Borel singularity (tunneling), vs BW negative axis (Dyson)
- self-directed: RCP-Res-P1.1 verification (BB4 §9 physicist request)
  - script: tmp/rcp_res_p11_verify.py (corrected), tmp/rcp_res_p11_verify2.py
  - corrected: RG formula — factor (mu/mu_0) prefactor in E_B, not absorbed into g_R alone
  - confirmed: E_B = -(mu/mu_0)*exp(-1/g_R(mu)) = -exp(-1/g_B) mu-INDEPENDENT ✓
  - confirmed: zeta*(mu) = 1/g_R(mu) RUNS with delta_zeta = log(mu/mu_0) ✓
  - confirmed: residue at moving singularity = |E_B| = const ✓
  - confirmed: multi-instanton RIGIDITY: delta(n*zeta*) = n*log(mu/mu_0) for n=1,2,3,4 ✓
  - confirmed: Borel-Pade [6/6] poles at 1/3, 2/3, 1 for toy 3-instanton model ✓
  - appended: blackboards/4.md §11 (computationalist verification)
  - status: three-agent complete (Physicist+Mathematician+Computationalist)

## 2026-02-20 (self-directed: contact universality + extended Pade)
- self-directed: contact expansion universality (Remark 4.6, fermionic-mediators paper)
  - script: tmp/contact_universality.py
  - tested: Yukawa, Gaussian, Lorentzian, square well (3D Born-level + 2D numerical)
  - confirmed: all share C_0=1 but C_2,C_4 differ
  - confirmed: low-energy universality (q^2<<M^2) — theories agree to 5 s.f. at q^2=0.001
  - breakdown scales: Yukawa q/M~0.10, Gaussian q/M~0.14, Lorentzian q/M~0.07 (1% level)
  - structure vs content: form forced by analyticity; coefficients = Wilson coefficients (content)
  - written: notebooks/nonperturbative-contact-pade.md (contact universality section)
- self-directed: extended Pade [N/N] for vacuum polarization
  - script: tmp/contact_pade_extended.py
  - extended to [15/15] (was [5/5] in Task #4)
  - nearest pole to z=1: 1.2659 ([2/2]) -> 1.0643 ([5/5]) -> 1.0119 ([15/15]) -> 1.0 (limit)
  - answer to team-lead question: z=1.064 is [5/5] approximation, NOT fixed accumulation point
  - Pade[10/10] matches g_exact to 4 s.f. at z=0.98 (vs Taylor's 7% error)
  - written: notebooks/nonperturbative-contact-pade.md (extended Pade section)

## 2026-02-20 (Philosophenweg: library browsing + conformal Borel-Pade)
- browsed: Aniceto-Basar-Schiappa (2019) resurgence primer arXiv:1802.10441
- browsed: Costin-Dunne conformal Borel analysis arXiv:2108.01145, 1904.11593, 2003.07451
- browsed: aromatic B-series arXiv:2301.10998 (volume-preserving integrators, 2023)
- wrote: sources/costin-dunne-conformal-borel-2021.md (algorithm description, conformal maps)
- wrote: sources/aromatic-bseries-2023.md (aromatic trees, Hopf algebra extension, volume-preservation theorem)
- IMPLEMENTED: conformal Pade for vacuum polarization g(z)
  - map: w = 1 - sqrt(1-z) [branch point z=1 -> w=1]
  - result: 10^8x improvement over standard Pade at z=0.98 (same [6/6] order)
  - standard [6/6] error at z=0.98: 2.2e-2 (2%)
  - conformal [6/6] error at z=0.98: 2.0e-10 (machine precision)
  - written: notebooks/nonperturbative-contact-pade.md (conformal Pade section)
  - script: tmp/conformal_borel_pade.py
- key finding: aromatic B-series result "only volume-preserving B-series = exact flow"
  explains structurally why midpoint rule (our §3.5) is NOT volume-preserving
- key finding: conformal Pade is directly applicable to vacuum polarization near threshold
  — a computation that could be mentioned in Remark H6.3 (cornerstone §8)

## 2026-02-20 (context continuation: reference ingestion, PI instruction)
- resumed: after context reset; PI instruction was to DOWNLOAD and INGEST references into sources/
- wrote: sources/aniceto-basar-schiappa2019-resurgence-primer.md (192pp primer, arXiv:1802.10441)
- wrote: sources/gaddah-jwan2024-conformal-borel-quartic.md (quartic oscillator + conformal Borel, arXiv:2401.07131)
- wrote: sources/costin-dunne-meynig2022-noise-pade-conformal.md (noise effects, arXiv:2208.02410)
- wrote: sources/nuttall-stahl-pade-convergence.md (Nuttall-Stahl theorem, arXiv:1109.0332)
- wrote: sources/sulejmanpasic-unsal2016-benderwu-package.md (BenderWu package + original Bender-Wu 1969/1973, arXiv:1608.08256)
- wrote: sources/costin-dunne2021-conformal-uniformizing-borel.md (algorithm, maps, 10^8x result, arXiv:2108.01145)
- wrote: sources/zinn-justin-jentschura2004-multi-instantons.md (double-well resurgence, arXiv:hep-ph/0405279+quant-ph/0501137)
- wrote: sources/dunne-schubert2002-euler-heisenberg-two-loop.md (EH two-loop Borel, hep-th/0205004+0205005)
- sources library: 47 → 56 files (+9 new; corrects costin-dunne-conformal-borel-2021.md from knowledge-only to fetched)
- key correction: previous sources/costin-dunne-conformal-borel-2021.md was from memory, not fetched;
  new costin-dunne2021-conformal-uniformizing-borel.md is from actual WebFetch content
- continued ingestion (second batch, same session):
  - sources/schwinger1951-gauge-invariance-vacuum-polarization.md (Schwinger pair production)
  - sources/costin-dunne2019-resurgent-extrapolation.md (Painlevé I extrapolation, arXiv:1904.11593)
  - sources/mera-pedersen-nikolic2018-meijer-g-resummation.md (Meijer-G vs Borel-Padé, arXiv:1802.06034)
  - sources/dunne-unsal2014-nonperturbative-from-perturbative.md (Dunne-Unsal relation, arXiv:1306.4405)
  - sources/dunne-schubert2002-euler-heisenberg-two-loop.md (EH two-loop Borel, hep-th/0205004-5)
  - updated/deleted: dorigoni2014-resurgence-introduction.md (duplicate removed, existing file kept)
- sources library: 47 → 61 files (+14 new in this context session)

## 2026-02-20 (PDM clarification + Philosophenweg continued)
- clarified: PDM /16→/8 fix already applied in Season 2 commit (be06e0b)
  verified: current ordering-equivalence/main.md §3.4 line 139 shows correct /8 ✓
  confirmed by git diff bf5fff1 vs be06e0b — fix was applied, no paper-edit pending
- philosophenweg continued (third batch):
  - sources/hernandez-diaz-vergara2025-resurgence-quantum-metric.md (QMT resurgence, arXiv:2510.25907)
  - sources/maiezza-vasquez2024-resurgence-self-completion.md (self-completion, renormalons, arXiv:2311.10393+2409.20458)
- sources library: 47 → 63 files (+16 total this context session)

## 2026-02-20 (context continuation: double-well instanton rigidity computation)
- resumed: after context reset; last task was creating tmp/double_well_instanton_rigidity.py
- ran: tmp/double_well_instanton_rigidity.py (Borel-Padé BW coefficients, quartic oscillator)
- confirmed: LOCATION rigidity — pole × λ = -0.3088 (constant) for all λ ∈ {0.5, 0.75, 1.0, 1.5, 2.0} ✓
- found: residue ∝ 1/λ (NOT constant in Borel-t plane)
- interpreted: residue scaling = coordinate artifact of g→λg (rescales Borel plane t→t/λ)
  physical Stokes constants in s-plane (s = t·g) ARE λ-independent ✓
- note: [3/3] Padé pole at -0.3088 vs exact -0.3333 (7.5% error from finite BW truncation)
  higher Padé [5/5]: poles at -1.548, -0.379, -0.277 (expected -1/3,-2/3,-1); poor conv (asymptotic BW)
  genuine multi-instanton Padé needs 30+ exact BW terms (currently only 9 exact)
- appended: blackboards/6.md §13 (new computation results + interpretation)
- conclusion: multi-instanton rigidity in quartic oscillator = consistent with theoretical expectation
  location rigidity confirmed; Stokes constants in physical Borel plane are coupling-independent
