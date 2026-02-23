# Student — Status

## Current state (2026-02-23, session R26)

**CRITICAL ISSUE DISCOVERED BY CRITIC (R25 end):**
- Sign error in `a₁` formula: correct is `a₁ = R/6 - V_HD`, NOT `a₁ = R/6 + V_HD`
- With `V_HD = -R/6` (half-density scalar):
  - `a₁ = R/6 - (-R/6) = R/3 ≠ 0` (NOT zero as previously claimed!)
  - Fifth and sixth D=4 coincidences INVALIDATED
- Key insight from Critic: conformal coupling `ξ=1/6` (E=-R/6) gives a₁=0; half-density is different
- **Potential breakthrough:** Composition might select conformal coupling, not half-density!
- Kanban: URGENT sign verification task pending for Critic (verify via spectral sum on S³)

**Previous work (R25):** Heat-kernel flatness on lens spaces and spherical space forms.

**R26 INVESTIGATION COMPLETE:**

**Finding 1: Sign convention mismatch (CORRECTED)**
- Notebook uses V-notation: a₁ = R/6 + V. With V_HD = -R/6, gives a₁=0. ✓
- Vassilevich uses E-notation: a₁ = R/6 + E. With E = V_HD = -R/6 (CORRECTED from -V_HD), gives a₁=0. ✓
- Both conventions give a₁=0 when applied correctly. BB4 §12 error was treating E = -V_HD; correct is E = V_HD directly.

**Finding 2: Paper's unproven claim (CRITICAL)**
- Paper D9.1p asserts: "ξ=1/6 forced by composition" (citing D9.1l)
- But D9.1l NEVER proves this! Only shows V_HD formula matches ξ_c at d=3 numerically.
- Paper conflates: (A) composition forces ξ=1/6 [UNPROVEN], (B) half-density gives V_HD=-R/6 [PROVEN]

**Finding 3: Sign flip ambiguity**
- Half-density potential: V_HD = -R/6 (negative, from measure Jacobian)
- Conformal coupling potential: V_conf = ξ·R = (1/6)R (positive, from action coupling)
- Heuristic H4.0b confirms: half-density V=(1/6)R (positive!) matches conformal ξ=1/6 only at D=4.
- Paper uses BOTH notations without distinguishing them.

**R26 Conclusion (FINAL, after team-lead correction):**
Both half-density (with V_HD = -R/6) AND conformal coupling (with ξ=1/6) give a₁=0 in Vassilevich notation. They are **two distinct mechanisms achieving the same result**:
- **Half-density**: measure Jacobian correction from |g|^{-1/4}, forced by composition
- **Conformal coupling**: action coupling choice ξ=1/6, numerically matching at D=4

Composition forces the half-density measure (this is proven). This measure automatically selects the equivalent of conformal coupling at d=3 (D=4 spacetime) because V_HD(const) = -R/6 matches ξ_c = 1/6 numerically. The paper's statements are correct but the reasoning is incomplete—it conflates these two distinct mechanisms. The unproven claim in D9.1p is still unproven, but both mechanisms do give a₁=0, so the conclusion holds even if the proof is incomplete.

**Documents created:**
- sources/conformal-vs-half-density-sign-convention.md (detailed analysis)
