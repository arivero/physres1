# C27 Plan

## Goal
Promote the stable `S05` “delta as a bi-half-density identity kernel” witness into the half-density paper (`papers/planck-area/main.md`) to make the \(\varepsilon^{-d/2}\) exponent and the scalarization-scale \(L_\ast^{d/2}\) appear in the cleanest possible way.

## Scope
1. `papers/planck-area/main.md`
   - Add a short labeled derivation (near the existing near-diagonal scaling discussion) stating the identity kernel on half-densities,
     \(\mathsf K_{\mathrm{Id}}=\delta(x-y)|dx|^{1/2}|dy|^{1/2}\),
     and showing explicitly that \(y=x+\varepsilon v\) produces the \(\varepsilon^{-d/2}\) factor.
   - Add one sentence connecting scalarization by \(\sigma_\ast=L_\ast^{-d/2}|dx|^{1/2}\) to the dimensionless scalar representative \(k_{\mathrm{Id}}=L_\ast^d\delta\).

2. `docs/research-log.md`
   - Add a dated entry recording the promotion.

## Non-Goals
- No changes to `paper/main.md` in this cycle.
- No bibliography changes or new citations.

## Acceptance Tests
1. `papers/planck-area/main.md` contains the new labeled derivation and the scalarization-scale remark.
2. No cycle IDs appear in `paper/main.md` (guardrail: `rg -n 'C[0-9]{2}' paper/main.md`).

