# S294 Execution: Position-Dependent Mass Energy Shift (Weyl vs Half-Density)

Date: 2026-02-14

## Work performed
- Derived Weyl operator H_W for f(q) = 1 + alpha*q^2 (Section 2 of blackboard)
- Derived half-density operator H_HD via Laplace-Beltrami conjugation (Section 3)
- Discovered that both prescriptions share the SAME first-derivative coefficient f'
- Computed operator difference: H_W - H_HD = -hbar^2 f'^2/(32mf) (purely scalar, O(alpha^2))
- Evaluated ground-state expectation value: Delta E_0 = -hbar*omega*alpha_0^2/16
- Numerical estimate for GaAs: |Delta E_0| ~ 0.006-0.06 meV for perturbative alpha_0 ~ 0.1-0.3
- Identified correction to blackboard 3: first-derivative term is NOT eliminated by half-density in 1D

## Artifacts produced
- `blackboards/6.md`: Full derivation (overwrites S292/Fresnel regularization)

## Commands run (if any)
```
(pen-and-paper calculation, no computational tools)
```

## Result
- **Verdict 4 (primary) + Verdict 1 (secondary):**
  - First-order shift O(alpha) vanishes identically (verdict 4)
  - Leading nonzero shift is O(alpha^2): |Delta E_0| = hbar*omega*alpha_0^2/16
  - For perturbative regime (alpha_0 < 0.3): |Delta E_0| < 0.06 meV << 0.1 meV (verdict 1)
- Deformation equivalence is physical, not merely formal
- D38 question answered: layer-3 freedom has no measurable consequence in realistic PDM systems

## Promotion candidate (pointer)
- Location: `blackboards/6.md`, Sections 4-6 (operator difference and energy formula)
- Key formula: Delta E_0 = -hbar*omega*alpha_0^2/16
- Correction to blackboard 3: Section 8 of blackboard 6

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **yes**
- Blackboard 3 (D35/S290) claims half-density eliminates the first-derivative term; this is incorrect in 1D. Both Weyl and half-density share the SAME connection term f'*d/dq. The four-layer stratification holds but with Layer 2 IDENTICAL between the two prescriptions, not different as previously stated.
- This strengthens the equivalence: not only is the difference unmeasurably small, but the two prescriptions agree at one more order than expected.

## Spawned cycles
- (none needed; D38 is resolved)
- S292 (former blackboard 6 occupant) should be promoted to notebooks before content is lost from git
