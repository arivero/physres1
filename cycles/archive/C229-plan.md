# C229 Plan: Promote Crossing Symmetry Remark into Fermionic Paper

## Objective
Promote S188 blackboard content into Remark 2.2 of fermionic-mediators-contact-limits paper, Section 2.

## Content
Remark 2.2 (Crossing Symmetry & Grassmann Obstruction):
- Mandelstam analyticity as underlying assumption
- Grassmann obstruction orthogonal to kinematic channels
- Fermion crossing spinor sign conventions
- Placement: after Remark 2.1, before Section 3

## Verification
- Cycle-tag leak check: `rg -n 'C[0-9]{2}' paper/main.md` (should be empty in rendered text)
- Diffstat check: record output of `scripts/paper-diffstat.sh --cached`

## Deliverable
Updated `/Users/arivero/physarticle/papers/fermionic-mediators-contact-limits/main.md` with Remark 2.2.
