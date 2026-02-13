# Q166 — Red Team

## Attack vector 1: Is the SR bound L>K/c actually comparable to the ISCO condition?

**Claim:** The remark compares ℓ_SR = GM/c (existence threshold) with ℓ_ISCO = 2√3 GM/c (stability floor).

**Challenge:** These are conceptually different bounds:
- L>K/c (SR): Necessary for *any* bound orbit to exist (existence).
- L_ISCO (GR): Minimum for *stable* circular orbits (stability).

In SR, *all* circular orbits with L>K/c are stable (Section 5.2, line 250: "inverse-square forces (q=2) are stable for all γ"). So the SR "stability floor" is also ℓ>GM/c, not a higher value.

**Defense:** The remark correctly states "SR existence threshold" (line 202) vs "GR stability floor" (line 203), acknowledging the conceptual difference. The ratio 2√3 quantifies how GR tightens the constraint — in SR, stability and existence coincide at ℓ=GM/c, while GR separates them (existence at ℓ>0 in principle, but ISCO imposes ℓ>2√3 GM/c for stability).

**Verdict:** Not an error, but the remark could clarify that SR's existence threshold is also its stability floor for q=2.

## Attack vector 2: Unit restoration sleight-of-hand

**Claim:** Remark 4.3b states L_ISCO = 2√3 M in G=c=1. The remark claims ℓ_ISCO = 2√3 GM/c.

**Challenge:** Did the remark correctly restore units and convert to specific angular momentum?

**Check:**
- G=c=1 conventions: M is the Schwarzschild mass parameter (dimension [length]).
- L_ISCO = 2√3 M (G=c=1) has dimension [length²].
- To restore SI: replace M → GM/c² and multiply [length²] → [length²/time] by factor c.
- L_ISCO = 2√3 (GM/c²) · c = 2√3 GM/c (SI, dimension [mass·length²/time]).
- Specific: ℓ_ISCO = L_ISCO / m_particle. But in G=c=1, M is the central mass, not the particle mass. For a test particle, m_particle is negligible, and "specific" means per unit test-particle mass.
- Remark 4.3b (line 181) gives L=2√3 M at the ISCO, which is already the specific value (per unit test mass in the geodesic limit).

**Defense:** In GR geodesic motion, L is inherently the specific angular momentum (test-particle limit). The remark is correct.

**Verdict:** Correct, but the implicit "L is already specific in GR" assumption may confuse readers accustomed to Newtonian L=mvr.

## Attack vector 3: The ratio 2√3 ≈ 3.46 is not dimensionless in a meaningful way

**Claim:** The ratio ℓ_ISCO / ℓ_SR = 2√3 is a "pure number."

**Challenge:** Both numerator and denominator have the same dimension ([length²/time]) and the same factor GM/c, so the ratio is trivially dimensionless. Does it carry physical meaning, or is it just coincidence?

**Defense:** The ratio quantifies the factor by which GR tightens the angular-momentum constraint relative to SR. It is not "coincidence" — it arises from the -2ML²/r³ curvature term in the Schwarzschild potential (Remark 4.3b, line 188). The value 2√3 is exact and tied to the ISCO radius r=6M and the critical stability condition at the ISCO.

**Parallel:** The 1/6 precession ratio (Remark 3.2) is also a pure number (SR precession / GR precession = 1/6) with physical meaning (kinematic vs curvature contributions). The 2√3 ratio is its angular-momentum analogue.

**Verdict:** The ratio is physically meaningful, not arbitrary.

## Attack vector 4: The cross-reference "Section 3.1" is misleading

**Claim:** The remark cites Section 3.1 for ℓ>GM/c.

**Challenge:** Section 3.1 (lines 72–82) states L>K/c, not ℓ>GM/c. The conversion ℓ=L/m and K=GMm is performed in the remark, not in Section 3.1.

**Defense:** The remark parenthetical (line 202) explicitly writes "with K=GMm and specific angular momentum ℓ=L/m," so the conversion is shown. However, the phrasing "ℓ>GM/c (Section 3.1)" implies Section 3.1 states the bound in that form.

**Verdict:** Minor ambiguity. Suggest rewording to "L>K/c (Section 3.1), which for K=GMm and ℓ=L/m gives ℓ>GM/c."

## Attack vector 5: The remark duplicates Remark 4.3b

**Claim:** Remark 4.3b already establishes the ISCO angular-momentum floor. Why repeat it in Remark 4.3g?

**Defense:** Remark 4.3b states the GR floor in isolation. Remark 4.3g adds the SR comparison and the ratio 2√3, which is new content. The two remarks serve different purposes:
- 4.3b: GR result (ISCO floor).
- 4.3g: SR–GR bridge (ratio quantification).

**Verdict:** Not redundant. The comparison adds value.

## Red-team summary

**Blockers:** None.

**Minor issues:**
1. Cross-reference wording (Section 3.1) could be clearer.
2. Could clarify that SR existence = stability for q=2.

**Verdict:** PASS with optional wording improvements.
