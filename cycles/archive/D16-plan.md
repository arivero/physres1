# D16 Plan: SR critical-exponent unification target

Date: 2026-02-14

## Goal
Define a bounded novelty target on relativistic central orbits and spawn the minimum cycle chain to test/publish it.

## Novelty candidates (shortlist)
1. Unify Newtonian/SR critical exponents with one asymptotic kinetic-degree rule.
2. Add a second-order epicyclic correction term for non-circular SR orbits.

## Decision criteria
- Candidate must be derivation-first, compact, and promotable into the existing relativistic satellite without opening a new paper.

## Chosen target
- **Claim:** For power-law attraction \(F\propto r^{-q}\), the bound-orbit critical exponent obeys \(q_\mathrm{crit}=\nu+1\), where \(\nu\) is the high-momentum kinetic degree in \(E_\mathrm{kin}\sim p^\nu\).
- **Scope disclaimer:** This explains the Newton \(3\) vs SR \(2\) shift; it does not explain the separate dimensional identity mechanism at \(q=2\).

## Allowed files
- `docs/research-state.md`
- `docs/next-articles.md`
- `docs/research-log.md`
- `cycles/D16-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Expected spawns
- `S269`: derive and sanity-check the \(q_\mathrm{crit}=\nu+1\) rule in a compact note.
- `B27`: harden bibliography entries for newly emphasized SR historical anchors.
- `C287`: promote a concise remark into the relativistic paper.

## Acceptance criteria
- One chosen target with explicit scope boundary.
- Spawned `S269` with bounded technical deliverable.
