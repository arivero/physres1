# D64 Discovery: Thermal composition and KMS condition

Date: 2026-02-14
Parent: D53 (single-axiom), path-integral-normalization paper

## Novelty target
Does the composition framework say anything non-trivial about thermal physics?

## Analysis
The Euclidean composition law K_E(τ₁+τ₂) = ∫K_E(τ₁)K_E(τ₂) dz is identical
to the QM composition law. Temperature enters only through the boundary condition:
β-periodicity (KMS condition) on the trace Z(β) = ∫K_E(x,x;β) d^d x.

### Key observation
Temperature is not a parameter of the composition law — it is a boundary-condition
datum. P4.2 forces the kernel structure (d/2, ℏ, Gaussian) identically in both
the dynamical and thermal settings. What changes is only the trace/periodicity
condition. In RCP language: temperature lives in the boundary-condition channel,
not the partition channel.

### What composition DOES say
- Forced: kernel form, normalization, ℏ (identical for dynamics and thermodynamics)
- Not forced: which boundary condition (open vs periodic = dynamics vs thermal)

### What it DOESN'T say
- Does not explain WHY imaginary time = inverse temperature (requires Wick rotation
  + thermodynamics as independent input)
- Does not add to standard anomaly matching / KMS story

## Verdict
**MINOR (terminological clarification).** Largely re-states known Euclidean-thermal
connection in composition language. The only somewhat novel observation is the clean
separation: composition forces structure, boundary conditions select state (dynamical
vs thermal). This is conceptually tidy but not a physics result.

## Promotability
Notebook-only. Could appear as a 2-sentence footnote if thermal physics comes up
in the cornerstone or RCP foundations paper. Not worth a standalone C-cycle.

## Spawned cycles
None.
