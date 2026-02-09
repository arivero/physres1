# C01 Execution

## Manuscript Deltas
1. Replaced placeholder in section 3 with a full Newtonian refinement section in `paper/main.md`.
2. Added source-critical framing distinguishing Newtonian geometry from modern vector reformulation.
3. Added transition paragraph from section 3 to `C02` action-language derivation.

## Equations Added
1. Discrete central impulse update \(m(\mathbf v_k^+ - \mathbf v_k^-)=J_k\hat{\mathbf r}_k\).
2. Drift update \(\mathbf r_{k+1}=\mathbf r_k+\mathbf v_k^+\Delta t\).
3. Finite-step angular momentum invariance derivation.
4. Triangle swept-area formula \(\Delta A_k=\frac{\|\mathbf L\|}{2m}\Delta t\).
5. Continuum law \(dA/dt=\|\mathbf L\|/(2m)\) and torque relation \(d\mathbf L/dt=\mathbf r\times\mathbf F\).

## Sections Touched
1. `paper/main.md`.
2. `paper/bibliography.md`.
3. `cycles/C01-plan.md`.
4. `cycles/C01-debate.md`.
5. `cycles/C01-redteam.md`.
6. `cycles/index.md`.

## Rationale
`C01` establishes the first technical pillar: Newtonian area-law invariance is made explicit as an exact finite-step invariant with a controlled refinement passage, preparing the variational recasting in `C02`.

## Acceptance Test Results
1. Full derivation chain discrete \(\to\) continuum present in section 3: passed.
2. More than two equations and explicit transition paragraph to `C02`: passed.
3. Open assumptions documented in `C01-redteam.md`: passed.
