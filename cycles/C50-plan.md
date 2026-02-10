# C50 Plan: Promote the \(\tau\) Refinement-Compatibility Formalism into `paper/main.md`

## Goal
Insert a concise, manuscript-ready statement of the “control map \(\tau\)” compatibility condition into the cornerstone paper:
- define coarse-graining \(\mathcal G_b\) between resolutions,
- state the closure condition \(\mathcal G_b(A_{h/b,\theta})=A_{h,\tau_b(\theta)}\),
- connect it to the already-present renormalization map \(R_{\Lambda\to\mu}\) and semigroup property.

## Scope
- Edit `paper/main.md` in Section 8.2 (after the \(R_{\Lambda\to\mu}\) semigroup paragraph).
- Update `docs/research-log.md` and `cycles/index.md`.

## Acceptance Tests
1. `paper/main.md` includes a short derivation/remark stating the \(\tau_b\) compatibility equation with clear symbol meanings.
2. No cycle-label leakage: `rg -n 'C[0-9]{2}' paper/main.md` remains empty.
3. Logs updated and cycle recorded.

