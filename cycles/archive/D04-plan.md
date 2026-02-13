# D04 Plan: Close the RCP Hardening Loop + Queue PENDING Source Hardening

Date: 2026-02-11

## Goal
Update durable working-memory docs to reflect completion of the RCP hardening wave (`S63 → C90 → Q48 → C91`), then pick the next low-friction “finishing research” target that improves foundations-journal readiness.

## Novelty candidates (shortlist)
1. **Reduce PENDING core anchors**: attempt OA ingestion for `Dirac1933` and `Feynman1948` (or record why blocked and keep `PENDING`).
2. **Standalone RCP note**: start a companion paper that isolates RCP as a formal closure/equivalence framework with worked examples (longer scope; defer unless requested).

## Decision criteria
- Improves the main paper’s introduction/anchors with minimal prose changes.
- OA-first; if blocked in this environment, document the failure mode and keep ledger status honest.

## Allowed files
- `docs/research-state.md`
- `docs/next-articles.md`
- `docs/research-log.md`
- `cycles/D04-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md` (handled in a `B` cycle)
- `sources/`

## Expected spawns
- `B11`: OA/ingest pass for `Dirac1933` and `Feynman1948` (or record blocked attempts and keep `PENDING`).

## Acceptance criteria
- Docs updated with the completed cycle chain and the next explicit action.
- `B11` is specified as the next concrete cycle (or explicitly deferred with a reason).

