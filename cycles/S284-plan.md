# S284 Plan: Odd-d Scale-Supplier Table

Date: 2026-02-14
Parent: D27

## Goal
Produce a concrete derivation/computation/check as a promotion candidate (no manuscript edits).

Build a self-contained table for d=1,2,3,4,5 showing:
1. The required scalarization exponent d/2,
2. The parity (integer vs half-integer),
3. Natural physical scales generated in standard toy models (contact interactions, marginal couplings, gravity),
4. Whether supplying length^{d/2} requires fractional powers or non-analytic dependence,
5. An explicit model witness where available.

## Deliverable (keep bounded)
- Target: one blackboard note (~1 page) with the table and brief analysis per dimension.
- Output file(s):
  - `blackboards/2.md` (overwriting slot 2: Caustics/Maslov, already promoted to delta-objects paper)
  - `notebooks/` (optional: append if stabilized)

## Where The Math Goes
- Put the detailed table and dimension-by-dimension analysis in blackboard slot 2.
- Keep `cycles/S284-*.md` lean: prompt, command log, and short result summary.

## Allowed files
- `blackboards/`
- `notebooks/`
- `docs/research-log.md`
- `cycles/S284-*.md`

## Forbidden files
- Manuscripts (do not edit): `paper/main.md`, `papers/*/main.md`
- `paper/notes/` and `papers/*/notes/`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- A self-contained table with enough detail to be promoted by a later C cycle.
- At least one explicit witness for each non-blocked entry.
- The parity obstruction for odd d is made precise (not just "half-integer is ugly").
- The transmutation route is shown to be parity-blind with at least one odd-d witness.
