# S298 Plan: 2D Delta Interaction RG Example (Rooted-Tree Adaptation)

Date: 2026-02-14
Parent: D42

## Goal
Extract and adapt cornerstone Section 10.5's 2D delta interaction RG computation for rooted-tree paper Section 4.

## Success criteria (mathematics in blackboard)
**Deliverable:** Blackboard note (~50-80 lines) with:
1. **Setup:** 2D attractive delta \(V(r) = -g δ²(r)\), dimensionless coupling \(g\)
2. **Born series tree:** first-order scattering amplitude as "tree diagram"
3. **Counterterm:** renormalized coupling \(κ_* = 4π/(\ln(Λ/E) + c)\)
4. **RG flow:** \(dκ_*/d\ln\mu = κ_*²/(4π)\) (one-loop beta function)
5. **Tree interpretation:** single-node rooted tree, no nested subdivergences at one loop

**Adaptation for rooted-tree context:**
- Emphasize: tree = single vertex (no subgraphs), counterterm = single subtraction
- Connect to Butcher: "one-loop = order-2 RK" analogy (both first nontrivial correction)
- Keep QM language (no QFT field operators)

**Output location:** Blackboard slot 1 (check availability)

## Source material
- Cornerstone `paper/main.md` Section 10.5 (~100 lines)
- Adapt notation to match rooted-tree paper conventions

## Out of scope
- Two-loop extension (no nested trees yet)
- Full QFT treatment (keep at scattering amplitude level)
