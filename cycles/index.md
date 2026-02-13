# Cycle Board

> **Context-saving rule:** Do NOT read this file line-by-line at session start.
> Skim the summary counts and jump to **Next Action**. Completed cycle files
> live in `cycles/archive/` — read them only when you need a specific cycle's
> plan/execution/debate/redteam for a concrete reason (e.g., a Q cycle
> referencing a parent C). Never bulk-read the archive.

## Completed (archived in `cycles/archive/`)

| Track | Count | Range |
|-------|-------|-------|
| Content (`Cnn`) | 287 | C00–C286 |
| Bibliography (`Bnn`) | 26 | B00–B26 |
| Study (`Snn`) | 269 | S00–S268 |
| Quality (`Qnn`) | 171 | Q00–Q170 (gaps: Q110–Q111) |
| Discovery triage (`Dnn`) | 16 | D00–D15 (dormant) |
| Discovery explore (`DXnn`) | 10 | DX01–DX10 (dormant) |
| Publication (`Pnn`) | 1 | P00 (Planck Area → clawXiv v2) |

**Total archived: ~2800 cycle files.**

## Active / In Progress

(none)

## Next Action

**Page counts** (elsarticle 3p twocolumn = PLB format; run `scripts/count-pages.sh`):
- PLB-length (≤6pp): relativistic 5pp (289), HD-QFT 6pp (265), delta 6pp (218).
- PRD-length (>6pp): dirac 7pp (256), rg-fund 9pp, action-angle 13pp, fermionic 13pp, uncuttable 13pp, planck-area 14pp.
- Cornerstone: 23pp (Physics Reports target).
- **Total corpus: ~125k tokens (Claude tokenizer).**

**Recent completed:**
- S266–S268+C286+Q170: epicyclic frequency remark (+3, 286→289). S267 promoted as Remark 5.2d. S266/S268 not promoted. Q170 PASS.
- S267: SR epicyclic frequency for general q. Derived ω_r²/ω_φ² = 3−q−v²/c². Unifies stability (positivity), precession (q=2 → 1/γ²=ω²), and Remark 5.2c (special case). Verdict: **PROMOTE** as Remark 5.2d (~5 lines). Needs C cycle.
- S268: E=mc²ω energy-precession identity revisit. Resolved S260 deferral: identity is one-step from existing text (W_min + ω definition, or 5.2c + E=mc²/γ). NOT PROMOTE. Deferral closed.
- S266: Section 2 remark candidates. All three candidates (general-q velocity, general-q energy, algebraic vs transcendental) overlap existing remarks or lack physics content. Verdict: NOT PROMOTE.
- S265: Triple-threshold analysis for q=2 (critical exponent + stability + dimensional identity). Finding: Roles 1-2 share a root (deg(E,p)+1), Role 3 independent (algebraic), coincide only in SR. Verdict: no standalone remark; defer 1-sentence Outlook addition.

**Immediate:**
- Room for PLB expansion: relativistic (~26 lines to 6pp). HD-QFT at 6pp boundary.
- Delta-objects at PLB limit — frozen. Dirac-probes at 7pp — FROZEN.
- Bibliography: Lanczos, Fraser-Nakane, Delaunay, Nauenberg2003 source ingestion.

**Standing priorities:**
- Open questions from `docs/motivations.md` all analyzed. Focus shifts to expansion.
- P cycles for satellite submissions when ready.
- Future satellites: item C (Ordering), D (Rooted Trees), A (RCP).

**Deprioritized:**
- `[Landsman1998]`: PENDING_LIBRARY — requires institutional Springer access or physical library visit.
