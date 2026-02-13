# Q61 Execution: Referee pass on C105

Date: 2026-02-12

## Parent cycle reviewed
- `C105`

## Findings

### Correct (no action needed)
1. **Berkeley citation** — well placed. The "ghosts of departed quantities" phrase is accurately attributed to Berkeley (1734). The citation is one clause within an existing sentence, not a digression. [Berkeley1734Analyst] is in the bibliography (B15).
2. **H1.2 symplectic identification** — mathematically correct. The kick-drift factorization IS the symplectic Euler integrator. The conservation argument is sound: centrality at kick + linearity at drift = exact L preservation.
3. **Section 8.4 forward reference** — accurate. Section 8.4 does use the explicit (non-symplectic) Euler map, and H1.2 correctly states the contrast.
4. **Guard checks** — no cycle IDs, no transcript references in manuscripts.

### Known issues (already tracked)
1. **H1.2 label collision** — main paper H1.2 = "Newton's scheme as a symplectic integrator." Companion (rg-fundamental) H1.2 = "One compatibility story, two domains." These are completely different claims. Already flagged in Q59 and research-state.md thread 9. Not blocking until cross-paper label references are introduced.

### Minor issues (actionable)
1. **Missing Nauenberg (1994) attribution** — H1.2 identifies the symplectic structure without citing Nauenberg (1994), who was the first to make this identification explicit. The citation key is not yet in the bibliography. Recommend B16 to add [Nauenberg1994SymplecticNewton], then a micro-C to add the citation to H1.2.
2. **"O(Δt) local truncation error"** — technically, the symplectic Euler has order 1 (O(Δt) local truncation, O(1) global error over fixed time). The explicit Euler also has order 1. The statement is correct but could be misread as "O(Δt) global error." Low priority; the intended meaning is clear in context.

## Required follow-ups (spawn cycles)
- `B16`: add [Nauenberg1994SymplecticNewton] to bibliography (Nauenberg 1994, Arch. Hist. Exact Sci. 46, symplectic identification).
- (Deferred) Label namespace collision: resolve before submission.

## Notes
- C105 is clean and well-integrated. The Berkeley citation adds historical grounding without digression. H1.2 creates a substantive cross-thread bridge between Sections 3 and 8.
