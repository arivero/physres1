# S220 — Execution: Relativistic stability expansion

## What happened
- Sonnet subagent studied two expansion targets for relativistic-central-orbits/main.md
- Target 1 (Example 5.2b): Stability thresholds for q=1,2,5/2,3 — concrete enumeration
- Target 2 (Remark 4.3b): ISCO angular-momentum floor vs SR

## Agent output
**Example 5.2b**: Enumerates q=1 (unconditional), q=2 (boundary), q=5/2 (v/c < 1/√2), q=3 (none). Notes Newtonian threshold recovered as c→∞ limit.

**Remark 4.3b**: At r=6M, L²=12M² from L²=Mr²/(r-3M). SR has no stability floor (any L>K/c works). GR introduces L_ISCO = 2√3 M via the -2ML²/r³ curvature term.

## Key formulas verified
- L²(r=6M) = M·36/(6-3) = 36M²/3 = 12M². ✓
- q=5/2: 1+(2-5/2)γ² = 1-γ²/2 > 0 ⟺ γ²<2 ⟺ v²/c² < 1/2. ✓
- q=3: 1-γ² ≤ 0 for γ≥1. ✓
