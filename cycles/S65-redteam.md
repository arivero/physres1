# S65 Red Team: Conformal half-density Laplacian check failure modes

Date: 2026-02-11

## Failure modes
- Algebra/sign errors hidden by notation:
  - Mitigation: keep a coordinate-level derivation and an independent symbolic check; test at \(D=4\) where cancellation is crisp.
- Boundary-condition assumptions (integration by parts) accidentally used:
  - Mitigation: state explicitly which steps assume compact support / boundary terms vanish; keep the operator identity separate from bilinear-form symmetry remarks.
- Promotion produces “dimension selection” vibes:
  - Mitigation: include an explicit scope disclaimer in any promoted manuscript prose and avoid interpretive language.

