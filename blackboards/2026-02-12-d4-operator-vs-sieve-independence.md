# D(4-D)/4 vanishing vs integrality sieve: independence check

Date: 2026-02-12
Cycle: S80
Question: Is the D(4-D)/4 operator-simplicity filter (H4.0b / HD-D1.3) logically independent of the integrality sieve (PA-D1.3 / PA-D1.3a)?

## Two filters

### Filter 1: Integrality sieve (PA-D1.3)
- Question: Can length^{d/2} be built from a monomial in G_d with integer exponents?
- Condition: k(d-2) = d/2 for integer k
- Solution: d = 4, k = 1
- Type: dimensional/algebraic (about coupling constants)
- Hypotheses used: PA-H2.3 (dimensionless f), PA-H2.4 (background-free), PA-H2.5 (integrality)

### Filter 2: D(4-D)/4 vanishing (H4.0b / HD-D1.3)
- Question: Does the half-density conjugated Laplacian simplify in the conformal class?
- Condition: D(4-D)/4 = 0
- Solution: D = 0 (trivial) or D = 4
- Type: differential-geometric (about operator structure)
- Hypotheses used: half-density bundle, conformal metric ansatz. No couplings, no integrality.

## Independence argument

The two filters operate on different objects:
1. The sieve operates on **coupling constants** — it asks whether dimensional analysis with restricted dependence selects a dimension.
2. The operator filter operates on **differential operators** — it asks whether the half-density kinetic operator simplifies at a specific dimension.

Neither implies the other:
- The sieve could select d = 4 even if the operator had no simplification there.
- The operator could simplify at D = 4 even if coupling dimensions didn't match.

They are **logically independent**.

## Common origin: the half-density weight d/2

Despite logical independence, both filters probe the same underlying quantity: **the half-density weight d/2**.

- **Sieve**: d/2 = k(d-2). Asks when d/2 is an integer multiple of the gravity coupling dimension.
- **Operator**: D(4-D)/4 = (D/2)(2 - D/2). The coefficient arises from the quadratic self-interaction of the conformal factor e^{-Dσ/2} in the half-density conjugation |g|^{1/4}Δ_g|g|^{-1/4}. The D/2 in the exponent IS the half-density weight.

The operator coefficient vanishes when D/2 = 2, i.e., when the half-density weight is exactly 2 (an area weight). The sieve gives d = 4 when the half-density weight d/2 = 2 equals the gravity coupling dimension d - 2 = 2 (also an area).

So both filters agree at d = 4 because **both probe the half-density weight, and d = 4 is where that weight equals 2 (area)**. But they probe it through different mechanisms:
- The sieve probes it algebraically (coupling-dimension matching).
- The operator probes it differentially (conformal quadratic-gradient cancellation).

## Structural summary

The D = 4 agreement of two independent filters is a **consistency check**, not a redundancy:
- Filter 1 (sieve): selects d = 4 as the unique dimension where the half-density weight can be supplied by a simple (integer-power) gravity coupling.
- Filter 2 (operator): selects D = 4 as the unique dimension where the half-density conjugated Laplacian has no conformal-quadratic-gradient potential.
- Common root: both trace back to "the half-density weight equals 2."

This is already stated in H4.0c: "The consistency of these two logically independent filters at D=4 is a nontrivial structural check: the half-density filter selects the kinematic arena, and the RG filter constrains the dynamics within it."

## Connection to three-level hierarchy (PA-E5a)

The operator filter sits at a different level from the three-level RG hierarchy:
- The RG hierarchy (semigroup → transmutation → dimension sieve) is about *scale compatibility*.
- The operator filter (D(4-D)/4) is about *representation compatibility* (how the kinetic operator depends on scalarization choices).
- These correspond to different legs of RCP (P10.1): scale compatibility (§8/§10.1) vs representation compatibility (§6-7/§10.2).

So the D = 4 triple coincidence (sieve + operator + gauge marginality) is a *cross-leg* consistency check within RCP:
1. Scale leg: d = 4 from coupling-dimension sieve (PA-D1.3).
2. Representation leg: D = 4 from operator simplicity (H4.0b).
3. Both legs: D = 4 from gauge marginality (H4.0c, which straddles scale and representation).
