# AGENTS.md

## Scope
This file applies to the entire repository.

## Manuscript Policy
1. `C0x` cycle labels are planning-only metadata.
2. Keep cycle labels in `cycles/` files, checklists, or comments.
3. Do not place cycle labels in rendered manuscript content (`paper/main.md`, generated `.tex`, or PDF-visible text).
4. In manuscript prose, use section-based transitions and conceptual wording instead of cycle IDs.
5. Before finalizing manuscript output, verify:
   `rg -n 'C[0-9]{2}' paper/main.md`

## Sources Policy
1. Never cite conversation transcripts as bibliography sources.
2. Prefer OA sources first; if unavailable, mark as `PENDING` for later local ingestion.
3. Treat preprints (including A. Rivero notes/arXiv drafts) as **guides**, not sources of truth: for key claims, seek independent primary/peer-reviewed support and label preprint-derived content as heuristic until verified.
