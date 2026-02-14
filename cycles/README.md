# Cycles (Iteration System)

Cycles are planning/logging artifacts meant to survive restarts and keep work modular.
They are **not** citable sources.

## Guardrail (Manuscript Policy)
Cycle IDs (e.g. `C13`, `B02`, `S00`) are planning metadata only.
Do **not** place them in rendered manuscript content (`paper/main.md`, generated `.tex`, or PDF-visible text).

## Hard Rules (Workflow Contract)
These rules are strict and exist to keep the repo stable across many agents.

### 1) Only `Cnn` edits manuscripts
Manuscripts are:
- `paper/main.md`
- `papers/*/main.md`

No other cycle type (`D/S/B/Q`) may edit those files. If you have text ready to promote, keep it in `blackboards/`, `paper/notes/`, or `notebooks/` and open a `Cnn` to promote it.

### 2) Every `Cnn` must change ≥1 manuscript (and should be substantive)
A `Cnn` cycle is invalid if it does not modify at least one manuscript file.
If you discover you cannot (or should not) promote, close out the work as `D/S/B` and do **not** open a `C` cycle.

Preference: treat `Cnn` as a **promotion wave**. A single C cycle may:
- Add multiple remarks, paragraphs, or derivation blocks at once.
- **Refactor** existing content: split a remark across two sections, merge overlapping remarks, restructure a section's logical flow.
- **Reorganize** section structure if the paper's architecture has drifted.
- Combine new content with structural tightening of existing content.

Avoid opening a `C` cycle for tiny edits; bundle them into the next promotion wave. There is **no restriction to "one remark per C cycle"** — larger, structurally coherent changes are preferred.

### 3) `Qnn` answers `Cnn` only
`Qnn` cycles are referee-style responses to a specific `Cnn` diff (the parent cycle). `Q` is not used to review `D/S/B` outputs directly.

If you want critique on a discovery/study/bibliography result, either:
- red-team it inside the same cycle’s `*-redteam.md`, or
- promote it in a `Cnn`, then run `Qnn` on the manuscript change.

### 4) Paper-quality boundary (hard)
Manuscripts must contain publishable paper content only.

Allowed in manuscript (`paper/main.md`, `papers/*/main.md`):
- reader-facing derivations, propositions, remarks, and narrative transitions
- explicit scope boundaries and assumptions needed for correctness

Forbidden in manuscript:
- workflow/status text (`Package A/B`, "next cycle", "todo", "spawn", "queue")
- scaffolding artifacts from `blackboards/`, `notebooks/`, `paper/notes/`
- process bookkeeping that belongs in cycle files or docs

Promotion path:
- Use `D/S` cycles for exploration and technical scratch.
- Promote only stabilized, reader-facing material in a `C` cycle.

### 5) `C` launch gate (manual/LLM)
Before opening any new `C` cycle, do a quick manual check of recent completed runs.

Default gate policy:
- at least `1` `D`-family round since the most recent `C` (`D` or `DX`)
- at least `2` `S` rounds since the most recent `C`

How to check:
1. Read `cycles/index.md` ("Recent completed") and the recent tail of `docs/research-log.md`.
2. Identify the most recent completed `C`.
3. Count completed `D`/`DX` and `S` runs after that `C`.
4. If below threshold, do not launch `C`; run `D/S` first.

This is intentionally judgment-based and lightweight: the LLM/human operator decides, not an external program.

### 6) `D` scope guard (hard)
`D`/`DX` are discovery tracks only. They must carry a novelty target, hypothesis,
counterexample search, or conceptual triage outcome.

Not allowed in `D`/`DX`:
- manuscript wording polish
- readability compression policy
- launch/commit workflow policy that is not tied to novelty claims
- sentence-level insertion drafting for manuscript navigation

If the task is prose change, use `C`. If the task is submission packaging, use `P`.

### 7) Context-search before cycle startup (required for D and S)
**Before starting any D or S cycle**, use Haiku agent to search for relevant context:

- **D-cycle (Discovery):** Search `sources/` folder for related themes in bibliography/external sources
  - Purpose: Check what the literature says before claiming novelty
  - Tool: `Task` with `subagent_type="Explore"` and `model="haiku"`
  - Query: "Search sources/ for [topic keywords from D-plan]"
  - Prevents reinventing the wheel, finds connections to existing work

- **S-cycle (Study):** Search `papers/` folder for related content in our manuscripts
  - Purpose: Check what we've already written before duplicating derivations
  - Tool: `Task` with `subagent_type="Explore"` and `model="haiku"`
  - Query: "Search papers/ and paper/ for [technical terms from S-plan]"
  - Prevents internal duplication, identifies integration opportunities

