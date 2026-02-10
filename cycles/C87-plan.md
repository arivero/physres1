# C87 Plan: New Dependent Note — Fermionic Mediators and Contact/Boundary Limits

Date: 2026-02-10

## Goal
Create a new foundations-style dependent note:
- `papers/fermionic-mediators-contact-limits/main.md`

This `C` cycle must edit at least one manuscript and should be a substantive “promotion wave” (new paper + one worked witness).

## Target manuscripts (must edit ≥1)
- `papers/fermionic-mediators-contact-limits/main.md` (yes: new)

## Scope
In scope:
- Define what “a field generates a potential” means in the standard bosonic-source story (brief, derivation-first).
- State the fermionic obstruction precisely using Grassmann sources, anchored by `[Floerchinger2024QFT1Lecture21]`.
- Promote the `S61` witness: polynomial momentum dependence \(\leftrightarrow\) derivatives of \(\delta\) (contact/boundary data).
- Connect contact terms to the repo’s existing point-interaction/RG witnesses with citations (`[Jackiw1991DeltaPotentials]`, `[BonneauFarautValent2001SAE]`, optional `[ManuelTarrach1994PertRenQM]`).

Out of scope:
- Full EFT formalism, matching beyond the leading contact expansion.
- Long-range multi-fermion exchange potentials (leave as outlook only).

## Allowed files
- `papers/fermionic-mediators-contact-limits/main.md`
- `cycles/C87-*.md`
- Tracked build artifacts for this paper:
  - `papers/fermionic-mediators-contact-limits/main.tex`
  - `papers/fermionic-mediators-contact-limits/main.pdf`

## Forbidden files
- `paper/main.md`
- Any other `papers/*/main.md`
- `blackboards/`, `paper/notes/`
- `paper/bibliography.md`, `sources/`
- `docs/` (log work in `cycles/C87-execution.md` instead)

## Acceptance criteria
- New manuscript exists with YAML frontmatter and journal-ready tone.
- Contains one explicit derivation block for the contact-matching witness.
- Reference section auto-generated from `paper/bibliography.md` for keys used.
- PDF builds successfully for this new paper.

