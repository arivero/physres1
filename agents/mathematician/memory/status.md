# Mathematician — Status

## Current state (2026-02-23, R25 session — COMPLETED)

### Tasks completed this session
1. **BB1 §13**: Formal proof of Corollary M1.1 (uniqueness of heat-kernel flatness)
   - Four lemmas: §13.A (KL applicability), §13.B (V_HD constancy), §13.C (KL condition), §13.D (Bernoulli)
   - Corollary M1.1: a_k(Δ_{1/2};S^d)=0 ∀k≥1 iff d=3. FOUR-AGENT (physicist+critic+computationalist+mathematician)
   - Key: two independent conditions must BOTH hold; d=3 is unique non-trivial intersection

2. **BB3 cleanup**: Added ERRATA section + in-text strikethroughs
   - ERRATA-1: Lemma M3.2 step (iv) STRUCK — domain error (D^{-1}f is W-antisymmetric, HC applies to W-symmetric only)
   - ERRATA-2: Prop M3.3 DELETED — wrong spectrum (SU(2) contradiction confirmed)
   - §§11-13 remain promotion-ready to notebooks

3. **Physicist patch D9.1q**: Approved as second agent (two-researcher rule satisfied)
   - All 5 claims verified against BB1 §13 and BB0
   - Orchestrator may apply

### Key mathematical results (R25 additions)
- Corollary M1.1: Complete formal proof with 4 lemmas. Uniqueness at d=3 requires:
  - Cond-I: V_HD const on S^d ⟺ d∈{1,3} (alpha=(d-1)/2, alpha(alpha-1)=0)
  - Cond-II: κ_n=δ_{n,0} ⟺ d∈{1,2,3} (Bernoulli reflection/shift)
  - Intersection for d≥2: {3} only (d=2 satisfies Cond-II but fails Cond-I)

### Key findings on Vassilevich sign convention (carry forward from R24)
- Vassilevich: P = -(Delta+E), a₁=R/6+E, a₄=(Kret-Ric²)/180 + R²/72 - RE/6 + E²/2
- For P_{1/2} = -Delta + V_HD: E = -V_HD
- a₁ = R/6 - V_HD. With V_HD=-R/6: a₁=R/3 ≠ 0
- a₂(S³)=0 still holds: a₄ with E=+1 gives 0+1/2-1+1/2=0. Confirmed.

### Open mathematical questions (carry forward)
- BB4 Vassilevich fix + promotion: assigned to critic
- Bridge B: symplectic reduction G_log^Lambda (geometric, open)
- Modular forms in Feynman integrals: OPEN
- OQ-dS-4: Heat-kernel flatness on other 3-manifolds (conjecture: specific to S³, R³)

### Key completed results (promoted/merged)
- P4.2 uniqueness: 1 axiom (composition) + setup
- V_HD formula: -(d-1)R/(4d) on constant-curvature spaces. NOVEL. Constant iff d in {1,3}
- V_HD on Lie groups: -R/6 (= -|ρ|²_g). SU(2,3,4) verified
- All D9.1 remarks (h,i,j,k,l,n,o): MERGED
- Corollary M1.1 (heat-kernel flatness uniqueness): PROVED (BB1 §13)
- BB3 ERRATA: M3.2 step (iv) struck, M3.3 deleted
- Physicist patch D9.1q: APPROVED (two-researcher rule)

### Key lessons
- V_HD is coordinate-dependent; spectral comparisons are intrinsic
- HC proof of V_HD=-|ρ|²: D^{-1} singularity at H=0; RNC regularizes
- Vassilevich: E=-V_HD, a₁=R/6+E=R/6-V_HD
- BB3 errors: HC requires W-symmetric domain; M3.3 conflates two Hilbert spaces
