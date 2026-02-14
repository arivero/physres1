# Cycle Board

> **Context-saving rule:** Do NOT read this file line-by-line at session start.
> Skim the summary counts and jump to **Next Action**. Completed cycle files
> live in `cycles/archive/` — read them only when you need a specific cycle's
> plan/execution/debate/redteam for a concrete reason (e.g., a Q cycle
> referencing a parent C). Never bulk-read the archive.

## Completed (archived in `cycles/archive/`)

| Track | Count | Range |
|-------|-------|-------|
| Content (`Cnn`) | 288 | C00–C287 |
| Bibliography (`Bnn`) | 27 | B00–B27 |
| Study (`Snn`) | 270 | S00–S269 |
| Quality (`Qnn`) | 172 | Q00–Q171 (gaps: Q110–Q111) |
| Discovery triage (`Dnn`) | 17 | D00–D16 (dormant) |
| Discovery explore (`DXnn`) | 11 | DX01–DX11 (dormant) |
| Publication (`Pnn`) | 2 | P00–P01 |

**Total archived: ~2800 cycle files.**

## Active / In Progress

(none)

## Next Action

**Page counts** (elsarticle 3p twocolumn = PLB format; run `scripts/count-pages.sh`):
- PLB-length (≤6pp): relativistic 6pp (296), HD-QFT 6pp (265), delta 6pp (218).
- PRD-length (>6pp): dirac 7pp (256), rg-fund 9pp, action-angle 13pp, fermionic 13pp, uncuttable 13pp, planck-area 14pp.
- Cornerstone: 23pp (Physics Reports target).
- **Total corpus: ~125k tokens (Claude tokenizer).**

**Recent completed:**
- D16+DX11+S269+B27+C287+Q171+P01: full all-mode chain run. Promoted new relativistic `Remark 3.1c` (`q_crit = nu + 1`) with explicit mechanism separation from the dimensional `q=2` identity; B27 added Sommerfeld/Bertrand ledger keys; Q171 PASS; P01 preflight complete (submission blocked by cadence/account status).
- S266–S268+C286+Q170: epicyclic frequency remark (+3, 286→289). S267 promoted as Remark 5.2d. S266/S268 not promoted. Q170 PASS.
- S267: SR epicyclic frequency for general q. Derived ω_r²/ω_φ² = 3−q−v²/c². Unifies stability (positivity), precession (q=2 → 1/γ²=ω²), and Remark 5.2c (special case). Verdict: **PROMOTE** as Remark 5.2d (~5 lines). Needs C cycle.
- S268: E=mc²ω energy-precession identity revisit. Resolved S260 deferral: identity is one-step from existing text (W_min + ω definition, or 5.2c + E=mc²/γ). NOT PROMOTE. Deferral closed.
- S266: Section 2 remark candidates. All three candidates (general-q velocity, general-q energy, algebraic vs transcendental) overlap existing remarks or lack physics content. Verdict: NOT PROMOTE.
- S265: Triple-threshold analysis for q=2 (critical exponent + stability + dimensional identity). Finding: Roles 1-2 share a root (deg(E,p)+1), Role 3 independent (algebraic), coincide only in SR. Verdict: no standalone remark; defer 1-sentence Outlook addition.

**Immediate:**
- Relativistic now at PLB boundary (6pp); treat as frozen unless compact replacement edit is required.
- HD-QFT at 6pp boundary.
- Delta-objects at PLB limit — frozen. Dirac-probes at 7pp — FROZEN.
- Bibliography: Lanczos, Fraser-Nakane, Delaunay, Nauenberg2003 source ingestion.

**Standing priorities:**
- Open questions from `docs/motivations.md` all analyzed. Focus shifts to expansion.
- P cycles for satellite submissions when ready.
- Future satellites: item C (Ordering), D (Rooted Trees), A (RCP).

**Deprioritized:**
- `[Landsman1998]`: PENDING_LIBRARY — requires institutional Springer access or physical library visit.
