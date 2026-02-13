# C44 Plan: Promote S15 “Derivative as Counterterm” + \u03b4' Point-Splitting into Drafts

## Goal
Promote the stable parts of S15 into the manuscript-level drafts:
- strengthen the RG “compatibility principle” narrative with a clearer calculus micro-model (including finite counterterm ambiguity + renormalization condition),
- add an explicit point-splitting formula for \(\delta'\) to the delta-objects synthesis note (to complement the existing \(\delta(f')\) vs \(\delta'\) distinction),
- add a one-line pointer from the RG draft to the normalized 1D/2D/3D contact integral blackboard note.

## Scope
- Edit only:
  - `papers/rg-fundamental/main.md`
  - `papers/delta-objects/main.md`
- Update durable logs:
  - `docs/research-log.md`
  - `cycles/index.md`
- No new bibliography ingestion in this cycle.

## Acceptance Tests
1. `papers/rg-fundamental/main.md` Section 3 states:
   - the Taylor expansion showing the \(1/\varepsilon\) divergence,
   - the finite ambiguity \(z_0\) and a renormalization condition that fixes it (e.g. \(D(1)=0\)).
2. `papers/rg-fundamental/main.md` contains a brief distributional remark:
   \((\delta(\cdot+\varepsilon)-\delta)/\varepsilon \to \delta'\).
3. `papers/delta-objects/main.md` includes an explicit “\(\delta'\) from point splitting” formula and points to the S15 blackboard note.
4. `cycles/index.md` and `docs/research-log.md` reflect completion of C44.

