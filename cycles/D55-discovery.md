# D55 Discovery: What is the irreducible content of "physical setup" in single-axiom P4.2?

Date: 2026-02-14
Parent: D53 (single-axiom P4.2)

## Novelty target
D53 reduced P4.2 to "1 axiom (C) + physical setup." The red team noted that
setup is load-bearing. What exactly does it contain? Which parts are irreducible?

## Setup decomposition

| # | Assumption | Role in P4.2 | Reducible? |
|---|---|---|---|
| S1 | M = ℝ^d, finite-dimensional | Forces d/2 (dimension counting) | **NO** — on fractals, d→d_s (D52) |
| S2 | Action-based dynamics: S[γ] = ∫L dt | Forces exponential weight (D29) | **NO** — without action, no exp(iS/ℏ) |
| S3 | Mass m only dimensional constant (besides ℏ) | Forces κ=ℏ (dimensional uniqueness) | **PARTIALLY** — with extra constants, κ could be f(m,g,...) |
| S4 | Markovian kernel: K(x,y;t) | Enables kernel composition ∫K·K·dz = K | **YES** — follows from Hamiltonian time evolution |
| S5 | Self-adjoint generator H | Forces identity limit (D53 path 2) | **YES** — follows from well-posed QM |

## Analysis

**S4 and S5 are derivative.** Any quantum system with a Hamiltonian automatically
has Markovian kernel evolution and self-adjoint generator (assuming essential
self-adjointness on a core). So the genuinely independent setup assumptions are:

### Irreducible setup = {S1, S2, S3}

1. **S1 (ℝ^d)**: The composition integral ∫K(x,z)K(z,y) d^dz = K(x,y) requires
   a measure on M. On ℝ^d, this is Lebesgue measure with [d^dz] = L^d. The
   dimension d enters through this measure.

2. **S2 (Action-based)**: The kernel has the form K ~ exp(iS/κ). This is the
   "amplitude = exponential of action" ansatz. D29 showed that composition forces
   the exponential form, but the existence of an action S is assumed.

3. **S3 (Minimal constants)**: If {m, ℏ} are the only constants with [m]=M and
   [ℏ]=ML²T⁻¹, then the unique action quantum is ℏ. If extra constants exist
   (e.g., coupling g with [g]=ML³T⁻²), then κ could be some function of m,g,ℏ.
   But then κ still has [action] units, so κ = ℏ · f(dimensionless ratios).
   At tree level f=1 (no perturbative corrections); loop corrections can shift
   the effective ℏ but only by O(ℏ²) terms → κ=ℏ to leading order.

## Verdict
The "physical setup" in single-axiom P4.2 has **three irreducible components**:
1. Finite-dimensional configuration space (dimension d)
2. Action-based dynamics (Lagrangian theory)
3. Minimal dimensional basis (mass m as the only free constant)

These are not exotic assumptions — they describe any standard non-relativistic
mechanical system. The single-axiom P4.2 says: **for any standard mechanical
system, composition alone forces quantum mechanics.**

## Novelty assessment
**MINOR (clarification).** Enumerating the setup assumptions clarifies the scope
of the single-axiom claim without extending it.

## Success criteria met
1. ✓ Irreducible setup identified: 3 components (ℝ^d, action, minimal constants)
2. ✓ Derivative assumptions identified (Markov, self-adjointness follow from QM)
3. ✓ Scope clarified: P4.2 applies to standard mechanical systems, not exotic ones
