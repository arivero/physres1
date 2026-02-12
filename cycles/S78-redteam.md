# S78 Red Team: What could be wrong with the Van Vleck × transmutation analysis?

Date: 2026-02-12

## Likely objections
- **Objection**: "The Lippmann–Schwinger form G = G₀ + G₀TG₀ is a resolvent identity, not a time-domain kernel factorization. The time-domain convolution involves an integral over intermediate times, not a simple product."
  - Mitigation: Correct — the resolvent (energy-domain) factorization is cleaner than the time-domain one. The structural point (T is a scalar at the interaction point, G₀ factors carry half-density weight) holds in the resolvent form. The time-domain version requires a convolution, but the half-density weight is carried by the G₀ factors at the endpoints regardless. The argument is valid as stated in the resolvent picture.

- **Objection**: "Saying κ* 'provides the scalarization constant' is too strong — κ* is just a parameter of the T-matrix, not a choice of reference half-density σ*."
  - Mitigation: The blackboard correctly phrases this as 'κ*^{-1} is a natural candidate for L*' rather than claiming it is forced. The point is dimensional: κ*^{-1} is the unique RG-invariant scale of dimension length^{d/2} available in d = 2. Whether one actually uses it as σ* requires the PA-H2.4 hypothesis. No overclaim present.
