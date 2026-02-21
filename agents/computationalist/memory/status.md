# Computationalist — Status

## Last session: 2026-02-22 (continued)

## Tasks completed this session (continuation)

### 6. SU(3) V_HD computation — BB0 §6 verification (task #32)
- Numerical finite-difference computation in exponential coordinates
- Metric g(X,Y) = -2 Tr(XY) on anti-Hermitian generators (ON frame)
- **V_HD(SU(3)) = -1.00000000** at 12 Cartan points (constant to 8 digits)
- Cross-check: V_HD(SU(2)) = -0.25000000 at 7 Cartan points
- Root analysis: all SU(3) roots have |alpha|^2 = 1 in ON metric
- **V_HD = -|rho|^2_g** (Weyl vector squared norm in the metric)
  - SU(2): |rho|^2 = 1/4, V_HD = -1/4. MATCH.
  - SU(3): |rho|^2 = 1, V_HD = -1. MATCH.
- Equivalently: V_HD = -dim(G)*h^vee/24 (Freudenthal-de Vries)
- Constant-curvature formula -(d-1)R/(4d) matches only SU(2) (not SU(3))
- Wrote BB0 §12 (FOUR-AGENT: mathematician+physicist+critic+computationalist)
- Scripts: tmp/su3_vhd_v3.py, tmp/su3_vhd_v5.py

## Previous tasks (this session)
1-5: see git history (S^3 D9.1i, H^2 D9.1k, curvature comparison, D=4, notebook promotion)

## State at end of current work
- BB0: Lie group V_HD = FOUR-AGENT (mathematician wrote, physicist+critic reviewed, computationalist verified SU(3))
- BB2: D=4 coincidence = THREE-AGENT
- BB4: S^2+S^3 = FOUR-AGENT + THREE-AGENT
- BB6: H^2 = FOUR-AGENT
- Paper-edit proposals: D9.1i and D9.1k (both applied to paper)
- Critic proposal `critic-edit-p71a-rep-track-d91k.md`: already applied (stale)

## Next priorities
1. SU(4) V_HD numerical verification (extend Weyl vector formula beyond rank 2)
2. Promote BB0 Lie group results to notebook (Part 8 of p42-extensions?)
3. Non-diagonal metric V_HD witness (beyond Lie groups)
4. Task #30 (V_HD curvature expansion in RNC) — overlaps with BB0 §9
5. Task #37 (convention mismatch D12.1 vs D12.3 sev-2) — could assist
