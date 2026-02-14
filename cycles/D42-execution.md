# D42 Execution: Concrete One-Loop RG Example for Rooted-Tree Paper

Date: 2026-02-14

## Decision
Use 2D delta interaction (from cornerstone Section 10.5) as concrete RG example for rooted-tree paper Section 4.

## Rationale
- **Pedagogical:** QM-level (no Feynman rules), genuine RG flow (running coupling), explicit formulas
- **Tree-appropriate:** One-loop = single-node tree \(\tau_1 = \bullet\) (no nested subdivergences yet)
- **Parallel to Butcher:** Matches midpoint RK2 as "first nontrivial correction"
- **Self-contained:** Adapted from existing cornerstone content (Section 10.5)

## Mathematics delivered
Blackboard slot 1 (S298, 167 lines):
- Loop integral: \(I(E;\Lambda) = -(m/2\pi\hbar^2) \ln(\Lambda^2/k^2) + \ldots\)
- Counterterm: \(1/g_R(\mu) = 1/g_B + (m/2\pi\hbar^2) \ln(\Lambda^2/\mu^2)\)
- Beta function: \(\beta(g_R) = (m/\pi\hbar^2) g_R^2\)
- Dimensional transmutation: RG-invariant \(\kappa_*\)
- **Butcher parallel:** single-node tree, composition law, scheme/method freedom

## Spawned cycles
- S298 (completed): 2D delta RG extraction + rooted-tree adaptation
- C316 (next): integrate into rooted-tree paper Section 4

## Expected impact
Expand rooted-tree paper from 5pp to ~7pp (add ~1.5pp for Section 4 expansion)
