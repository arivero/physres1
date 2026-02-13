# C93 Red Team: Risks in Editorial-Language Cleanup

Date: 2026-02-11

## Failure modes
- Accidentally changing technical meaning while “just rewording”:
  - Mitigation: restrict edits to headings/intro sentences; do not touch equations/claims.
- Citation creep:
  - Mitigation: add only one attribution anchor (`[TongQMLectures]`) and keep the remark derivation-first.
- Reference list drift:
  - Mitigation: run `scripts/update_references.py paper/main.md` and rebuild PDFs in this `C` cycle.

