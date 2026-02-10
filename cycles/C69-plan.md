# C69 Plan: Promote QFT Doubling Bridge Remark

## Goal
Promote the S42 kernel-doubling identity into `papers/half-density-qft/main.md` as one concise remark.

## Scope
- Add a short remark in Section 4 explaining density-operator evolution on doubled space \(M\times M\):
  \[
  K_{\rho_t}(x,y)=\int K_t(x,x')K_{\rho_0}(x',y')\overline{K_t(y,y')}.
  \]
- Keep it structural; avoid new load-bearing bibliography claims.

## Acceptance Tests
- Manuscript edit is substantive and improves QFT continuity of half-density story.
- `cycles/C69-execution.md` logs manuscript diffstat.
