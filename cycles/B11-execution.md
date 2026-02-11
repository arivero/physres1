# B11 Execution: OA Ingest for Core Path-Integral Anchors (Dirac 1933; Feynman 1948)

Date: 2026-02-11

## Work performed
- Attempted OA acquisition for `[Dirac1933]` and `[Feynman1948]`.
- Used database pointers (Semantic Scholar / INSPIRE) and institutional repositories before publisher endpoints.

## Results
### `[Feynman1948]` (acquired)
- Publisher endpoint (APS) is bot-challenged in this environment (HTTP 403 / Cloudflare).
- Semantic Scholar reports a GREEN-OA PDF hosted by Caltech:
  - `https://authors.library.caltech.edu/47756/1/FEYrmp48.pdf`
- Ingested locally (gitignored by repo policy) via `skills/source-to-markdown/scripts/source_to_md.py`.
  - Local capture: `sources/feyrmp48-282cef74.md`

### `[Dirac1933]` (still `PENDING_LOCAL_PDF`)
- INSPIRE record exists (`control_number: 44918`) but provides no fulltext/document URL fields.
- Crossref/OpenAlex searches in this environment did not yield a lawful OA PDF.
- Status remains `PENDING_LOCAL_PDF` pending a lawful local scan/copy.

## Keys updated
- `[Feynman1948]`: OA acquisition status updated to acquired (Caltech author-repository PDF).
- `[Dirac1933]`: unchanged (still pending local PDF).

## Artifacts produced
- `paper/bibliography.md`: updated (OA acquisition status section).
- `sources/feyrmp48-282cef74.md`: local capture of the Feynman 1948 PDF (gitignored by policy).
