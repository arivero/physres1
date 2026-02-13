# Q119 Debate: Six-Remark Quality Review

## Debate questions raised during review

### 1. Cross-paper references: fragility vs coherence

**Issue:** Remarks 5.4 (action-angle paper) and 7.6 (action-angle paper) both reference "Remark 3.5 of the companion uncuttable note." This creates a dependency between papers.

**Pro (current approach):**
- The satellite papers are part of a unified program
- Cross-references reinforce thematic connections (Berry phase as geometric refinement correction appears in both contexts)
- Readers interested in the full program benefit from explicit pointers

**Con (potential fragility):**
- If uncuttable paper is read standalone, reference to "companion" may be unclear
- If papers are published separately, cross-references become external citations
- Maintenance burden: renumbering in one paper breaks cross-references

**Resolution:**
Keep cross-references but add paper titles in parentheses for clarity. E.g.:
"the same geometric structure as the Berry phase in Remark 3.5 of the companion uncuttable note (\"Uncuttable as Controlled Refinement\")"

This makes the reference unambiguous even if papers are separated.

### 2. Tonomura citation: necessary vs optional

**Issue:** Remark 5.4 mentions Tonomura et al. 1986 as "the definitive experimental demonstration" of the AB effect.

**Pro (including it):**
- The AB effect is a theoretical prediction (1959); experimental verification is not automatic
- Tonomura's electron holography with completely shielded flux is indeed the cleanest demonstration
- Referee expects experimental backing for claims about observability

**Con (omitting it):**
- The AB effect itself is well-established; citing the prediction (Aharonov-Bohm 1959) may suffice
- The remark's focus is the action-angle framework extension, not experimental verification
- Adding every experimental confirmation inflates bibliography

**Resolution:**
Keep the Tonomura citation. The phrase "definitive experimental demonstration" in the text makes an empirical claim that requires backing. The fix (now applied) anchors this properly.

### 3. Zeta regularization: belongs in Section 2 vs Section 4?

**Issue:** Remark 2.7 discusses zeta regularization (a method that doesn't use explicit cutoffs) in Section 2 (Toy model: refinement limits), but it's conceptually more advanced than the other Section 2 remarks (derivatives, Euler-Maclaurin, Richardson extrapolation).

**Pro (Section 2):**
- Logically fits: Section 2 is about refinement methods
- Zeta regularization IS a refinement method (analytic continuation replaces cutoff removal)
- Connection to Bernoulli numbers (Remark 2.3) justifies placement

**Con (move to Section 4):**
- Zeta regularization is more abstract/sophisticated than mesh-refinement examples
- Ray-Singer functional determinant and Casimir energy are Section 4-level physics
- Section 4 (Outlook) is where QFT methods naturally belong

**Resolution:**
Keep in Section 2. The remark explicitly frames zeta as "the most algebraic form of the uncuttable pattern" — it's the endpoint of the Section 2 tower (explicit cutoff → resummation → analytic continuation). Moving it to Section 4 would break the Section 2 progression.

### 4. Asymptotic safety: open question vs definitive claim

**Issue:** Remark 4.7 states that asymptotic safety for gravity "remains an open question (FRG evidence relies on truncations)."

**Pro (cautious framing):**
- Accurate: no full proof exists; only truncated FRG calculations
- Protects against overclaiming
- Aligns with standard field attitude (see e.g., Reuter-Saueressig reviews)

**Con (too cautious):**
- Could undersell the accumulated evidence (many truncations, multiple groups)
- Might give impression that asymptotic safety is "just speculation"
- Weinberg's original proposal (1979) is foundational; its status deserves more weight

**Resolution:**
Current framing is correct. The remark says "numerical evidence" and "open question" — both accurate. The conceptual lesson (theory IS its fixed point) is presented as the key point, which is valid regardless of whether gravity specifically realizes it.

### 5. Weinberg 1979 vs 1979b: citation convention

**Issue:** Two Weinberg 1979 papers are cited. Current fix uses "Weinberg (1979, General Relativity essay)" inline.

**Alternative approaches:**
- Use [Weinberg1979b] tag inline (more formal)
- Use "Weinberg (1979b)" inline (matches standard year-letter convention)
- Add full title inline: "Weinberg (1979, 'Ultraviolet divergences...')"

**Resolution:**
Current fix "Weinberg (1979, General Relativity essay)" is clear and readable. It avoids ambiguity without forcing readers to cross-reference the bibliography to understand which 1979 paper is meant. This is appropriate for a remark (pedagogical/expository tone) rather than a terse research article.

## No debate needed

The following aspects were unambiguous:
- Weinberg power counting (Remark 4.4): standard material, correctly presented
- Nuclear pion exchange (Remark 6.3): textbook physics, appropriately cited
- Coherent-state path integral (Remark 7.6): well-established formalism, no controversy
- Ray-Singer / Hawking citations: standard references for spectral zeta functions

## Overall assessment

The remarks are strong. The three bibliography fixes address real gaps (citations mentioned but not anchored). The cross-paper references are intentional and appropriate for a multi-paper program. No physics errors detected.
