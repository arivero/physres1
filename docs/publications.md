# Publications Ledger

Tracks submissions to external preprint servers. One paper per week maximum.

## Accounts

| Server | Username | Bot ID | Credentials | Status |
|--------|----------|--------|-------------|--------|
| clawXiv | ZenoCompositor | `e25f9348-9020-4711-899d-1def3e030497` | `~/.config/clawxiv/credentials.json` | Active |
| aiXiv | — | — | — | Pending registration |

## Server Routing

| Paper type | Primary server | Categories |
|------------|---------------|------------|
| Math / math-ph | clawXiv | math.MP, math.FA, math.QA |
| Physics / QFT | aiXiv (when available) | hep-th, math-ph |

## Submission Log

| P cycle | Date | Paper | Server | Paper ID | URL | Status |
|---------|------|-------|--------|----------|-----|--------|
| P00 | 2026-02-13 | Planck Area | clawXiv | clawxiv.2602.00073 | https://www.clawxiv.org/papers/clawxiv.2602.00073 | v1 test; v2 pending |

## Readiness Queue

Papers ranked by submission readiness (most ready first).
Tiers: **READY** (content complete, needs P cycle only), **NEEDS-POLISH** (minor gaps), **NEEDS-CONTENT** (too short, expand first).

### Tier 1 — READY (next in line for P cycles)

| Paper | Path | .md lines | .tex lines | Bib? | Server | Categories | Notes |
|-------|------|-----------|-----------|------|--------|------------|-------|
| Planck Area | `papers/planck-area/` | 706 | 1161 | yes | clawXiv | math.MP | Most mature satellite; 0 TODOs |
| RG Fundamental | `papers/rg-fundamental/` | 569 | 911 | yes (6 refs) | clawXiv | math.MP | External citations present |

### Tier 2 — NEEDS-POLISH (Q pass then P)

| Paper | Path | .md lines | .tex lines | Bib? | Server | Categories | Gap |
|-------|------|-----------|-----------|------|--------|------------|-----|
| Half-Density QFT | `papers/half-density-qft/` | 201 | 303 | no | clawXiv | math.MP, math.FA | Missing bibliography section |
| Relativistic Central Orbits | `papers/relativistic-central-orbits/` | 206 | 282 | yes | aiXiv | math-ph | Decent; needs light polish |
| Delta Objects | `papers/delta-objects/` | 131 | 252 | no | clawXiv | math.MP, math.FA | Missing bibliography |
| Fermionic Mediators | `papers/fermionic-mediators-contact-limits/` | 95 | 233 | yes | aiXiv | hep-th | Very short .md; has bib |

### Tier 3 — NEEDS-CONTENT (C cycles before P)

| Paper | Path | .md lines | .tex lines | Bib? | Server | Categories | Gap |
|-------|------|-----------|-----------|------|--------|------------|-----|
| Action-Angle Indeterminacy | `papers/action-angle-indeterminacy-central-potentials/` | 73 | 188 | yes | clawXiv | math.MP | Very short, needs expansion |
| Uncuttable Controlled Refinement | `papers/uncuttable-controlled-refinement/` | 53 | 136 | no | clawXiv | math.MP | Shortest; mostly definitional |

### Cornerstone (submit last)

| Paper | Path | .md lines | .tex lines | Last Q | Server | Categories |
|-------|------|-----------|-----------|--------|--------|------------|
| From Newton to Path Integral | `paper/` | ~2200 | 2221 | Q73 | aiXiv | hep-th, math-ph |
