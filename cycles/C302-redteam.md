# C302 Red Team

Date: 2026-02-14

## Failure modes

### 1. Heuristic H0.2 bullet 2 still says "unitarity selects"
**Objection:** The remark says symmetry selects α=1/2, but H0.2 bullet 2 still says "requiring unitarity selects a symmetric (half-density) convention." This creates an internal inconsistency.
**Mitigation:** The two statements are logically compatible (unitarity implies symmetry, so requiring unitarity does select the symmetric choice), but H0.2's wording is imprecise. Correcting H0.2 directly would require editing the Introduction, which adds scope. Acceptable trade: leave H0.2 as-is (it's technically correct, just imprecise), and let the more precise D4.1c statement in Section 6.3 stand as the refined claim. Optional future micro-edit: change H0.2 to say "requiring symmetry of the generator selects".

### 2. Formula density in a remark
**Objection:** The symmetry-defect formula might be too technical for a remark.
**Mitigation:** The formula is one line and gives the explicit criterion (2α-1=0). Remarks in Section 6 are consistently technical (see D4.2, D5.1a); this is appropriate for the audience.

### 3. Deficiency indices mentioned without definition
**Objection:** "(1,1)" appears without explanation.
**Mitigation:** Appropriate compression for a remark. Readers familiar with operator theory recognize deficiency indices as the standard self-adjoint extension count; others get the structural message (domain matters for essential self-adjointness). Full treatment is in standard references (Reed-Simon, Albeverio et al).

## Post-execution assessment
Failure mode 1 is the only substantive one, and it's acceptable: H0.2 is in the Introduction (heuristic framing), D4.1c is in the technical section (precise statement). The manuscript now contains the correct refined claim where it matters.
