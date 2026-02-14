# C297 Plan: Cross-link extension witness to RCP operational closure map

Date: 2026-02-14

## Goal
Make the linkage between Appendix 10.2 extension/domain data and Appendix 10.3 operational RCP map explicit.

## Target manuscripts
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Add a compact derivation/remark in Section 10.3 showing domain parameters are part of `theta` in `D10.1a`.
- Cross-reference `D9.1f` explicitly.

Out of scope:
- New technical extension proofs.
- Bibliography updates.

## Acceptance criteria
- New numbered statement in Section 10.3 with explicit `D9.1f` bridge.
- Diffstat recorded in `cycles/C297-execution.md`.
- Guard checks pass.
