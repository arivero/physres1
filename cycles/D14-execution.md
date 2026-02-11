# D14 Execution: extend step-halving rooted-tree witness (notation + next term)

Date: 2026-02-11

## Decision
- Chosen target: extend the Euler step-halving discrepancy to the next term and use a single convention for the elementary differential \(f'(y)[f(y)]\) in the step-halving witness across manuscripts.
- Why now: `paper/main.md` and `papers/rg-fundamental/main.md` both contain the same refinement-control story; inconsistent notation is a low-grade reader tax, and one more explicit term makes the rooted-tree bookkeeping claim more concrete.

## One-sentence novelty claim (non-manuscript)
The first “two half-steps vs one step” discrepancy already carries rooted-tree data, and the next term can be written as a second elementary differential (next rooted tree), clarifying how refinement comparison forces additional correction structure.

## Scope disclaimer (non-manuscript)
This is not claiming a new numerical-analysis result or a new renormalization theorem; it is a bounded witness/pedagogy improvement for the refinement→RG analogy used in the manuscripts.

## Updates made
- `docs/research-log.md`: added a dated entry for `D14`.
- `cycles/index.md`: marked `D14` completed and queued `S68 → C100 → Q57`.

## Spawned cycles
- `S68`: derive/check the next discrepancy term for Euler step-halving and phrase it in elementary-differential/rooted-tree language.
- `C100`: promote notation unification + the next-term remark into the step-halving witnesses in `paper/main.md` and `papers/rg-fundamental/main.md`.

