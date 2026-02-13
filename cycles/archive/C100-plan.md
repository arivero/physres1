# C100 Plan: unify elementary-differential notation in step-halving witnesses

Date: 2026-02-11

## Goal
Promote the `S68` clean action-notation convention into manuscripts and (optionally) add the next explicit discrepancy term as a rooted-tree witness.

## Target manuscripts (must edit ≥1)
- `paper/main.md` (yes): Section 8.4 step-halving witness notation cleanup.
- `papers/rg-fundamental/main.md` (yes): Section 4.1 rooted-tree witness notation cleanup + optional \(O(h^3)\) discrepancy term.

## Scope
In scope:
- Replace ambiguous products like \(f'(y)f(y)\) with explicit action notation \(f'(y)[f(y)]\) in the step-halving / step-doubling witness blocks.
- Add a short, explicitly-scoped remark giving the next Euler step-doubling discrepancy term \(\sim \tfrac{h^3}{16}f''(y)[f(y),f(y)]\) and identify it with the order-3 branch rooted tree \([\bullet,\bullet]\).

Out of scope:
- Any deeper B-series/Butcher-group development beyond this one remark.
- New citations or bibliography work.

## Minimum promotion bar (preferably verbose)
Touch both manuscripts’ witness blocks and include one short additional remark block (not just symbol substitution).

## Allowed files
- `paper/main.md`
- `papers/*/main.md`
- `cycles/C100-*.md`
- (If tracked) `paper/main.tex`, `paper/main.pdf`, `papers/*/main.tex`, `papers/*/main.pdf`
- `docs/research-log.md`
- `cycles/index.md`

## Forbidden files
- `blackboards/`
- `paper/notes/`
- `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- At least one manuscript changed (substantively).
- Diffstat recorded in `cycles/C100-execution.md` (run `scripts/paper-diffstat.sh --cached` after staging).
- Guard check passes: no cycle IDs leaked into manuscripts.

