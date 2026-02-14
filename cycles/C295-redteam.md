# C295 Redteam

Date: 2026-02-14

## Failure modes
1. Limit statements might be handwavy without formulas.
2. Free-limit expansion could miss prefactor behavior.

## Mitigations
1. Include explicit small-omega expansions of sinh/cosh.
2. State both prefactor and exponent reductions to free kernel.
