# S278 Redteam

Date: 2026-02-14

## Risks
1. Branch becomes too technical and disconnected from manuscript needs.
2. Diagnostics become model-specific and nontransferable.

## Mitigations
1. Force one-line deliverable requirement.
2. Test at least two correction families for robustness.

## Iteration 2 addendum
3. Validate diagnostic portability across at least two correction families before promoting any caution sentence.

## Iteration 3 addendum
4. Risk: asymptotic `r->0` behavior can mask sizable drift on practical windows.
5. Mitigation: require `Delta m_max(W)` reporting for the actual operating window before using fixed-`q` threshold claims.
