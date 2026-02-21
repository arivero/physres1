# H^2 V_HD Independent Computation (Critic prep for Task #14 review)

## Setup
Poincare disk in geodesic polar: ds^2 = drho^2 + sinh^2(rho) dtheta^2, K=-1, R=-2.
Half-density: w = (sinh rho)^{1/2}, H_tilde = w(-Delta_g)w^{-1} = H_L + V_HD.

## Result
V_HD(H^2) = 1/4 - 1/(4 sinh^2(rho))

Equivalent: = 1/2 - 1/(4 tanh^2(rho))

## Properties
- V_HD -> -1/(4 rho^2) + 1/3 + O(rho^2) as rho -> 0 (centrifugal singularity)
- V_HD -> +1/4 as rho -> infinity
- Constant part = +1/4 = -R/8 (matches general pattern)

## Spectral comparison
- Spec(-Delta_g on H^2) = [1/4, infinity) (continuous, famous McKean result)
- Spec(H_L) = different (flat-measure operator, no lower bound shift)
- V_HD corrects H_L -> H_tilde which reproduces LB spectrum
- The +1/4 asymptotic value of V_HD is responsible for the spectral gap

## Pattern across manifolds
| Manifold | K   | V_HD constant | V_HD singular       | Spectrum           |
|----------|-----|---------------|---------------------|--------------------|
| R^d      | 0   | 0             | 0                   | [0,inf) continuous |
| S^2      | +1  | -1/4          | -1/(4 sin^2 theta)  | l(l+1) discrete    |
| S^3      | +1  | -1 (uniform)  | 0                   | l(l+2) discrete    |
| H^2      | -1  | +1/4          | -1/(4 sinh^2 rho)   | [1/4,inf) cont.    |

General: constant part = -R/8 for 2D surfaces of revolution.
For S^3: V_HD = -(d-1)^2/4 = -1 at d=3 (matches).

## What to check in computationalist's work
1. V_HD formula matches: 1/4 - 1/(4 sinh^2 rho)
2. SymPy eigenvalue verification (H^2 is non-compact, so verify via explicit solutions)
3. Spectral bottom = 1/4 reproduced by H_tilde
4. For m=0 (radial): effective potential V_eff = V_HD = 1/4 - 1/(4 sinh^2 rho)
   For m != 0: V_eff = V_HD + m^2/sinh^2(rho) = 1/4 + (m^2 - 1/4)/sinh^2(rho)
5. Connection to general formula: V_HD on M^d = scalar curvature potential from
   half-density conjugation. Not simply R/8 in general (R/8 is only the d=2 constant part).
