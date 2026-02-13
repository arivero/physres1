# S73 Plan: Test scalarization-gauge ↔ ordering-ambiguity connection

Date: 2026-02-12

## Parent anomaly
- DX02 OPEN anomaly: "Scalarization gauge ↔ ordering ambiguity parallel"

## Goal
Perform a toy computation in 1D QM to determine whether changing the scalarization gauge σ_* produces a known ordering correction (confirming the connection) or acts orthogonally (refuting it).

## Test criteria (from DX02-debate)
- **Confirms**: two σ_* choices (flat vs metric-derived) yield quantization maps differing by a known ordering term.
- **Refutes**: σ_*-rescaling acts on the amplitude of the kernel (zeroth-order in ℏ), not the phase.

## Method
1. Set up 1D QM with metric g(q). Compare flat (σ₁ = |dx|^{1/2}) and metric-derived (σ₂ = g^{1/4}|dx|^{1/2}) scalarizations.
2. Apply PA-D1.7 rescaling to the kernel of Q_L(f(q)p) = f(q̂)p̂.
3. Expand the x-dependent rescaling factor near the diagonal and identify the O(ℏ) correction structure.
4. Compare with the Weyl–left ordering difference (-iℏ/2)f'(q̂) from Section 10.2.

## Allowed files
- `blackboards/2026-02-12-scalarization-vs-ordering-1D.md`
- `cycles/S73-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- `paper/bibliography.md`, `sources/`
