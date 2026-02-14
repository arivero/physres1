# D53 Execution: Identity limit from composition

Date: 2026-02-14

## Summary
The identity limit (I): K_t → δ as t→0 is derivable from composition (C) + physical setup, reducing P4.2 to a single-axiom theorem. Two independent derivation paths:

1. **Free particle (explicit form):** Composition forces K_t = (m/2πiℏt)^{d/2} exp(im(x-y)²/2ℏt). This is a nascent delta family by standard distributional theory. No additional assumption needed.

2. **General V (Stone's theorem):** Composition K_t ∘ K_s = K_{t+s} + physical setup (action-based dynamics with self-adjoint Hamiltonian H) → Stone's theorem → exp(-iHt/ℏ) is a C₀ unitary group → K_t → δ in distributional sense.

## Nuance
- Path 1 is complete and requires nothing beyond (C) + setup (free particle)
- Path 2 uses self-adjointness of H, which is part of "physical setup" (not an independent axiom — any well-posed quantum system requires self-adjoint H)
- The regularity condition (C₀ property) is automatic for physical systems; it excludes only pathological mathematical constructions (non-measurable semigroups)

## Final axiom count for P4.2
**1 axiom (composition) + physical setup** (action-based dynamics on ℝ^d with mass m and self-adjoint generator).

The composition law is truly the "master axiom" — it alone, given a physical dynamical system, forces all P4.2 conclusions including the identity limit.

## Novelty assessment
MODERATE. The mathematical tools are standard (C₀ semigroup theory, Stone's theorem). The novelty is the logical observation that ALL P4.2 hypotheses collapse to one.

## Deliverables
- Updated Section 9 of notebook (rcp-axiom-structure-analysis)
- Updated Theorem P4.2' (S303) to single-axiom form
