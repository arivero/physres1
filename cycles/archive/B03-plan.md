# B03 Plan: Dimension-Dependent Laplacian Green Scaling + Minimal-Length/GUP Anchors (OA-first)

## Goal
Add independent, OA-stable bibliography anchors for two branches currently referenced only heuristically:
1. Dimension dependence of Newtonian long-range potentials via the Laplacian Green function (including the \(n=2\) log exception).
2. Minimal-length / GUP (generalized uncertainty principle) as a literature branch to compare against the “universal area scale” hypotheses.

## Scope
1. `paper/bibliography.md`
   - Add one OA source that explicitly discusses “Kepler potential from Laplacian fundamental solution” (dimension dependence).
   - Add one authoritative OA review for minimal-length/GUP scenarios.
2. `sources/`
   - Ingest both sources to Markdown via `skills/source-to-markdown`.
3. `papers/planck-area/main.md`
   - Add lightweight citations where the dimension link is stated, and add one “Open problem” bullet pointing to the minimal-length/GUP review (no deep content expansion yet).
4. `docs/research-log.md` + `cycles/index.md`
   - Record B03 completion and refresh next action.

## Acceptance Tests
1. Two new bibliography keys exist with OA status recorded.
2. `sources/` contains ingested Markdown records for both.
3. `papers/planck-area/main.md` has at least one citation for the Laplacian Green scaling fact, and one pointer to the minimal-length/GUP review as a tracked branch.
4. Guardrail scan: `rg -n 'C[0-9]{2}' paper/main.md` remains empty.

