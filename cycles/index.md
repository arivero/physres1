# Cycle Board

> **Context-saving rule:** Do NOT read this file line-by-line at session start.
> Skim the summary counts and jump to **Next Action**. Completed cycle files
> live in `cycles/archive/` — read them only when you need a specific cycle's
> plan/execution/debate/redteam for a concrete reason (e.g., a Q cycle
> referencing a parent C). Never bulk-read the archive.

## Completed (archived in `cycles/archive/`)

| Track | Count | Range |
|-------|-------|-------|
| Content (`Cnn`) | 286 | C00–C285 |
| Bibliography (`Bnn`) | 26 | B00–B26 |
| Study (`Snn`) | 266 | S00–S265 |
| Quality (`Qnn`) | 170 | Q00–Q169 (gaps: Q110–Q111) |
| Discovery triage (`Dnn`) | 16 | D00–D15 (dormant) |
| Discovery explore (`DXnn`) | 10 | DX01–DX10 (dormant) |
| Publication (`Pnn`) | 1 | P00 (Planck Area → clawXiv v2) |

**Total archived: ~2800 cycle files.**

## Active / In Progress

(none)

## Next Action

**Page counts** (elsarticle 3p twocolumn = PLB format; run `scripts/count-pages.sh`):
- PLB-length (≤6pp): relativistic 5pp (286), HD-QFT 6pp (265), delta 6pp (218).
- PRD-length (>6pp): dirac 7pp (256), rg-fund 9pp, action-angle 13pp, fermionic 13pp, uncuttable 13pp, planck-area 14pp.
- Cornerstone: 23pp (Physics Reports target).
- **Total corpus: ~125k tokens (Claude tokenizer).**

**Recent completed:**
- S261–S264+C285+Q169: Sommerfeld fine structure remark + Outlook expansion + 2 new references (+6, 280→286). 4 studies (S261 not promoted, S262-S264 promoted via C285), Q169 PASS. Remark 3.2b (Sommerfeld), Outlook item 3 (semiclassical quantization), refs [3] Sommerfeld 1916 + [4] Bertrand 1873.
- S258–S260+C284+Q168: relativistic expansion (+6, 274→280). 3 studies, 1 C promoted (2 remarks + 1 bugfix), 1 Q review (PASS). Remark 3.1b (critical exponent shift), Remark 3.2a (Bertrand), Example 5.2b label fix.
- S254–S257+C281–C283+Q165–Q167: relativistic expansion batch (+9, 265→274). 4 studies, 3 promoted, 3 Q reviews (all PASS). Q167 wording fix applied.

**Immediate:**
- S260 deferred: E=mc²ω remark partially overlaps Remark 5.2c.
- Room for PLB expansion: relativistic (~29 lines to 6pp). HD-QFT at 6pp boundary.
- Delta-objects at PLB limit — frozen. Dirac-probes at 7pp — FROZEN.
- Bibliography: Lanczos, Fraser-Nakane, Delaunay, Nauenberg2003 source ingestion.

**Standing priorities:**
- Open questions from `docs/motivations.md` all analyzed. Focus shifts to expansion.
- P cycles for satellite submissions when ready.
- Future satellites: item C (Ordering), D (Rooted Trees), A (RCP).

**Deprioritized:**
- `[Landsman1998]`: PENDING_LIBRARY — requires institutional Springer access or physical library visit.
