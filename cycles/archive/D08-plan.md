# D08 Plan: Half-density conjugation of the Laplacian in a conformal class (the D=4 cancellation witness)

Date: 2026-02-11

## Goal
Choose and define a bounded novelty target (without editing manuscripts), then spawn the minimum next cycles needed to make it falsifiable and promotable.

## Novelty candidates (shortlist)
1. Half-density conjugation of the Laplacian in a conformally flat metric and the resulting \(D(4-D)\) coefficient; verify the expansion and document what is (and is not) implied.
2. Strengthen the “RG appears before QFT” witness by extracting a compact semigroup/flow lemma suitable for promotion into the main paper.

## Decision criteria
- Produces a concrete computation that can be independently checked (symbolic or by hand).
- Can be promoted into an existing manuscript with minimal bibliography debt.
- Bounded to ≤2 pages of math plus one short “interpretation boundary” paragraph.

## Allowed files
- `docs/research-state.md`
- `docs/next-articles.md`
- `docs/research-log.md`
- `cycles/D08-*.md`
- `cycles/index.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Expected spawns
- `S65`: symbolic derivation/check (SymPy) of the conformal expansion for \(\widetilde\Delta:=|g|^{1/4}\Delta_g|g|^{-1/4}\).
- `C97`: (optional) inline minimal support in `papers/half-density-qft/main.md` so it stands alone without referring to companion notes.
- `Q54`: referee pass on `C97` if promoted.

## Acceptance criteria
- Exactly one chosen novelty target with a one-sentence claim + explicit scope disclaimer.
- A concrete `S` cycle is opened with a reproducible computation/check deliverable.