**Rationale:** Context-gathering with cheap Haiku search before expensive Opus/Sonnet deep work. If the search shows the question is already answered (in sources or our papers), adjust or cancel the cycle.

### 8) Mathematics must be written down (mandatory for success criteria)
**For any cycle claiming to satisfy success criteria involving mathematical results** (derivations, calculations, technical claims):

The mathematics **must** be written to persistent files:
- `blackboards/*.md` (preferred for work in progress)
- `notebooks/*.md` (for stabilized results)
- `paper/notes/*.md` (only in C-cycles, for manuscript-adjacent drafts)

**Not acceptable as evidence of completion:**
- Mathematics only in agent memory/context (not written to disk)
- Mathematics only in cycle logs (`cycles/*-execution.md`, `cycles/*-debate.md`, etc.)
- Verbal descriptions without explicit formulas/equations

**Examples:**
- ✓ GOOD: "Completed Gaussian integral calculation, explicit line-by-line derivation in `blackboards/6.md`"
- ✗ BAD: "Completed Gaussian integral calculation (see above in this execution log)"
- ✗ BAD: "Verified that d/2 exponent holds" (without showing the algebra)

**Rationale:** Cycles are planning/logging artifacts that get archived. Mathematical content must live in durable, referenceable locations that can be promoted to manuscripts or serve as standalone computational records.

## Cycle Types
We use five independent numbered tracks:

1. **Discovery cycles** (`Dnn`): novelty/discovery planning and triage (no manuscript edits).
   Two subtypes:
   - **D-triage** (`Dnn`, default): pick a novelty target from the backlog, define it, spawn production cycles. Convergent.
   - **D-explore** (`DXnn`): divergent exploration — surprise inventory, cross-thread probes, framing stress-tests, candidate principles. Uses `docs/anomalies.md` as input/output. Does not commit to a production target; may spawn S or D-triage.
   - Typical outputs: updated backlog/priority in `docs/research-state.md` and/or `docs/next-articles.md`, plus spawned `S`/`B`/`C` cycles. D-explore also updates `docs/anomalies.md` and the principle evolution log in `docs/research-state.md`.
   - Non-goal: editorial/manuscript wording work.

2. **Study cycles** (`Snn`): exploratory technical work (blackboards, notes, notebooks; derivations/checks/toy computations).
   - Typical outputs: `blackboards/*.md`, `paper/notes/*.md`, and/or `notebooks/*.md`.
   - Blackboard -> notebook transfer is an intended stabilization step when material is worth preserving but not manuscript-ready.
   - Promotion rule: results are promotion candidates only; promote only via a `Cnn`.
   - **Mathematics requirement (Rule 8):** All mathematical success criteria must be written to blackboards/notebooks, not just in cycle logs.

3. **Bibliography cycles** (`Bnn`): search/ingest/verify cycles for references.
   - Typical outputs: `paper/bibliography.md`, `sources/` captures, and `sources/pending-<Key>.md`.
   - Rule: never cite `conv_patched.md` (or any transcript) as a bibliography source.

4. **Content cycles** (`Cnn`): writing/derivation cycles that change manuscript text.
   - Typical outputs: `paper/main.md`, `papers/*/main.md`, and their rebuilt PDFs.

5. **Quality cycles** (`Qnn`): referee-style pass on a specific `Cnn` (clarity, correctness, claim hygiene, reader experience).
   - Typical outputs: the `cycles/Qnn-*.md` review itself plus spawned follow-up cycles (`D/S/B/C`).

6. **Publication cycles** (`Pnn`): polish-and-push cycles that prepare a finished manuscript for submission to an external preprint server (clawXiv, aiXiv).
   - Typical outputs: compiled `.tex`/`.bib` in the target paper directory, API submission, `docs/publications.md` ledger update.
   - Rule: **no content changes** — if content needs fixing, spawn a `C` cycle first.
   - Rule: a `P` cycle requires a completed `Q` on the most recent `C` for that paper.
   - Rule: **max 1 P cycle per 7 days** (self-imposed rate limit).
   - Server routing: math papers (`math.MP`, `math.FA`, `math.QA`) → clawXiv; physics/QFT (`hep-th`) → aiXiv.

These tracks are designed to be *interleaved*, but under the strict rule that only `C` edits manuscripts, `Q` reviews `C`, and `P` only submits (never edits content).

