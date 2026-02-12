# Anomaly Register

This file collects unexpected results, unresolved tensions, and structural puzzles
encountered during cycle work. It is **not** a citable source.

Any cycle (S, B, C, Q, D) may add entries here. D-explore (DX) cycles must read this
file as input and either resolve, promote, or carry forward each open entry.

## Entry format

### <date> — <one-line summary> (source: <cycle ID>)
- **What happened:** <describe the surprise or tension>
- **Why it matters:** <what principle or thread does it stress?>
- **Status:** OPEN | PROMOTED (→ <cycle>) | RESOLVED (<one-line reason>)

---

## Open entries

### 2026-02-12 — Scalarization gauge ↔ ordering ambiguity parallel (source: DX02)
- **What happened:** DX02 Probe B found a structural parallel between scalarization gauge freedom (PA-D1.7: changing sigma_* rescales the scalar representative by r^{-1}) and ordering ambiguity (Section 10.2: different quantization prescriptions differ by O(hbar)). Both are "representative choices with controlled freedom." The connection would be: scalarizing a half-density kernel by different sigma_* choices yields different scalar kernels, which define different quantization maps.
- **Why it matters:** if confirmed, this would give a geometric origin for representation compatibility (RCP's Q_hbar leg): changing the scalarization gauge IS changing the ordering prescription, and RCP says these must yield the same classical limit.
- **Status:** OPEN — needs a toy computation (spawned S73, optional). Could be refuted if sigma_* rescaling acts on kernel amplitude (zeroth-order in hbar) rather than on phase (which controls ordering).

## Resolved / promoted entries

### 2026-02-12 — RCP falsifiability / tautology risk (source: DX01)
- **What happened:** RCP could be read as tautological (quantum anomalies interpretable as both violations and confirmations).
- **Status:** RESOLVED (S71) — RCP is falsifiable: closure can fail (explicit witness: t^{-α} with α ≠ d/2 breaks semigroup composition). S71 enumerated 11 structural predictions across all three legs, 4 of which are directly checkable. RCP has the same epistemic status as general covariance: restrictive but not uniquely selective.

### 2026-02-12 — Dimension-selection asymmetry between half-density and RG filters (source: DX01)
- **Status:** RESOLVED (S70) — kinematic/dynamic split; promotion candidate H4.0c → C107.

### 2026-02-12 — Newton impulse model = symplectic Euler integrator (source: DX01)
- **What happened:** Section 3.2's kick-drift scheme is literally the symplectic Euler integrator.
- **Status:** PROMOTED (→ S69+B16+C106) — H1.2 added to Section 3.3 of paper/main.md with Nauenberg (1994) citation.
