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

## Paper Relationship Model
- **Satellite papers** (`papers/*/`) are **independent result papers** — publishable
  on their own, like Phys. Lett. B articles. They have their own internal logic
  and don't depend on reading the main paper.
- **Main paper** (`paper/`) is a **review/survey** — Physics Reports scale. It
  provides the overarching framework. The satellites relate to it the way
  individual letters relate to a comprehensive review.
- Cross-references between satellites and main should be light ("see companion
  note" style), not load-bearing dependencies.

## Satellite Paper Page Limit
Satellite papers (`papers/*/`) target **Phys. Lett. B-style letters**: max **6 compiled
LaTeX pages** in `elsarticle` 3p twocolumn format. Phys. Lett. B traditionally allowed
4 pages; 6 is the generous cap. **Always measure with the compiler**, not by guessing
from line counts — run `scripts/count-pages.sh` to get actual page counts.

**Stop expanding** a satellite once it reaches 6pp compiled. If a paper exceeds 6pp,
either compact references (switch to BibTeX numbered style), trim body, or reclassify
as a longer article (Phys. Rev. D scale, ~8–15pp).

## Workspace Hygiene
1. **Blackboards** (`blackboards/`): max **7 files** (see `blackboards/README.md`). Delete before creating when at cap.
2. **Paper notes** (`paper/notes/`): max **10 files** (see `paper/notes/README.md`). Retire integrated notes.
3. Promoted content must not linger as a duplicate in the scratch layer.

## Commit Policy
1. **When to commit:** at most **once per hour**. Multiple cycles accumulate
   as uncommitted work and are committed together. Do **not** commit after
   every individual cycle.
2. **Two-commit rule (per batch):**
   - **First commit:** manuscript source files — `.md` in `paper/` and
     `papers/*/`, `.tex`, `.bib`, `paper/bibliography.md`.
   - **Second commit:** everything else — `cycles/`, `docs/`, `blackboards/`,
     `paper/notes/`, config files.
   - If no manuscripts changed, only the second commit is needed.
3. This keeps the manuscript-generating history cleanly separable from
   planning/logging artifacts, while limiting total commits to ≤2 per hour.
4. **Commit metadata (required in every commit message):**
   - Include a tag identifying the orchestrating agent/model (e.g., `[opus-4.6]`, `[codex-cli]`, `[copilot]`).
   - List all cycle IDs in the batch (e.g., `S200+C241+S201+C242+Q128`).
   - Include a token/usage estimate if the tooling exposes it. If not available, write `tokens: N/A`.

## Subagent Recipes (Optional)
The recipes below describe how to delegate specific tasks to subagents for improved quality. They are **optional**: if the main agent does not support orchestration of subagents (e.g., Codex CLI, Copilot), skip these steps and perform the review in-context instead. The core cycle logic is the same either way.

### Quality Cycle (Q) — Referee Subagent
1. **Delegate Q passes to subagents.** When running a Q (referee) cycle, spawn the review as a separate subagent (Task tool) with fresh context. The subagent reads the paper cold — without the authoring context — and is more likely to catch genuine errors, unclear passages, and missing references.
2. The main agent collects the subagent's report, triages the findings, and applies fixes as appropriate.
3. Multiple papers can be reviewed in parallel by launching several subagent Q passes simultaneously.
4. **Prompt template:** "You are a [careful mathematical physicist / skeptical theorist / ...] acting as an anonymous journal referee. Read [file path]. Check for: mathematical correctness, notation consistency, overstated claims, missing references. Report issues ranked by severity."

### Study Cycle (S) — Blackboard Review Subagent
1. **Delegate blackboard reviews to subagents with random personas.** When an S cycle produces a blackboard note, spawn a subagent (Task tool) to review it. The subagent reads the blackboard cold and provides feedback.
2. **Random persona assignment.** Each time, assign the subagent a different persona — e.g. a rigorous mathematician, an intuitive physicist, a skeptical referee, a pedagogical expositor — to get varied feedback reflecting the diverse nature of blackboard discussions.
3. The main agent collects the subagent's feedback, triages it, and incorporates useful suggestions before promotion.
4. **Prompt template:** "You are a [persona]. Review [file path]. Check for: [correctness / physical intuition / clarity / reproducibility]. Provide suggestions for improvement and assess readiness for promotion."

### Persona Library (Non-Exhaustive)
Pick one per subagent invocation. Vary across cycles for diverse feedback.
- **Skeptical applied mathematician**: precise about computation, insists on reproducibility.
- **Intuitive theoretical physicist**: checks limiting cases, dimensional analysis, physical plausibility.
- **Rigorous pure mathematician**: demands explicit hypotheses, proof structure, statement precision.
- **Pedagogical expositor**: focuses on clarity, accessibility, whether a graduate student could follow.
- **Hostile referee**: actively looks for reasons to reject; stress-tests every claim.

## Editable Documentation
- `docs/motivations.md` — agents may edit this file if they discover new
  motivations, research connections, or open questions during study cycles.
  Add material under the appropriate heading. Do not remove existing content
  without explicit user approval.

## Sources Policy
1. Never cite conversation transcripts as bibliography sources.
2. Prefer OA sources first; if unavailable, mark as `PENDING` for later local ingestion.
3. Treat preprints (including A. Rivero notes/arXiv drafts) as **guides**, not sources of truth: for key claims, seek independent primary/peer-reviewed support and label preprint-derived content as heuristic until verified.
