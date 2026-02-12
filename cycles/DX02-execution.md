# DX02 Execution: Cross-thread probe — half-density bridge, conformal filter, and RCP scope

Date: 2026-02-12

## Surprise inventory results

1. **S72's "not xi*R" finding (HD-D1.3a)**: not a genuine surprise — the half-density conjugation and Yamabe operator act on different conformal weights (D/2 vs (D-2)/2), so they cannot coincide. The value of S72 was making this explicit and confirming the D=4 cancellation is conformal-class-specific. No anomaly.

2. **The 2D delta half-density bridge (RG-H1.12) missing from the main paper**: this IS a structural gap. The main paper (paper/main.md) discusses the 2D delta interaction in Section 10.5 and the half-density normalization in Section 6, but does NOT connect them. The connection is: a point interaction's kernel is a rank-one bi-half-density delta, and the RG transmutation scale that makes the interaction well-defined is a candidate scalarization scale. This bridge is spelled out only in rg-fundamental (RG-H1.12), not in the main paper.

3. **No new signals in anomalies.md**: all previous entries resolved.

## Cross-thread probe results

### Probe A: Thread 2/2b (half-density) + Thread 3 (RG as fundamental)

- **Threads compared**: half-density kernel formalism (HD-D1.1, PA-P1.1) + RG transmutation (RG-P1.2, PA-H2.13)
- **Expected connection**: the RG transmutation scale kappa_* from the 2D delta should be expressible as a half-density scalarization scale.
- **Actual finding**: RG-H1.12 already states this connection as a heuristic: "RG-invariant scales (like kappa_*) are candidates to supply scalarization scales only after adding a universality hypothesis." The key word is "candidate" — the bridge is not automatic. Specifically:
  - The half-density formalism gives a *canonical* kernel without choosing a measure.
  - The RG transmutation gives a *physical* scale without requiring analytic coupling dependence.
  - Combining them: if the scalarization scale is *the* RG-invariant transmutation scale, then the half-density formalism "knows" which scale to use. But this requires the universality hypothesis (PA-H2.4 + PA-H2.13).
  - **This is the same dimensional-transmutation branch already identified in PA-H2.13 / Derivation PA-D1.6a.** No new connection; the existing analysis is complete.

### Probe B: Thread 2 (scalarization gauge freedom) + Thread 6 (ordering as equivalence class)

- **Threads compared**: scalarization gauge (PA-D1.7: changing sigma_* rescales f by r^{-1}) + ordering equivalence (Section 10.2: Q_W - Q_L = O(hbar))
- **Expected connection**: both are "choice of representative with controlled freedom."
- **Actual finding**: the parallel is **structural but not algebraic**. Specifically:
  - Scalarization gauge freedom (PA-D1.7) acts on half-densities by pointwise multiplication: psi = f sigma_*, different sigma_* give different f. This is a *continuous* gauge freedom (any positive function r(x)).
  - Ordering equivalence (Section 10.2) acts on quantization maps by O(hbar) corrections: Q_W(A) - Q_L(A) = O(hbar). This is a *discrete* (or perturbative) freedom parametrized by the symbol class.
  - **The connecting structure** would be: if a half-density kernel defines a quantization map, then the scalarization gauge freedom maps to an ordering ambiguity. But this requires identifying "scalarization of the kernel" with "choice of quantization prescription," which is plausible but not derived.
  - **This is a genuine new observation**: scalarization gauge ↔ ordering ambiguity, mediated by the kernel-to-quantization-map passage. Not yet load-bearing; worth an S cycle.

## Framing stress-test results

- **Hardest case for current framing**: the conformal D=4 cancellation (PA-H2.6a / HD-D1.3a) is NOT an RCP consequence. RCP says "compatibility forces d/2 normalization, deformation parameter, and RG flow." The conformal cancellation says "among all dimensions where half-density scalarization is possible, D=4 has a simpler kinetic operator under conformal gauge changes." This is a **selection** criterion, not a **compatibility** criterion.

- **Is the framing still adequate?** Yes, with one refinement needed.
  - RCP (compatibility) determines *what structures are forced* (d/2 normalization, hbar, RG flow).
  - Dimension selection (simplicity/sieve) determines *which dimensions are preferred* given those structures.
  - These are complementary, not competing. The current framing already separates them (PA-H2.6a is explicitly labeled "independent filter"), but the main paper's Section 10.3 does not acknowledge the complementary role of simplicity filters.

- **Refinement statement**: "RCP forces structures; selection principles (monomial sieve, conformal simplicity, transmutation) filter among compatible implementations." This is implicit in the existing text but could be made explicit in a future C cycle.

## Candidate principle

**No new principle this round.** The exploration confirms the existing structure:
- RCP = compatibility filter (partition + representation + scale)
- Dimension sieves = selection filters (conformal simplicity, monomial integrality, transmutation)

The observation that "scalarization gauge ↔ ordering ambiguity" is a *connection between existing components*, not a new principle. If confirmed by computation, it would tighten the relationship between RCP's representation leg and the half-density formalism.

## Updates made

### docs/anomalies.md:
- Added one new OPEN entry: "scalarization gauge ↔ ordering ambiguity parallel" (from Probe B).
- No entries resolved or promoted (all were already resolved).

### docs/research-state.md:
- Principle evolution log: reviewed; no update warranted (the refinement "RCP forces structures; selection principles filter" is implicit in v4 and does not constitute a new version).
- Thread 2 sub-questions: added note about scalarization gauge ↔ ordering parallel.

### docs/research-log.md:
- Entry added for DX02.

## Spawned cycles
- `S73` (optional): derive the scalarization-gauge ↔ ordering-ambiguity connection in a toy model (e.g., 1D QM kernel with two different sigma_* choices, check if the resulting quantization maps differ by O(hbar)).
- No C cycle spawned: the "half-density/RG bridge missing from main paper" gap is informational, not blocking. The main paper already discusses both ingredients; the bridge is in the companion paper where it belongs.
