# D61 Discovery: Does the composition axiom constrain the space of consistent interactions?

Date: 2026-02-14
Parent: D53 (single-axiom P4.2), Q3 (contact expansion constraints)

## Novelty target
If composition forces the free-particle kernel form (Gaussian, d/2, exp(iS/ℏ)),
does it also constrain INTERACTIONS? Can composition tell us which V(x) are allowed?

## Key analysis

### Free case (P4.2): composition is highly constraining
Composition + setup forces the complete free-particle kernel. The "allowed"
free kernel is essentially unique (up to the single parameter ℏ).

### Interacting case: composition is permissive
For V(x) ≠ 0, the kernel K_V(x,y;t) = ⟨x|e^{-iHt/ℏ}|y⟩ satisfies composition
automatically (it's the matrix element of a group element). ANY self-adjoint H
gives a composition-compatible kernel.

So: composition constrains the STRUCTURE (Gaussian, d/2, exp(iS/ℏ)) but NOT
the CONTENT (which V is realized). The potential is free data.

### What DOES constrain V?

1. **Self-adjointness of H = -ℏ²Δ/2m + V**: This requires V to be at least
   Kato-class (roughly: V not too singular). The Kato class condition IS a
   composition constraint: too-singular V makes the semigroup e^{-iHt/ℏ}
   ill-defined, destroying composition.

2. **Renormalizability (QFT, A4)**: In QFT, the scale-composition axiom A4
   constrains interactions to renormalizable or asymptotically safe theories.
   This is a MUCH stronger constraint than self-adjointness.

3. **Unitarity + crossing (S-matrix)**: Composition of S-matrix elements
   (crossing symmetry, optical theorem) constrains the space of consistent
   scattering amplitudes. This is the S-matrix bootstrap program.

### Hierarchy of composition constraints on V

| Level | Constraint | Source | What it restricts |
|---|---|---|---|
| 0 | Any V allowed | None | Nothing |
| 1 | V Kato-class | (C) well-posedness | Excludes too-singular V |
| 2 | Renormalizable V | A4 (scale) | Selects power-counting renorm. |
| 3 | Bootstrap | A1+A4+unitarity | Constrains amplitudes (CFT data) |

## Verdict
**Composition constrains structure, not content — at the QM level (A1 only).**
Interaction content is constrained only when scale-composition (A4) is added,
selecting renormalizable theories. This cleanly separates the two RCP layers:
- A1: forces quantum mechanics (structure)
- A4: constrains interactions (content selection via renormalizability)

## Novelty assessment
**MINOR (clarification).** The observation that composition doesn't constrain V
at the QM level is standard (any self-adjoint H works). The clean separation
(A1=structure, A4=content) echoes D54's two-layer picture.

## Spawned cycles
None. The hierarchy table could inform a paragraph in the RCP foundations paper
(axiom-level separation of structure vs content).
