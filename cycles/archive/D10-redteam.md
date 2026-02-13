# D10 Red Team: Discovery risks

Date: 2026-02-11

## Failure modes
- Analogy turns into slogan without a checkable computation:
  - Mitigation: keep `S66` as an explicit expansion with a concrete coefficient comparison (record a symbolic sanity check).
- Misleading identification of “scale change” with “coarse-graining”:
  - Mitigation: state explicitly that RK composition is a group (reversible) while Wilsonian RG is typically a semigroup (information loss).
- Notation bloat (trees, elementary differentials) exceeds the value:
  - Mitigation: present only the first two nontrivial trees and reference the existing citations for the general formalism.

