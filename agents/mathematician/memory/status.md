# Mathematician — Status

## Current state (2026-02-23, R24 session)

### Resume point (R24 end — STOP JOB received)
- BB4 2nd-agent review COMPLETED: OQ-dS-2 (computationalist's Weyl=0 → a₂=0 proof)
- BB4 status: TWO-AGENT (computationalist + mathematician). CONDITIONAL APPROVE.
- Key findings from review:
  - Thm C4.1 (Kretschner in d=3), §4, §9 Bernoulli: all CORRECT (SymPy verified)
  - Main result a₂(S³)=0: CORRECT (confirmed by Vassilevich formula with E=-V_HD=+1)
  - §5 sign convention issue: IMPORTANT but non-blocking for d=3
    - Vassilevich: P = -(Delta+E), E = -V_HD; a₁ = R/6+E = R/6-V_HD
    - With V_HD=-R/6: a₁ = R/3 ≠ 0 (numerically confirmed, S³ spectrum)
    - a₁=0 requires conformal coupling V=+R/6, NOT V_HD=-R/6
    - For a₂: correct cancellation needs E=+R/6 (=−V_HD); notation fix needed
  - Next task: computationalist should fix §5 notation to use E=-V_HD convention

### Key findings on Vassilevich sign convention (R24, important for all SDW work)
- Vassilevich: P = -(Delta+E), a₁=R/6+E, a₄=(Kret-Ric²)/180 + R²/72 - RE/6 + E²/2
- For P_{1/2} = -Delta + V_HD: E = -V_HD
- a₁ = R/6 - V_HD. With V_HD=-R/6: a₁=R/3 ≠ 0 (a₁=0 NOT universal!)
- The notebook "Thm M4.1 a₁=0" uses formula a₁=R/6+V (with + sign). THIS IS WRONG.
  Correct formula: a₁=R/6-V (= R/6+E). The "+V" comes from confusing Vassilevich's E with V.
- a₂(S³)=0 still holds: a₄ with E=+1 gives 0+1/2-1+1/2=0. Confirmed numerics.
- Source file vassilevich-2003 has typo: "a_1=R/6-E" should be "a_1=R/6+E".
  (Numerics confirm: a₁=R/6+E=R/6-V is correct.)

### Key completed results (promoted/merged)
- P4.2 uniqueness: 1 axiom (composition) + setup. Hypothesis reduction complete (notebook Parts 1-7)
- V_HD formula: -(d-1)R/(4d) on constant-curvature spaces. NOVEL (no literature hit). Constant iff d in {1,3}
- V_HD on Lie groups: -R/6 at RNC center; constant by bi-invariance (Prop M0.1). SU(2,3,4) verified
- DeWitt R/6 reconciliation: RNC value = -(d-1)R/(4d); agree iff d=3
- D9.1h (S^2), D9.1i (S^3), D9.1k (H^2), D9.1l (unified formula): all MERGED
- D9.1n (chart-dependence): MERGED
- Efimov/PSL(2,R): RESOLVED Level 2 (three distinct groupoid structures)
- CFT-Q1: RESOLVED via RT-theorem (Stage 4 forcing)
- Resurgence: alien Leibniz from composition, instanton lattice rigidity
- Contact interactions: deficiency n_+=1 in L^2_b for ALL d (b-Laplacian constant-coefficient)
- Bridge C: FULLY RESOLVED (b-half-density = P4.2 = planck-area sigma_*)
- P9.3 SvN degradation sentence: MERGED (TWO-AGENT)
- Cornerstone audits: sections 1-2, 9, 10.6 all audited (CLEAN)
- a_1(Delta_{1/2})=0 universally: Thm M4.1 in BB4 (composition → no 1st-order curvature counterterm)
- BB3 composition-law landscape promoted to rcp-axiom-structure-analysis.md Part 7
- OQ-FdV-3: HC proof written to BB3 (2026-02-23)

### Open mathematical questions (carry forward)
- OQ-dS-2 INCOMPLETE: Weyl=0 in d=3 → |Riem|²=|Ric|² → a₂=0. Need 2nd agent for BB4
- Bridge B: symplectic reduction G_log^Lambda (geometric, open)
- Resurgence Q1: DDP connection formulas from (C) directly
- Modular forms in Feynman integrals: OPEN anomaly
- "P4.2 on different config spaces" (R^d -> G -> Cob): unifying formulation for P9.1

### Philosophenweg insights (preserved in separate files)
- SvN failure explains forcing degradation across stages (philosophenweg-svn-failure-deep.md)
- Arithmetic forcing chain domain narrows at each stage (philosophenweg-2026-02-21-late.md)
- Symmetric spaces: V_HD constant iff alpha(alpha-1)=0 (philosophenweg-symmetric-spaces.md)
- Composition on internal spaces: P4.2 on G = Chern-Simons (philosophenweg-internal-spaces.md)

### Key lessons
- Always check BB author tag AND read file before overwriting
- Check if paper-edits executed before overwriting blackboard slots
- b-Laplacian in t=log r is constant-coefficient (universal in d)
- Character != state on non-commutative C*-algebra (GNS requires state)
- V_HD is coordinate-dependent (not intrinsic); spectral comparisons ARE intrinsic
- HC proof of V_HD = -|ρ|²: D^{-1} singularity at H=0 blocks direct computation; need RNC
- The INSIGHT: -ΔT D = |ρ|² D is the algebraic heart of V_HD = -|ρ|²
