# C114 Red Team: Failure modes for linear/nonlinear beta paragraph

Date: 2026-02-12

## Failure modes

- **Cross-reference to "Derivation D6.2, Section 8.3" is imprecise:**
  - Mitigation: D6.2 (line 930) is the toy logarithmic divergence derivation; Section 8.3 (line 877) derives the RG equation. The reference is to the QFT-type beta function β(g) = -cg² from D6.2, which requires order ≥ 2. This is accurate.

- **Essential-singularity formula Λ* ~ μ exp(1/(cg)) has a sign issue:**
  - Mitigation: for β(g) = -cg² with c > 0, the transmutation scale from PA-D1.6a is Λ* ~ μ exp(-∫ dg/β) = μ exp(1/(cg)). The sign convention matches the manuscript's PA-D1.6a. For asymptotic freedom (c > 0, g → 0 in UV), Λ* sets the IR confinement scale. The formula as written is correct.

- **"Order ≥ 2 at the fixed point" is too terse for the reader:**
  - Mitigation: the paragraph also gives the concrete example Λ* ~ μ exp(1/(cg)), which illustrates the essential singularity. The reader doesn't need the full classification — the contrast between "algebraic" and "essential singularity" is sufficient.

- **The paragraph might seem to criticize the toy model:**
  - Mitigation: the opening sentence ("A structural gap remains") is neutral — it describes a difference, not a deficiency. The closing sentence explicitly states the semigroup axioms are shared, keeping the toy model's value clear.
