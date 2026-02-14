# D17 Plan: Critical-exponent bridge target for the main paper

Date: 2026-02-14

## Goal
Select a bounded promotion target that strengthens the central-force discussion in `paper/main.md` without opening a new bibliography branch.

## Novelty candidates (shortlist)
1. Add a compact asymptotic rule \(q_{\mathrm{crit}}=\nu+1\) linking Newtonian and SR central-force thresholds.
2. Add a short conceptual bridge that separates this threshold from the independent \(q=2\) dimensional-identity mechanism.
3. Add a longer satellite-style derivation block directly into the main text.

## Decision criteria
- Must be derivation-first and compact.
- Must integrate directly into Section 3.3 central-force generality text.
- Must be promotable in one paragraph-level C cycle.

## Chosen target
- **Target claim:** for central power-law attraction \(F\propto r^{-q}\), fixed-\(L\) asymptotics with high-momentum kinetic degree \(E_{\mathrm{kin}}\sim p^\nu\) give \(q_{\mathrm{crit}}=\nu+1\), recovering Newton (\(\nu=2\Rightarrow q_{\mathrm{crit}}=3\)) and SR (\(\nu=1\Rightarrow q_{\mathrm{crit}}=2\)).
- **Scope boundary:** this is an asymptotic barrier-vs-singularity rule; it does not replace the independent algebraic \(q=2\) identity mechanism.

## Allowed files
- `docs/research-state.md`
- `docs/next-articles.md`
- `docs/research-log.md`
- `cycles/D17-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Expected spawns
- `S270`: derive and format a promotion-ready threshold statement for the main paper.
- `S271`: run compact numeric/asymptotic sanity checks and finalize concise wording.
- `C299`: promote one compact bridge remark in Section 3.3.
- `Q182`: referee-pass C299.

## Acceptance criteria
- One chosen target with explicit scope boundary.
- Spawned S-cycle tasks are concrete and testable.
