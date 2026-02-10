# Project Handoff (Context-Independent)

This file captures the durable decisions and operational commands for this repo.
It is meant to survive chat/context resets.

## Canonical Agent Instructions
- Canonical rules live in `AGENTS.md`.
- `AGENT.md` is a pointer only.

Key policies:
1. Cycle IDs (`C00`, `C01`, ...) are planning metadata only; keep them in `cycles/` and never in rendered manuscript output.
2. Do not cite `conv_patched.md` (or any chat transcript) as a bibliography source.
3. Prefer OA sources first; if not available, mark `PENDING` and ingest later from a lawful local PDF.
4. Treat preprints (including A. Rivero drafts) as guides; do not treat them as “source of truth” for key claims without independent support.

## Repo Layout
- Manuscript: `paper/main.md` (edit this)
- Generated: `paper/main.tex`, `paper/main.pdf` (regenerable from `paper/main.md`)
- Source ledger: `paper/bibliography.md`
- Follow-up drafts: `papers/`
- Planning artifacts: `cycles/`
- Regenerable captures (gitignored): `sources/`, `bibliography/sources/`

## Research Continuation (Durable State)
- Working memory + active threads: `docs/research-state.md` (non-citable)
- Chronological lab notebook: `docs/research-log.md` (non-citable)

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
- TeX inventory + smoke tests are recorded in `docs/tex-env-report.md` (BasicTeX/minimal).

## Consistency Checks (Before Release)
1. Ensure no cycle tags leak into manuscript:
   - `rg -n 'C[0-9]{2}' paper/main.md`
2. Ensure manuscript does not mention `conv_patched.md`:
   - `rg -n 'conv_patched' paper/main.md`

## Content-Cycle Diffstat (Required)
For every `Cnn` cycle, record the manuscript diffstat in `cycles/Cnn-execution.md`:
```bash
scripts/paper-diffstat.sh --cached
```
If this reports `TOTAL +0 -0`, the execution log must explicitly explain why no promotion happened in that cycle.

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
- `docs/source-ingest-status.md`

## Current PENDING Items
As of 2026-02-09 (see `paper/bibliography.md` for details):
- `Dirac1933`
- `Feynman1948`
- `Connes1994`
- `Landsman1998`

## Follow-Up Papers Roadmap
Ideas for next papers (explicitly non-citable, may draw from `conv_patched.md` as brainstorming input):
- `docs/next-articles.md`
