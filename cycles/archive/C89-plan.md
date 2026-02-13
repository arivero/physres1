# C89 Plan: Dependent Note on Action–Angle Indeterminacy (Central Potentials)

Date: 2026-02-11

## Goal
Promote the Theme K study result into a short dependent note suitable for a foundations-journal tone: a referee-safe “sharp action \(\Rightarrow\) delocalized conjugate angle” witness in the \((\phi,L_z)\) sector of a central potential.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (no)
- `papers/action-angle-indeterminacy-central-potentials/main.md` (yes)

## Scope
In scope:
- A bounded dependent note with:
  - purpose/scope disclaimer (avoid the angle-operator debate),
  - explicit witness \(L_z=-i\hbar\partial_\phi\) and \(|\psi|^2\) independent of \(\phi\) in an \(L_z\) eigenstate,
  - explicit Fourier tradeoff example (Dirichlet kernel packet),
  - a short foundations-level interpretation paragraph.
- Rebuild `papers/action-angle-indeterminacy-central-potentials/main.tex` and `papers/action-angle-indeterminacy-central-potentials/main.pdf` (tracked artifacts).

Out of scope:
- Any edits to `paper/main.md` (save for a later promotion wave).
- Any bibliography/source edits (handled by `B10`).
- Any deep formalization of global action–angle existence or EBK/WKB beyond a brief outlook sentence.

## Minimum promotion bar (preferably verbose)
Create the dependent note as a self-contained multi-section document (not a micro-edit).

## Allowed files
- `papers/action-angle-indeterminacy-central-potentials/main.md`
- `cycles/C89-*.md`
- (Tracked) `papers/action-angle-indeterminacy-central-potentials/main.tex`
- (Tracked) `papers/action-angle-indeterminacy-central-potentials/main.pdf`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`
- `docs/`

## Acceptance criteria
- Dependent note written and built to PDF.
- Diffstat recorded in `cycles/C89-execution.md`.
- Guard check passes: no cycle IDs in any manuscript.

