# S79 Execution: Odd-dimension obstruction — half-density weight length^{d/2} for odd d

Date: 2026-02-12

## Summary
Analyzed the integrality sieve PA-H2.5a for odd dimensions and classified all dimension-exclusion mechanisms.

## Work log
1. Checked parity: for odd integer d, d/2 is a half-integer. Any monomial in couplings with integer length dimensions has integer total dimension. Integer ≠ half-integer → categorical exclusion.
2. Verified this persists with any combination of integer-dimensional couplings (gravity, cosmological constant, gauge couplings in integer-d). The sum Σ n_i a_i is always integer when all a_i are integers.
3. Enumerated even-d gravity-only cases: d=4 is the unique solution (k=1); d=6,8,10,... fail by magnitude (k < 1); d=2 is degenerate (G₂ dimensionless).
4. Noted the fermionic escape: Yukawa couplings have [g_Y] = length^{(d-4)/2}, which is half-integer for odd d. This could lift the parity obstruction. Not developed — outside current scope.
5. Connected to three-level hierarchy: transmutation (PA-H2.13) can supply length^{d/2} in any d via κ*^{-d/2}, bypassing the sieve entirely.

## Key finding
The gravity-only integrality sieve excludes dimensions by three distinct mechanisms:
1. **Parity obstruction** (odd d): categorical — length^{d/2} has half-integer exponent, unmatchable by integer-dimensional couplings.
2. **Magnitude obstruction** (even d ≥ 6): k = d/(2(d-2)) < 1, no positive integer solution.
3. **Degenerate case** (d = 2): G₂ dimensionless, no gravitational scale.

d = 4 is the unique dimension where none of these applies.

## Outputs
- Blackboard: `blackboards/2026-02-12-odd-dimension-half-density-obstruction.md`

## Spawned cycles
- Optional C: promote the three-mechanism classification into Planck-area draft (e.g., remark after PA-D1.3 or in Section 7 addressing open problem #3). Not urgent.
