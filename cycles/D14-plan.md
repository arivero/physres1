# D14 Plan: extend step-halving rooted-tree witness (notation + next term)

Date: 2026-02-11

## Goal
Choose a bounded “rooted trees as refinement bookkeeping” deliverable that (i) reduces notation friction in the step-halving witness and (ii) adds one more explicit, checkable term to strengthen the RG analogy.

## Novelty candidates (shortlist)
1. Extend the Euler step-doubling discrepancy to the next nontrivial term and identify the corresponding rooted tree (bookkeeping witness beyond the first tree).
2. Keep the witness at order \(h^2\) but unify the elementary-differential notation across manuscripts so the reader never has to guess what \(f'(y)f(y)\) means.

## Decision criteria
- Low friction: should fit in ≤ 1–2 pages of derivation + one symbolic check.
- Reader value: removes ambiguity in the first rooted-tree witness and reinforces the “composed refinement forces correction data” slogan.

## Allowed files
- `docs/research-state.md`
- `docs/next-articles.md`
- `docs/research-log.md`
- `cycles/D14-*.md`
- `cycles/index.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Expected spawns
- `S68`: derive/check the next discrepancy term and state it in rooted-tree notation.
- `C100`: promote the cleaned notation + (if stable) the next-term remark into `paper/main.md` and `papers/rg-fundamental/main.md`.

## Acceptance criteria
- Exactly one chosen target with a one-sentence claim + explicit scope disclaimer.
- `S68` opened with a bounded deliverable and a clear promotion target (`C100`).

