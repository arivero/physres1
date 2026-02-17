# Task Board

> **Context-saving rule:** Skim summary counts and jump to **Active** or **Backlog**.
> Historical cycle files live in **git history** (see Historical Archive below).

## Active

| ID | Type | Agent | Description | Status |
|----|------|-------|-------------|--------|
| T1 | research | researcher(physicist) | S276: generalized marginal map beyond monomial A(L) | parked |
| T2 | research | researcher(mathematician) | S277: scale-window validity for mixed kinetic exponents | parked |
| T3 | research | researcher(mathematician) | S278: potential-channel drift diagnostics for non-power corrections | parked |

## Completed (recent)

| ID | Type | Summary | Date |
|----|------|---------|------|
| — | write | C329+Q186: Promoted D49-D53 axiom reduction to RCP foundations paper | 2026-02-14 |
| — | write | C330: Remark P4.2h (single master axiom) in cornerstone Section 10 | 2026-02-14 |
| — | write | C331: Remark RG-H1.18 (two-layer QFT structure) in RG-fundamental | 2026-02-14 |
| — | write | C332+C333: Remarks P9.1+P9.1a (forced-completion chain) in cornerstone | 2026-02-14 |
| — | review | Q187: Review of C331-C333 PASS WITH MINOR ISSUES | 2026-02-14 |
| — | write | C328: Cornerstone cross-reference wave (all 13 satellites referenced) | 2026-02-14 |
| — | write | C326-C327: NEW path-integral-normalization paper (432 lines, 9pp) | 2026-02-14 |
| — | research | D49-D62: RCP axiom reduction + forced-completion chain | 2026-02-14 |
| — | research | D63-D69: Stage 4 forced-completion + thermal/Born/gauge/anomaly | 2026-02-14 |

## Backlog

**Page counts** (elsarticle 3p twocolumn = PLB format; run `scripts/count-pages.sh`):
- PLB-length (<=6pp): relativistic 6pp (296), HD-QFT 6pp (265), delta 6pp (218).
- PRD-length (>6pp): dirac 7pp (256), rcp-foundations 7pp (350), ordering-equivalence 7pp (391), path-integral-normalization 7pp (432), rooted-tree 8pp (431), rg-fundamental 12pp (721), action-angle 13pp, fermionic 13pp, uncuttable 13pp, planck-area 14pp (736).
- Cornerstone: 32pp / 1823 lines (Physics Reports target).
- **Total corpus: ~185k tokens (Claude tokenizer).**

**Research opportunities:**
- Pick one open research branch (T1/T2/T3) to deepen; keep others parked
- Threshold-bridge queue (slow cadence): continue technical branches only
- Bibliography: Lanczos, Fraser-Nakane, Delaunay, Nauenberg2003 source ingestion
- Cornerstone: optional freeze-pass for submission-oriented consistency sweep

**Standing priorities:**
- Open questions from `docs/motivations.md` all analyzed. Focus shifts to expansion.
- Publication tasks for satellite submissions when ready.

**Deprioritized:**
- `[Landsman1998]`: PENDING_LIBRARY — requires institutional Springer access.

---

## Historical Archive (Previous Cycle System)

The previous cycle system (D/S/B/C/Q/P) produced ~3280 archived cycle files, all preserved in git history.

| Track | Count | Range |
|-------|-------|-------|
| Content (`Cnn`) | 333 | C00-C333 |
| Bibliography (`Bnn`) | 28 | B00-B27, B33 |
| Study (`Snn`) | 303 | S00-S303 |
| Quality (`Qnn`) | 180 | Q00-Q187 |
| Discovery triage (`Dnn`) | 69 | D00-D69 |
| Discovery explore (`DXnn`) | 11 | DX01-DX11 |
| Publication (`Pnn`) | 2 | P00-P01 |

To recover any old cycle file:
```bash
git log --all --oneline -- cycles/<ID>-execution.md
git show <commit>:cycles/<ID>-execution.md
```
