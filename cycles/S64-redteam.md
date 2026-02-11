# S64 Red Team: Risks in the compatibility reader-navigation block

Date: 2026-02-11

## Failure modes
- Navigation block duplicates Appendix 10.3 without adding value:
  - Mitigation: place it early (end of Section 2.5) as a reader-orientation tool; keep Appendix 10.3 as the formal statement.
- Section pointers drift as the manuscript is reorganized:
  - Mitigation: keep “where” pointers coarse (Section ranges like “Sections 3–4”) and update the block opportunistically during later `C` waves.
- Block introduces new claims by accident:
  - Mitigation: restrict to “where to look” + operational meaning already present in the manuscript; no new definitions, no new citations.
- PDF layout problems (wide table / long lines):
  - Mitigation: avoid tables; keep each row to one short sentence.

