# C90 Plan: Make RCP Operational (Compatibility Diagram) + Submission Hygiene Pass

Date: 2026-02-11

## Goal
Promote the `S63` blackboard into the main manuscript by making the Refinement Compatibility Principle (RCP) operational and falsifiable (explicit parameter-update/closure form + toy witness pointer). While touching the manuscript, also remove a few repo-internal file-path references to improve foundations-journal readiness.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes)
- `papers/<name>/main.md` (no)

## Scope
In scope:
- Add a short block in Appendix 10.3 (RCP) that:
  - states RCP as closure with explicit update maps \(\tau_C,\tau_Q,\tau_R\),
  - points to the existing semigroup-normalization witness (Derivation D4.1a) as the concrete “closure can fail” example.
- Replace repo-internal manuscript pointers (e.g. ``papers/.../main.md``, ``blackboards/...``, ``paper/notes/...``) with publication-safe phrasing (or remove when nonessential).
- Rebuild `paper/main.tex` and `paper/main.pdf` (tracked artifacts).

Out of scope:
- Any bibliography/source changes (`paper/bibliography.md`, `sources/`).
- Any new companion-note drafting.
- Large reorganization of the manuscript structure (save for a later dedicated wave).

## Minimum promotion bar (preferably verbose)
Add at least one paragraph/derivation block in the RCP appendix (not just wording tweaks).

## Allowed files
- `paper/main.md`
- `cycles/C90-*.md`
- (Tracked) `paper/main.tex`
- (Tracked) `paper/main.pdf`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/`

## Acceptance criteria
- RCP appendix contains an explicit operational closure form with \(\tau\) maps.
- Diffstat recorded in `cycles/C90-execution.md`.
- Guard check passes: no cycle IDs in manuscripts; no transcript references.

