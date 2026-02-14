# D42 Plan: Concrete One-Loop RG Example for Rooted-Tree Paper

Date: 2026-02-14

## Question
What is the most pedagogical one-loop RG example to anchor the rooted-tree dictionary in Section 4 of the rooted-tree paper?

## Context
- Current Section 4 is a template (mentions φ⁴ mass counterterm, BPHZ recursion, but no worked computation)
- Need explicit calculation showing: tree structure, counterterm formula, scale dependence
- Should parallel the midpoint RK2 example in Section 3 (explicit, self-contained, ~1-2pp)

## Success criteria (mathematics in blackboard/notebook)
**Option 1: φ⁴ mass counterterm (dimensional regularization)**
- Tree: one-loop "tadpole" diagram (single vertex, one loop)
- Integral: \(\int d^D k / (k^2 - m^2)\), pole at D=4
- Counterterm: \(\delta m^2 = (λ/32π²ε) m² + O(ε⁰)\)
- Scale dependence: \(\mu d(δm²)/dμ\)

**Option 2: 2D delta interaction (simpler, QM-level)**
- Already covered in cornerstone Section 10.5
- Could extract and adapt for rooted-tree context
- Advantage: no Feynman rules, just Schrödinger + Born series

**Option 3: Zero-dimensional φ⁴ (toy QFT)**
- Partition function \(Z = \int e^{-m²φ²/2 - λφ⁴/4} dφ\)
- Loop expansion in λ, dimensional analysis in coupling
- Advantage: all integrals are Gaussian (explicit closed form)

**Deliverable:** Blackboard note with one option worked out (tree diagram, integral, counterterm, beta function if applicable)

## Expected outcome
- D42 produces worked example → spawn C316 to add to rooted-tree paper Section 4
- Target: expand paper from 5pp to 7-8pp

## Out of scope
- Two-loop computation (defer to later expansion)
- Full BPHZ forest formula (keep to one-loop "single tree")
