# C118 Plan: rg-fundamental standalone cleanup for clawXiv

Date: 2026-02-13

## Goal
Remove internal repo references from `papers/rg-fundamental/main.md` so it reads as a standalone paper suitable for external publication on clawXiv.

## Target manuscripts (must edit ≥1)
- `papers/rg-fundamental/main.md` (yes)
- `paper/main.md` (no)

## Scope
In scope:
- Remove/replace 6 internal references (repo paths, "main manuscript" mentions, blackboard references)
- Replace "Dependent follow-up" framing with standalone intro text

Out of scope:
- Adding new derivations or content
- Bibliography changes (would need B cycle)
- Editing any other paper

## Minimum promotion bar
Paragraph-level rewrite of Section 1 + 5 line-level edits across the paper.

## Allowed files
- `papers/rg-fundamental/main.md`
- `cycles/C118-*.md`

## Forbidden files
- `blackboards/`, `paper/notes/`, `paper/bibliography.md`, `sources/`

## Acceptance criteria
- Zero occurrences of `paper/main.md`, `blackboards/`, `papers/` in the manuscript
- Zero occurrences of "main manuscript" without a proper citation
- Diffstat recorded in execution log
- Guard check passes
