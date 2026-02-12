# Q59 Red Team: Referee pass failure modes

Date: 2026-02-12

## Failure modes

### 1. Missed notation inconsistency
- Risk: the comparison checked tree notation, Euler map, Jacobian, regularity, and labels. Could miss something in sections not touched by C102.
- Mitigation: the check was scoped to the C102 diff (Remark D6.2a1 and its companion D1.0 context). Broader notation audits belong in a full-manuscript Q pass, not a targeted C102 review.

### 2. Regularity fix in companion could introduce new inconsistencies
- Risk: adding "f ∈ C²" to the companion's D1.0 might conflict with later sections that assume smooth.
- Mitigation: the companion's other derivations all use "smooth f" and C² is weaker. Stating the minimal requirement as a parenthetical (not replacing "smooth") keeps backward compatibility.

### 3. Label namespace collision deferred too long
- Risk: if a C cycle cross-references between papers before the collision is resolved, the reference will be ambiguous.
- Mitigation: add a note to research-state.md so any agent running a C cycle that introduces cross-references will see the warning. Current cycles do not cross-reference by label.
