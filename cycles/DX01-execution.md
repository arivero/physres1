# DX01 Execution: First divergent exploration cycle

Date: 2026-02-12

## Findings

### 1. Cross-thread: Newton impulse model IS a symplectic Euler integrator
**What:** Section 3.2's discrete model (kick velocity by impulse, then drift position) is literally the symplectic Euler scheme (also called "kick-drift" or "semi-implicit Euler"):
- v_{k+1} = v_k + Δt F(r_k)/m  (kick)
- r_{k+1} = r_k + Δt v_{k+1}  (drift)

**Why it matters:** This connects Section 3 (Newtonian refinement) directly to Section 8 (rooted-tree/step-doubling). The *exact* conservation of angular momentum at finite step (D1.1) is a consequence of the symplectic structure — symplectic integrators preserve Casimirs/quadratic invariants exactly. Nauenberg (1994) makes this identification explicit.

**Implication:** The manuscript currently treats Sections 3 and 8 as analogous but separate illustrations. The symplectic-Euler identification would make the connection tighter: Newton's original refinement scheme is *already* a member of the integrator family analyzed in Section 8, and its exact conservation properties are structural consequences of that family's symplectic geometry.

**Status:** OPEN → recommend S69 (derive the connection explicitly) and then C105 (promote a brief remark).

### 2. Cross-thread: half-density composition ↔ step-doubling counterterms are complementary
**What:** Both are "two steps vs one step" composition checks:
- Half-density (D4.1a): composition K(t1+t2) = ∫ K(t1) K(t2) forces t^{-d/2} normalization. This fixes the *measure/prefactor*.
- Step-doubling (D6.2a): E_{h/2} ∘ E_{h/2} − E_h reveals additive corrections (counterterms). This fixes the *functional form*.

**Why it matters:** They're complementary aspects of refinement compatibility. The half-density story handles the "easy" case (quadratic/free Lagrangians, where the correction is purely normalization). The step-doubling/RG story handles the "hard" case (nonlinear systems, where functional corrections are needed).

**Implication:** A unifying remark could say: "Refinement compatibility demands both the right normalization (half-density) and the right functional corrections (counterterms). For free theories, normalization alone suffices; for interacting theories, both are needed."

**Status:** OPEN → candidate for a future C cycle remark in Section 9 (open questions) or as a bridge between Sections 6 and 8.

### 3. Historical precursor: Berkeley's "The Analyst" (1734)
**What:** Berkeley's critique of Newton's fluxions — "And what are these evanescent increments? They are neither finite quantities, nor quantities infinitely small, nor yet nothing. May we not call them the ghosts of departed quantities?" — is a historical precursor to the manuscript's "Zeno-style refinement paradox" (Section 1, line 16).

**Why it matters:** The manuscript's constructive thesis (continuum limits are "definition-by-refinement" requiring explicit control mechanisms) is essentially a modern answer to Berkeley's critique. Citing The Analyst would ground the historical framing more sharply and show that the "limit-control" problem is not a modern invention.

**Status:** OPEN → recommend B15 (add [Berkeley1734Analyst] to bibliography) and then C cycle to add a brief historical note in Section 1 or Section 3.1.

### 4. Dimension-selection asymmetry (anomaly)
**What:** The half-density conformal conjugation filter selects D=4 (the coefficient D(4−D)/4 vanishes). The RG/rooted-tree side does not obviously select any dimension — it depends on what interactions are present (e.g., φ^4 is renormalizable in D=4 by power counting, but that's interaction-specific).

**Why it matters:** If the half-density story and the RG story are supposed to be aspects of the same "refinement compatibility" principle, why does one select a dimension and the other doesn't? This is a genuine asymmetry in the manuscript's architecture.

**Possible resolution:** The half-density filter selects D=4 as the "operator-simplest" dimension (Laplacian on half-densities has no conformal anomaly). The RG filter doesn't select dimensions; it operates *within* any dimension. They are different layers: half-density fixes the arena, RG operates within it.

**Status:** OPEN → record in anomalies register. May require an S cycle to check whether the D=4 conformal result has an RG-side echo.

### 5. Framing stress-test: is RCP falsifiable? (anomaly)
**What:** RCP says partition/representation/scale changes must commute with physical predictions. Is this falsifiable?

**Stress-test:** Quantum anomalies (e.g., chiral anomaly) are cases where a classical symmetry does NOT survive quantization. This could be read as:
- (a) A *violation* of RCP: a classical law doesn't survive refined composition.
- (b) A *confirmation* of RCP: the anomaly is precisely the obstruction that controlled refinement reveals, and the *corrected* (anomalous) theory is the refinement-compatible one.

**Assessment:** Reading (b) is more consistent with the manuscript's framing. Anomalies are the "counterterms of symmetry" — refinement forces you to discover them, just as it forces counterterms in couplings. But this makes RCP dangerously tautological: any discrepancy is absorbed as "the obstruction refinement reveals."

**Status:** OPEN → this is the most serious framing risk. Record in anomalies register. Consider whether a future S cycle should formulate a concrete structural prediction from RCP that could in principle fail.

## Updates made
- `docs/anomalies.md`: populated with 3 new entries (see below).
- `docs/research-state.md`: principle evolution log note.
- `docs/research-log.md`: entry added.

## Spawned cycles
- `S69`: derive Newton-impulse ↔ symplectic-Euler connection explicitly (blackboard).
- `B15`: add Berkeley (1734) "The Analyst" to bibliography (user-suggested source).
- (Deferred) S70: check whether D=4 conformal half-density result has an RG-side analog.
