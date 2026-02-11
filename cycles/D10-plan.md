# D10 Plan: Rooted-tree / Butcher step-doubling witness for the RG analogy

Date: 2026-02-11

## Goal
Choose and define a bounded novelty target (without editing manuscripts), then spawn the minimum next cycles needed to make it falsifiable/promotable.

## Novelty candidates (shortlist)
1. **Butcher / rooted-tree bookkeeping witness:** an explicit “two half-steps vs one full step” computation (Euler) showing how correction terms organize into the first nontrivial rooted tree.
2. **Field-theory one-loop witness:** add a minimal \(\phi^4\) one-loop beta-function computation (larger scope; likely needs bibliography hardening).

## Decision criteria
- Must be promotable in ≤1–2 pages (a compact derivation block).
- Must not add new bibliography debt (reuse existing anchors already in `papers/rg-fundamental/main.md` / `paper/main.md`).
- Prefer upgrading an existing follow-up note (`papers/rg-fundamental/main.md`) rather than expanding the cornerstone manuscript.

## Allowed files
- `docs/research-state.md`
- `docs/next-articles.md`
- `docs/research-log.md`
- `cycles/D10-*.md`
- `cycles/index.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Expected spawns
- `S66`: derive (and optionally SymPy-check) the step-doubling discrepancy and the first modified-equation coefficient for explicit Euler, phrased in rooted-tree / elementary-differential language.
- `C98`: promote the worked example into `papers/rg-fundamental/main.md` (Section 4).
- `Q55`: referee pass on the promotion.

## Acceptance criteria
- Exactly one chosen novelty target with a one-sentence claim + explicit scope disclaimer.
- A concrete next `S` cycle is opened with a 1–2 page deliverable.

