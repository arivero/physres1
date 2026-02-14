# D43 Plan: Symplectic RK Example for Rooted-Tree Paper

Date: 2026-02-14

## Question
What is the simplest symplectic RK example to add to the rooted-tree paper that shows constraint preservation (analogous to Ward identities in RG)?

## Context
- Current Section 3 has midpoint method (explicit RK2, not symplectic)
- Section 5.1 dictionary mentions "Symplectic RK ↔ Ward identities" but no worked example
- Need ~1-2pp example to reach 9pp PRD target

## Success criteria (mathematics in blackboard/notebook)
**Option 1: Implicit midpoint (simplest symplectic)**
- Tableau: \(c=1/2\), \(a_{11}=1/2\), \(b_1=1\)
- Implicit equation: \(y_{n+1} = y_n + h f(t_n + h/2, (y_n + y_{n+1})/2)\)
- Preserve symplectic form \(dq \wedge dp\)

**Option 2: Gauss collocation (RK2, symplectic)**
- Same as implicit midpoint (only one Gauss point for order-2)

**Deliverable:** Blackboard note with:
1. Method definition (tableau + implicit equation)
2. Symplectic preservation check (\(\Phi_h^* \omega = \omega\))
3. Connection to Ward identities (gauge-fixing choice doesn't affect conserved charge)

## Expected outcome
- D43 produces worked example → spawn C318 to add to rooted-tree Section 3.5
- Paper expands from 7pp to ~9pp

## Out of scope
- Multi-stage symplectic methods (keep to simplest case)
- Full backward error analysis (mention only)
