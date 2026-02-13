# D06 Red Team: Risks in Adding a Reader-Navigation Table

Date: 2026-02-11

## Failure modes
- Adds clutter without clarity:
  - Mitigation: keep it to one compact table mapping “compatibility type → operation → where in paper → one-line meaning.”
- Drifts into new claims:
  - Mitigation: treat it as navigation only; no new assertions beyond pointers to existing derivations/sections.
- Formatting issues in PDF:
  - Mitigation: use a simple Markdown table or bullet block; avoid wide tables that overflow margins.

