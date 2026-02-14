# C300 Plan: Section 3 threshold-bridge readability compression

Date: 2026-02-14

## Goal
Promote the stabilized threshold-bridge compression into manuscript prose as a readability-focused rewrite with no new technical claims.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Rewrite `Remark P1.1a` in Section 3.3 to a two-sentence compact form.
- Preserve caveats: fixed-`L`, small-`r` asymptotic scope, mechanism separation, marginal-coefficient warning, non-classification boundary.

Out of scope:
- New derivations, new claims, or bibliography changes.
- Cross-thread navigation insertions from D22.

## Minimum promotion bar
One paragraph-level manuscript rewrite in `paper/main.md` with explicit caveat retention.

## Allowed files
- `paper/main.md`
- `cycles/C300-*.md`
- `docs/research-log.md`
- `cycles/index.md`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- `paper/main.md` updated in `Remark P1.1a` only (readability compression, no new claims).
- Diffstat captured in execution log (worktree now; cached deferred until staging/commit time).
- Guard checks pass (`Cnn` leak scan, `conv_patched` scan).

## Closure addendum (2026-02-14)
- User requested restoration of the original long paragraph.
- `C300` is closed as no-promotion by explicit user preference.
