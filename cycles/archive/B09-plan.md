# B09 Plan: OA Anchor for Fermionic (Grassmann) Sources + Contact/Point Interaction References

Date: 2026-02-10

## Goal
Add at least one independent OA source that explicitly states the fermionic generating functional uses **Grassmann sources** (so “classical commuting source \(\Rightarrow\) potential” does not transplant verbatim from bosons to fermions).

Reuse existing independent point-interaction anchors already in `paper/bibliography.md` for the contact/boundary-condition side.

## Target citation keys
- `[Floerchinger2024QFT1Lecture21]`: fermionic generating functional with Grassmann sources \(\eta,\bar\eta\) (OA lecture page).

## OA-first triage order
1. ArXiv direct PDF
2. INSPIRE
3. KEK / other legal mirrors
4. Publisher OA
5. Otherwise mark `PENDING` with attempted URLs + next action

## Allowed files
- `paper/bibliography.md`
- `sources/`
- `sources/pending-*.md`
- `cycles/B09-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- `blackboards/`, `paper/notes/`

## Acceptance criteria
- Add the key to `paper/bibliography.md` and record OA acquisition status.
- Ingest the OA source into `sources/` if network access allows; otherwise create a `sources/pending-...` record with attempted URLs.
