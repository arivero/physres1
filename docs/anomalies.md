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

*(No open entries.)*

## Resolved / promoted entries

### 2026-02-12 — Scalarization gauge ↔ ordering ambiguity parallel (source: DX02)
- **What happened:** DX02 Probe B found a structural parallel between scalarization gauge freedom (PA-D1.7: changing sigma_* rescales the scalar representative by r^{-1}) and ordering ambiguity (Section 10.2: different quantization prescriptions differ by O(hbar)). Both are "representative choices with controlled freedom."
- **Status:** RESOLVED (S73) — notational parallel only. 1D toy computation shows sigma_* rescaling acts on kernel amplitude (zeroth-order in hbar), not on phase. x-dependent rescaling generates connection-type O(hbar) corrections (∝ ∂ ln r · f), which are algebraically independent of ordering corrections (∝ ∂f). Scalarization is a gauge transformation on the Hilbert-space bundle; ordering is a choice of quantization map on the observable algebra.

### 2026-02-12 — RCP falsifiability / tautology risk (source: DX01)
- **What happened:** RCP could be read as tautological (quantum anomalies interpretable as both violations and confirmations).
- **Status:** RESOLVED (S71) — RCP is falsifiable: closure can fail (explicit witness: t^{-α} with α ≠ d/2 breaks semigroup composition). S71 enumerated 11 structural predictions across all three legs, 4 of which are directly checkable. RCP has the same epistemic status as general covariance: restrictive but not uniquely selective.

### 2026-02-12 — Dimension-selection asymmetry between half-density and RG filters (source: DX01)
- **Status:** RESOLVED (S70) — kinematic/dynamic split; promotion candidate H4.0c → C107.

### 2026-02-12 — Newton impulse model = symplectic Euler integrator (source: DX01)
- **What happened:** Section 3.2's kick-drift scheme is literally the symplectic Euler integrator.
- **Status:** PROMOTED (→ S69+B16+C106) — H1.2 added to Section 3.3 of paper/main.md with Nauenberg (1994) citation.

### 2026-02-14 — Dual mechanism coincidence at SR q=2 (source: DX11)
- **What happened:** DX11 confirmed that two independent mechanisms output the same special value q=2 in SR: (i) asymptotic threshold `q_crit = nu + 1` with `nu=1`, and (ii) algebraic dimensional identity behind `v=K/L`.
- **Status:** RESOLVED (DX11+C287) — manuscript wording now separates asymptotic-threshold and dimensional-identity channels to avoid explanatory conflation.
