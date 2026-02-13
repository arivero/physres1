# C126 Red Team

Date: 2026-02-13

## Failure modes

### 1. Removing "1D" may confuse readers
- Risk: Section 5.8.2 discusses the 1D case; dropping "1D" from the loop integral list might suggest it was forgotten.
- Mitigation: the 1D case is explicitly described as not requiring UV subtraction (Section 5.8.2). The convention map (Section 5.9) correctly covers the cases that do need cutoff integrals.
