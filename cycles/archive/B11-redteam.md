# B11 Red Team: Bibliography Acquisition Risks (Dirac/Feynman Anchors)

Date: 2026-02-11

## Failure modes
- OA link is not actually lawful (random host mirror):
  - Mitigation: restrict to institutional repositories / trusted aggregators; otherwise keep `PENDING`.
- Acquisition status becomes misleading (local capture exists but future agents cannot reproduce it):
  - Mitigation: record the OA URL in `cycles/B11-execution.md` and (optionally) in `paper/bibliography.md` text for the acquisition status line.
- Endpoint blocked / rate-limited:
  - Mitigation: cap attempts; record failure mode; do not burn cycles on repeated 403/429.

