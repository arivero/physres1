# S92 Execution: Assess cornerstone→RG-fundamental cross-references
Date: 2026-02-13

## Comparison Summary
The RG-fundamental satellite has 32 labeled elements; 22 (69%) are unique content not in the cornerstone. The cornerstone's Sections 8 and 10.5 focus on the *abstract principle* + one 2D delta computation, while the satellite deepens (Hopf algebra, shell integration, boundary-condition formalism) and widens (1D/2D/3D, Schur complement, quantization rules).

## Recommended Cross-References (2)

### 1. Section 10.5 → RG-D1.2a (Wilsonian shell integration)
**Where:** After Derivation D11.2 (line ~1371), where the beta function is derived via subtraction.
**Why:** The satellite derives the *same* beta function by explicitly integrating out a momentum shell, making the semigroup composition W_{Λ₁→Λ₂} ∘ W_{Λ→Λ₁} = W_{Λ→Λ₂} directly visible as an identity of shell integrals. This complements the subtraction-based derivation and connects to the Wilsonian language of Section 8.2.
**Pattern:** Matches the existing HD-D1.3 cross-reference style (parenthetical, specific label).

### 2. Section 8.4 → RG-D1.7 (Schur complement coarse-graining)
**Where:** End of the gap paragraph (line ~991), after "what separates them is the order of vanishing of β at the fixed point."
**Why:** The cornerstone acknowledges a structural gap between toy model (linear beta) and full RG. The satellite's Schur complement model (RG-D1.7) provides an exactly solvable coarse-graining example that makes non-invertibility *visible* — many UV triples (a,b,c) map to one IR effective coupling. This bridges the abstraction gap without requiring the full 2D delta computation.
**Pattern:** Same parenthetical style.
