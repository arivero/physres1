# Q176 Red Team: Referee attacks on C293

Date: 2026-02-14

## Likely referee objections
- "Bounds are not sharp."
  - Mitigation: state they are sufficient witness bounds and schedule optional sharpness cycle.
- "Operator-level bounds do not directly provide pointwise kernel estimates."
  - Mitigation: keep scope explicit and treat kernel-sharp bounds as separate strengthening work.
