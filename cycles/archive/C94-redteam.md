# C94 Red Team: Risks in adding an early compatibility reader map

Date: 2026-02-11

## Failure modes
- The block becomes “another thesis paragraph” rather than navigation:
  - Mitigation: keep it as a short boxed list with “Where:” pointers; no new claims/citations.
- Section pointers become stale after reorganization:
  - Mitigation: use coarse pointers (ranges like “Sections 3–4”) and update opportunistically during later `C` waves.
- Inconsistent notation with the later RCP appendix:
  - Mitigation: match the operator symbols \(\mathcal C_t,\mathcal Q_\hbar,\mathcal R_\Lambda\) used in Appendix 10.3.
- PDF layout issues (overfull lines):
  - Mitigation: avoid tables; keep each bullet to one short sentence.

