# B11 Plan: OA Ingest for Core Path-Integral Anchors (Dirac 1933; Feynman 1948)

Date: 2026-02-11

## Goal
Reduce early-paper bibliography friction for a foundations-journal submission by attempting OA acquisition/ingestion for two high-visibility anchors cited in the Introduction:
- `[Dirac1933]` (Dirac, 1933)
- `[Feynman1948]` (Feynman, 1948; DOI `10.1103/RevModPhys.20.367`)

## OA-first triage order
1. Author/institution repositories (GREEN OA).
2. Field databases (INSPIRE/OpenAlex/Semantic Scholar) pointing to lawful OA PDFs.
3. Publisher OA endpoints (if accessible without bot challenges).
4. Otherwise keep `PENDING_LOCAL_PDF` and record failure modes.

## Allowed files
- `paper/bibliography.md`
- `sources/` (gitignored by repo policy)
- `cycles/B11-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- `blackboards/`, `paper/notes/`
- `docs/`

## Acceptance criteria
- Update `paper/bibliography.md` OA acquisition status for any successfully acquired item.
- Ingest any acquired OA PDFs into `sources/` via `skills/source-to-markdown/scripts/source_to_md.py`.
- If blocked, keep `PENDING` but record *which* endpoints failed and why.

