# S73 Red Team: What could go wrong with this resolution?

Date: 2026-02-12

## Failure modes

- **"The distributional identity is applied incorrectly"**
  - -(y-x)δ'(x-y) = δ(x-y) is standard (integration by parts). The sign and normalization are consistent with Section 10.2's Q_W - Q_L computation.

- **"The expansion of g(y)^{-1/4} near y=x is too crude"**
  - Higher-order terms produce O(ℏ²) corrections (involving δ''(x-y) convolved with (y-x)², etc.), which are subleading and do not affect the O(ℏ) classification. The leading-order comparison is sufficient to distinguish the algebraic structures.

- **"The conclusion only applies to linear symbols A = f(q)p"**
  - The argument extends to general symbols: for A(q,p) = f(q)p^n, the ordering correction involves ∂f (from symmetrization), while the scalarization correction involves ∂(ln r) · f (from the Taylor expansion of r near the diagonal). The algebraic independence persists for all polynomial symbols.

- **"Resolving as 'notational parallel only' is too dismissive — the categorical insight has value"**
  - Agreed, and the resolution explicitly notes the structural analogy is real: both are representative choices with controlled freedom. The resolution is that the specific algebraic content is orthogonal, not that the analogy is meaningless. The categorial insight (both are gauge freedoms in the passage from intrinsic to representative) could inform future work on naturality of quantization.

- **"Should this resolution change anything in the manuscripts?"**
  - No. The anomaly was OPEN and exploratory (DX02). The manuscripts do not make any claim about scalarization ↔ ordering equivalence. The resolution confirms the manuscripts' existing clean separation (scalarization in the planck-area paper, ordering in the main paper Section 10.2).
