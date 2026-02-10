# Q31 Execution: Quality Pass on Doubling Remark in half-density-qft

## Checks Run
- Reviewed `papers/half-density-qft/main.md` Section 4 around `Remark D4.1` and the transition into Section 5.
- Verified the remark is self-contained (defines \(\rho_t=U_t\rho_0U_t^{-1}\) and shows the doubled-kernel formula).
- Confirmed the statement remains structural and explicitly flags bibliography need if expanded.
- Guardrail check:
  - `rg -n 'C[0-9]{2}' paper/main.md` (clean; no matches).

## Findings
- No edits required in this quality pass.
- The remark strengthens the QM-to-QFT continuity of the half-density story without scope drift.

## Next Spawn
- Run `S43` to enumerate candidate precise mathematical obstructions in the naive Newtonian refinement limit.
