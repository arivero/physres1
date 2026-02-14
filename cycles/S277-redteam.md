# S277 Redteam

Date: 2026-02-14

## Risks
1. Producing arbitrary tolerance choices with no clear rationale.
2. Turning a readability improvement into numerics-heavy prose.

## Mitigations
1. Report multiple eps values and keep them note-level.
2. Promote only conceptual window language, not raw tables.

## Iteration 2 addendum
3. Prefer exact window formulas when available to reduce arbitrariness in tolerance claims.

## Iteration 3 addendum
4. Risk: using endpoint-only bounds may hide strong variation on finite windows.
5. Mitigation: require a finite-window drift check (`Delta nu_10`) before invoking fixed-exponent language.

## Iteration 4 addendum
6. Risk: treating asymptotic window estimates as exact boundaries.
7. Mitigation: use asymptotics as pre-filters and confirm with numerical boundary scans for final claims.
