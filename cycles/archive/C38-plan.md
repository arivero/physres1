# C38 Plan

## Goal
Fix a convention/sign inconsistency discovered while comparing the new S12 blackboard note with `papers/rg-fundamental/main.md`:
1. correct the 3D loop-integral imaginary sign (\(+i0\) prescription) so it matches unitarity conventions,
2. correct missing factors of 2 in the S12 blackboard note’s 1D and 3D normalizations,
3. keep the RG draft’s “dimension comparison” section consistent with the convention map.

## Scope
1. Edit `papers/rg-fundamental/main.md` (3D \(I_3\) sign and the derived 3D \(T\) parameterization).
2. Edit `blackboards/2026-02-10-contact-loop-integrals-1d-2d-3d.md` (1D/3D prefactors).
3. Update `docs/research-log.md` and `cycles/index.md`.

## Non-Goals
- No new bibliography ingestion.
- No edits to `paper/main.md`.

## Acceptance Tests
1. `papers/rg-fundamental/main.md` uses \(I_3(E;\Lambda)\) with the correct sign for the imaginary part.
2. The S12 blackboard note matches the RG draft’s convention map for 2D/3D and has correct 1D factors.

