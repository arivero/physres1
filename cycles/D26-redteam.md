# D26 Red Team: Heat Kernel Witness

Date: 2026-02-14

## Failure modes
- Re-deriving known formulas without matching the repo’s half-density conventions, creating sign/normalization drift.
- Slipping into an uncontrolled literature survey rather than one explicit witness.
- Mixing the conformal-class cancellation (\(D(4-D)\) term) with the universal \(V=\tfrac16 R\) coefficient without clearly separating scopes.

## Mitigations
- Fix conventions at the start of the S-cycle (what pairing, what delta kernel, what operator).
- Keep a single target coefficient (\(a_1\) / \(V=\tfrac16 R\)) and compute it explicitly.
- State two separate outputs: “universal” vs “conformal-class-specific”.

