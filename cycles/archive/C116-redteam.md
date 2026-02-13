# C116 Red Team: What a referee would attack in PA-E5b

Date: 2026-02-12

## Likely referee objections
- **Objection**: "The claim that G₀ 'carries the Van Vleck half-density weight' conflates the exact resolvent with the semiclassical approximation. The Van Vleck prefactor is a WKB/stationary-phase result, not the exact free resolvent."
  - Mitigation: The exact free resolvent G₀ IS a bi-half-density (it is the Schwartz kernel of a bounded operator on the half-density Hilbert space). The Van Vleck prefactor is its semiclassical approximation. The half-density transformation law is exact, not approximate. PA-D1.4 discusses the semiclassical form, but the underlying statement (kernel = bi-half-density) is exact. The remark's reference to PA-D1.4 is appropriate shorthand.

- **Objection**: "Saying the two factors are 'structurally independent' is vague. What does independence mean here?"
  - Mitigation: Independence means: (1) the half-density transformation law of G₀ under coordinate changes is determined by the free kinetic operator and does not depend on whether a contact interaction is present; (2) the T-matrix T(E) is a scalar (a number, not a kernel), so it has no coordinate-transformation weight. They multiply without interfering. This is clear from the factorization structure.
