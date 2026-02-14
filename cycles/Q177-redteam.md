# Q177 Red Team: Referee attacks on C294

Date: 2026-02-14

## Likely referee objections
- "No explicit small-time or free-limit check is shown in-text."
  - Mitigation: optional C295 adds one-line sanity limits (`t->0+`, `omega->0`).
- "Exact benchmark may be seen as isolated from generic potentials."
  - Mitigation: keep explicit positioning as benchmark, not generic theorem.
