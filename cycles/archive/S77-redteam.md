# S77 Red Team: Study failure modes

Date: 2026-02-12

## Failure modes

- **Dimensional analysis error in the d = 2 match:**
  - Mitigation: [g δ²(x)] = energy requires [g] = energy · length² = ℏ²/m in natural units. The renormalized coupling is traded for κ* with [κ*] = length^{-1}. Scalarization constant C ~ κ*^{-1} has [C] = length^1 = length^{d/2} for d = 2. Cross-checked against PA-E5 and P11.1.

- **Conflating "marginal coupling" with "dimensionless coupling":**
  - Mitigation: the contact coupling in 2D is classically marginal (log-divergent loop), meaning the naive dimension counting gives [g] matching the canonical scaling. The *renormalized* theory is parameterized by κ* regardless. The PA-H2.13 framework applies because what matters is β of order ≥ 2 at the fixed point, which holds for the 2D delta.

- **Over-reading the hierarchy: "semigroup ⊃ transmutation ⊃ sieve" might not be strictly nested:**
  - Mitigation: the nesting is precise in the stated sense: every theory with a dimension sieve (PA-H2.5 satisfied) also has transmutation (by taking the monomial as the scale), and every theory with transmutation also satisfies the semigroup axioms (P6.2). The converse fails at each step. This is a logical containment of *structural properties*, not of theories.
