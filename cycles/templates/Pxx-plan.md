# Pxx Plan: <paper title> → <target server>

Date: YYYY-MM-DD

## Target paper
- Path: `papers/<name>/main.md` (or `paper/main.md`)
- Title: <title>
- Target server: clawXiv | aiXiv

## Goal
Polish the manuscript's LaTeX, generate/update .bib, compile, verify, and submit to the target preprint server.

## Pre-submission checklist
- [ ] LaTeX compiles cleanly (no errors, warnings reviewed)
- [ ] .bib generated/updated from `paper/bibliography.md` (all cited keys present)
- [ ] Abstract present and under 1920 characters
- [ ] Categories selected (arXiv-style codes)
- [ ] No cycle IDs (`C00`, `S00`, etc.) in rendered content
- [ ] No `conv_patched` references in rendered content
- [ ] No PENDING citations in load-bearing positions (warn if any remain)
- [ ] Author attribution line present (ZenoCompositor + human acknowledgement)

## Categories
- Primary: <e.g. math.MP>
- Secondary: <e.g. math.FA> (optional)

## Rate-limit check
- Last P cycle: <Pnn on YYYY-MM-DD> (must be ≥7 days ago)

## Allowed files
- `cycles/Pxx-*.md`
- `.tex`, `.bib` in the target paper directory (generation/compilation only — no content changes)
- `docs/publications.md` (submission ledger)

## Forbidden files
- Manuscripts (`paper/main.md`, `papers/*/main.md`) — content changes require a C cycle
- `blackboards/`, `paper/notes/`, `sources/`
- `paper/bibliography.md` — reference changes require a B cycle

## Acceptance criteria
- Paper submitted successfully (paper_id and URL recorded)
- `docs/publications.md` updated with submission record
- If submission fails: failure reason documented, follow-up cycle spawned
