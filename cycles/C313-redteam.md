# C313 Red Team

## Failure Modes

### 1. Planck-area edit creates false closure
**Risk:** Marking Open Problem #3 as "Addressed" when only a d=3 witness exists, not a general odd-d framework.
**Mitigation:** The edit says "A universal normalization remains defensible in odd d *provided one admits transmutation-generated scales*" — properly conditional. The parity lemma is general; the witness is specific to d=3.

### 2. Remark P5.2a is too long for Section 7
**Risk:** The remark adds ~6 lines to Section 7 which should flow quickly to Section 8.
**Mitigation:** It sits between P5.2 and the "Formal Deformation Boundary" (§7.5), which is exactly the right place for a physical-content remark. The length is comparable to other remarks in the paper.

### 3. GaAs estimate may date poorly
**Risk:** Spectroscopic resolution improves over time; "0.1 meV resolution" claim may become obsolete.
**Mitigation:** The estimate uses "current resolution thresholds" phrasing and the key point is the O(α²) scaling, not the specific number.

### 4. Layer 2 agreement claim may not hold for all symbol classes
**Risk:** The claim "Layers 1+2 agree" is established for f(q)p² symbols. Non-quadratic symbols may behave differently.
**Mitigation:** Remark explicitly says "for a position-dependent mass f(q)=1+αq²". The structural statement (self-adjointness forces b=a') is general for kinetic operators.
