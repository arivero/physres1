# B01 Plan

## Goal
Strengthen independent anchoring for the delta/contact and half-density claims by capturing at least one OA-stable standard source for:
1. Jackiw’s 1991 delta-function note (2D/3D), and
2. a semiclassical/half-density kernel reference (Van Vleck / half-forms).

## Scope
1. Locate an OA-stable PDF (or equivalent) for `[Jackiw1991DeltaPotentials]` and ingest it into `sources/`.
2. Add one standard reference for semiclassical propagators / Van Vleck determinant (OA if possible; otherwise mark `PENDING`) and register it in `paper/bibliography.md`.
3. Update `docs/source-ingest-status.md` if needed to reflect new captures and pending items.

## Risks
1. OA unavailability / unstable mirrors.
2. Citing a source that doesn’t actually support the specific claim being anchored.
3. Copyright constraints: avoid copying large passages; capture only metadata + short excerpts as needed.

## Acceptance Tests
1. `paper/bibliography.md` OA status updates include `[Jackiw1991DeltaPotentials]` (captured or explicitly `PENDING` with notes).
2. At least one new standard key is added (or moved from `PENDING` to acquired) for semiclassical/half-density kernel facts.

