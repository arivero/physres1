# D56 Discovery: Does composition → half-density → conformal coupling → d=4?

Date: 2026-02-14
Parent: D53 (composition = master axiom), Q1 (d=4 selection)

## Novelty target
Trace the chain from the single master axiom (composition) through half-density
normalization to the d=4 coincidence (conformal coupling ξ=1/6).

## Chain of implications

1. **Composition (C)** → d/2 normalization exponent (P4.2, D49)
2. **d/2 normalization** → kernel is a bi-half-density on ℝ^d:
   K(x,y;t) transforms as |dx|^{-1/2} ⊗ |dy|^{-1/2} (half-density QFT paper)
3. **Half-density on curved M** → normal-coordinate expansion gives
   V(p) = (1/6)R (S204, dimension-independent)
4. **V(p) = (1/6)R** = conformal coupling ξ R φ with ξ = 1/6
5. **ξ_conf = (D-2)/(4(D-1))** = 1/6 **only at D=4**

So: composition → half-density → ξ=1/6 → coincides with conformal coupling → selects D=4.

## Assessment

### What's solid
- Steps 1-3 are proven within the paper framework
- Step 4 is an identification (V(p) = ξR with ξ=1/6)
- Step 5 is an algebraic fact (solve (D-2)/(4(D-1)) = 1/6 → D=4)

### What's speculative
- **Why should ξ = ξ_conf?** The half-density computation gives ξ=1/6 regardless
  of D. The conformal coupling value ξ_conf depends on D. They coincide at D=4,
  but this coincidence needs a REASON, not just an observation.
- **Possible reason**: at D=4, the half-density curvature potential is conformally
  invariant (D(4-D)(∂σ)² = 0 when D=4). This means the half-density program is
  self-consistent under conformal rescalings ONLY at D=4. At other D, conformal
  rescaling introduces an anomalous term proportional to D(4-D).
- **Strength of selection**: this is a CONSISTENCY condition (conformal invariance
  of the half-density potential), not a dynamical selection. It says D=4 is
  special but doesn't say D≠4 is forbidden.

## Verdict
**PARTIAL (suggestive but not conclusive).** The chain composition → d=4 exists
but the crucial step (why ξ must equal ξ_conf) is a consistency argument, not
a derivation. The conformal invariance at D=4 is a remarkable coincidence that
strengthens the case for d=4 being physically distinguished, but it's not a
proof that other dimensions are excluded.

## Novelty assessment
**MINOR (connection).** The individual steps are known (P4.2, half-density, S204,
conformal coupling). The novelty is tracing the complete chain from the single
master axiom to d=4. This could strengthen the cornerstone paper's concluding
remarks if promoted carefully.

## Spawned cycles
None. Q1 status unchanged (suggestive, not conclusive). Record in notebook.
