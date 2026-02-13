# Q71 Execution: Referee pass on C116 (Remark PA-E5b)

Date: 2026-02-12

## Parent cycle reviewed
- `C116`

## Findings
- **Lippmann–Schwinger identity**: G = G₀ + G₀TG₀ is the standard resolvent identity for a rank-1 (contact) perturbation. Confirmed against D11.1 in main paper (line 1315: "the Lippmann–Schwinger equation yields an algebraic T-matrix"). Correct.
- **T(E) is a scalar**: For a Dirac-supported interaction at a single point, the T-matrix is a number (not a kernel). D11.1 writes it as a single algebraic expression. Correct.
- **G₀ carries half-density weight**: G₀ is the exact free resolvent kernel, which is a bi-half-density (Schwartz kernel of an operator on the half-density Hilbert space). PA-E5b references PA-D1.4 (Van Vleck prefactor as bi-half-density). PA-D1.4 discusses the semiclassical approximation, but the exact kernel is also a bi-half-density. Reference is appropriate shorthand. Valid.
- **Cross-references**:
  - PA-D1.4 (line 380): Van Vleck prefactor is a bi-half-density. Verified.
  - PA-H2.1 (line 113): half-density formulation. Verified.
  - PA-H2.2 (line 116): scalarization by reference half-density. Verified.
  - PA-H2.3 (line 119): dimensionless scalar representative. Verified.
  - PA-H2.4 (line 122): background-free constancy. Verified.
- **"Structurally independent, combine multiplicatively"**: G₀·T·G₀ is literally a product. G₀ transforms as a bi-half-density independently of T. T is a scalar with no coordinate-transformation weight. Correct.
- **Claim label**: Remark PA-E5b — follows PA-E5a, correct PA- prefix. Good namespace.
- **Notation**: G₀, T, κ*, Lippmann–Schwinger — consistent with Section 10.5 of main paper.
- **Placement**: After PA-E5a, before §3.4. Logically appropriate — extends the 2D delta discussion.
- **Reader flow**: PA-E5 (example) → PA-E5a (hierarchy) → PA-E5b (kernel-level mechanism) is a natural deepening sequence.

## Verdict
Clean pass. All claims verified, cross-references valid, notation consistent.

## Required follow-ups (spawn cycles)
None. No issues found.

## Notes (non-actions)
- PA-E5b completes the 2D delta discussion in the Planck-area draft: PA-E5 gives the example, PA-E5a places it in the hierarchy, PA-E5b explains the kernel-level mechanism. This trio is now self-contained.
