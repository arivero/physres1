# C127 Red Team

Date: 2026-02-13

## Failure modes

### 1. Residual encoding artifacts
- Risk: other Unicode escapes might exist elsewhere.
- Mitigation: grepped for `\\u[0-9a-f]{4}` — only one instance found (now fixed).

### 2. Character encoding mismatch
- Risk: δ might not render in all TeX engines.
- Mitigation: the file already uses δ elsewhere (line 180: `δ^{(D)}`). UTF-8 is standard for this project.
