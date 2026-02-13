# S73 Execution: Test scalarization-gauge ↔ ordering-ambiguity connection

Date: 2026-02-12

## Summary
Performed a 1D QM toy computation comparing flat and metric-derived scalarizations of half-density kernels, testing whether the σ_*-rescaling generates ordering corrections.

## Computation performed

### Setup
- 1D manifold with metric g(q), two scalarizations: flat σ₁ = |dx|^{1/2} and metric σ₂ = g^{1/4}|dx|^{1/2}
- PA-D1.7 rescaling: k₂(x,y) = g(x)^{-1/4} g(y)^{-1/4} k₁(x,y)

### Key steps
1. Observed that σ_*-rescaling multiplies the kernel amplitude by an ℏ-independent real factor — does not touch the phase. This is already the refutation criterion.
2. Applied rescaling to the explicit kernel of Q_L(f(q)p) = f(q̂)p̂.
3. Expanded g(y)^{-1/4} near y = x using the distributional identity -(y-x)δ'(x-y) = δ(x-y).
4. Found O(ℏ) correction: ¼(g'/g)(x) f(x)(-iℏ)δ(x-y) — proportional to ∂(ln g) · f, a connection-type term.
5. Compared with Weyl–left ordering difference: -iℏ/2 f'(x)δ(x-y) — proportional to ∂f, a symbol-derivative term.

### Result
The two types of O(ℏ) corrections are algebraically independent:
- Ordering: differentiates the **classical observable** f
- Scalarization: differentiates the **gauge factor** r = g^{1/4}

Constant scalarization changes produce no ordering correction (pure Z-factor, consistent with PA-D1.8a). x-dependent changes produce connection-type corrections orthogonal to ordering corrections.

## Verdict
**DX02 anomaly RESOLVED as "notational parallel only."** The structural analogy (both are representative choices) is real at the categorical level, but the algebraic content is orthogonal. Scalarization is a gauge transformation on the Hilbert-space bundle; ordering is a choice of quantization map on the observable algebra.

## Blackboard
`blackboards/2026-02-12-scalarization-vs-ordering-1D.md`
