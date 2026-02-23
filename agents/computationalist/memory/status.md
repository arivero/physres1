# Computationalist — Status

## Last session: 2026-02-23 (R29bis — TG-Q11: Lackman PI=Berezin forces half-density)

## Completed R28 (current session)
1. Voted on all 19 notebooks (KEEP all, echo >> append)
2. PRIMARY TASK: Verified a_k(-Δ; SU(3)) spectral sum — SURPRISE RESULT
   - Scripts: tmp/su3_heat_kernel.py through v4
   - Found: F(t)/Vol = exp(ct) to machine precision on SU(3) (c = R/6 = 3)
   - a₁/a₀ = 3, a₂/a₀ = 4.5, a₃/a₀ = 4.500 (all match (R/6)^k/k!)
   - PROVED: |Riem|² = |Ric|² on ALL compact simple Lie groups (Killing factorization)
   - COROLLARY: a₂ = (R/6)²/2! universal on compact simple Lie groups
   - DISPROVED Conjecture M4.1 (BB4 §2.6): exponential structure NOT unique to SU(2)
   - BB4 §2.5 Weyl obstruction argument RETRACTED (invalid on Lie groups)
3. Wrote BB2 (full derivation, 7 sections)
4. Appended notebook §21 (OQ-SD-1 resolution) to seeley-dewitt-a1-zero.md

## Previous R28 work (context-resumed)
1. Numerically verified O2 = |g|^{1/4}(-Δ_g)|g|^{-1/4} spectrum on S³
   - O2 eigenvalues: l(l+2) CONFIRMED (NOT l(l+2)-1)
   - a₁(O2) = 1.000000 = R/6, a₂(O2) = 0.500 ≈ R²/72
   - BB3 §17: THREE-AGENT (critic+mathematician+computationalist)
2. 2nd-agent review of BB4 §§10-11: CMP10.1, CMP11.1 VERIFIED

## Key R28 findings
- |Riem|² = |Ric|² on ALL compact simple Lie groups (new theorem)
- a_k(-Δ; G) = (R/6)^k/k! universal on compact simple G (overturns M4.1)
- Weyl obstruction argument (BB4 §2.5) invalid: Killing form factorization
- O2 and O3 are DISTINCT: O2 has a_k=1/k!, O3 has a_k=2^k/k! (prior result)

## Key results available
- a₂(conf;S^d) = -d(d-1)(d-3)/180
- a₃(conf;S^d) = -d(d-1)(d-3)(d+2)/2835
- a₄, a₅ closed forms (see prev status)
- Even/odd pattern: (d+2) at odd k only
- SU(3) heat kernel: F(t)/Vol = exp(3t) exactly
- Scripts in tmp/: su3_heat_kernel.py, su3_heat_kernel_v2-v4.py

## CMP11.2 Verification (R28 cont.)
5. Numerical verification of CMP11.2 (Theorem M8.1): d(d-1)(d-3) | b_k for all k >= 1
   - Scripts: tmp/cmp112_verify.py, tmp/cmp112_verify_v2.py
   - Eigenvalue factorization lambda_l = (l+(d-1)/2)^2 - (d-1)(d-3)/12: VERIFIED d=2..10
   - Jacobi theta vanishing: F(t) = 1 to machine precision on S^3 conformal (all b_k(3)=0)
   - Algebraic divisibility: all CMP11.1 closed forms (k=2..5) contain d(d-1)(d-3) factor
   - Numerical Richardson: b_2(2) = 1/90 to 6+ digits, b_2,b_3 for d=4..7 match exact
   - Appended §20.8 to seeley-dewitt-a1-zero.md
   - STATUS: TWO-AGENT (mathematician proof §20 + computationalist numerical verification)

## Gangolli Gap Analysis (R29 cont.)
6. Analyzed whether Killing factorization suffices to prove a_k = (R/6)^k/k! for all k
   - Scripts: tmp/gangolli_gap_v2.py, tmp/gangolli_gap_v3.py, tmp/gangolli_gap_v4.py
   - Computed cubic curvature invariants (T1-T4) on SU(2) and SU(3)
   - All T_i/R^3 = universal functions of d alone (Schur rigidity)
   - Key finding: Killing factorization gives a_k = c_k(d)*R^k but NOT c_k = 1/(6^k k!)
   - a_3 is the first non-trivial case (4 cubic invariants to evaluate)
   - Gangolli (1968) + Poisson summation proves ALL k at once
   - Recommendation: cite Gangolli + Anker-Ostellari + FdV for rigorous proof
   - Wrote BB2 (8 sections): ONE-AGENT, needs mathematician review

## P12.2 Composition-Defect Verification (R29 cont.)
7. Numerically verified P12.2 (Proposition from paper §10.6)
   - Scripts: tmp/p12_2_composition_defect_v2.py (primary), v3.py (multi-potential)
   - d=1, N=200 grid, V(x) bounded on R^d
   - VERIFIED D12.1: free Gaussian exact composition (defect 4e-13)
   - VERIFIED D12.3: Mehler (HO) exact semigroup composition (defect 2e-15)
   - VERIFIED P12.2 Part 1: ||T_V - T_V^{(1)}|| <= e^{Mt}-1-Mt (all ratios < 0.76)
   - VERIFIED P12.2 Part 2: composition-defect <= C M^2 (t+s)^2 e^{M(t+s)}, max C_eff = 0.15
     Paper claims C=2, actual C_eff never exceeds 0.18 — bound is conservative
   - M^2 scaling: EXACT (defect/M^2 constant across V0 = 0.5..4.0)
   - (t+s)^2 scaling: confirmed as leading order at small times
   - Proof decomposition (3-term identity): exact to 1.4e-16
   - Multi-potential robustness: Step, Cosine, Double-well, Attractive Gaussian — ALL PASS
   - STATUS: DONE. Kanban task closed.

