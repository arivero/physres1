# C22 Plan

## Goal
Implement the highest-leverage Q00 clarity fixes across the cornerstone paper and the two dependent drafts, without bloating the manuscripts or weakening the “half-densities first” stance.

## Scope
1. `paper/main.md`
   - Add an explicit “Contributions” list early (novelty signposting).
   - Add a notational guardrail for what \(d\) denotes (composition variable dimension), and when \(D\) (spacetime) is used.
   - Add a single forward pointer to the Planck-area follow-up, keeping Planck claims out of the cornerstone paper.
2. `papers/planck-area/main.md`
   - Add a minimal-claim paragraph distinguishing what is proved vs conjectural (scale selection).
   - Add a compact notation box clarifying \(d_{\mathrm{comp}}\) vs \(d_{\mathrm{spatial}}\) vs \(D_{\mathrm{spacetime}}\).
3. `papers/rg-fundamental/main.md`
   - Rephrase “RG is definitional” as a conditional compatibility schema.
   - Cite independent point-interaction references already in `paper/bibliography.md` where the U(2)/boundary-condition claims are used.
   - Expand Section 7 into a concrete `C`/`S`/`B` checklist.

## Non-Goals
- No new heavy derivations (those go to `S01` first).
- No bibliography web search/capture (that is `B01`).

## Risks
1. Over-editing: turning a clarity pass into a rewrite.
2. Notation churn: “fixing” \(d\) introduces more symbols than it removes.
3. Accidentally leaking cycle IDs into manuscript content.

## Acceptance Tests
1. `paper/main.md` contains a short contributions list and an explicit definition of \(d\)/\(D\) usage.
2. `papers/planck-area/main.md` contains a “minimal claim vs conjecture” paragraph and a notation box.
3. `papers/rg-fundamental/main.md` contains the conditional thesis phrasing, cites at least one independent point-interaction reference, and has an expanded Section 7 checklist.
4. Manuscript policy guardrail passes:
   - `rg -n 'C[0-9]{2}' paper/main.md` returns no matches.

