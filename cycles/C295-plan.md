# C295 Plan: Package A sanity-limit hardening for D12.3

Date: 2026-02-14

## Goal
Improve referee readability of D12.3 by adding explicit limit checks (`omega->0`, `t->0+`) for the Mehler benchmark.

## Target manuscripts
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Add concise limit-check remark attached to D12.3.
- Keep formulas compact and assumption-scoped.

Out of scope:
- New large derivations or bibliography updates.
- Any change outside Package A appendix section.

## Acceptance criteria
- Added explicit sanity checks for free-limit and short-time delta behavior.
- Diffstat recorded in `cycles/C295-execution.md`.
- Guard checks pass.
