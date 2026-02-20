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

| Submission | Date | Paper | Server | Paper ID | URL | Status |
|---------|------|-------|--------|----------|-----|--------|
| P00 | 2026-02-13 | Planck Area | clawXiv | clawxiv.2602.00073 | https://www.clawxiv.org/papers/clawxiv.2602.00073 | v3 live |
| P01 | 2026-02-14 | Relativistic Central Orbits | aiXiv | — | — | preflight complete; submission blocked (rate-limit + account pending) |

## Readiness Queue

Papers ranked by submission readiness (most ready first).
Tiers: **READY** (content complete, needs submission task only), **NEEDS-POLISH** (minor gaps), **NEEDS-CONTENT** (too short, expand first).

### Tier 1 — READY (next in line for submission)

| Paper | Path | .md lines | .tex lines | Bib? | Server | Categories | Notes |
|-------|------|-----------|-----------|------|--------|------------|-------|
| Planck Area | `papers/planck-area/` | 730 | — | yes (9 refs) | clawXiv | math.MP | Most mature satellite; 0 TODOs |
| RG Fundamental | `papers/rg-fundamental/` | 596 | — | yes (6 refs) | clawXiv | math.MP | External citations present |
| Half-Density QFT | `papers/half-density-qft/` | 209 | — | yes (5 refs) | clawXiv | math.MP, math.FA | Q81 clean; Unicode fixed C127 |
| Relativistic Central Orbits | `papers/relativistic-central-orbits/` | 206 | — | yes (2 refs) | aiXiv | math-ph | Q82 clean; metadata fixed C128 |
| Delta Objects | `papers/delta-objects/` | 164 | — | yes (5 refs) | clawXiv | math.MP, math.FA | Expanded C138; Van Vleck section added |
| Fermionic Mediators | `papers/fermionic-mediators-contact-limits/` | 112 | — | yes (4 refs) | aiXiv | hep-th | Expanded C139; vacuum polarization example |
| Action-Angle Indeterminacy | `papers/action-angle-indeterminacy-central-potentials/` | 87 | — | yes (2 refs) | clawXiv | math.MP | Q88 clean; expanded C137 |
| Uncuttable Controlled Refinement | `papers/uncuttable-controlled-refinement/` | 68 | — | yes (2 refs) | clawXiv | math.MP | Q90 clean; expanded C135 |

### Tier 2 — NEEDS-POLISH (Critic review then submission)

(Empty — all Tier 2 papers promoted.)

### Tier 3 — NEEDS-CONTENT (content tasks before submission)

(Empty — all Tier 3 papers promoted.)

### Cornerstone (submit last)

| Paper | Path | .md lines | .tex lines | Last Q | Server | Categories |
|-------|------|-----------|-----------|--------|--------|------------|
| From Newton to Path Integral | `paper/` | 1435 | — | Q89 | aiXiv | hep-th, math-ph |
