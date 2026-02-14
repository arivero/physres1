# C302 Plan: Symmetry selects midpoint ordering (H=qp clarification)

Date: 2026-02-14
Parent: D23+S280

## Goal
Promote the symmetry-selection criterion from S280 into Section 6.3, clarifying that symmetry of the generator (not unitarity per se) selects α=1/2 for the H=qp discretization witness.

## Scope
Add one new remark (`Remark D4.1c`) after `Derivation D4.1b` in Section 6.3, before Section 6.4.

The remark will:
1. State that formal symmetry in L²(ℝ,dq) requires α=1/2
2. Explain that unitarity → self-adjointness → symmetry → α=1/2 is the logical chain
3. Note that essential self-adjointness additionally depends on domain (ℝ₊ vs ℝ)

This also indirectly corrects Heuristic H0.2 bullet 2, which currently says "requiring unitarity selects" but should be "requiring symmetry selects".

## Source
- `notebooks/ordering-unitarity-dilation-generator.md` (D23/S280 output)
- Main result: symmetry defect is i ħ (2α-1) ⟨u,v⟩, vanishing iff α=1/2

## Target file
- `paper/main.md` Section 6.3, insert after line 646 (after Derivation D4.1b)

## Acceptance criteria
1. New remark added to manuscript
2. Remark is self-contained
3. Connects to existing D4.1b witness
4. Does not require forward references
5. Diffstat shows net positive addition to Section 6
