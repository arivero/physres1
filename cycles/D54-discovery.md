# D54 Discovery: Does composition-forces-quantization extend to QFT (infinite d)?

Date: 2026-02-14
Parent: D53 (single-axiom P4.2), path-integral-normalization paper

## Novelty target
Determine if the P4.2 axiom-reduction chain (composition as master axiom)
extends from quantum mechanics (finite d) to quantum field theory (functional
integral over field configurations, "infinite d").

## Key analysis

### QM setting (recap from D49-D53)
- Configuration space: ℝ^d (finite-dimensional)
- Kernel: K(x,y;t) with [K] = L^{-d}
- Composition: ∫ K(x,z;t₁) K(z,y;t₂) d^d z = K(x,y;t₁+t₂)
- d/2 normalization forced by composition (D49)
- All P4.2 conclusions from single axiom (D53)

### QFT setting
- Configuration space: field space Φ = {φ: ℝ^d → ℝ} (infinite-dimensional)
- Kernel: K[φ_f, φ_i; t_f, t_i] (functional of boundary field configurations)
- Composition: ∫ K[φ_f, φ; t₁] K[φ, φ_i; t₂] Dφ = K[φ_f, φ_i; t₁+t₂]
  where Dφ is the functional measure

### Mode-by-mode decomposition
For free fields, expand φ(x) = Σ_k a_k e_k(x). Each mode a_k ∈ ℝ behaves like
a QM harmonic oscillator. The functional kernel factorizes:
K[φ_f, φ_i; t] = Π_k K_k(a_k^f, a_k^i; t)

Each factor K_k satisfies QM composition with d_eff = 1. So:
- **d/2 normalization per mode**: each factor has (m_k/2πiℏt)^{1/2}
- **Total normalization**: Π_k (m_k/2πiℏt)^{1/2} = det(-∂²+m²)^{1/2} / (2πiℏt)^{N/2}
  where N = number of modes (→∞)

### What composition forces in QFT
1. **Per-mode d/2**: Each mode gets the 1/2 exponent. This is P4.2 applied mode-by-mode.
2. **Functional determinant**: The total normalization is the zeta-regularized functional
   determinant det'(−Δ+m²)^{1/2}. This is the infinite-d analog of (m/2πiℏt)^{d/2}.
3. **UV divergences**: The product Π_k (m_k)^{1/2} diverges (UV). This IS the
   origin of renormalization: composition per-mode is exact, but assembling all
   modes requires regularization. The divergence is NOT a failure of composition
   — it's a failure of naive infinite products.

### Connection to RCP axioms
- **A1 (composition)**: holds mode-by-mode (exact) and functionally (with regularization)
- **A4 (scale invariance)**: the regularization dependence IS the RG flow
- So in QFT: A1 forces quantization per mode; A4 controls the infinite-product assembly

### Verdict
**YES, with qualification.** The composition-forces-quantization argument extends
to QFT mode-by-mode. The new ingredient in QFT is the ASSEMBLY of infinitely many
modes, which requires A4 (scale/RG). This gives a clean two-layer picture:

| Layer | Axiom | Role |
|---|---|---|
| Quantization | A1 (composition) | Forces ℏ, d/2, Gaussian per mode |
| Renormalization | A4 (scale) | Assembles modes, controls divergences |

P4.2 lives entirely in Layer 1. The RCP paper's claim that "A4 is the QFT layer"
is confirmed: QFT = QM (A1) + infinite modes (A4).

## Novelty assessment
**MODERATE (synthesis).** The mode decomposition is textbook. The connection to
the P4.2 axiom reduction is novel: explicitly showing composition forces quantization
per-mode and scale-invariance handles the assembly.

## Success criteria met
1. ✓ P4.2 extends to QFT mode-by-mode (each mode is a QM system)
2. ✓ New ingredient identified (infinite-mode assembly = A4/RG)
3. ✓ Two-layer picture (quantization A1, renormalization A4) cleanly separates concerns
4. ✓ Functional determinant is infinite-d analog of (m/2πiℏt)^{d/2}

## Spawned cycles
Consider C-cycle promoting the two-layer table to rcp-foundations Section 7
(outlook / forward connections). Fits naturally with existing Section 7.4 content.
