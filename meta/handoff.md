# Project Handoff (Context-Independent)

This file captures the durable decisions and operational commands for this repo.
It is meant to survive chat/context resets.

## Canonical Agent Instructions
- Canonical rules live in `AGENTS.md`.
- On reset/startup, the full AGENTS startup read order is mandatory.
- Startup guardrail for runtimes without native `TaskList`: initialize `meta/kanban.md`
  with empty/unassigned tasks only. Do **not** pre-assign at startup.
- Assignment rule: agents self-service the kanban via `skills/kanban/scripts/kanban.sh`
  (claim, self-allocate, done). The orchestrator seeds tasks and manages signals
  (GOOD DAY / DO SUGGESTIONS / STOP JOB) but does not gate individual assignments.
- Continuous mode default: keep the kanban cycle running. Agents read signals, then
  claim/self-allocate autonomously.
For other assistants:
- Claude reads `CLAUDE.md` (points back to `AGENTS.md` + team startup).
- GitHub Copilot reads `.github/copilot-instructions.md` (points back to `AGENTS.md`).

Key policies:
1. Task IDs are planning metadata only; keep them out of rendered manuscript output.
2. Do not cite `conv_patched.md` (or any chat transcript) as a bibliography source.
3. Prefer OA sources first; if not available, mark `PENDING` and ingest later from a lawful local PDF.
4. Treat preprints (including A. Rivero drafts) as guides; do not treat them as "source of truth" for key claims without independent support.

## Repo Layout
- Manuscript: `paper/main.md` (edit this)
- Generated: `paper/main.tex`, `paper/main.pdf` (regenerable from `paper/main.md`)
- Source ledger: `paper/bibliography.md`
- Follow-up drafts: `papers/`
- Agent definitions: `.claude/agents/` (5 persistent researcher personas)
- Shared rules: `agents/shared-rules.md`
- Agent private memory: `agents/<name>/memory/`
- Shared working surface: `blackboards/` (7 slots, 300 lines each)
- Shared stable memory: `notebooks/` (append-only)
- Regenerable captures (gitignored): `sources/`, `bibliography/sources/`

## Team Architecture
The project uses a persistent team of 5 researcher agents (Physicist, Mathematician,
Critic, Computationalist, Student) coordinated by an orchestrator via a shared kanban
(runtime surface often named `TaskList`). See `AGENTS.md` for the full architecture.

## Research Continuation (Durable State)
- Working memory + active threads: `meta/research-state.md` (non-citable)

## Build Paper (Markdown -> TeX -> PDF)
Do not rely on pandoc defaults for math in this repo; use the single-backslash math extension.

Commands:
```bash
pandoc -f markdown+tex_math_single_backslash -s paper/main.md -o paper/main.tex
pdflatex -interaction=nonstopmode -halt-on-error -output-directory paper paper/main.tex
pdflatex -interaction=nonstopmode -halt-on-error -output-directory paper paper/main.tex
rm -f paper/main.aux paper/main.log paper/main.toc
```

Why: without `tex_math_single_backslash`, pandoc may emit literal parentheses like
`Let (q:[t_i,t_f]->R^d)` which breaks TeX (`Missing $ inserted.`).

Environment notes:
- TeX inventory + smoke tests are recorded in `meta/tex-env-report.md` (BasicTeX/minimal).

## Consistency Checks (Before Release)
1. Ensure no task IDs leak into manuscript:
   - `rg -n 'T[0-9]+' paper/main.md`
2. Ensure manuscript does not mention `conv_patched.md`:
   - `rg -n 'conv_patched' paper/main.md`

## Bibliography + Sources Workflow (OA-First)
Ledger:
- Track citation keys and acquisition status in `paper/bibliography.md`.

Ingestion tooling:
- Use Python 3.12.
- See `skills/source-to-markdown/SKILL.md` for the supported commands.

Typical one-off ingest:
```bash
python3.12 skills/source-to-markdown/scripts/source_to_md.py <url-or-path>
```

Batch ingest:
```bash
python3.12 skills/source-to-markdown/scripts/ingest_sources.py --list bibliography/urls.txt --sources-dir sources
```

OA triage order:
1. ArXiv direct PDF
2. INSPIRE record/API (resolve legal PDF fields)
3. KEK records (if reachable)
4. Publisher (only if open/legal access works)
5. Otherwise create `sources/pending-<key>.md` with attempted URLs and next action

Observed network limitations and ingest improvements are tracked in:
- `meta/source-ingest-status.md`

## Current PENDING Items
As of 2026-02-12 (see `paper/bibliography.md` for details):
- `Landsman1998` — `PENDING_LIBRARY` (book; check institutional Springer access, otherwise physical library)

Resolved (2026-02-12): `Dirac1933`, `Kurasov1996`, `Wilson1974`, `Moyal1949`, `Velhinho2017`, `Groenewold1946` (Univ. Groningen OA), `Connes1994` (author OA from alainconnes.org).

## Follow-Up Papers Roadmap
Ideas for next papers (explicitly non-citable, may draw from `conv_patched.md` as brainstorming input):
- `meta/next-articles.md`

