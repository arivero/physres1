# S219 — Execution: dirac-probes Section 5.2 expansion study

## Study findings
The delta-objects companion note (Remarks 4.2, 4.3) provides the complete mathematical
content for expanding Section 5.2:

- **d=1**: G₀(0,0;E) finite. Rank-one perturbation gives unique bound state E = -mg²/(2ℏ²).
  No renormalization. Coupling g is physical.
- **d=2**: G₀(0,0;E) ~ ln(Λ/κ). Bare coupling runs as g(Λ) ~ 2πℏ²/(m ln(Λ/α)).
  Dimensional transmutation generates scale α. [Jackiw1991DeltaPotentials]
- **d=3**: G₀(0,0;E) ~ Λ. Power-law renormalization. Physical parameter is
  scattering length a. [AlbeverioGesztesyHoeghKrohnHolden2005]
- **d≥4**: H²(ℝ^d) ↪ C⁰ fails (Morrey: need d<4). No non-trivial self-adjoint
  extension. Point invisible to Laplacian.

The key bridge to the dirac-probes path-integral normalization:
G₀(0,0;E) ∝ ∫₀^∞ t^{-d/2} e^{-κ²t} dt, where the t^{-d/2} singularity is the
same exponent as each segment's normalization in Section 4.5.
