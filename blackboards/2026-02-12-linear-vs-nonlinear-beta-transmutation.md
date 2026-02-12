# Linear vs nonlinear beta functions: when does a semigroup generate a transmutation scale?

Date: 2026-02-12
Cycle: S76

## Motivation
D6.2a-sg proved that the ODE step-refinement control maps form a semigroup with beta function β(a) = 1/2 - a. PA-D1.6a shows that a QFT-type beta function β(g) = -cg² + O(g³) generates a non-analytic transmutation scale Λ* ~ μ exp(-1/(bg(μ))). Both satisfy the P6.2 semigroup axioms. Question: is D6.2a-sg a witness for PA-H2.13 (transmutation as scale-supplier), or are they structurally different?

## Setup: common semigroup framework (P6.2)

Both systems satisfy:
1. W_{Λ→Λ} = id
2. W_{κ→μ} ∘ W_{Λ→κ} = W_{Λ→μ}  (semigroup composition)
3. Differentiable in ln Λ, yielding β(g) = dg/dt at t = 0

In D6.2a-sg: W is τ_b with t = ln b, g = a.
In PA-D1.6a: W is the standard RG map, t = ln(Λ/μ), g = coupling.

## Comparison table

| Feature | D6.2a-sg (ODE) | PA-D1.6a (QFT-type) |
|---------|----------------|---------------------|
| Beta function | β(a) = 1/2 - a (linear) | β(g) = -cg² + O(g³) (nonlinear) |
| Fixed point | a* = 1/2 (UV-attractive) | g* = 0 (asymptotic freedom if c > 0) |
| Flow solution | a(t) = 1/2 + (a₀-1/2)e^{-t} | g(t) ~ 1/(ct + 1/g₀) at leading order |
| RG invariant | None beyond a* | Λ* = μ exp(-1/(cg(μ))) — non-analytic |
| Transmutation? | **No** | **Yes** |
| Analyticity in coupling | a(t) is analytic in a₀ for all t | g(t) has essential singularity at g₀ = 0 |

## Key structural difference

### Why D6.2a-sg does NOT generate a transmutation scale

The RG-invariant transmutation scale is defined as:

Λ* ≡ μ exp(-∫^{g(μ)} dg'/β(g'))

For D6.2a-sg with β(a) = 1/2 - a:

∫^a da'/(1/2 - a') = -ln|1/2 - a| + const

So:
Λ* ∝ μ · |1/2 - a(μ)|^{-1}

But a(μ) = 1/2 + (a₀ - 1/2) · (μ/μ₀)^{-1} (since τ_{e^t}(a) = 1/2 + (a-1/2)e^{-t}, with t = ln(b) = ln(μ/μ₀)).

Substituting:
Λ* ∝ μ · |a₀ - 1/2|^{-1} · (μ/μ₀)

This is NOT μ-independent — the formula doesn't produce a well-defined transmutation scale.

Actually, let me redo this more carefully. In D6.2a-sg the "scale" is b (the refinement factor), and we parametrize b = e^t. The flow is:

da/dt = β(a) = 1/2 - a

with solution a(t) = 1/2 + (a₀ - 1/2)e^{-t}.

The integral ∫^a da'/β(a') = ∫^a da'/(1/2 - a') = -ln(1/2 - a) + const.

The "transmutation scale" would be:
b* = exp(∫^{a₀} da'/β(a')) = exp(-ln(1/2 - a₀) + const) ∝ 1/|a₀ - 1/2|

This IS a well-defined RG invariant — it's just a **power** of the deviation from the fixed point, not an exponential. Specifically, under the flow:

a₀ - 1/2 → (a₀ - 1/2) · b^{-1}

so b · (a₀ - 1/2) = const. The "transmutation scale" is just b* = 1/(a₀ - 1/2), which is analytic in the initial coupling a₀ (except at the fixed point itself).

### Why PA-D1.6a DOES generate a transmutation scale

For β(g) = -cg²:

∫^g dg'/β(g') = ∫^g dg'/(-cg'²) = 1/(cg) + const

So:
Λ* = μ · exp(1/(cg(μ))) — this is non-analytic (essential singularity) at g = 0.

The non-analyticity at g = 0 is crucial: it means the transmutation scale cannot be expressed as a power series in the coupling. This is genuine "new scale generation."

## Structural diagnosis

The difference between "transmutation" and "no transmutation" is precisely:

**Linear β → power-law RG invariant (analytic in coupling) → no new scale**
**Nonlinear β with order ≥ 2 zero → essential-singularity RG invariant → transmutation**

More precisely, if β(g) ~ -(g - g*)^n near the fixed point:
- n = 1 (linear): RG invariant is algebraic in (g - g*). No transmutation.
- n ≥ 2 (nonlinear): RG invariant involves exp(const/(g - g*)^{n-1}). Essential singularity → transmutation.

## Conclusion

**D6.2a-sg is a witness for P6.2 (semigroup structure) but NOT for PA-H2.13 (transmutation).**

The ODE toy model sits in the "linear beta" regime where the semigroup formalism works perfectly but no non-analytic scale generation occurs. The QFT-type transmutation requires β of order ≥ 2 at the fixed point.

This is actually a useful structural clarification for the project:
- P6.2 (semigroup axioms) is the **general framework** — it applies to both linear and nonlinear beta functions.
- D6.2a-sg is a **minimal witness** for P6.2.
- PA-H2.13 / PA-D1.6a is a **richer phenomenon** that requires nonlinear beta functions — the semigroup structure is necessary but not sufficient.

## Promotion candidate
A remark could be added to D6.2a-sg or to the Planck-area draft noting that the linear beta function does not generate transmutation, and that transmutation requires β of order ≥ 2 at the fixed point. This would sharpen the boundary between "semigroup structure" and "transmutation" in the project's conceptual hierarchy.

However, this might be better as a parenthetical in a future C cycle rather than as a standalone remark — the point is a clarification, not a new result.
