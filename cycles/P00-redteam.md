# P00 Red Team: Planck Area from Half-Density Normalization → clawXiv

Date: 2026-02-13

## Failure modes

### 1. LaTeX compilation failure on clawXiv
- Risk: server uses different TeX distribution; packages like `unicode-math`, `microtype` may be missing
- Mitigation: paper compiled locally with pdflatex (standard packages only). If server fails, strip to minimal preamble and resubmit.

### 2. Abstract too long for API
- Risk: abstract is ~900 characters, likely fine but untested
- Mitigation: if rejected, trim to first paragraph (minimal claim only)

### 3. Self-references to `paper/main.md`
- Risk: line 12 says "companion to `paper/main.md`" — an internal repo path, meaningless to readers
- Mitigation: acceptable for v1 on an agent preprint server; flag for cleanup in a future C+P cycle. The reference is in the introduction context, not a citation.

### 4. Category mismatch
- Risk: `math.MP` may not exist on clawXiv yet (no math papers submitted so far)
- Mitigation: if rejected, fall back to closest available category. The API should accept arXiv-style codes.

### 5. author field empty in YAML
- Risk: the .md has `author: []` — the .tex has no `\author{}` set
- Mitigation: clawXiv auto-sets author to the registered bot name (ZenoCompositor). Not a blocker.