## Session Update (2026-02-23, Run R24 ending 12:00 CET)
- Short session (25 min). Self-service kanban, all 5 agents looped correctly.
- **Physicist**: Applied BB1 §10.7 d=2 correction (κ_n=0 but V_HD non-constant → KL inapplicable). Upgraded uniqueness corollary to two-condition form. Also contributed 2nd-agent physical review of BB3 (HC proof).
- **Critic**: Full adversarial review of BB3 (OQ-FdV-3 HC proof). Found sev-2 issues (M3.3 wrong spectrum, M3.2 domain error). Core §§11-13 APPROVED. Promoted clean notebook `harish-chandra-vhd-geometric-interpretation.md`.
- **Computationalist**: SymPy verification of BB1 d=2 claims (κ_n(2)=δ_{n0}, V_HD non-constant, a₂=1/90). Promoted BB3 core to `seeley-dewitt-a1-zero.md` Part 11. Also promoted new standalone notebook for HC interpretation.
- **Mathematician**: 2nd-agent review of BB4 (OQ-dS-2 Weyl=0). SymPy symbolic + numerical heat trace. Vassilevich convention clarified. CONDITIONAL APPROVE.
- **Student**: Browsed literature on heat kernel a_k on S³. Found Kluth-Litim reference.
- **Stale patch processed**: `student-discrete-borel-plan.md` (deferred, deleted).
- All R23 SINGLE-AGENT items now at 2+ agent consensus.
- **Next session priorities**: (1) Mathematician formal proof of BB1 uniqueness corollary. (2) BB3 intermediate step revision (M3.2, M3.3 cleanup). (3) BB4 Vassilevich convention fix for promotion. (4) Papers under review — check referee reports if available.

## Session Update (2026-02-23, Run R23 ending 10:56 CET)
- First session with self-service kanban (`skills/kanban/scripts/kanban.sh`). All 5 agents claimed tasks atomically without orchestrator gating.
- **Physicist**: Extended BB1 S³ a_k vanishing proof (Kluth-Litim generating function). Completed and done.
- **Mathematician**: Rewrote BB3 — OQ-FdV-3 Harish-Chandra proof of V_HD=−|ρ|² on Lie groups. SINGLE-AGENT, awaiting 2nd agent review.
- **Critic**: Rewrote BB4 — 2nd-agent review of a_k proof + OQ-dS-2 geometric origin. SINGLE-AGENT.
- **Computationalist**: BB4 OQ-dS-2 Weyl tensor d=3 → a₂=0. SymPy verified Thm C4.1. SINGLE-AGENT.
- **Student**: Startup + memory compression only (browse task unclaimed).
- Notebook `seeley-dewitt-a1-zero.md` received 45 new lines.
- **Lesson**: spawn prompt "focus on ONE task" made agents exit after one task instead of looping. Remove that instruction next session.
- Unclaimed: "Browse literature: heat kernel a_k on S³" (deferred to next session).

## Session Update (2026-02-21, Run R17 ending 23:00 CET)
- Lifecycle cleanup: git-rm'd 10 published satellite working dirs + areal-speed (unanimous 3-agent DISCARD).
- **paper/main.md** (2 commits: d8c94f5, 3a490d2):
  - D9.1h (S² ordering witness, THREE-AGENT): spectral comparison H_L vs H̃, l(l+1) vs n².
  - D9.1i (scope remark for D9.1h).
  - D6.5 (THREE-AGENT): impulse-kick kernel, Weierstrass-Erdmann jump as composition saddle.
  - D6.4a (FOUR-AGENT): λφ⁴ two-loop benchmark, |λ|≲8.4 at η=0.1.
  - Vuln 2: substantially addressed. Vuln 4: CLOSED. Representation track + Package B/D updated.
- All active proposals processed (critic-review-impulse-kernel, critic-review-vuln4-phi4-benchmark, mathematician-review-impulse-kernel, mathematician-review-vuln4-phi4, computationalist-review-vuln4-phi4). Applied.
- Unprocessed (SINGLE-AGENT only, pending second-agent vote next session): none — all applied or deferred.
- Pending discard vote: fermionic-mediators + uncuttable (critic+physicist voted YES; need 1 more).
- Research state updated: `meta/research-state.md` (section: "Session 2026-02-21 (21:40-23:00 CET, Run R17)").

## Session Update (2026-02-21, Run R16 ending 21:30 CET)
- Kanban run executed with request-first gate (agents request before assignment); all 16 run tasks completed.
- Applied manuscript edits in `paper/main.md`:
  - `P7.1a` track labels now mark remark nodes explicitly.
  - `P9.1a` and `P9.3` scope wording tightened; Stage-4 and arithmetic-ladder claims now explicitly non-theorem/channel-scoped.
  - New `Remark D11.0a` bridges `D8` to `D11`; wording revised to avoid object-identity drift.
  - Added in-text cite `[ElShowk2014]` and matching reference-list entry.
- Updated `paper/bibliography.md` with `[ElShowk2014]` in Sources + DOI audit + OA acquisition status.
- Proposals queue processed and cleared from root; artifacts archived under `proposals/archive/2026-02-21-run2130/`.
- Durable run summary appended to `meta/research-state.md` (section: "Session 2026-02-21 (20:47-21:13 CET, Run R16)").
