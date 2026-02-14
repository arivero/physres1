# AGENTS.md

## Scope
This file applies to the entire repository.

## Canonical Contract
1. `AGENTS.md` is the canonical repository contract for all agents.
2. If another local agent file exists (for example `CLAUDE.md`), treat it as supplemental only.
3. When overlap exists, keep policy in `AGENTS.md` and avoid split-brain duplicates across agent-specific files.

## Session Startup (Read Order)
At session start, read these in order:
1. `AGENTS.md`
2. `docs/motivations.md`
3. `docs/handoff.md`
4. `docs/research-state.md`
5. `cycles/index.md`
6. `cycles/README.md`

Startup is not complete unless all six files above are read, including
`cycles/README.md` (do not treat it as optional).

## Context Budget Rules
1. Keep `cycles/index.md` compact; do not append per-cycle completed-line logs there.
2. Completed cycle files live in **git history only** (removed from the working
   tree via `git rm` after commit). To retrieve one, use `git show`; never
   bulk-recover archived cycles into the working tree.
3. `docs/research-log.md` is append-only; at startup read only recent tail context.
4. Read only blackboard slots relevant to the current cycle.

## Context Poisoning Guardrails
1. Default-deny for high-volume history files: do not read full contents of:
   - `docs/research-log.md`
   - git-archived cycle files (recovered via `git show`)
   - session transcripts / continuation dumps (`*continued-from-a-previous*.txt`, `conv_patched.md`)
2. Read archived or log files only with an explicit reason tied to the active cycle, and only the minimal slice needed.
3. Never use broad scans that pull archive/log bodies into context (for example recursive `cat`, bulk `git log -p` over cycle files, or opening entire large files).
4. Preferred startup pattern:
   - Read policy/state files listed in Session Startup.
   - For logs, read only a short tail (for example last 30-60 lines).
   - For archived cycles, use `git show <commit>:<path>` for a single named file only when required.
5. If accidental ingestion happens, state it in the cycle execution log and immediately re-anchor on canonical state files (`AGENTS.md`, `docs/research-state.md`, `cycles/index.md`) before proceeding.

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
3. **Notebooks** (`notebooks/`): append-only technical memory (see `notebooks/README.md`). Copying stabilized blackboard content into notebooks is an intended promotion path.
4. Promoted content must not linger as a duplicate in the scratch layer. A short-lived blackboard -> notebook overlap is acceptable until the next cleanup pass.

## Commit Policy
1. **When to commit:** at most **once per hour**. Multiple cycles accumulate
   as uncommitted work and are committed together. Do **not** commit after
   every individual cycle.
2. **Time until commit is working time:** Do NOT wait idle in a sleep loop for
   commit time to arrive. Use the waiting period to create and run new cycles
   (D/S/B/C/Q). Commits happen when ready AND when the 60-minute minimum has passed.
3. **Three-commit rule (per batch):**
   - **Commit 1 (manuscripts):** manuscript source files — `.md` in `paper/` and
     `papers/*/`, `.tex`, `.bib`, `paper/bibliography.md`.
   - **Commit 2 (scaffolding):** everything else — `cycles/`, `docs/`, `blackboards/`,
     `paper/notes/`, `notebooks/`, config files. **New cycle files enter git here.**
   - **Commit 3 (archiving):** `git rm` of completed cycle files that were
     **already tracked from a previous batch**. Never `git rm` files that were
     first added in Commit 2 of the same batch.
   - If no manuscripts changed, skip Commit 1.
   - If no cycles are ready for archiving, skip Commit 3.
4. **Why three commits (git-as-archive):** Cycle files are ephemeral planning
   artifacts, but they must be recoverable from git history via
   `git show <commit>:cycles/Cnn-execution.md`. This requires the file to
   exist in at least one commit's tree before removal. The one-window lag
   (created in batch N, archived in batch N+1) guarantees this. A cycle that
   is created and completed within a single 60-minute window stays in the
   working tree until the next batch, when it enters git (Commit 2) and
   becomes eligible for archiving in the batch after that (Commit 3).
5. **Commit metadata (required in every commit message):**
   - Include a tag identifying the orchestrating agent/model (e.g., `[opus-4.6]`, `[codex-cli]`, `[copilot]`).
   - List all cycle IDs in the batch (e.g., `S200+C241+S201+C242+Q128`).
   - Include a token/usage estimate if the tooling exposes it. If not available, write `tokens: N/A`.
6. **Research-log rollover before commit:**
   - Before starting commit work, move all but the latest three dated entries from `docs/research-log.md` into `docs/research-log-archive.md`.
   - Keep chronological order and append moved content to the archive (do not rewrite archive history).

## Cycle Execution Minimum
1. In a normal working invocation, run at least one cycle (`S/B/C/Q`, or a small coherent chain) chosen from `cycles/index.md`.
2. For each cycle worked, maintain the four artifacts:
   - `cycles/<ID>-plan.md`
   - `cycles/<ID>-execution.md`
   - `cycles/<ID>-debate.md`
   - `cycles/<ID>-redteam.md`
3. Update both:
   - `docs/research-log.md` (dated entry)
   - `cycles/index.md` (status + next actions)

