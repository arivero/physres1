# S282 Plan: Stochastic-Kick Computation — Itô Correction Witness

Date: 2026-02-14
Parent: D25

## Goal
Produce a concrete derivation showing that the N-impulse refinement model of the Dirac-probes companion (Section 4.5) admits a stochastic interpretation in which:
- midpoint discretization = Stratonovich integral,
- prepoint discretization = Itô integral,
- converting Stratonovich → Itô adds an explicit correction term (the "Itô drift").

## Deliverable (keep bounded)
- Target: one worked multiplicative-noise SDE toy model (position-dependent impulse variance), with the Itô correction computed and mapped to the energy-impulse formula of Remark 3.2a.
- Output file(s):
  - `blackboards/2.md` (overwrite: caustics/Maslov slot, least aligned with current thread)
  - `notebooks/stochastic-discretization.md` (append-only promotion if stabilized)

## Where The Math Goes
- Detailed derivation in `blackboards/2.md`.
- Cycle files carry only the summary and result statement.

## Allowed files
- `blackboards/`
- `notebooks/`
- `docs/research-log.md`
- `cycles/S282-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- `paper/notes/`, `papers/*/notes/`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- A self-contained derivation showing the Itô correction for one multiplicative-noise model.
- The mapping to the time-slicing language of the main paper (Section 6.3) and Dirac-probes (Remark 3.2a, Outlook item 4) is explicit.
- The correction term is computed, not just stated.
