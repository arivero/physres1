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
- **Status:** RESOLVED (S70) — the asymmetry is real but interpretable: half-density is a universal/kinematic filter (selects the arena, which D); RG is a coupling-specific/dynamic filter (constrains dynamics within that arena). The RG side does echo D=4 through gauge-coupling marginality ([g^2]=length^{D-4}=0 at D=4) and YM conformal invariance, but this echo depends on field content (form degree p=1 gives 2(p+1)=4). The two filters are logically independent; their consistency at D=4 is a nontrivial structural check. Promotion candidate: H4.0c (→ C107).

### 2026-02-12 — RCP falsifiability / tautology risk (source: DX01)
- **What happened:** Quantum anomalies (chiral anomaly) could be read as RCP violations (classical symmetry fails under refinement) or as RCP confirmations (anomaly IS the obstruction refinement reveals). Both readings are consistent, making RCP hard to falsify.
- **Why it matters:** If RCP is tautological, it is an organizational scheme rather than a physical principle. The manuscript presents it as the latter.
- **Status:** OPEN — the escape from circularity is that RCP makes specific structural predictions (t^{-d/2}, counterterm algebra, Poisson-bracket recovery). A future S cycle should enumerate these as checkable predictions.

## Resolved / promoted entries

### 2026-02-12 — Dimension-selection asymmetry between half-density and RG filters (source: DX01)
- **Status:** RESOLVED (S70) — kinematic/dynamic split; promotion candidate H4.0c → C107.

### 2026-02-12 — Newton impulse model = symplectic Euler integrator (source: DX01)
- **What happened:** Section 3.2's kick-drift scheme is literally the symplectic Euler integrator.
- **Status:** PROMOTED (→ S69+B16+C106) — H1.2 added to Section 3.3 of paper/main.md with Nauenberg (1994) citation.
