# S75 Red Team: What could go wrong?

Date: 2026-02-12

## Failure modes

- **"The semigroup law only holds at O(h²), not exactly"**
  - Response: correct. At O(h³), new parameters (rooted-tree coefficients) enter, and the one-parameter family is no longer closed. This is precisely the manuscript's point: closure failure at higher order forces enlarging the family (counterterms). The O(h²) semigroup is the leading-order story, and the semigroup law IS exact at that order.

- **"The continuous limit b = e^t is formal for non-integer b"**
  - Response: at the level of the formula τ_b(a) = a/b + (b-1)/(2b), the expression is analytic in b for b > 0 and the semigroup law τ_b ∘ τ_c = τ_{bc} holds for all real b > 0. The restriction to integer b in the composition derivation is only for the step-counting argument; the formula extends to all b > 0 by continuity.

- **"This is too simple to be interesting"**
  - Response: simplicity is the point. The manuscript aims to show that RG structure appears in the simplest refinement problems. A one-line beta function with a universal attractor is the clearest possible illustration.

- **"The connection to Butcher group (H6.2) is lost at leading order"**
  - Response: the Butcher group involves all rooted-tree coefficients, which is the multi-parameter extension. The one-parameter S75 result is the leading-order projection of the Butcher group to its simplest factor. The multi-parameter extension is noted in H6.2 and does not need to be reproved here.