## Allowed/Forbidden Files by Cycle Type
This table is the operational “permissions model” for agents.

| Cycle | Allowed edits | Forbidden edits (examples) |
|---|---|---|
| `Dnn` (triage) | `docs/research-state.md`, `docs/next-articles.md`, `docs/research-log.md`, `cycles/Dnn-*.md` | Manuscripts (`paper/main.md`, `papers/*/main.md`), bibliography (`paper/bibliography.md`), `sources/`, editorial wording/launch-policy prep |
| `DXnn` (explore) | `docs/research-state.md`, `docs/next-articles.md`, `docs/anomalies.md`, `docs/research-log.md`, `cycles/DXnn-*.md` | Manuscripts, bibliography, `sources/`, editorial wording/launch-policy prep |
| `Snn` | `blackboards/*.md`, `paper/notes/*.md`, `notebooks/*.md`, `docs/research-log.md`, `cycles/Snn-*.md` | Manuscripts, bibliography ledger, `sources/` |
| `Bnn` | `paper/bibliography.md`, `sources/*`, `sources/pending-*.md`, `cycles/Bnn-*.md` | Manuscripts, blackboards/notes/notebooks (unless spawning an `S`) |
| `Cnn` | Manuscripts (`paper/main.md`, `papers/*/main.md`) + `cycles/Cnn-*.md` (and tracked build artifacts if used) | `blackboards/`, `paper/notes/`, `notebooks/`, bibliography ledger, `sources/` |
| `Qnn` | `cycles/Qnn-*.md` only | Manuscripts, blackboards/notes/notebooks, bibliography ledger, `sources/` |
| `Pnn` | `cycles/Pnn-*.md`, `.tex`/`.bib` in target paper dir (compile only), `docs/publications.md` | Manuscripts (`.md`), blackboards/notes/notebooks, bibliography ledger, `sources/` |

If a task would require touching forbidden files, spawn the appropriate cycle type instead of "just doing it."

Technical-output accounting note:
- Edits in `blackboards/`, `paper/notes/`, and `notebooks/` count as technical work, not administrative scaffolding.

## Canonical Interleavings (Recipes)
### Recipe A (default discovery-to-prose loop)
`D → S → (B if load-bearing) → C → Q`
- `D`: choose the novelty target and define success criteria.
- `S`: produce at least one concrete derivation/computation witness.
- `B` (optional): acquire an independent anchor if the claim will be load-bearing in prose.
- `C`: promote into manuscripts (must change at least one manuscript; preferably a wave).
- `Q`: referee-pass the `C` diff.

### Recipe B (hardening after a promotion wave)
`C → Q → (S/B) → C`
Use when `Q` identifies a missing derivation, an unclear claim boundary, or a weak anchor.

### Recipe C (bibliography hardening before promotion)
`B → S → C → Q`
Use when a claim is known to be standard but needs both an anchor and a local reproduction.

### Recipe D (divergent exploration — dormant)
`DX → (S) → D-triage → ...`
Historically used for surprise inventory and cross-thread probes (D00–D15,
DX01–DX10). Now superseded by the `SERENDIPITY:` tag convention: any cycle
can flag unexpected findings inline. Use Recipe D only if a deliberate
structural audit is needed (e.g., after major refactoring).

### Recipe E (publication pipeline)
`C → Q → P`
Use when a paper is content-complete. The `P` cycle does final LaTeX polish, .bib generation, compilation check, and API submission. If `P` discovers content issues, it spawns `C` (not direct edits). Max 1 `P` per 7 days.

## Cross-Cycle Spawning (How Work Begets Work)
Use this rule of thumb:
- If the task is "choose novelty + triage": spawn `D` (triage).
- If the task is "look for surprises / cross-thread connections / framing stress-test": spawn `DX` (explore).
- If the task is "derive/check": spawn `S`.
- If the task is "find/ingest/verify a reference": spawn `B`.
- If the task is "write or restructure manuscripts": spawn `C`.
- If the task is "referee review of a manuscript change": spawn `Q` (and name the parent `C`).
- If the task is "submit a finished paper to a preprint server": spawn `P` (requires a recent `Q` pass).

## Iterating an Unsatisfied Cycle
If a cycle is still unsatisfactory, it is valid to **keep looping in the same ID while it remains in progress**.

Preferred pattern:
1. Keep the same cycle files and append a new dated iteration block in `*-execution.md`.
2. Update `*-plan.md` acceptance criteria if they were too weak/ambiguous.
3. Track the hard objection in `*-debate.md` and update mitigations in `*-redteam.md`.
4. Mark the cycle `Completed` only when acceptance criteria are actually met.

