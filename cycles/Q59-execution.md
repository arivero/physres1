# Q59 Execution: Referee pass on C102 (rooted-tree notation consistency)

Date: 2026-02-12

## Parent cycle reviewed
- `C102`

## Findings

### Consistent (no action needed)
1. **F([•]) and F([•,•]) definitions** — identical in both papers. Main defines `F([•]):=f'(y)[f(y)]` (chain tree) and `F([•,•]):=f''(y)[f(y),f(y)]` (branch tree). Companion D1.0 defines the same.
2. **Euler map E_h(y):=y+hf(y)** — identical definition in both papers.
3. **Jacobian notation f'(y)[v]** — uniform. Neither paper uses Df(y).
4. **Step-doubling formula coefficients** — both give h²/4 and h³/16. Verified.
5. **"Elementary differential" terminology** — same usage and meaning.
6. **Butcher group / Hopf-algebra references** — both cite [Brouder1999], [McLachlan2017], [ConnesKreimer2000].
7. **Step-size symbol h** — both use h for ODE step size in the Euler/tree context; main paper uses Δt in earlier action/path-integral sections (unambiguous context separation).

### Minor discrepancies (informational, not blocking)
1. **Regularity: C² (main) vs "smooth" (companion)** — logically compatible (smooth ⊃ C²). Main paper is more precise. Already noted in C102-redteam Attack 4.
2. **Φ_h superscript conventions** — main uses Φ_h^{(a)} for parametrized maps; companion uses Φ_h^{(f_h)} for exact flow of modified field. Different contexts, non-conflicting.
3. **Companion mentions "B-series formalism" (line 76); main paper does not** — scope difference, not conflict.

### Actionable issues
1. **Regularity annotation not ported to companion** — C102 added "f ∈ C²" to the main paper's remark but the companion D1.0 still says "smooth f" without noting the minimal requirement. A one-line parenthetical would harmonize: "(the O(h²) term requires f ∈ C¹; the O(h³) term requires f ∈ C²)".
2. **Claim-label namespace collision** — D1.1, P1.1, H1.1 etc. refer to completely different claims in main vs companion. If either paper cross-references the other by label, this is ambiguous. A namespace prefix or clarifying note is needed.
3. **Runge-Kutta typography** — main paper line 972 uses "Runge-Kutta" (hyphen); companion uses "Runge--Kutta" (en-dash). Should be consistent (en-dash is typographically correct for name compounds).

## Required follow-ups (spawn cycles)
- `C103`: (1) Add minimal-regularity parenthetical to companion D1.0. (2) Fix "Runge-Kutta" → "Runge--Kutta" in main paper line 972. Both are small edits that can be bundled.
- **Deferred**: Claim-label namespace collision — non-urgent; revisit when preparing submission package. Add a note to `docs/research-state.md` under "Paper closure / hygiene".

## Notes (non-actions)
- The C102 changes are mathematically correct and notationaly sound.
- The cross-paper consistency is good; no mathematical conflicts.
- The B12 bibliography cycle (same session) verified that [Brouder1999] and [McLachlan2017] are acquired and consistent with the rooted-tree usage in both papers.
