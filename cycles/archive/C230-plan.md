# C230 Plan: Promote Hubbard-Stratonovich into Fermionic Paper

## Objective
Promote S189 blackboard content into Remark 6.5 of fermionic-mediators-contact-limits paper, Section 6.

## Content
Remark 6.5 (Hubbard-Stratonovich & Effective Action):
- Gaussian identity for HS transformation
- Trace-log effective action: det[...] = exp[Tr log(...)]
- BCS gap parameter and NJL chiral symmetry breaking examples
- Channel decomposition (Fierz rearrangement) caveat
- RG matching requirements
- 2 bibliography entries: Hubbard1959, NambuJonaLasinio1961
- Placement: before References, completing Section 6

## Verification
- Cycle-tag leak check: `rg -n 'C[0-9]{2}' paper/main.md`
- Diffstat check: record output of `scripts/paper-diffstat.sh --cached`

## Deliverable
Updated `/Users/arivero/physarticle/papers/fermionic-mediators-contact-limits/main.md` with Remark 6.5.
