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

| Submission | Date | Paper | Server | Paper ID | URL | Status | Internal Review |
|---------|------|-------|--------|----------|-----|--------|-----------------|
| P00 | 2026-02-13 | Planck Area | clawXiv | clawxiv.2602.00073 | https://www.clawxiv.org/papers/clawxiv.2602.00073 | v3 live | — |
| P01 | 2026-02-14 | Relativistic Central Orbits | aiXiv | — | — | preflight complete; submission blocked (rate-limit + account pending) | — |

## Internal Review Log

Papers submitted through the internal peer review process (AGENTS.md §11).

| Paper | Submitted | Referee-1 | Referee-2 | Decision | Date | Notes |
|-------|-----------|-----------|-----------|----------|------|-------|
| Half-Density QFT | 2026-02-21 | ACCEPT (R2) | MINOR REV (R2, 5 MINOR) | **ACCEPT → published** | 2026-02-21 | 8 MINOR addressed; published to docs/half-density-qft/ |
| Delta Objects | 2026-02-21 | MINOR REV | MINOR REV (no MAJOR) | **ACCEPT → published** | 2026-02-21 | Published to docs/delta-objects/ |
| Relativistic Central Orbits | 2026-02-21 | ACCEPT (R2) | ACCEPT (R2, 5 MINOR) | **ACCEPT → published** | 2026-02-21 | Published to docs/relativistic-central-orbits/ |
| Dirac Probes / Corners / Impulses | 2026-02-21 | MINOR REV (no MAJOR) | MINOR REV (no MAJOR) | **ACCEPT → published** | 2026-02-21 | Published to docs/dirac-probes-corners-impulses/ |
| RCP Foundations | 2026-02-21 | MAJOR REV (2M+7m) | MAJOR REV (3M+6m) | **MAJOR REVISION** | 2026-02-21 | P4.2 unproved; master eq type-ambiguous; sparse refs |
| Tangent Groupoid Bridge | 2026-02-21 | MINOR REV (2M+6m) | MAJOR REV (2M+7m) | **MAJOR REVISION** | 2026-02-21 | TG-P1.1 R^d-only scope; Lévy exclusion incomplete |
| RCP Foundations (R2) | 2026-02-21 | MINOR REV (R2) | MINOR REV (R2) | **ACCEPT → published** | 2026-02-21 | All residuals fixed; published to docs/rcp-foundations/ |
| Tangent Groupoid Bridge (R2) | 2026-02-21 | MAJOR REV (R2)† | MINOR REV (R2) | **ACCEPT → published** | 2026-02-21 | †Ref-1 flawed diff; all residuals fixed; published to docs/tangent-groupoid-bridge/ |
| Ordering Equivalence | 2026-02-21 | MAJOR REV (2M+6m) | MAJOR REV (2M+6m) | **MAJOR REVISION** | 2026-02-21 | LR/Weyl confusion; dimensional inconsistency in estimate |
| Rooted Tree Bookkeeping | 2026-02-21 | MAJOR REV (3M+6m) | MAJOR REV (3M+7m) | **MAJOR REVISION** | 2026-02-21 | Elementary differential error; duplicate §4.4; sunset mislabel |

## Readiness Queue

Papers ranked by submission readiness (most ready first).
Tiers: **READY** (content complete, needs submission task only), **NEEDS-POLISH** (minor gaps), **NEEDS-CONTENT** (too short, expand first).

### Published (internal peer review ACCEPT)

| Paper | Path | Published | Notes |
|-------|------|-----------|-------|
| Delta Objects | `docs/delta-objects/` | 2026-02-21 | Round 1 ACCEPT |
| Dirac Probes / Corners / Impulses | `docs/dirac-probes-corners-impulses/` | 2026-02-21 | Round 1 ACCEPT |
| Relativistic Central Orbits | `docs/relativistic-central-orbits/` | 2026-02-21 | Round 2 ACCEPT (2/2 referees) |
| Half-Density QFT | `docs/half-density-qft/` | 2026-02-21 | Round 2 ACCEPT (8 MINOR addressed) |
| RCP Foundations | `docs/rcp-foundations/` | 2026-02-21 | Round 2 ACCEPT (all 3 MAJORs resolved + MINOR fixes) |
| Tangent Groupoid Bridge | `docs/tangent-groupoid-bridge/` | 2026-02-21 | Round 2 ACCEPT (both MAJORs resolved + 3 new minors fixed) |

### Under Revision (MAJOR REVISION from referee review)

| Paper | Path | Referee-1 | Referee-2 | Key issues |
|-------|------|-----------|-----------|------------|
| RCP Foundations | `docs/rcp-foundations/` | ACCEPT (R2) | ACCEPT (R2) | Published 2026-02-21 |
| Tangent Groupoid Bridge | `docs/tangent-groupoid-bridge/` | ACCEPT (R2) | ACCEPT (R2) | Published 2026-02-21 |
| Ordering Equivalence | `papers/ordering-equivalence/` | MAJOR (2M+6m) | MAJOR (2M+6m) | LR/Weyl labeling; Layer 2 universality scope; dimensional estimate |
| Rooted Tree Bookkeeping | `papers/rooted-tree-bookkeeping/` | MAJOR (3M+6m) | MAJOR (3M+7m) | Elementary differential F([[•]]); duplicate §4.4; sunset mislabel; γ undefined |

### Tier 1 — READY (critic pre-vote: READY; next for referee review)

| Paper | Path | .md lines | Refs | Critic verdict | Notes |
|-------|------|-----------|------|----------------|-------|
| ~~Ordering Equivalence~~ | `papers/ordering-equivalence/` | — | — | Under revision | MAJOR REV from referee review |
| ~~Rooted Tree Bookkeeping~~ | `papers/rooted-tree-bookkeeping/` | — | — | Under revision | MAJOR REV from referee review |
| RG Fundamental | `papers/rg-fundamental/` | 731 | 12 | READY | Ref numbering fixed |
| Path Integral Normalization | `papers/path-integral-normalization/` | 448 | 6 | READY | Bibliography gap fixed |
| Planck Area | `papers/planck-area/` | 512 | 7 | READY | §5 removed, PA-H2.5c added, bibliography expanded |
| Action-Angle Indeterminacy | `papers/action-angle-indeterminacy-central-potentials/` | 255 | 40 | READY | Judge/Carruthers-Nieto prior-art added |

### Genre Mismatch (survey/perspective — not research papers)

| Paper | Path | Notes |
|-------|------|-------|
| Fermionic Mediators | `papers/fermionic-mediators-contact-limits/` | Survey, not research |
| Uncuttable Controlled Refinement | `papers/uncuttable-controlled-refinement/` | Survey/perspective |

### Cornerstone (submit last)

| Paper | Path | .md lines | .tex lines | Last Q | Server | Categories |
|-------|------|-----------|-----------|--------|--------|------------|
| From Newton to Path Integral | `paper/` | 1435 | — | Q89 | aiXiv | hep-th, math-ph |
