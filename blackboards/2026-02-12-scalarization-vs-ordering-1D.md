# Scalarization gauge vs ordering ambiguity: 1D toy computation

Date: 2026-02-12
Cycle: S73
Source: DX02 anomaly (scalarization ↔ ordering parallel)

## Setup

1D quantum mechanics on M with metric g(q). Half-density kernel:

K(x,y) = k(x,y) |dx|^{1/2} |dy|^{1/2}

Two scalarization choices:
- **Flat**: σ₁ = |dx|^{1/2}, scalar kernel k₁(x,y)
- **Metric-derived**: σ₂ = g(x)^{1/4} |dx|^{1/2}, scalar kernel k₂(x,y) = g(x)^{-1/4} g(y)^{-1/4} k₁(x,y)

From PA-D1.7: r(x) = σ₂/σ₁ = g(x)^{1/4}, so k₂ = r(x)^{-1} r(y)^{-1} k₁.

## Test criterion (from DX02-debate)

- **Confirms**: two σ_* choices yield quantization maps differing by a known ordering term (e.g., Q_W - Q_L = -iℏ/2 f'(q̂)).
- **Refutes**: σ_*-rescaling acts on the *amplitude* (zeroth-order in ℏ), not the *phase*.

## Observation 1: semiclassical kernel

The short-time kernel has the form:

k(x,y,t) ~ A(x,y,t) exp(i S_cl(x,y) / ℏt)

where A is the Van Vleck amplitude and S_cl is the classical action.

The σ_*-rescaling multiplies by r(x)^{-1} r(y)^{-1}, which is:
- Real-valued
- ℏ-independent
- Smooth
- Multiplicative on the amplitude A

**It does not touch the phase S_cl/ℏ.** This already suggests it cannot generate ordering corrections (which live in the subleading ℏ-dependent phase).

## Observation 2: explicit kernel comparison for A(q,p) = f(q)p

Reference from Section 10.2:

- Left ordering Q_L(A) = f(q̂)p̂, kernel: k_L(x,y) = f(x)(-iℏ)δ'(x-y)
- Weyl ordering Q_W(A), kernel: k_W(x,y) = ½(f(x)+f(y))(-iℏ)δ'(x-y)
- Difference: Q_W - Q_L has kernel ∝ f'(x)δ(x-y) with coefficient -iℏ/2

Now apply the σ_*-rescaling to k_L:

k_{L,2}(x,y) = g(x)^{-1/4} g(y)^{-1/4} f(x)(-iℏ)δ'(x-y)

Expand g(y)^{-1/4} near y = x:

g(y)^{-1/4} ≈ g(x)^{-1/4} [1 - ¼ (g'/g)(x) · (y-x) + O((y-x)²)]

Multiply through:

g(x)^{-1/4} g(y)^{-1/4} ≈ g(x)^{-1/2} [1 - ¼ (g'/g)(x) · (y-x) + ...]

Apply to f(x)(-iℏ)δ'(x-y):

k_{L,2}(x,y) ≈ g(x)^{-1/2} [f(x)(-iℏ)δ'(x-y) + ¼(g'/g)(x) f(x)(-iℏ) · (-(y-x)δ'(x-y)) + ...]

Use distributional identity: -(y-x)δ'(x-y) = δ(x-y). Therefore:

k_{L,2}(x,y) ≈ g(x)^{-1/2} [f(x)(-iℏ)δ'(x-y) + ¼(g'/g)(x) f(x)(-iℏ)δ(x-y)]

The correction term ¼(g'/g)(x) f(x)(-iℏ)δ(x-y) is:
- O(ℏ) [from the -iℏ factor]
- Proportional to f(x) · g'(x)/g(x)
- A zeroth-order (multiplication) operator

## Observation 3: algebraic independence

Comparing the two types of O(ℏ) corrections:

| Source | O(ℏ) correction | Structure |
|--------|-----------------|-----------|
| Ordering (Weyl vs left) | -iℏ/2 · f'(x) · δ(x-y) | Derivative of the **symbol** |
| Scalarization (flat → metric) | -iℏ/4 · (g'/g)(x) f(x) · δ(x-y) | Derivative of the **gauge** × symbol |

These are algebraically independent:
- The ordering correction differentiates the classical observable f
- The scalarization correction differentiates the gauge factor r = g^{1/4}

A constant scalarization change (r = const) produces **no** O(ℏ) correction at all — it is a pure normalization (consistent with PA-D1.8a: constant rescaling = Z-factor).

An x-dependent scalarization change produces O(ℏ) corrections, but these are **connection-type** terms (proportional to ∂ ln r), not **ordering-type** terms (proportional to ∂f).

## Observation 4: geometric interpretation

The scalarization correction ¼(g'/g)(x) is a Christoffel-symbol-like connection term. It arises because changing from flat to metric scalarization introduces a nontrivial connection on the line bundle of half-densities. This is a **gauge/connection correction**, not an ordering correction.

In the language of deformation quantization (Section 7): ordering ambiguity corresponds to different choices of the bilinear operators B_n(f,g) in the star product f ⋆_ℏ g = fg + Σ ℏ^n B_n(f,g). The scalarization change acts by conjugation on the algebra (a similarity transformation f → r^{-1} f r on operators), which preserves the *form* of the star product while changing the *representatives* by a gauge transformation. These are different layers of ambiguity.

## Conclusion

**The DX02 anomaly is resolved as "notational parallel only."**

Scalarization gauge freedom and ordering ambiguity are structurally analogous (both are representative choices with controlled freedom), but they are **algebraically independent**:
1. Constant scalarization changes are pure normalizations (Z-factors) — no ordering effect.
2. x-dependent scalarization changes generate connection-type O(ℏ) corrections (∝ ∂ ln r · f), not ordering-type corrections (∝ ∂f).
3. The σ_*-rescaling acts on the **amplitude** of the kernel, confirming the refutation criterion from DX02-debate.

The parallel noted in DX02 is real at the *categorical* level (both are "gauge freedoms in the passage from intrinsic to representative"), but the specific algebraic content is orthogonal. Scalarization is a gauge transformation on the Hilbert space bundle; ordering is a choice of quantization map on the observable algebra. They commute in the sense that neither determines the other.
