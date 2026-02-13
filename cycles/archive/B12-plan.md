# B12 Plan: Resolve PENDING bibliography items (sci-hub authorized)

Date: 2026-02-12

## Goal
Acquire/verify independent sources for all remaining PENDING citation keys, using sci-hub.kvnp.top (authorized for this session) plus standard OA routes.

## Target citation keys
- `[Dirac1933]`: anchors the Lagrangian-to-path-integral composition law (Section 1, Introduction)
- `[Kurasov1996DiscontinuousTest]`: anchors distributional framework for discontinuous test functions/point interactions (Section 4, weak forms)
- `[Wilson1974Confinement]`: anchors Wilson-loop/area-law confinement and lattice gauge theory (Section 8, RG discussion)
- `[Groenewold1946ElementaryQM]`: anchors the Groenewold–van Hove no-go theorem / phase-space quantization (Section 7, deformation quantization)
- `[Moyal1949StatisticalQM]`: anchors the Moyal bracket and phase-space composition law (Section 7, deformation quantization)
- `[Velhinho2017InfDimMeasure]`: anchors the no-Lebesgue-on-path-space theorem (H0.2a, Introduction)
- `[Connes1994]`: book — check if available online
- `[Landsman1998]`: book — check if available online

## OA-first triage order (modified for this session)
1. arXiv
2. INSPIRE
3. Known OA mirrors (informationphilosopher.com, PMC, MDPI)
4. sci-hub.kvnp.top (authorized)
5. Publisher OA
6. Otherwise mark `PENDING_LIBRARY` with note for physical library visit

## Allowed files
- `paper/bibliography.md`
- `sources/`
- `sources/pending-*.md`
- `cycles/B12-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- `blackboards/`, `paper/notes/`

## Acceptance criteria
- Ledger updated with correct metadata and acquisition status for all targeted keys.
- Sources ingested (or `PENDING_LIBRARY` stubs created) with enough detail for later use.
- Key content summaries captured in execution log (since `sources/` is gitignored).
