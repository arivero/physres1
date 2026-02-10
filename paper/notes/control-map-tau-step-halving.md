# Control Map \(\tau\) from Step-Halving: A Minimal Refinement-Comparison Witness

Status: internal note (non-citable). Goal: make the control-map idea in `Derivation D6.0` concrete with one explicit computation.

The pattern is:
1. define a family of approximations at resolution \(h\),
2. refine (replace one step by two half-steps),
3. compare back at the same reference resolution,
4. read off the induced parameter map \(\tau_b\).

## Setup: scalar ODE and a one-step ansatz family
Consider a scalar ODE
\[
y'(t)=f(y(t)).
\]
Write a one-step method at step size \(h\) as a map \(\Phi_h:\mathbb R\to\mathbb R\) so that \(y_{n+1}=\Phi_h(y_n)\).

Take a one-parameter family of ansatz maps (correct to first order) of the form
\[
\Phi_h^{(a)}(y)=y+h f(y)+a\,h^2 f'(y)f(y)+O(h^3),
\]
where \(a\in\mathbb R\) is the free coefficient at order \(h^2\).

Interpretation:
- \(a=0\) corresponds to the explicit Euler local form (no \(h^2\) correction).
- \(a=1/2\) matches the Taylor expansion of the exact flow to second order.

## Step-halving as a coarse-graining/refinement comparison
Define the step-halving operator \(H\) by
\[
H(\Phi_h):=\Phi_{h/2}\circ \Phi_{h/2},
\]
so that \(H(\Phi_h)\) is "two half-steps" compared at the same net step \(h\).

Compute \(H(\Phi_h^{(a)})\) to order \(h^2\).

First half-step:
\[
y_1=\Phi_{h/2}^{(a)}(y)=y+\frac{h}{2}f(y)+a\frac{h^2}{4}f'(y)f(y)+O(h^3).
\]
Second half-step:
\[
y_2=\Phi_{h/2}^{(a)}(y_1)
=y_1+\frac{h}{2}f(y_1)+a\frac{h^2}{4}f'(y_1)f(y_1)+O(h^3).
\]
To obtain \(y_2\) to order \(h^2\), it suffices to expand \(f(y_1)=f(y)+f'(y)(y_1-y)+O(h^2)\) and keep only the \(O(h)\) part of \(y_1-y\):
\[
f(y_1)=f(y)+\frac{h}{2}f'(y)f(y)+O(h^2),
\qquad
f'(y_1)f(y_1)=f'(y)f(y)+O(h).
\]
Hence
\[
y_2
=y_1+\frac{h}{2}\left(f+\frac{h}{2}f'f\right)+a\frac{h^2}{4}f'f+O(h^3)
=y+h f+\left(\frac14+\frac{a}{2}\right)h^2 f'f+O(h^3).
\]

Therefore, within the same ansatz family, step-halving induces the parameter map
\[
H(\Phi_h^{(a)})=\Phi_h^{(\tau_2(a))}+O(h^3),
\qquad
\tau_2(a)=\frac{a}{2}+\frac{1}{4}.
\]

## Fixed point and interpretation
The fixed point satisfies \(a_\ast=\tau_2(a_\ast)\), hence \(a_\ast=1/2\).

So even in this minimal model, "refine then compare" induces an RG-like flow on coefficients,
and the compatibility requirement (closure under refinement comparison) selects a distinguished value.

This is the operational meaning of the control map \(\tau_b\) used in the manuscript:
it is the parameter update required so that refined composition lands back in the chosen family.
When no such \(\tau_b\) exists without enlarging the family, refinement generates new terms (counterterms/effective operators).

## Promotion target
In `paper/main.md` Section 8.4, add a short derivation block exhibiting \(\tau_2(a)=a/2+1/4\) with fixed point \(1/2\) as an explicit witness for `Derivation D6.0`'s control-map language.

