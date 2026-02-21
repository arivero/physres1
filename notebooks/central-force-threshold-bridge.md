# Notebook: Central-Force Threshold Bridge

## Entry 2026-02-14
Source promotion: `blackboards/3.md`

### Stabilized statements
1. The threshold bridge is an asymptotic comparator:
   \[
   q_{\mathrm{crit}}=\nu+1
   \]
   under fixed-\(L\), power-law, shared-regime assumptions.
2. Marginality is coefficient-sensitive; exponent equality alone is insufficient.
3. Mechanism separation is mandatory:
   - threshold-comparator mechanism,
   - inverse-square dimensional identity mechanism.

### Stabilized diagnostics
1. **Kinetic window diagnostic (relativistic interpolation):**
   \(\nu_{\mathrm{eff}}(x)=1+1/\sqrt{1+x^2}\), with tolerance windows derived analytically.
2. **Potential drift diagnostic:**
   \(\Delta m(r)\) from effective exponent extraction; use fixed-\(q\) threshold only when drift is small in the operating window.

### Stabilized process gates
1. Readability-only compression cycle gate:
   - compression gain >= 40%,
   - caveat checklist pass,
   - no new technical claims.
2. Multi-branch continuation is valid: keep several S/D topics active in `cycles/` and pick continuation by branch utility.

## Entry 2026-02-14 (Rule-compliant stabilization addendum)
### Added stable refinements
1. **Range-aware uniqueness criterion:** monotone \(A(L)\) still needs range coverage to guarantee a crossing.
2. **Exact kinetic-window formula:** \(\nu_{\mathrm{eff}}(x)=1+1/\sqrt{1+x^2}\) gives closed-form tolerance bounds.
3. **Diagnostic portability:** potential-drift gate \(\Delta m(r)\) remains meaningful across both logarithmic and \(r^\beta\)-type correction families.

## Entry 2026-02-14 (Compression candidate, iteration 5)
### Compression candidate update
A stricter 8-caveat audit across `current`, `D2`, `D4`, and `D4plus` selected a new default readability candidate:

`D4plus`:
"Fixed-L, small-r asymptotics p~L/r imply qcrit=nu+1, yielding Newton/SR 3->2. This bridge is separate from inverse-square dimensional identity; at marginality coefficients decide sign, so it is not a full orbit theorem."

Why this supersedes `D2` as default:
1. Higher caveat completeness (`8/8` vs `7/8` for `D2`).
2. Better compression (`31` vs `34` words; both satisfy >=40% gate by a wide margin).
3. Keeps explicit non-classification boundary while restoring explicit small-`r` scope.

## Entry 2026-02-14 (Windowed uniqueness criterion)
### Windowed uniqueness criterion
A stronger reusable statement for generalized marginal maps:
- For threshold equation `A(L)=B`, uniqueness should be asserted on the selected operating window `L in [L1,L2]`, not globally.
- Sufficient conditions on the window:
  1. `A` monotone on `[L1,L2]`,
  2. range bracketing: `B in [A(L1), A(L2)]`.

Witness example:
`A(L)=0.06L^2+0.8 sin(3L)/L` has two global crossings (on `[0.4,8]`) for `B=1.5`, but exactly one crossing on `[4.5,8]` where `A` is monotone.

## Entry 2026-02-14 (Cross-link insertion gate)
### Cross-link insertion gate (navigation-only)
When drafting optional links from `Remark P1.1a` to Section 9 architecture, prefer bounded navigation phrasing with:
1. <=35 words,
2. <=2 sentences,
3. moderate lexical novelty (roughly 0.25-0.45) relative to local Section 9 context.

This keeps links informative without inflating conceptual load.

## Entry 2026-02-14 (Decade-drift validity gate)
### Decade-drift validity gate for `nu_eff`
A compact operational gate for mixed kinetic regimes:
- define `Delta nu_10(x) = nu_eff(x) - nu_eff(10x)`.
- treat a one-decade window as approximately single-exponent only when `Delta nu_10` is below a chosen tolerance.

For relativistic interpolation `nu_eff(x)=1+1/sqrt(1+x^2)`:
- `Delta nu_10 <= 0.10` only for `x<=0.049` or `x>=8.95`.
- crossover windows (`x ~ 0.1` to `10`) fail this gate and should not be treated as fixed-exponent.

## Entry 2026-02-14 (Windowed potential-drift gate)
### Windowed potential-drift gate
For potential-channel corrections, use
`Delta m_max(W) = max_{r in W} Delta m(r)`
on the operating radial window `W`.

Operational rule:
- only apply fixed-`q` threshold intuition when `Delta m_max(W)` is below a declared tolerance (e.g. `0.1`).

Cross-family takeaway:
- the gate is portable (log and `r^beta` correction families), but safe windows can differ strongly in depth.

## Entry 2026-02-14 (Integration readiness matrix)
### Integrated readiness matrix
Readiness criteria are now complete across branches, but the decision policy is unchanged:
- if readability priority is not explicitly active, keep optional manuscript compression deferred.
- if readability priority is active, use `D4plus` with existing window/regime caveats available as safeguards.

## Entry 2026-02-14 (TeX-ready compression candidate)
### TeX-ready compression candidate
Updated default replacement candidate for possible readability-compression pass:
`D6_tex_compact` (40 words, `8/8` caveat coverage, ~56% compression vs current 91-word text).

Reason for switch from ASCII variant:
- preserves full caveat coverage while matching manuscript notation style (`q_{\mathrm{crit}}`, `\nu`, fixed-`L`, small-`r`).

## Entry 2026-02-14 (Generalized scale-factor drift gate)
### Generalized scale-factor drift gate
Refined kinetic-window diagnostic from decade-only (`b=10`) to arbitrary scale factor `b`:
- `Delta nu_b(x)=nu_eff(x)-nu_eff(bx)`.
- peak mixing occurs near `x_peak^2=b^(-2/3)+b^(-4/3)`.

Asymptotic gate estimates for `Delta nu_b<=delta`:
- low side: `x \lesssim sqrt(2 delta/(b^2-1))`
- high side: `x \gtrsim (1-1/b)/delta`

These formulas give compact pre-checks before full numeric scans of mixed-regime validity.
