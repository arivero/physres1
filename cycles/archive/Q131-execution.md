# Q131 — Execution

## Reviewer persona
Hostile referee with expertise in relativistic mechanics and GR.

## Verdict: CONDITIONAL PASS

## Findings (severity order)

### HIGH: 1/6 ratio framing
The comparison between SR toy model (flat spacetime + external force)
and GR (curved spacetime geodesics) is between incompatible frameworks.
The paper partially mitigates this in the C245 debate and Section 6
outlook, but Remark 3.2 itself lacks a clear caveat.

**Fix**: Strengthen the "partial refinement" framing in the remark;
make clear this is the kinematic (velocity-dependent mass) contribution,
not a decomposition of GR.

### MODERATE: Citation mismatch
BDF paper uses Hamiltonian/action-angle formulation, does not derive
the Binet-form orbit equation d²u/dφ² + ω²u = (mK/L²)ω².

**Fix**: Replace citation with "standard Binet substitution applied to
the SR equations of motion" or cite a text that gives this form.

### MODERATE: ω = 1/γ_circ language
"directly linking precession to the Lorentz factor" suggests physical
causation when this is a mathematical identity.

**Fix**: Soften to "where ω = 1/γ_circ for the circular orbit speed."

### MINOR: Approximation label
The Δφ ≈ πK²/(c²L²) result is leading-order only.

**Fix**: Already labeled "(v ≪ c)" — adequate.

## Fixes applied
See relativistic-central-orbits main.md edits.
