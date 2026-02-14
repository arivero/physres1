# D26 Red Team: Heat Kernel Witness

Date: 2026-02-14

## Failure modes
- Re-deriving known formulas without matching the repo’s half-density conventions, creating sign/normalization drift.
- Slipping into an uncontrolled literature survey rather than one explicit witness.
- Mixing the conformal-class cancellation (\(D(4-D)\) term) with the universal \(V=\tfrac16 R\) coefficient without clearly separating scopes.

## Mitigations
- Fix conventions at the start of the S-cycle (what pairing, what delta kernel, what operator).
- Keep a single target coefficient (\(a_1\) / \(V=\tfrac16 R\)) and compute it explicitly.
- State two separate outputs: "universal" vs "conformal-class-specific".

## Post-execution assessment (2026-02-14)
All three failure modes were addressed in the S283 blackboard:
1. **Convention drift**: avoided by starting from the same \(\psi = |g|^{1/4}\phi\) notation as HD-D1.2 and referencing HD-D1.3b explicitly.
2. **Literature survey creep**: avoided by keeping a single target (\(a_1\) and \(V = \tfrac{1}{6}R\)) and not expanding into \(a_2\) or higher.
3. **Conformal/universal mixing**: explicitly separated in Section 6 ("What is canonical vs what is scalarization"). The conformal-class \(D(4-D)(\partial\sigma)^2\) cancellation is not even discussed in the main derivation thread -- it is only referenced as a separate phenomenon.

**Residual risk**: a promotion C-cycle should double-check sign conventions against HD-QFT Remark HD-D1.3b before inserting any equations.

