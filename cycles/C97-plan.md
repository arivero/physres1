# C97 Plan: Half-density QFT note — inline minimal support for kernel normalizations + tighten the D=4 conformal remark

Date: 2026-02-11

## Goal
Promote stable, self-contained support into `papers/half-density-qft/main.md` so the note can stand alone without relying on companion-note derivation pointers.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (no)
- `papers/half-density-qft/main.md` (yes)

## Scope
In scope:
- Replace the remaining “companion Planck-area note, Derivation …” dependency with a brief inline derivation/remark:
  - explain the canonical diagonal delta kernel for half-densities, and
  - give a short approximate-identity/semigroup normalization witness for the \(t^{-D/2}\) exponent (no new citations).
- Tighten `Derivation D1.3` by adding a few explicit steps (or a lemma-style mini-derivation) showing where the \(D(4-D)\) coefficient comes from, and add a clear scope disclaimer against over-interpretation of the \(D=4\) cancellation.
- Rebuild `papers/half-density-qft/main.tex` and `papers/half-density-qft/main.pdf`.

Out of scope:
- Any new bibliography work or adding citations (spawn `B` if needed later).
- Editing other manuscripts.

## Minimum promotion bar (preferably verbose)
At least one paragraph-level addition/rewrite or a derivation/remark block (avoid micro-edits).

## Allowed files
- `papers/half-density-qft/main.md`
- `cycles/C97-*.md`
- `papers/half-density-qft/main.tex`
- `papers/half-density-qft/main.pdf`

## Forbidden files
- `paper/main.md`
- other `papers/*/main.md`
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/` (log work in `cycles/C97-execution.md` instead)
- `cycles/index.md`

## Acceptance criteria
- `papers/half-density-qft/main.md` no longer references external repo notes for required derivations.
- Diffstat recorded in `cycles/C97-execution.md` via `scripts/paper-diffstat.sh --cached`.
- Guard checks pass (no cycle tags or transcript mentions in the manuscript).

