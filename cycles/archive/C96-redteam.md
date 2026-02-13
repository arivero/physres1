# C96 Red Team: Risks in removing internal path references

Date: 2026-02-11

## Failure modes
- Loss of provenance/traceability for internal checks:
  - Mitigation: keep the statements themselves self-contained; record detailed derivations/checks in cycle artifacts or companion notes, not in rendered prose.
- Accidental removal of a needed definition:
  - Mitigation: remove only the path pointers, not the mathematical content; re-run the TeX/PDF build to catch formatting regressions.