## Content Cycle Diffstat Requirement and Productivity Threshold
**C-cycles are for substantial manuscript promotion.** Minor edits should be batched.

**Minimum productivity threshold (Rule 9 in cycles/README.md):**
- Net **≥10 lines** of meaningful content (prose/math/derivations), OR
- Completion of a planned promotion (blackboard → manuscript), OR
- Critical correctness fix that cannot be batched

**Micro-edits (<5 lines)** should be accumulated and applied in the next substantial C-cycle, not as standalone cycles.

**Diffstat recording (required for every Cnn):**
1. Run: `scripts/paper-diffstat.sh --cached`
2. Paste output under `## Diffstat` in `cycles/Cnn-execution.md`
3. Record productivity gate status: PASS (≥10 net), MARGINAL (5-9), FAIL (<5)
4. If output is `TOTAL +0 -0`, explicitly explain why no promotion occurred (and prefer `S`/`B` instead)

**Rationale:** C-cycles have overhead (planning, review, commit). Batching amortizes overhead and produces more coherent changes.

## Pre-Commit Hygiene Checks (When Relevant)
If `paper/main.md` changed:
1. Cycle-tag leak check: `rg -n 'C[0-9]{2}' paper/main.md`
2. Transcript mention check: `rg -n 'conv_patched' paper/main.md`

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

## Docs Governance Map
- `docs/conv-coverage-map.md` — continuation/coverage bookkeeping; non-citable and optional unless running coverage audits.
- `docs/source-ingest-status.md` — source-ingest/network troubleshooting ledger used by bibliography workflows.
- `docs/tex-env-report.md` — TeX environment inventory and smoke-test record for build diagnostics.

## Sources Policy
1. Never cite conversation transcripts as bibliography sources.
2. Prefer OA sources first; if unavailable, mark as `PENDING` for later local ingestion.
3. Treat preprints (including A. Rivero notes/arXiv drafts) as **guides**, not sources of truth: for key claims, seek independent primary/peer-reviewed support and label preprint-derived content as heuristic until verified.
4. Do not commit `sources/`; it is regenerable and gitignored.

## Local Source Acquisition (When Applicable)
If the running username matches the remote GitHub repo owner on a private machine with sufficient storage:
1. Agents may acquire sources aggressively when lawful (including non-OA routes), without blocking on confirmation.
2. OA-first remains the citation-ordering/default policy.
## Commit Conventions
do not start commit work if not 60 minutes passed from last commit in log
commit work is actually two commits: the papers tex modifications, and all of the rest

## Research Cycle Protocol
This project uses structured research cycles (S-series studies, Q-series reviews, C-series commits/promotions). When asked to 'run cycles' or 'continue from cycle index', consult the cycle index file, pick up from the next pending cycle, execute it fully, Operate autonomously through multiple cycles unless interrupted.

Cycle intent is strict:
- `D`/`DX` = discovery/novelty triage only.
- `C` = manuscript writing/promotion.
- `P` = publication packaging/submission (no content edits).

## File Management
When files grow large or bloated, proactively archive them rather than letting them accumulate. Use `find`-based commands instead of glob expansion when operating on large numbers of files. Deduplicate docs when content overlaps across files.

## Continuous Operation
When asked to run multiple cycles or tasks, continue autonomously without pausing for confirmation between each one. Only stop when the requested count is reached, the time limit is reached, or an error occurs.

## When No Tasks Are Available (Looping Protocol)
If instructed to keep looping but no explicit tasks remain in `cycles/index.md`:

**PRIORITY RULE:** When scanning manuscripts (ours) or bibliography, **discovery (Dxx) and study (Sxx) tasks have priority over content (Cxx) promotion**. Generate questions, identify gaps, and spawn exploration cycles before reaching for promotion. We are researchers first, editors second.

1. **Scan manuscripts for D/S opportunities (prioritize over C):**
   - Read `paper/main.md` and `papers/*/main.md` section by section
   - **First priority:** Identify deep questions raised by existing claims (→ spawn D-cycle: "Can this hypothesis be weakened?", "Does this extend to curved space?", "What's the obstruction?")
   - **Second priority:** Identify claims needing derivation witnesses or technical verification (→ spawn S-cycle for blackboard/notebook work)
   - **Third priority:** Look for stable blackboard/notebook content ready for promotion (→ spawn C-cycle)
   - Avoid becoming a "promotion factory" — if no deep questions emerge, that's a signal to pause or switch tasks

2. **Scan bibliography for source-driven work:**
   - Read `paper/bibliography.md` OA Acquisition Status section
   - Identify PENDING sources that can be acquired (→ spawn B-cycle)
   - Identify acquired sources not yet integrated into manuscripts (→ spawn S-cycle to extract key results, then C-cycle to promote)
   - Direct book-to-article promotion: if a key theorem/result from an acquired book can be cited and used, spawn a C-cycle to add it directly to the manuscript with proper citation

3. **If all manuscripts are stable and bibliography is current:**
   - Run a quality sweep: spawn Q-cycles on recent C-cycles
   - Run red-team passes on recent S-cycles
   - Check page counts and run compaction passes if satellites exceed limits
   - Only then: idle or report completion
