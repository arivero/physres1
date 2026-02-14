# Caustics and the Maslov Index in the Half-Density Framework
Promoted from: blackboards/2.md (S213)
Date promoted: 2026-02-14

## Context
Example 3.5b in delta-objects notes that sqrt(D) -> infinity at omega*Delta_t = pi (caustic).
What does the half-density formalism say about this?

## Key Insight
The divergence of sqrt(D) at caustics is a **projection artifact**, not an
intrinsic singularity. The semiclassical state lives on a Lagrangian
submanifold L in T*M, where it is a smooth half-density. The caustic
occurs when the projection pi: L -> M develops a fold -- the pushforward
of a smooth density on L becomes singular on M.

## The Maslov Index
At each caustic crossing, the Van Vleck determinant D changes sign.
The square root sqrt(D) is not single-valued along paths through caustics.
Resolution: lift from the symplectic group Sp(2n) to its double cover,
the **metaplectic group** Mp(2n). Half-densities on L transform under
Mp(2n), and the double-cover structure compensates the sign flip at
each caustic. The Maslov index mu counts the number of conjugate points
(with multiplicity) -- equivalently, the winding number in Mp(2n).

The corrected propagator:
  K_sc proportional to |D|^{1/2} exp(iS_cl/hbar - i*pi*mu/2)

Each caustic contributes a phase shift of -pi/2.

## Connection to Bates-Weinstein
Bates-Weinstein (1997, section 4.2) shows that a solution of the homogeneous
transport equation is geometrically a half-density on L invariant under
X_H. The Maslov correction to Bohr-Sommerfeld quantization arises from
the H^1(L_Grassmannian, Z) class of the metalinear bundle.

## Draft Remark 3.5c

> Remark 3.5c (Caustics and the Maslov index).
> At caustics (conjugate points where D -> infinity), the semiclassical
> approximation appears to break down: the amplitude |D|^{1/2}
> diverges and sqrt(D) changes sign. In the half-density framework the
> singularity is a projection artifact: the semiclassical state is
> a smooth half-density on the Lagrangian submanifold L in T*M, and
> the caustic occurs because the projection pi: L -> M develops a
> fold [BatesWeinstein1997]. The sign ambiguity of sqrt(D) is resolved by
> the metaplectic structure: half-densities transform under the
> double cover Mp(2n) of Sp(2n), and the Maslov index mu -- counting
> conjugate points along the classical path -- records the accumulated
> phase correction exp(-i*pi*mu/2). This makes the "amplitudes are
> half-densities" pattern of Section 3.3 precise: the Van Vleck
> prefactor is not a scalar but a section of a metalinear bundle,
> globally well-defined even through caustics.

~8 lines. Reference: [BatesWeinstein1997] already in delta-objects bib.

## Honest Verdict
- The physics is standard (Maslov 1965, Arnold 1967, Bates-Weinstein 1997).
- The remark adds genuine value: it resolves the tension flagged by
  Example 3.5b ("sqrt(D) -> infinity means breakdown") and shows it's a feature
  of the half-density formalism, not a bug.
- No new claims, just connecting existing dots.
