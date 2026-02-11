# D10 Execution: Rooted-tree / Butcher step-doubling witness for the RG analogy

Date: 2026-02-11

## Decision
- Chosen target: add a concrete “two half-steps vs one full step” step-doubling witness, phrased in rooted-tree language, to make the Butcher↔RG analogy explicit.
- Why now: the analogy is cited in the cornerstone manuscript, and `papers/rg-fundamental/main.md` has a placeholder Section 4 that can absorb a compact computation without adding new bibliography.

## One-sentence novelty claim (non-manuscript)
The first nontrivial discrepancy between composed refinement (two half-steps) and a single coarse step in explicit Euler is proportional to the rooted-tree elementary differential \(f'(f)\), making “correction/counterterm data” literal in a toy setting.

## Scope disclaimer (non-manuscript)
This is an analogy witness, not a claim that numerical integrators *are* Wilsonian coarse-graining; it only illustrates how composed refinement forces correction/running data even before QFT.

## Updates made
- `cycles/index.md`: marked `D10` completed and queued `S66 → C98 → Q55`.
- `docs/research-log.md`: added a dated entry for `D10`.

## Spawned cycles
- `S66`: derive the step-doubling discrepancy and (optionally) the modified-equation coefficient through \(O(h^2)\) as a promotion candidate for Section 4 of `papers/rg-fundamental/main.md`.
- `C98`: promote the worked example into `papers/rg-fundamental/main.md`.
- `Q55`: referee pass on `C98`.

