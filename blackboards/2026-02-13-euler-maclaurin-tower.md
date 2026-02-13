# Euler–Maclaurin Formula as a Correction Tower

**Date:** 2026-02-13
**Target:** uncuttable satellite, Remark 2.3 after Remark 2.2

## Context
Section 2 of the uncuttable satellite has:
- Section 2 (toy model): Riemann sums Q_N → ∫f dt as refinement limit
- Example 2.1: derivative as counterterm-subtracted limit (f(x+ε)/ε diverges; subtracting f(x)/ε gives f'(x))
- Remark 2.2: higher-order Taylor counterterms (tower of subtractions)

Natural next step: the Euler–Maclaurin formula gives the analogous correction tower for the *integral* approximation.

## The formula

For f ∈ C^{2p+2}[a,b] and h = (b-a)/N, the left-point Riemann sum satisfies:
$$
\sum_{k=0}^{N-1} f(a+kh)\,h = \int_a^b f(t)\,dt
+ \sum_{j=1}^{p} \frac{B_j}{j!}\,h^j\,\bigl[f^{(j-1)}(a) - f^{(j-1)}(b)\bigr]
+ O(h^{2p+1})
$$
where B_j are Bernoulli numbers (B_1 = -1/2, B_2 = 1/6, B_3 = 0, B_4 = -1/30, ...).

Since B_{2k+1} = 0 for k ≥ 1, the effective corrections are:
- j=1: -(h/2)[f(b)-f(a)] (trapezoidal correction)
- j=2: (h²/12)[f'(b)-f'(a)]
- j=4: -(h⁴/720)[f'''(b)-f'''(a)]
- etc.

## Structural parallel

Each correction term has the form:
1. A power of the "regulator" h (mesh size)
2. Multiplied by **boundary/endpoint data** (derivatives of f at a and b)

This parallels perturbative renormalization:
- The "regulator" h is the UV cutoff (discretization scale)
- The "counterterms" are local (boundary) quantities
- Each order in the expansion removes one further power of h
- The "renormalized" quantity (the integral) is regulator-independent

The trapezoidal sum (adding the j=1 correction) improves from O(h) to O(h²).
Simpson's rule (j=1,2 corrections) reaches O(h⁴).
Each additional counterterm accelerates the approach to the continuum limit.

## What to promote

**Remark 2.3**: Brief remark (4-5 lines) noting the Euler-Maclaurin formula as the correction tower for the Riemann sum, paralleling Remark 2.2's Taylor tower. State the formula (concise form) and the structural message.
