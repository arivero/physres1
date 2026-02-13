# C111 Plan: Promote S74 quadratic-symbol ordering remark

Date: 2026-02-12

## Goal
Add Remark D9.1a to Section 10.2 of paper/main.md, extending the linear-symbol ordering computation (D9.1) to quadratic symbols and noting the half-density geometric resolution.

## Source
S74 blackboard: `blackboards/2026-02-12-ordering-quadratic-symbols.md`

## Scope
Insert a remark after D9.1 (line 1221) and before P9.1 (line 1223). Content:
- The Q_W(fp²) - Q_L(fp²) formula
- Note the richer correction structure (differential O(ℏ) + potential O(ℏ²))
- Physical application: position-dependent mass ordering ambiguity
- Half-density bridge: conjugated Laplacian eliminates the first-derivative term

## Allowed files
- `paper/main.md`
- `cycles/C111-*.md`

## Acceptance criteria
- Remark inserted in correct position.
- Diffstat: +8 -0 (pure addition).
- Guard checks pass.
