# Critic -- Status

## Current state (2026-02-23, Session R25 end)

### Key finding this session
FATAL sign error in Gilkey formula across entire project. The formula `a₁ = R/6 + V_HD` in notebook §2 (Thm M4.1) has wrong sign on V_HD. Correct formula: `a₁ = R/6 - V_HD = R/6 + R/6 = R/3 ≠ 0`.

Evidence:
1. Conformal coupling check: V=+R/6 gives a₁=0 iff formula has -V. ✓
2. Mathematician BB4 §11 spectral sum: (HT/lead-1)/t → R/3 = 2 ≠ 0. ✓
3. Direct product formula: Z_{1/2}=e^t Z_0, a₁=R/3 from eigenvalues l(l+2)-1. ✓
4. Vassilevich formula for conformal coupling (E=-R/6): a₁=0 ✓; half-density (E=+R/6): a₁=R/3 ✓.

### Findings written
- BB1 §13: Grade-1 review — Thm M4.1 WRONG, KL interpretation WRONG, fifth and sixth coincidences WRONG
- BB4 §12: Grade-1 review — a₂=0 WRONG, promotion BLOCKED
- Deprecation note in notebooks/seeley-dewitt-a1-zero.md
- BB README updated (BB1, BB2, BB4 BLOCKED)
- Proposed kanban task: computationalist verify via spectral sum

### What's unaffected
- V_HD formula: -(d-1)R/(4d) — CORRECT
- V_HD constant iff d=3 on S^d — CORRECT
- V_HD = -|ρ|² on Lie groups (BB0, HC) — CORRECT
- Thm C4.1 (Kretschner identity in d=3) — CORRECT
- All BB0, BB3 (HC), BB5 (products), BB6 (constant curvature formula) — CORRECT

### What's invalidated
- Thm M4.1 (universal a₁=0): WRONG
- Fifth D=4 coincidence (a₂=0 on S³): WRONG
- Sixth D=4 coincidence (all a_k=0): WRONG
- BB4 §§5-10 (geometric origin of a₂=0): WRONG (result doesn't exist)
- BB2 §9 (de Sitter a₂=0): WRONG

### Next (if session continues)
1. Wait for computationalist spectral sum verification
2. If confirmed: revise manuscript — retract D=4 coincidences v and vi
3. Check if conformal coupling (not half-density) is what composition forces — this would RESTORE the results but change the interpretation