When to open a new ID instead:
1. Scope or question changes materially.
2. You intentionally close the current cycle and start a fresh attempt.
3. The cycle is already archived/finalized and you need a new traceable round.

**Serendipity awareness:** stay alert for unexpected findings during any cycle.
Flag them with `SERENDIPITY:` in the execution log. If a deliberate structural
audit seems warranted (e.g., after major refactoring), use Recipe D.

## Serendipity Tags
Any cycle (S, C, Q, B) can flag an unexpected finding in its execution log
with a `SERENDIPITY:` tag. Format:

```
SERENDIPITY: <one-line description of the unexpected finding>
```

**What happens next:**
1. The finding **immediately gets a blackboard slot** (overwrite the
   least-relevant slot per `blackboards/README.md` rules).
2. The next `cycles/index.md` update notes it as a promotion candidate.
3. If it merits manuscript space, a normal `S → C → Q` chain promotes it.

This replaces the earlier practice of scheduling dedicated D/DX cycles for
surprise discovery. Real surprises emerge mid-work (e.g., S204 found
V=(1/6)R matching conformal coupling iff D=4; S208 found Padé recovering
Yukawa exactly).

## File Convention (per cycle)
Each cycle uses four files:
- `cycles/<ID>-plan.md`: goal, scope, acceptance tests.
- `cycles/<ID>-execution.md`: what changed, what was learned, status.
- `cycles/<ID>-debate.md`: one hard question + the current resolution.
- `cycles/<ID>-redteam.md`: failure modes + mitigations.

New cycle files go in `cycles/` (top level). Templates live in `cycles/templates/`.
Create cycle files by copying from templates and renaming to the target ID.

## Archiving (Git-Based)
Completed cycle files are removed from the working tree with `git rm` and
live exclusively in git history. There is no `cycles/archive/` directory.

**Workflow:**
1. New cycle files are created in `cycles/` (top level).
2. When a cycle is completed, committed, and no longer needed in the working
   tree, `git rm` its four files (`*-plan.md`, `*-execution.md`, `*-debate.md`,
   `*-redteam.md`) during the next infrastructure commit.
3. The files remain fully recoverable via `git log` / `git show`:
   ```bash
   git log --all --oneline -- cycles/S200-execution.md
   git show <commit>:cycles/S200-execution.md
   ```
4. `cycles/index.md` uses a summary table for completed cycles, not per-cycle
   lines. The table records track, count, and ID range so any cycle can be
   located in git history without reading the working tree.

**Rules:**
- Do not keep completed cycle files in the working tree after they are committed.
  The only `.md` files in `cycles/` (besides `README.md`, `index.md`, and
  `templates/`) should be **active or in-progress** cycles.
- To retrieve an archived cycle, use `git show` on the commit that last
  touched it. Never bulk-recover archived cycles into the working tree.
- Q cycles that need to reference a parent C should use `git show` to read
  the relevant `Cnn-execution.md` from history, not restore files to disk.

## Content-Cycle Logging Requirement (Diffstat)
Every `Cnn` cycle must:
1. Produce substantive edits to at least one draft manuscript (`paper/main.md` and/or `papers/*/main.md`).
2. Record the line-level diffstat for those draft manuscripts in `cycles/Cnn-execution.md`.

Command (run after staging changes, just before `git commit`):
```bash
scripts/paper-diffstat.sh --cached
```

Paste the output under a `## Diffstat` heading in the execution log.
If the command reports `TOTAL +0 -0`, the cycle should not have been a `C` cycle; close it out as `D/S/B` and open a new `C` only when promotion is ready.

## Build Hygiene
After a successful TeX build, delete auxiliary files explicitly (never recursively), e.g.:
```bash
rm -f paper/main.aux paper/main.log paper/main.toc
rm -f papers/<paper>/main.aux papers/<paper>/main.log
```

## Local Append-Only Rule (Session)
User rule for current workflow: cycle files are append-only.
- Do not edit or rewrite existing lines in `cycles/*` cycle artifacts.
- Add updates only by appending new dated addendum blocks.

## Local Rule: S/D vs paper/notes (Session)
User rule for current workflow:
- `S` and `D` cycles must not use `paper/notes/`.
- Only `C` cycles may edit `paper/notes/`, and only when adding content for the same target paper being edited in that `C` cycle.
- For `S`/`D` technical work, use `blackboards/` and promote stable material to `notebooks/`.
