# S73 Debate: Is the resolution robust?

Date: 2026-02-12

## Question
The S73 computation resolves the DX02 anomaly as "notational parallel only." Could the resolution be wrong?

## Potential weaknesses

### 1. "The 1D toy model misses higher-dimensional effects"
In higher dimensions, the scalarization rescaling r(x) could interact with the symbol calculus in more complex ways (e.g., through mixed partial derivatives). However, the core argument is dimension-independent: σ_*-rescaling multiplies the kernel by r(x)^{-1}r(y)^{-1}, which is always an ℏ-independent amplitude factor. The phase (and hence the ordering information) is untouched regardless of dimension.

### 2. "Connection-type corrections might combine with curvature to mimic ordering"
On a curved manifold, the Christoffel-symbol-like terms from scalarization could combine with curvature terms in the kinetic operator to produce effective ordering corrections. This is true in the sense that the *total* O(ℏ) correction to a propagator on a curved manifold receives contributions from both ordering choice and scalarization gauge. But these are separate, additive contributions — they do not interact multiplicatively. The correct statement is: on a curved manifold, the O(ℏ) correction has the form (ordering term) + (connection term from scalarization), and these are independently adjustable.

### 3. "In deformation quantization, gauge equivalence of star products could relate them"
Two star products related by a gauge equivalence (f → Tf = f + ℏT₁f + ...) give isomorphic quantum algebras. Scalarization changes might be such a gauge equivalence. But this is exactly the point: a gauge equivalence of star products is NOT an ordering change; it is an isomorphism that preserves the physics. Ordering ambiguity is the residual non-uniqueness *within* a gauge-equivalence class.

## Assessment
The resolution is robust. The three potential weaknesses all reinforce rather than undermine the conclusion: scalarization and ordering operate on different algebraic layers (Hilbert space bundle vs. observable algebra) and their O(ℏ) effects are structurally distinguishable.
