# Q72 Execution: Referee pass on C117 (Remark PA-D1.3a)

Date: 2026-02-12

## Parent cycle reviewed
- `C117`

## Findings
- **Parity obstruction (odd d)**: For odd integer d, d/2 is a half-integer. Any monomial in couplings with integer length dimensions [g_i] = length^{a_i} has total dimension Σ n_i a_i, which is a sum of products of integers — hence an integer. Integer ≠ half-integer. Categorical exclusion confirmed. Persists with Λ_d ([Λ_d] = length^{-2}, integer). Correct.
- **Magnitude obstruction (even d ≥ 6)**: k = d/(2(d-2)). For d = 6: k = 3/4. For d = 8: k = 2/3. General: k < 1 iff d > 4, which holds for all even d ≥ 6. No positive integer k exists. Correct.
- **Degenerate case (d = 2)**: [G_2] = length^{2-2} = length^0 = dimensionless. Gravity provides no scale. Correct.
- **Uniqueness (d = 4)**: d/2 = 2 (integer → no parity obstruction), k = 4/(2·2) = 1 (positive integer → no magnitude obstruction), [G_4] = length^2 (dimensionful → no degenerate case). Unique among integer d ≥ 2. Correct.
- **Scope**: PA-D1.3a explicitly operates within "gravity-only sieve" scope, matching PA-D1.3. The parenthetical "including Λ_d" correctly extends the parity argument beyond gravity-only without expanding the main claim. Appropriate.
- **Claim label**: PA-D1.3a — follows PA-D1.3, correct PA- prefix. Good namespace.
- **Notation**: d, k, G_d, Λ_d — consistent with PA-D1.3 and PA-D1.6 (§3.3).
- **Reader flow**: PA-D1.3 gives the sieve result; PA-D1.3a classifies *why* it works. Deepens without repeating. Good placement.

## Verdict
Clean pass. All algebraic claims verified, scope correct, notation consistent.

## Required follow-ups (spawn cycles)
None. No issues found.

## Notes (non-actions)
- PA-D1.3 + PA-D1.3a now give a complete gravity-only dimension-sieve argument: the result (d = 4 unique) and the structural classification (three obstruction mechanisms).
