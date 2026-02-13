# S65 Plan: SymPy check for the conformal half-density Laplacian expansion

Date: 2026-02-11

## Goal
Produce a concrete derivation + reproducible symbolic check for the conformal expansion
\(\widetilde\Delta:=|g|^{1/4}\Delta_g|g|^{-1/4}\) used in the half-density QFT note (no manuscript edits).

## Deliverable (keep bounded)
- Target: ~1 page derivation + one symbolic verification for \(D=4\) (optionally also \(D=3\)).
- Output file(s):
  - `blackboards/2026-02-11-conformal-half-density-laplacian.md`

## Allowed files
- `blackboards/`
- `paper/notes/`
- `docs/research-log.md`
- `cycles/S65-*.md`
- `cycles/index.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- A self-contained derivation and a SymPy check with command + “diff simplifies to 0” evidence.
- A promotion-ready block suitable for inlining in `papers/half-density-qft/main.md` via a later `C` cycle.
