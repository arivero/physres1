# Research Log

Chronological lab notebook for this repo.
This file is **not** a citable source; it can mention `conv_patched.md` only as an idea generator.

> **Context-saving rule:** This file keeps only the ~10 most recent entries.
> Older entries are in `docs/research-log-archive.md` (~4220 lines, ~430 entries).
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

## 2026-02-14 (D53-D56: Single-axiom P4.2 + extensions)
- Focus: Continue axiom-reduction chain through four discoveries
- Work:
  - D53: (I) derivable from (C) + setup (nascent delta / Stone's theorem). **P4.2 → single axiom.** Red-team PASS WITH CAVEAT (setup is load-bearing).
  - D54: QFT extension via mode decomposition. Two-layer picture: A1 = quantization per-mode, A4 = renormalization (infinite-mode assembly).
  - D55: Irreducible setup = {ℝ^d, action-based dynamics, minimal constants}. Markov + self-adjointness are derivative.
  - D56: Chain composition → half-density → ξ=1/6 → conformal at D=4. PARTIAL: consistency, not derivation.
  - D57: Composition failure taxonomy: open systems, measurement, anomalies, RG. Always structural.
  - D58: Composition = Atiyah-Segal functoriality. Identity limit is automatic (functors preserve identities).
  - D59: Fermionic path integrals: algebraic P4.2 content universal (exp(iS/ℏ), κ=ℏ); geometric content (d/2, iε) bosonic only.
  - D60: Forced-completion chain synthesis: calculus→QM(A1)→QFT(A1+A4)→???.
  - D61: Composition constrains structure not content; interactions only constrained at A4 level.
- Result: P4.2 axiom count 4→3→2+setup→**1+setup**. 13 discoveries (D49-D61) + S303 validate the "composition = master axiom" thesis and the project's forced-completion narrative.
- Sources touched: notebooks/rcp-axiom-structure-analysis.md (Part 5), docs/motivations.md (Q2 update)
- Next: Three-commit batch at 20:58; then continue work until 23:00

## 2026-02-14 (D49+D50: P4.2 ↔ RCP axiom mapping + (D) derivability)
- Focus: Map P4.2 hypotheses onto RCP axiom system; determine independence of (D)
- Question: Is the mapping (C)↔A1, (I)↔A2, (D)↔A5 clean? Is (D) independent?
- Work:
  - D49: Complete mapping table (blackboard 0). Per-axiom decomposition of P4.2 conclusions. Finding: A1 alone forces 5/9 conclusions; A5 forces 3/9; A2 forces 1/9. Channels logically independent.
  - D50: Discovered [K]=L^{-d} is a theorem of (C) on ℝ^d (composition integral consistency). (D) decomposes into (D₁) derivable from (C), (D₂) trivially true, (D₃) property of setup. **Effective P4.2 hypothesis count: 2 axioms (C, I) + 1 physical setup.**
  - Opus review: PASS WITH MINOR ISSUES (4 terminological corrections applied to blackboard)
- Result: P4.2 is theorem of partition channel; (D) is not independent; effective hypotheses reduced from 3 to 2+setup. Composition is "master axiom."
- Sources touched: blackboards/0.md, rcp-foundations Section 6, cornerstone P4.2
- Next: Consider C-cycle promoting per-axiom decomposition to RCP paper; continue D/S work

## 2026-02-14 (C328: Cornerstone cross-reference wave)
- Focus: Complete satellite cross-reference network in cornerstone
- Work: Added 4 forward references from cornerstone to: half-density-qft (after H4.0b), ordering-equivalence (after P5.2a), rooted-tree-bookkeeping (after H6.2), rcp-foundations (Section 9.6). All 13 satellites now referenced.
- Result: Cross-reference network complete. Diffstat +5/-3 (MARGINAL by line count; ~120 words content).
- Next: Accumulate for next commit batch

## 2026-02-14 (Workflow improvements: C-cycle productivity thresholds + archiving)
- Focus: Address low-productivity C-cycles and improve workflow efficiency
- Question: How to prevent C-cycles with <5 line edits? How to keep cycles/ directory clean?
- Work:
  - **Updated cycles/README.md**:
    * Added Rule 9: C-cycle minimum productivity threshold (≥10 net lines OR planned promotion OR critical fix)
    * Added Rule 10: Completed cycles must be archived via `git rm`
    * Guidance on batching minor fixes vs creating standalone cycles
    * Archiving workflow: complete cycle → commit work → git rm cycles/Cnn-*.md → commit archive
  - **Updated cycles/templates/Cxx-plan.md**:
    * Added "Productivity gate (REQUIRED CHECK)" section with 3-item checklist
    * Added "Planned edits" list with estimated diffstats
    * Prevents creation of low-productivity C-cycles at planning stage
  - **Updated cycles/templates/Cxx-execution.md**:
    * Added "Productivity check (Rule 9)" section after diffstat
    * Records gate status: PASS/MARGINAL/FAIL based on net lines
    * Requires explanation if FAIL (<5 net lines)
  - **Updated AGENTS.md**:
    * Renamed "Content Cycle Diffstat Requirement" → "Content Cycle Diffstat Requirement and Productivity Threshold"
    * Added minimum threshold guidance (≥10 lines)
    * Added batching rationale (amortize overhead, coherent changes)
- Result: Comprehensive workflow improvements to prevent micro-edit C-cycles and keep cycles/ directory clean via archiving. Templates now enforce productivity gates at planning and execution stages.
- Sources touched: cycles/README.md, cycles/templates/, AGENTS.md
- Next: Apply these rules going forward; archive completed cycles after commit
