# 1D Delta-Potential Resolvent as Rank-One Perturbation

**Date:** 2026-02-13
**Target:** delta-objects satellite, Section 4 (point interactions as rank-one kernels)

## Setup

Consider the 1D Hamiltonian with a delta potential:
$$
H = -\frac{\hbar^2}{2m}\frac{d^2}{dx^2} + g\,\delta(x), \qquad g < 0 \text{ (attractive)}.
$$

The free resolvent (Green's function) at energy $E = -\hbar^2\kappa^2/(2m)$ with $\kappa > 0$ is:
$$
G_0(x,x';E) = -\frac{m}{\hbar^2\kappa}\,e^{-\kappa|x-x'|}.
$$

## Rank-one perturbation formula

By the resolvent identity for a rank-one perturbation $V = g|\delta\rangle\langle\delta|$:
$$
G(x,x';E) = G_0(x,x';E) + \frac{g\,G_0(x,0;E)\,G_0(0,x';E)}{1 - g\,G_0(0,0;E)}.
$$

The correction term **factors** as $f(x) \cdot f(x')$ where $f(x) = G_0(x,0;E)$.
This is exactly the rank-one kernel structure: the point interaction contributes a term
proportional to $|0\rangle\langle 0|$ in the resolvent expansion.

## Explicit computation

Substituting:
- $G_0(x,0;E) = -\frac{m}{\hbar^2\kappa}e^{-\kappa|x|}$
- $G_0(0,0;E) = -\frac{m}{\hbar^2\kappa}$

The denominator: $1 - g\,G_0(0,0;E) = 1 + \frac{gm}{\hbar^2\kappa}$.

Full resolvent:
$$
G(x,x';E) = -\frac{m}{\hbar^2\kappa}e^{-\kappa|x-x'|}
+ \frac{g\,\frac{m^2}{\hbar^4\kappa^2}\,e^{-\kappa(|x|+|x'|)}}{1 + \frac{gm}{\hbar^2\kappa}}.
$$

## Bound state from the pole

The bound state occurs when the denominator vanishes:
$$
1 + \frac{gm}{\hbar^2\kappa} = 0 \implies \kappa = -\frac{gm}{\hbar^2} = \frac{|g|m}{\hbar^2}.
$$

This gives $E = -\frac{\hbar^2\kappa^2}{2m} = -\frac{mg^2}{2\hbar^2}$, the unique bound state.

At the pole, the resolvent has residue proportional to:
$$
e^{-\kappa(|x|+|x'|)} = e^{-\kappa|x|}\cdot e^{-\kappa|x'|} = \psi_b(x)\,\psi_b(x'),
$$
where $\psi_b(x) = \sqrt{\kappa}\,e^{-\kappa|x|}$ is the normalized bound-state wavefunction.
This confirms the rank-one structure: the bound-state pole in the resolvent is a rank-one projector $|\psi_b\rangle\langle\psi_b|$.

## Half-density interpretation

In the half-density kernel formalism of the paper:
$$
\mathsf{G}(x,x';E) = G(x,x';E)\,|dx|^{1/2}|dx'|^{1/2}.
$$

The factored rank-one piece:
$$
\mathsf{G}_{\text{rank-1}} \propto \left(e^{-\kappa|x|}|dx|^{1/2}\right) \otimes \left(e^{-\kappa|x'|}|dx'|^{1/2}\right)
$$
is manifestly a product of half-densities — each factor is a half-density on the line.

## What to promote

**Example 4.1**: Worked resolvent of the 1D delta potential showing:
1. The rank-one perturbation formula (factored correction)
2. Bound state as pole ↔ rank-one projector
3. Connection to half-density kernel language

Keep it concise (~8-10 lines of markdown for the promoted example).
