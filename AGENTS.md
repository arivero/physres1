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

## Workspace Hygiene
1. **Blackboards** (`blackboards/`): max **7 files** (see `blackboards/README.md`). Delete before creating when at cap.
2. **Paper notes** (`paper/notes/`): max **10 files** (see `paper/notes/README.md`). Retire integrated notes.
3. Promoted content must not linger as a duplicate in the scratch layer.

## Commit Policy
1. **When to commit:** only when finishing a work cycle (not mid-cycle).
2. **Two-commit rule:** split each cycle's commit into two:
   - **First commit:** manuscript source files that generate output — `.md` files in `paper/` and `papers/*/`, `.tex` files, `.bib` files, and `paper/bibliography.md`.
   - **Second commit:** everything else — `cycles/`, `docs/`, `blackboards/`, `paper/notes/`, config files.
3. This keeps the manuscript-generating history cleanly separable from planning/logging artifacts.
4. **Commit metadata (required in every commit message):**
   - Include a tag identifying the orchestrating agent/model (e.g., `[opus-4.6]`, `[codex-cli]`, `[copilot]`).
   - Include a token/usage estimate if the tooling exposes it (e.g., `tokens: ~12k in / ~8k out`). If not available, write `tokens: N/A`.

## Quality Cycle (Q) Policy
1. **Delegate Q passes to subagents.** When running a Q (referee) cycle, spawn the review as a separate subagent (Task tool) with fresh context. The subagent reads the paper cold — without the authoring context — and is more likely to catch genuine errors, unclear passages, and missing references.
2. The main agent collects the subagent's report, triages the findings, and applies fixes as appropriate.
3. Multiple papers can be reviewed in parallel by launching several subagent Q passes simultaneously.

## Sources Policy
1. Never cite conversation transcripts as bibliography sources.
2. Prefer OA sources first; if unavailable, mark as `PENDING` for later local ingestion.
3. Treat preprints (including A. Rivero notes/arXiv drafts) as **guides**, not sources of truth: for key claims, seek independent primary/peer-reviewed support and label preprint-derived content as heuristic until verified.
