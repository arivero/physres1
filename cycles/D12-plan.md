# D12 Plan: modified-equation witness for “running data” in step-doubling

Date: 2026-02-11

## Goal
Pick a bounded novelty target that strengthens the rooted-tree ↔ RG analogy with one checkable computation (no manuscript edits), then spawn the minimum next cycles to make it promotable.

## Novelty candidates (shortlist)
1. **Euler step-doubling → modified equation (explicit series).**
   - Deliver a clean \(O(h^2)\) modified-equation expansion for explicit Euler and connect it to the elementary differential \(f'(f)\) (rooted-tree order 2).
2. **Half-density normalization as a scale-selection witness (Planck-area ladder).**
   - Deliver one compact toy model showing why kernel normalization forces a \(\text{length}^{d/2}\) scale.

## Decision criteria
- Low friction: builds directly on the existing step-doubling witness without new bibliography work.
- Falsifiable: produces a standalone derivation that can be promoted verbatim into `papers/rg-fundamental/main.md`.
- Anti-distraction: avoids introducing full B-series formalism; keep it to explicit Euler + one modified-equation remark.

## Decision
Proceed with (1): the modified-equation expansion is the minimal “effective data runs with refinement scale” witness that makes the RG analogy more concrete without expanding scope.

## Allowed files
- `docs/research-state.md`
- `docs/next-articles.md`
- `docs/research-log.md`
- `cycles/D12-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Expected spawns
- `S67`: write the derivation + (optional) SymPy check in a blackboard note.
- `C99`: promote the clarified witness into `papers/rg-fundamental/main.md` (bundle with any other small readability improvements in that section).
- `Q56`: referee-pass the resulting C99 diff.

## Acceptance criteria
- Exactly one chosen novelty target with a one-sentence claim + explicit scope disclaimer.
- `S67` is opened with a bounded 1–2 page deliverable and an explicit “promotion target” pointer.

