# C298 Plan: Final readability polish for Section 9.5 <-> Appendix pointers

Date: 2026-02-14

## Goal
Improve navigation coherence by adding explicit package-to-appendix pointer mapping without changing technical claims.

## Target manuscripts
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Add concise package-to-derivation pointer map in Appendix summary.
- Add one cross-reference cue in Section 9.5.

Out of scope:
- New derivations or bibliographic updates.

## Acceptance criteria
- Reader can jump from Package A/B/C/D/E to concrete derivation IDs quickly.
- Diffstat recorded in `cycles/C298-execution.md`.
- Guard checks pass.
