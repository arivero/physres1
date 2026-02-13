# B14 Debate: Should we ingest Nauenberg2003 now?

Date: 2026-02-12

## Question
Nauenberg2003 is arXiv OA (math/0112048). Should we ingest it into `sources/` in this cycle?

## Options
1. Ingest now (run source_to_md.py on the arXiv PDF).
2. Defer ingestion — the citation is for scholarly anchoring, not for extracting specific claims.

## Decision
Option 2: defer.

## Rationale
The manuscript uses Nauenberg2003 only as an anchoring citation ("see [X] for a modern reconstruction"). We are not quoting specific theorems or extracting technical content. Ingestion can happen later if we need to verify specific claims.
