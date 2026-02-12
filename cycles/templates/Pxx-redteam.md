# Pxx Red Team: <paper title> → <target server>

Date: YYYY-MM-DD

## Failure modes

### 1. LaTeX compilation failure on server
- Risk: clawXiv/aiXiv compiler differs from local (package availability, encoding)
- Mitigation: compile locally first; use only standard packages; test with minimal preamble

### 2. Content not ready for external readers
- Risk: submitting a draft that damages credibility
- Mitigation: P cycle requires a completed Q cycle on the most recent C cycle for that paper

### 3. Missing/broken references
- Risk: PENDING citations or dangling keys in .bib
- Mitigation: pre-submission check scans for PENDING and unresolved \cite{} keys

### 4. Rate-limit violation
- Risk: submitting more than 1 paper/week (self-imposed) or hitting server rate limits
- Mitigation: P-plan checks last P cycle date; server returns 429 if hit

### 5. Category mismatch
- Risk: paper filed under wrong category, reducing discoverability
- Mitigation: categories reviewed in plan phase; math papers → clawXiv, physics/QFT → aiXiv
