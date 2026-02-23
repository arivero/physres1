# Computationalist — Status

## Last session: 2026-02-23 (R28 — OQ-SD-1 resolution: exponential structure universal)

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

## Open / next session
- BB2 is ONE-AGENT: needs 2nd-agent review (mathematician recommended for §2 proof)
- Notebook §21 needs 2nd-agent review
- No remaining kanban tasks for computationalist

## Philosophenweg (R28)

Key insights from walk:
1. |Riem|^2 = |Ric|^2 on Lie groups does NOT mean Weyl=0. It means |W|^2 = R^2(d-3)/(d(d-1)), a universal value determined by R and d alone. The Weyl tensor is nonzero for d>3 but its norm is rigidly fixed.
2. Geometric content: on simple Lie groups, bi-invariant metrics form a 1-parameter family. All curvature invariants (|Riem|^2, T1, T2, all a_k) are functions of R alone. This rigidity forces the exponential structure.
3. The result extends to O2 (half-density) and O3 (shifted): a_k(O2;G) = (R/6)^k/k!, a_k(O3;G) = (R/3)^k/k! on all compact simple G. Spectral invisibility + V_HD constant on G.
4. Does NOT extend to coset spaces G/H (e.g., CP^n, S^d for d>3): the Riemann tensor factorization through structure constants fails on cosets. Only group manifolds have this property.
