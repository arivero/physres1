# Research Log

Chronological lab notebook for this repo.
This file is **not** a citable source; it can mention `conv_patched.md` only as an idea generator.

> **Context-saving rule:** This file keeps only the ~10 most recent entries.
> Older entries are in `docs/research-log-archive.md` (~3400 lines, ~420 entries).
> **Never read the archive** unless you need a specific historical entry.
> When this file exceeds ~100 lines, move older entries to the archive.

## Template (Copy for New Entries)

### YYYY-MM-DD
- Focus:
- Question:
- Work:
- Result:
- Sources touched (keys + status changes):
- Next:

## 2026-02-14 (C300: Section 3 threshold-bridge compression)
- Ran `C300` (no commit requested).
- Rewrote `Remark P1.1a` in `paper/main.md` to a 2-sentence compact form preserving fixed-`L`, small-`r`, mechanism-separation, and marginal-coefficient caveats.
- Manuscript diffstat: `+1 -1` (`paper/main.md`).
- No cycle-tag leak and no `conv_patched` mention in manuscript.

## 2026-02-14 (C300 rollback + D re-anchor closures)
- Restored the original long `Remark P1.1a` paragraph in `paper/main.md`; closed `C300` as no-promotion (`TOTAL +0 -0`).
- Closed `D22` with discovery verdict: no new conceptual relation beyond existing partition-track framing.
- Closed `D21` as discovery-inactive administrative trace.

## 2026-02-14 (Immediate archival on close)
- Enforced close->archive rule immediately: moved `S275`, `D21`, `D22`, and `C300` cycle artifacts from `cycles/` to `cycles/archive/`.
- Updated `cycles/index.md` active/next-action section to remove closed cycles from the live queue.

## 2026-02-14 (S277 Iteration 4: generalized `Delta nu_b` gate)
- Extended kinetic mixed-regime drift from decade-only (`b=10`) to arbitrary scale factor `b`.
- Added closed-form peak-drift location `x_peak^2=b^{-2/3}+b^{-4/3}` and asymptotic safe-window estimates.
- Numeric validation shows strong high-`x` estimate accuracy and conservative low-`x` estimate behavior.
- Updated `blackboards/3.md` and promoted stabilized result to notebook memory.
