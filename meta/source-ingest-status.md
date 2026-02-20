# Source Ingest Status (OA-First)

Date: 2026-02-09

## Objective
Track what works and what fails in bibliography ingestion, and capture concrete improvements to the ingest skill.

## Implemented Improvements
1. `skills/source-to-markdown/scripts/source_to_md.py`
   - Added explicit HTTP `User-Agent` headers for remote fetches.
   - Added provider detection for `arxiv.org`.
   - Added automatic `arxiv.org/abs/... -> arxiv.org/pdf/....pdf` resolution.
   - Expanded provider-PDF resolution heuristics for INSPIRE/KEK-style links.
2. `skills/source-to-markdown/SKILL.md`
   - Added OA triage order: arXiv -> INSPIRE -> KEK -> publisher -> `PENDING`.
   - Documented arXiv resolution and user-agent behavior.

## Network Behavior Observed
1. Works:
   - ArXiv API and direct PDF endpoints.
   - INSPIRE API (`inspirehep.net/api/literature`).
   - Newton Project HTML source pages.
2. Fails/limited from current environment:
   - KEK domains unresolved (`kek.jp`, `www-lib.kek.jp`, `ccdb5fs.kek.jp` DNS failures).
   - APS direct PDF for Feynman 1948 returns HTTP 403.
   - `alainconnes.org` direct book PDF returns HTTP 403.

## Operational Rule
For each bibliography key with no legal OA binary retrieved, create a `sources/pending-<key>.md` note containing:
1. bibliographic identity (title, DOI/arXiv if known),
2. attempted legal URLs and outcomes,
3. next action (`user-provided local PDF`).
