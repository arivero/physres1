# S71 Execution: Enumerate RCP structural predictions

Date: 2026-02-12

## Sections analyzed
- Section 10.3 (P10.1, D10.1a, D10.1, H10.1): RCP formulation and bridge to Sections 3–8.
- Section 6 (D4.1, D4.1a): semigroup composition → t^{-d/2} normalization.
- Section 6.2: additivity → exponential weighting.
- Section 3 (area-law): partition-level exactness of conservation law.
- Section 7 (P5.1, D5.1, P5.2, H5.1): deformation quantization → Poisson bracket recovery, ordering as equivalence.
- Section 8 (D6.0, D6.1, P6.2, D6.2, D6.2a, D6.3, H6.2): RG semigroup, counterterms, control maps, rooted trees.
- Section 10.5 (D11.1, D11.2, P11.1): 2D delta interaction — beta function, dimensional transmutation.

## Predictions enumerated

### Partition compatibility (3 predictions)
1. **t^{-d/2} normalization** — semigroup closure forces the exponent (D4.1a). The manuscript's simplest witness of RCP falsifiability.
2. **Exponential weighting** — additivity + locality → e^{iS/ℏ} (Section 6.2).
3. **Area-law exactness** — conservation at each finite refinement step (Section 3).

### Representation compatibility (2 predictions)
4. **Poisson-bracket recovery** — B_1 antisymmetric part = i{f,g} (D5.1).
5. **Ordering equivalence** — different star products share the same classical bracket (P5.2, H5.1).

### Scale compatibility (4 predictions)
6. **RG semigroup composition** — W_{Λ→κ} = W_{μ→κ} ∘ W_{Λ→μ} (P6.2).
7. **Beta function from dT/d(ln μ) = 0** — 2D delta example (D11.2).
8. **Dimensional transmutation** — μ-independent bound-state energy (P11.1).
9. **Counterterm subtraction as difference quotient** — local divergence cancellation (D6.3).

### Cross-leg (2 predictions)
10. **Control map existence** (τ) — D6.0, D10.1a, D6.2a toy model.
11. **Rooted-tree bookkeeping** — Butcher group ↔ Connes-Kreimer Hopf algebra (H6.2).

## Falsifiability assessment
- **Strong** (4): P1 (t^{-d/2}), P4 (Poisson bracket), P6 (RG semigroup), P7 (beta function).
- **Medium** (2): P2 (exponential weighting), P10 (control map).
- **Weak/organizational** (5): P3, P5, P8, P9, P11.

The strong predictions suffice to resolve the tautology concern: each is a consequence that *could* fail (an alternative ansatz exists that breaks closure), so RCP is not vacuously satisfied.

## Resolution
The "anomaly objection" (quantum anomalies interpretable as both violations and confirmations of RCP) dissolves because:
- RCP does not predict the absence of anomalies; it predicts that anomaly structure is compatible across scales (anomaly matching).
- RCP is restrictive (eliminates non-compatible theories) without being uniquely selective (like general covariance).
- Explicit witnesses of closure failure exist (t^{-α} with α ≠ d/2).

## Promotion candidate
No immediate manuscript edit needed. The existing D10.1a already contains the falsifiability statement with the t^{-d/2} witness. If a reviewer raises the tautology concern, the blackboard note provides a ready enumeration. A future C cycle could add a parenthetical remark to D10.1a listing the other witnesses, but this is not urgent.

## Blackboard output
`blackboards/2026-02-12-rcp-predictions.md`
