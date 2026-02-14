# S285 Red Team: Convergence Witness Failure Modes

Date: 2026-02-14

## Failure modes
- **Overstating novelty:** The convergence theorem is standard (HLW06). Risk: referee says "this is textbook."
  - Mitigation: Frame as scope-clarifying, not novel. The value is explicit identification of the failure mode in the central-force context and connecting it to the manuscript's existing hedge.
- **Under-specifying the backward error analysis claim:** Stating "energy near-conserved for exponentially long times" requires the modified Hamiltonian series to be well-defined (smooth enough system).
  - Mitigation: The backward error analysis applies when the Hamiltonian is smooth on the visited domain; for non-collision Kepler orbits this is satisfied. State this explicitly.
- **Confusion between symplectic Euler and Stormer-Verlet:** A referee might object that Newton's construction is closer to Stormer-Verlet (leapfrog). The two differ in whether the position update uses p_n or p_{n+1}.
  - Mitigation: In Principia Prop. I, the velocity is updated by the impulse (kick) at the current position, THEN the particle drifts at the new velocity. This is kick-drift = symplectic Euler, not leapfrog (which would be half-kick, drift, half-kick). Nauenberg (1994) confirms this identification.
- **Promotable paragraph too long for the manuscript's remark style:**
  - Mitigation: The paragraph is ~5 sentences. A C cycle can compress further if needed. The blackboard version serves as the full technical backing.

## Mitigations summary
All failure modes are low-severity and have clear mitigations. The main risk is scope creep (writing too much about numerical analysis in a physics paper); the single-paragraph format prevents this.
