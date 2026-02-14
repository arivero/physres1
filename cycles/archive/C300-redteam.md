# C300 Red Team: threshold-bridge compression risks

Date: 2026-02-14

## Failure modes
- Over-compression drops required caveats.
  - Mitigation: verify fixed-`L`, small-`r`, mechanism-separation, and marginal-coefficient boundaries are explicit.
- Compression introduces implicit new claims.
  - Mitigation: keep wording purely reformulative and avoid adding derivation-level statements.
- Reader loses context for inverse-square comparison.
  - Mitigation: preserve explicit separation language in the compressed sentence.

## Closure addendum
- Additional failure mode observed: readability-only compression can conflict with author intent for local explicitness.
  - Mitigation: treat readability compressions as opt-in and reversible.
