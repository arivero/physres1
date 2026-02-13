# Q164 — Debate

## Potential Objection: Is the 2mg/ℏ² coefficient convention-dependent?
Some texts write the delta potential as V = α δ(x) with α having units of
energy×length, giving ψ'(0⁺)-ψ'(0⁻) = (2mα/ℏ²)ψ(0). Others use g dimensionless
with V = (ℏ²g/2m) δ(x). The remark uses "g" without specifying units.

**Resolution:** The remark's statement is correct for the standard convention
V = g δ(x) where g has dimensions [energy×length] = [action×velocity]. The
coefficient 2mg/ℏ² is then dimensionless, as required for ψ'/ψ to have units
[1/length]. The preceding text (line 218) already uses "g" in the same context
without ambiguity, and Example 5.2a (line 221) explicitly gives the bound-state
energy E = -mg²/(2ℏ²), confirming the convention. The remark is internally
consistent with the paper's established notation.

## Potential Objection: Should the remark cite a reference?
The matching condition for delta potentials is textbook material (e.g.,
Griffiths QM §2.5.2, Albeverio et al. 2005 already cited in line 218).

**Resolution:** The paper already cites [AlbeverioGesztesyHoeghKrohnHolden2005]
as the "canonical reference for point interactions in quantum mechanics"
(bibliography line 255). The remark is a conceptual bridge, not a new result,
and the main citation is already in place. Adding another inline citation here
would be redundant given the proximity to line 218's reference.

## Potential Objection: Does "same integration argument" need elaboration?
The remark says "the same integration-across-a-delta argument produces a
derivative discontinuity in both cases" but doesn't show the integration.

**Resolution:** This is appropriate compression. Theorem 3.2's proof (line 98-99)
already states "the delta integrates to J, the smooth remainder vanishes" — the
quantum case follows identically by integrating the Schrödinger equation over
[-ε,+ε]. The remark's purpose is to highlight the structural parallel, not to
re-derive the standard matching condition. A reader unfamiliar with the
integration would consult [AlbeverioGesztesyHoeghKrohnHolden2005]; a reader who
followed Theorem 3.2 will immediately see the parallel. The level of detail is
calibrated correctly for a remark.

## Potential Objection: The d≥2 sentence is dense.
"This self-consistency is what makes the d≥2 case nontrivial: the wavefunction's
diagonal singularity couples back into the matching condition, requiring
renormalization to define the extension."

**Resolution:** This sentence is correctly placed and necessary. It provides the
conceptual bridge to Remark 5.2b (the d/2 exponent and renormalization threshold).
The phrase "diagonal singularity" is technical but standard (Example 5.2a already
used "diagonal Green function" on line 221). Readers at this depth (Section 5.2
of a satellite note on distributional mechanics) are expected to handle this
level of abstraction. The sentence could be expanded into a full paragraph, but
that would violate the paper's compression discipline — Remark 5.2b (next)
provides the quantitative details.

## Verdict
No objection withstands scrutiny. The remark is appropriately concise,
mathematically sound, and well-integrated into the surrounding exposition.
