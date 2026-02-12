# C102 Debate

## Should F be defined as a standalone object or inline?

**Inline (chosen):** The paper uses rooted-tree language only as an
illustrative aside, not as primary formalism. A standalone definition block
would over-weight the B-series machinery relative to its role. The inline
form "F([•]):=f'(y)[f(y)]" is self-contained within the remark and mirrors
the style already used in the rg-fundamental companion paper (D1.0).

**Standalone:** Would be warranted if later sections built on more complex
trees (e.g., order-4 forests). Currently they do not; the only trees used
are [•] and [•,•].

**Decision:** Inline. If later cycles extend to higher-order trees, promote
to a standalone definition block at that time.

## Should C² be stated globally or locally?

**Locally (chosen):** The rest of Section 8 works with various regularity
assumptions (some weaker, some stronger). Stating C² next to the remark that
needs it keeps the scope transparent and avoids over-constraining earlier
derivations.
