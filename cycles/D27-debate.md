# D27 Debate: Is “odd \(d\) blocks universality” actually a feature?

Date: 2026-02-14

## Question
If odd \(d\) forces half-integer \(\text{length}^{d/2}\) scales, is that an argument *against* universal scalarization, or a clue that universality must proceed via transmutation/non-analyticity rather than monomials?

## Working answer
It may be a feature: it cleanly separates “analytic monomial sieve” claims (where \(d=4\) is special) from “transmutation supplies a scale” claims (which are intrinsically non-analytic). The repo should not mix these hypotheses.

## Next check
Produce an explicit odd-\(d\) witness (or show why such a witness necessarily uses fractional/non-analytic dependence).

## Resolution (2026-02-14, post-S284)

The answer is confirmed: **it is a feature, not a bug.**

1. The parity obstruction is categorical (parity lemma in S284): the Z-module structure of admitted coupling dimensions blocks half-integer targets regardless of which couplings are available. This is not "ugly" -- it is a clean algebraic fact with a root cause (action dimensionlessness + integer canonical dimensions).

2. The d=3 delta interaction provides the explicit odd-d witness: the scattering length \(a\) supplies \(a^{3/2} = \text{length}^{d/2}\) via transmutation. This is fractional in the transmutation scale but not in any fundamental coupling.

3. The separation is sharp: monomial sieve selects even d only (and further selects d=4 under gravity-only). Transmutation is parity-blind. The Planck-area note should state this as two independent hypothesis branches, not as a single "universality" claim.

**Hard question resolved:** The odd-d blocking is an argument *for* the clean separation of hypothesis branches, not against universality per se. The paper should present it as a scope boundary that strengthens the monomial-sieve claim for d=4 by making its domain of applicability precise.

