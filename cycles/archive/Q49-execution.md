# Q49 Execution: Submission-Readiness Referee Pass on Main Paper (Post-C92)

Date: 2026-02-11

## Parent cycle reviewed
- `C92`

## Findings
- The manuscript is now free of explicit `PENDING`/ingest workflow metadata (good for submission).
- The RCP appendix improvement is strong: `Derivation D10.1a` makes compatibility operational (“there exists \(\theta'\)”) and anchors it to an explicit failure-mode witness (`Derivation D4.1a`).
- Remaining submission-readiness issue: Appendix 10 still contains a small amount of editorial/versioning language (“replaces the earlier continuation version”, “continuation outcome”) that can read like internal draft history rather than standalone prose.
- Minor pedantry risk: the central-potential \(\psi\propto e^{im\phi}\) separation statement is standard, but a single lightweight attribution citation would reduce referee friction without changing the derivation-first posture.

## Required follow-ups (spawn cycles)
- `C93`: rewrite the remaining editorial/versioning phrasing in Appendix 10 as neutral standalone-paper language (no technical changes).

## Optional follow-ups
- `C93` (bundled): add one attribution anchor for the \(e^{im\phi}\) separation-of-variables statement in `Remark D4.2b` (e.g. cite `[TongQMLectures]`), then run `scripts/update_references.py paper/main.md` and rebuild PDF.
- `Q50`: if `C93` makes broad stylistic edits, run a final referee pass for reader flow.

