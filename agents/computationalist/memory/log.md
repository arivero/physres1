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
