# Project Handoff (Context-Independent)

This file captures the durable decisions and operational commands for this repo.
It is meant to survive chat/context resets.

## Canonical Agent Instructions
- Canonical rules live in `AGENTS.md`.
- On reset/startup, the full AGENTS startup read order is mandatory.
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
(`TaskList`). See `AGENTS.md` for the full architecture.

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

Resolved in B12 (2026-02-12): `Dirac1933`, `Kurasov1996`, `Wilson1974`, `Moyal1949`, `Velhinho2017`, `Groenewold1946` (Univ. Groningen OA), `Connes1994` (author OA from alainconnes.org).

## Follow-Up Papers Roadmap
Ideas for next papers (explicitly non-citable, may draw from `conv_patched.md` as brainstorming input):
- `meta/next-articles.md`
