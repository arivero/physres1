# Q60 Execution: Referee pass on C103

Date: 2026-02-12

## Parent cycle reviewed
- `C103`

## Findings

### Correct (no action needed)
1. **Runge--Kutta en-dash fix** — correct. The main paper H6.2 now uses "Runge--Kutta" (en-dash for name compounds). The remaining "Runge-Kutta" instances (lines 1397 in main, line 563 in companion) are inside bibliographic reference titles (`[Brouder1999]`) and correctly preserve the original publication's punctuation.
2. **Companion regularity parenthetical** — wording "(The O(h^2) term requires f in C^1; the O(h^3) term requires f in C^2.)" matches main paper's D6.2a1 exactly. Consistent.
3. **R1.1 mathematical content** — accurately summarizes the Nauenberg/Pourciau debate. Nauenberg defends Newton's limit via Lemma 3; Pourciau critically analyses error accumulation. The remark correctly states this paper's position: P1.1 hedging is sufficient.
4. **R1.1 placement** — after H1.1, in the commentary zone before Section 3.4. Good location: doesn't interrupt the mathematical flow of P1.1.
5. **Citation keys** — [Nauenberg2003KeplerArea] and [Pourciau2003] now have bibliography entries (B14). DOIs and arXiv IDs verified consistent between manuscript usage and ledger.

### Minor issues (actionable)
1. **Label prefix `R` not in taxonomy** — Section 2.3 defines three claim types: Proposition (P), Derivation (D), Heuristic (H). "Remark" is not listed. Existing remarks in the paper (D4.2b, D6.2a1) use the parent claim's prefix. `Remark R1.1` introduces an undefined `R` prefix. Two options:
   - (a) Rename to `Remark H1.1a` (sub-remark under H1.1), following existing convention.
   - (b) Add "Remark" as a fourth claim type to Section 2.3.
   - **Recommendation**: option (a) is simpler and follows precedent. Spawn C104.
2. **No guard check on companion** — C103 ran guard checks only on `paper/main.md`. The companion `papers/rg-fundamental/main.md` was also edited. Should verify no cycle-tag leaks there too.

### Verified (non-issue)
- Guard check on companion: ran `grep 'C[0-9]{2}' papers/rg-fundamental/main.md` — no matches. PASS.
- Guard check on companion: ran `grep 'conv_patched' papers/rg-fundamental/main.md` — no matches. PASS.

## Required follow-ups (spawn cycles)
- `C104`: rename `Remark R1.1` to `Remark H1.1a` (or add Remark to the taxonomy). Small edit, can be bundled with other work.

## Notes
- C103 is otherwise clean and well-placed. The Newton-limit anchoring from B13 is now properly threaded into the manuscript.
- The B14 bibliography entries are complete and consistent.