## §8-§9 Numerical Audit (R29 cont.)
8. Spot-checked all explicit coefficients and formulas in §8-§9
   - Script: tmp/s8_s9_numerical_audit.py (10 checks)
   - VERIFIED: b0=3/(16pi^2)~0.019, b1=-17/(3*(16pi^2)^2)~-2.27e-4
   - VERIFIED: stability window 144pi^2/17~83.6, eta=0.1 gives |lambda|<=8.4
   - VERIFIED: D6.2a step-halving tau_2, semigroup law, beta(a)=1/2-a
   - VERIFIED: D6.2a-HO Euler discrepancy exact, D6.2a1 h^3/16 term correct
   - VERIFIED: D8.2a one-loop coefficient consistent across all uses
   - VERIFIED: D11.1-D11.3 contact interaction formulas, RG invariance
   - VERIFIED: P9.1b c/24 structure, P9.1b-Q1d quantum dimensions + Kac truncation
   - FINDING: sev-2 b1 attribution gap — D6.4a cites "D8.2a two-loop extension" but
     two-loop computation not in manuscript. b1 value is standard (PS/ZJ) but self-ref dangling.
   - Report sent to physicist for textual audit integration.

## S² Ordering Witness (R29 cont.)
9. Computed a_1 for three operators on S² (d=2, R=2)
   - Script: tmp/s2_ordering_comparison.py
   - bare -Delta_g: a_1 = R/6 = 1/3
   - -Delta_g + R/6 (comp/HD): a_1 = 0
   - -Delta_g + R/8 (Strat/mid): a_1 = R/24 = 1/12
   - All three distinct. a_2 also verified analytically.
   - Written to BB0 §§1-4

## H² Spectral Gap Verification (R29 cont.)
10. Verified D9.1k McKean spectral gap on H² (K=-1, R=-2)
    - Script: tmp/h2_spectral_gap.py
    - H_L (left-ordered): spectral bottom -> 0 as L->inf (no gap)
    - H_HD (half-density): spectral bottom -> 1/4 = -R/8 (McKean gap)
    - Convergence: E_0(H_HD) = 0.335 (L=10), 0.256 (L=40), 0.252 (L=80)
    - V_HD(rho) -> 1/4 as rho -> inf: confirmed
    - Written to BB0 §6

## TG-Q11: Lackman PI=Berezin Forces g^{1/4} (R29bis)
11. Explored TG-Q11: does Lackman's PI=Berezin axiomatization force the half-density coefficient system?
    - Answer: YES. The mechanism is purely algebraic.
    - The composition/semigroup axiom forces |g|^{1/2} in the intermediate measure.
    - On the pair groupoid M x M, this factors as |g|^{1/4} x |g|^{1/4} (Connes II.5).
    - This defines the half-density kernel K~_t = |g|^{1/4} K_t |g|^{1/4}.
    - K~ composes with flat (Lebesgue) measure — no dvol_g needed.
    - The SD coefficients of Delta_{1/2} = |g|^{1/4} Delta_g |g|^{-1/4} are the half-density coefficient system.
    - Consequence: a_1(Delta_{1/2}) = 0 universally (Theorem M4.1).
    - Lackman doesn't mention half-densities because his abstract measure d mu absorbs them.
    - Scripts: tmp/tg_q11_berezin_hd.py (analytic), tmp/tg_q11_s2_verify_v2.py (numerical)
    - S^2 numerical: standard and HD compositions agree to 4.82e-12 (80x80 grid, lmax=40)
    - Written to BB0 §7 (6 subsections)
    - STATUS: ONE-AGENT, COMPLETE.

## Open / next session
- BB0 complete: §§1-4 (S² ordering), §5 (P12.2), §6 (H² spectral gap), §7 (TG-Q11)
- BB2 (Gangolli gap): ONE-AGENT, needs mathematician review
- §8-§9 audit: one sev-2 finding (b1 attribution)
- TG-Q11: complete, written to BB0 §7. Could promote to tangent-groupoid notebook.
- No remaining kanban tasks for computationalist

## Philosophenweg (R28)

Key insights from walk:
1. |Riem|^2 = |Ric|^2 on Lie groups does NOT mean Weyl=0. It means |W|^2 = R^2(d-3)/(d(d-1)), a universal value determined by R and d alone. The Weyl tensor is nonzero for d>3 but its norm is rigidly fixed.
2. Geometric content: on simple Lie groups, bi-invariant metrics form a 1-parameter family. All curvature invariants (|Riem|^2, T1, T2, all a_k) are functions of R alone. This rigidity forces the exponential structure.
3. The result extends to O2 (half-density) and O3 (shifted): a_k(O2;G) = (R/6)^k/k!, a_k(O3;G) = (R/3)^k/k! on all compact simple G. Spectral invisibility + V_HD constant on G.
4. Does NOT extend to coset spaces G/H (e.g., CP^n, S^d for d>3): the Riemann tensor factorization through structure constants fails on cosets. Only group manifolds have this property.
