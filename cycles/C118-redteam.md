# C118 Red Team: rg-fundamental standalone cleanup

Date: 2026-02-13

## Failure modes

### 1. Removed context was load-bearing
- Risk: some "main manuscript" references carried technical content
- Mitigation: checked each reference — all were framing/attribution, not technical. The replacements preserve the technical claim.

### 2. "Supplementary material" promise (line 112)
- Risk: we reference "supplementary material" that won't exist on clawXiv
- Mitigation: acceptable for v1 — the claim is self-contained; the loop integral sheet is genuinely supplementary. Can be replaced by an appendix in v2 if needed.
