# Q166 — Debate

## Is the notation mismatch (L vs ℓ) a blocker?

**Against (minor issue):**
- The remark explicitly defines "specific angular momentum ℓ=L/m" in the parenthetical (line 202), so the reader can infer the conversion.
- Section 3 uses K=GMm and L throughout, so L/m = ℓ and K/m = GM is straightforward.
- The context is clear: single-particle orbits, so ℓ=L/m is unambiguous.
- The mathematical content (ratio 2√3) is correct.

**For (needs clarification):**
- Cross-references should be self-contained. A reader jumping to Section 3.1 will find L>K/c, not ℓ>GM/c.
- The remark converts units (G=c=1 → SI) and notation (L → ℓ) simultaneously, which could confuse readers tracking dimensional consistency.
- The phrase "ℓ>GM/c (Section 3.1)" implies Section 3.1 states the bound in that form, which it does not.

**Resolution:**
This is a **minor wording issue**, not a mathematical error. Suggest rewording to make the conversion explicit, e.g.:
> "The SR existence threshold for bound inverse-square orbits is L>K/c (Section 3.1). For K=GMm and specific angular momentum ℓ=L/m, this becomes ℓ>GM/c, while the GR stability floor is ℓ_ISCO=2√3 GM/c (Remark 4.3b, restoring units from G=c=1)."

## Is the unit restoration from G=c=1 handled correctly?

**Check:** In G=c=1 units, M has dimension [length]. The ISCO angular momentum L_ISCO=2√3 M has dimension [length²]. To restore SI units:
- Replace M → GM/c² (Schwarzschild mass scale).
- Then L_ISCO = 2√3 (GM/c²) in [length²] units.
- But angular momentum in SI is [mass·length²/time].

**Issue:** The remark writes "ℓ_ISCO = 2√3 GM/c" with dimension [length²/time], which is correct for specific angular momentum in SI. However, L_ISCO=2√3 M in G=c=1 has dimension [length²], not [length²/time].

**Resolution:** In G=c=1, time and length have the same dimension (c=1), so [length²] = [length²/time]. When restoring units, multiply by c to get SI dimensions:
- L_ISCO = 2√3 M (G=c=1, dimension [length²])
- → L_ISCO = 2√3 (GM/c²) · c = 2√3 GM/c (SI, dimension [length²/time]).

This is correctly stated in the remark (line 203). ✓

## Does the remark add value, or is it redundant?

**Value:**
- Quantifies the SR→GR shift in angular-momentum constraints with a pure number (2√3 ≈ 3.46).
- Parallels Remark 3.2's 1/6 precession ratio, creating a "ratio family" for SR–GR comparison.
- Short (3 lines), does not bloat the manuscript.

**Potential redundancy:**
- The individual values (ℓ_SR, ℓ_ISCO) are already stated in Section 3.1 and Remark 4.3b.
- The ratio calculation is trivial arithmetic.

**Verdict:** The remark adds conceptual value by framing the ratio as a "curvature-induced tightening" and linking it to the precession ratio. Not redundant.

## Final debate summary

- **Mathematical correctness:** Verified. ✓
- **Unit consistency:** Correct, but implicit. Could be clearer.
- **Notation:** Minor mismatch (L vs ℓ cross-reference). Suggest rewording.
- **Placement:** Appropriate. ✓
- **Value:** Yes, provides a clean SR–GR comparison metric.

Recommend **PASS with optional wording revision**.
