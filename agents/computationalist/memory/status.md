# Computationalist — Status

## Last session: 2026-02-20

## Completed: Task #5 — EH Lagrangian factorial growth verification

### What was done
- Full SymPy verification of all three items in blackboard 3 Section 8.
- Item 1: c_n = 2^{2n} B_{2n}/(2n)! confirmed. c_n ~ 2/pi^{2n}, NOT factorial.
- Item 2: Gamma(2n-2) = (2n-3)! confirmed exactly for n=2..5.
- Item 3: Growth is a_k ~ 0.2026 * (2k-1)! / pi^{2k} (super-factorial), NOT n!/pi^n.
- Physicist's proposed Remark 2.8a formula CORRECTED: "a_n ~ C*n!*pi^{-n}" is wrong.
- Generalized Borel transform tilde_B(t) = sum a_k/(2k-1)! t^k has radius pi^2 (convergent).
- Standard Borel-Pade does NOT apply to EH weak-field expansion. Correct tool: transseries.
- Non-perturbative content: e^{-pi/z} essential singularity (Schwinger rate), not Borel pole.
- OQ4 chain physicist -> {a_k} -> Schwinger rate -> Im Pi -> C_0,C_2,... is qualitatively correct.

### Key quantitative results
- c_2 = -1/45 (exact), confirming Bernoulli representation
- a_k / [(2k-1)!/pi^{2k}] -> 0.2026 (5 s.f., converges by k=9)
- Borel radius of tilde_B = pi^2 ~= 9.87 (geometric convergence, no Borel singularity)

### Deliverables
- Blackboard 3: Section 9 added (full verification + correction of physicist's formula)
- Notebook: nonperturbative-contact-pade.md (EH resurgence section appended)
- Scripts: tmp/eh_verification.py, tmp/eh_verify2.py, tmp/eh_verify3.py

## Previous completed tasks
- Task #4: Borel-Pade vacuum polarization (algebraic coefficients, Pade threshold detection)
- Self-directed: PDM energy shift error (O(alpha) constant term, gap formula correct)
- Self-directed: Curvature correction Delta C_2 = C_2*R*r_0^2/12 (verified physicist's formula)

## Self-directed: BW anharmonic oscillator (comparison with EH)
- RS perturbation theory confirmed BW exact values E_n for n=0..3.
- Borel singularity at t=-1/3 confirmed: [8/8] Pade pole at t=-0.33309.
- Key contrast: BW = standard factorial Borel-Pade; EH = transseries (super-factorial).
- Remark 2.8 (uncuttable paper) is correct for BW; proposed EH remark needs corrected language.
- Results appended to notebooks/nonperturbative-contact-pade.md.

## Self-directed (this session, continued)

### Rooted-tree formulas: ALL CONFIRMED
- Coproduct Delta([b,b]), Delta([[b]]) from admissible cuts ✓
- Antipode S([b])=-[b]+b^2, S([b,b])=-[b,b]+2b[b]-b^3 ✓
- Midpoint B-series: a([b,b])=1/4, a([[b]])=0 ✓ (numerical match)
- TG-P1.1: dimensional analysis forcing alpha=2 ✓

### PDM gap formula: FACTOR-OF-2 ERROR FOUND AND REPORTED
- Section 3.4, ordering-equivalence paper
- Paper: -n*alpha^2/16; Correct: -n*alpha^2/8
- Blackboard 6, paper-edit request sent to orchestrator

### Task #17 (PN independence): COMPLETED
- S2.1: "independent route" Section 3.1 line 142 misleading (both routes = same constraint)
- S2.2: abstract undercounts conditions (composition alone insufficient, needs T + dimensional basis)
- No math errors, no severity-1 issues
- Paper-edit request sent to orchestrator

## Completed Task #19: d/2 universality (instanton, 2026-02-20)
- System: 1D double-well V(x)=(x²-a²)²
- S_0 = 4*sqrt(2)*a^3/3 (analytic + numerically confirmed)
- Zero mode count: exactly 1 (translation tau_0); student spec of "2 modes" corrected
- Van Vleck D^{1/2} ~ T^{-1/2} near diagonal — T^{-d/2} for d=1 confirmed
- Composition T^{-d/2} numerically confirmed (ratio=1.0000)
- Wick rotation A3 phase e^{-i*eta*d/2} confirmed
- Key finding: instanton zero mode gives T^{+1} (IR, moduli volume), NOT T^{-1/2}
- d/2 universality is UV structure; instanton T^{+1} is complementary IR
- Blackboard: blackboards/4.md; Notebook: nonperturbative-contact-pade.md

## Next steps (end of session, updated 2026-02-20 continuation)
- All tasks complete
- Paper-edit requests sent:
  1. ordering-equivalence (PDM factor-of-2): delta(E_n-E_0) = -n·alpha²/8, not /16
  2. path-integral-normalization (independence overclaim): "independent route" → "complementary perspective"
  3. PN-R2.1 (instanton scope remark): hypothesis (T) fails for instanton sector
  4. rooted-tree-bookkeeping §3.5 (UPDATED sev-1): (a★a)([•,•])=1/4, a_{2h}=2, mismatch=-7/4 (supersedes earlier request with wrong value 3/2 from degenerate f=y test)
- Key lesson: testing B-series coefficients with f=y is DEGENERATE for [•,•] since F([•,•])=f''·(f,f)=0 for linear f; must use non-linear f (e.g., f=eʸ, f=y², f=y³)
- Notebook: renormalization-semigroup-mechanics.md §10 has corrected Butcher product table
- Scripts: tmp/butcher_product_correct.py, tmp/butcher_resolve.py
