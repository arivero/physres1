# C114 Plan: Add linear-vs-nonlinear beta boundary to Section 8.4/8.5 transition

Date: 2026-02-12

## Goal
Promote S76's finding: D6.2a-sg's linear beta does not generate transmutation, while QFT's nonlinear beta does. Add a paragraph to the existing closing remarks of Section 8.4 (before §8.5) that sharpens the structural gap between the toy ODE semigroup and full RG.

## Target manuscripts (must edit >=1)
- `paper/main.md` (yes)

## Scope
In scope:
- One paragraph (2-3 sentences) after line 990, before §8.5
- Contrasts linear β (algebraic RG invariant, no transmutation) with nonlinear β (essential singularity, transmutation)
- Cross-references D6.2a-sg, D6.2, P6.2

Out of scope:
- New derivations or explicit computations (S76 blackboard has those)
- Modifying the Planck-area draft

## Minimum promotion bar
One paragraph-level addition that addresses a natural reader question about the toy model's limitations.

## Allowed files
- `paper/main.md`
- `cycles/C114-*.md`

## Forbidden files
- `blackboards/`, `paper/notes/`, `paper/bibliography.md`, `sources/`, `docs/`

## Acceptance criteria
- Manuscript changed substantively. Diffstat recorded. Guard checks pass.
