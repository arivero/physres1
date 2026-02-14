# D65 Discovery: Does composition force the Born rule?

Date: 2026-02-14
Parent: D53 (single-axiom), D55 (irreducible setup)

## Novelty target
If composition (A1) is the single master axiom for P4.2, does it also
force the probabilistic interpretation of quantum mechanics (Born rule)?

## Analysis

### Chain: composition → Born rule
1. **Composition** (A1): K_t ∘ K_s = K_{t+s} forces a one-parameter semigroup.
2. **Identity limit** (derivable from A1+setup, D53): K_0 = δ makes it a group
   (at least formally; inverses exist via analytic continuation or K_{-t}).
3. **Self-adjoint generator** (from setup: Hamiltonian H is self-adjoint as
   required by domain theory): Stone's theorem gives a *unitary* group U(t) = e^{-iHt/ℏ}.
4. **Unitarity → norm preservation**: ||U(t)ψ|| = ||ψ|| for all t.
5. **Norm preservation + Gleason's theorem** (dim H ≥ 3, always satisfied for
   L²(ℝ^d)): the unique consistent probability measure on projections is
   p(P) = Tr(ρP), recovering the Born rule |⟨φ|ψ⟩|² for pure states.

### What is forced vs assumed
- **Forced by A1**: semigroup structure, kernel form (Gaussian), d/2 normalization,
  κ=ℏ, exponential weight
- **Forced by A1 + setup (D53)**: identity limit, hence group structure
- **Forced by setup (D55)**: self-adjoint H (from domain theory on ℝ^d)
- **Forced by Stone's theorem**: unitarity (standard functional analysis)
- **Forced by Gleason**: Born rule (unique consistent probability measure)

### Summary
Composition + physical setup → semigroup → group → unitary → norm-preserving →
Born rule. Each step is a standard theorem; the chain is novel as a synthesis.

## Verdict
**MINOR (synthesis of known results).** Each step in the chain is well-known.
The value is the observation that the Born rule sits at the end of a deductive
chain starting from composition alone (+ setup). The probabilistic interpretation
is not an independent axiom; it's a consequence of the compositional structure.

### Caveats
- Gleason requires dim ≥ 3 (trivially satisfied for L²(ℝ^d), but fails for qubits
  without additional assumptions)
- Self-adjointness is setup, not A1
- The "derivation" is really a chain of standard theorems assembled together

### Promotability
Notebook-quality synthesis. Could be a 2-sentence remark in cornerstone or RCP
foundations (Section 6 outlook): "The composition axiom also forces the
probabilistic interpretation via Stone → unitarity → Gleason."

## Spawned cycles
None (too minor for standalone C-cycle; could be batched with other remarks).
