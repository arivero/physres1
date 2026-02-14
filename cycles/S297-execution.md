# S297 Execution: Rooted-Tree Scope Map + Toy Butcher Example

Date: 2026-02-14
Parent: D41

## What was computed
**Deliverable 1:** 7-entry dictionary table (Butcher ↔ RG)
- B-series ↔ counterterm expansion
- Tree grafting ↔ nested subdivergences
- Order conditions ↔ renormalization conditions
- **Key difference:** Butcher group (reversible) vs RG semigroup (one-way)
- Hopf algebra: literal combinatorial equivalence, different physics interpretation

**Deliverable 2:** Worked example — Midpoint RK2
- Butcher tableau, tree notation (\(\tau_1 = \bullet\), \(\tau_2 = [\bullet]\))
- B-series coefficients: \(a(\tau_1)=1\), \(a(\tau_2)=1/2\)
- Composition test: \(\Phi_h \circ \Phi_h = \Phi_{2h} + O(h^3)\)
- Tree interpretation: \(\tau_1 \star \tau_1 = 2\tau_2\)

**Scope verdict:** Paper structure ready for C315 draft (6-9pp baseline, expandable to PRD length)

## Blackboard location
Slot 0 (135 lines, under 300-line limit)

## Next step
C315: draft initial paper in `papers/rooted-tree-bookkeeping/main.md`
