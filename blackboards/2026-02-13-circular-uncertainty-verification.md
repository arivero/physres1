# Circular Uncertainty Relation: Worked Verification for Dirichlet Kernel

**Date:** 2026-02-13
**Target:** action-angle satellite, after Proposition 4.2

## Setup

For the Dirichlet kernel state $\psi_M(\phi) = \frac{1}{\sqrt{2\pi(2M+1)}} \sum_{m=-M}^{M} e^{im\phi}$:

### Circular concentration $R$

$\langle e^{i\phi} \rangle = \langle \psi_M | e^{i\phi} | \psi_M \rangle$

Using orthogonality $\int_0^{2\pi} e^{i(m-m'+1)\phi} d\phi = 2\pi \delta_{m+1,m'}$:

$$
\langle e^{i\phi} \rangle = \frac{1}{2M+1} \sum_{m=-M}^{M-1} 1 = \frac{2M}{2M+1}.
$$

This is real and positive (the state is peaked at $\phi=0$), so $R = 2M/(2M+1)$.

### Angular-momentum variance

By symmetry $\langle L_z \rangle = 0$. Then:
$$
\text{Var}(L_z) = \langle L_z^2 \rangle = \frac{\hbar^2}{2M+1} \sum_{m=-M}^{M} m^2 = \frac{\hbar^2 M(M+1)}{3}.
$$

(Using $\sum_{m=1}^{M} m^2 = M(M+1)(2M+1)/6$.)

### Verification of the bound

LHS of Prop 4.2: $\text{Var}(L_z) \cdot (1 - R^2)$
$$
= \frac{\hbar^2 M(M+1)}{3} \cdot \left(1 - \frac{4M^2}{(2M+1)^2}\right)
= \frac{\hbar^2 M(M+1)}{3} \cdot \frac{4M+1}{(2M+1)^2}.
$$

RHS of Prop 4.2: $\frac{\hbar^2}{4} R^2 = \frac{\hbar^2 M^2}{(2M+1)^2}$

Ratio LHS/RHS:
$$
\frac{4(M+1)(4M+1)}{3 \cdot 4M} = \frac{(M+1)(4M+1)}{3M} \to \frac{4M}{3} \quad (M \to \infty).
$$

So:
- For $M=1$: LHS/RHS = $2 \cdot 5 / 3 = 10/3 \approx 3.3$
- For $M=5$: LHS/RHS = $6 \cdot 21 / 15 = 126/15 = 8.4$
- For large $M$: LHS/RHS $\sim 4M/3 \to \infty$

The bound is satisfied but far from tight. The Dirichlet kernel is NOT a minimum-uncertainty state for the circular relation.

## What to promote

**Example 4.3** showing that for the Dirichlet kernel state:
- $R = 2M/(2M+1)$ — approaches 1 as packet narrows
- $\text{Var}(L_z) = \hbar^2 M(M+1)/3$ — quadratic growth
- The circular uncertainty relation is satisfied with growing slack ($\sim 4M/3$)
- Physical takeaway: narrower angular packets require disproportionately more angular-momentum spread
