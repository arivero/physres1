# C104 Red Team: label rename risks

Date: 2026-02-12

## Failure modes
- **Broken cross-references:**
  - Risk: if any other file references "R1.1" by label, the rename breaks the link.
  - Status: searched all manuscripts and cycle files — no references to "R1.1" outside its definition. SAFE.

- **Precedent for micro-C cycles:**
  - Risk: creates a pattern of single-line C cycles that inflate the cycle count.
  - Mitigation: C104-debate explicitly notes this is an exception for taxonomy hygiene. Future micro-fixes should be bundled into the next promotion wave.
