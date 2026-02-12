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

### 2026-02-12 — Dimension-selection asymmetry between half-density and RG filters (source: DX01)
- **What happened:** The half-density conformal conjugation filter selects D=4 (coefficient D(4−D)/4 vanishes). The RG/rooted-tree side does not select any dimension intrinsically — dimension dependence enters only through specific interaction power-counting.
- **Why it matters:** If both are aspects of "refinement compatibility," why does one select a dimension and the other doesn't? This is an architectural asymmetry in the manuscript.
- **Status:** OPEN — possible resolution: half-density fixes the arena (which D), RG operates within it (how couplings run). Consider S70 to check if the D=4 conformal result has an RG-side echo.

### 2026-02-12 — RCP falsifiability / tautology risk (source: DX01)
- **What happened:** Quantum anomalies (chiral anomaly) could be read as RCP violations (classical symmetry fails under refinement) or as RCP confirmations (anomaly IS the obstruction refinement reveals). Both readings are consistent, making RCP hard to falsify.
- **Why it matters:** If RCP is tautological, it is an organizational scheme rather than a physical principle. The manuscript presents it as the latter.
- **Status:** OPEN — the escape from circularity is that RCP makes specific structural predictions (t^{-d/2}, counterterm algebra, Poisson-bracket recovery). A future S cycle should enumerate these as checkable predictions.

### 2026-02-12 — Newton impulse model = symplectic Euler integrator (source: DX01)
- **What happened:** Section 3.2's kick-drift scheme is literally the symplectic Euler integrator. The exact angular-momentum conservation (D1.1) follows from symplectic structure. Nauenberg (1994) identifies this explicitly.
- **Why it matters:** This connects Section 3 (Newtonian refinement) directly to Section 8 (rooted-tree/step-doubling). The connection is not noted in the manuscript — Sections 3 and 8 are treated as parallel illustrations rather than linked.
- **Status:** OPEN → S69 (derive connection in manuscript notation), then C cycle to add a remark.

## Resolved / promoted entries

(none yet)
