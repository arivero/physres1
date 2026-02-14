# D53 Red Team: Identity limit from composition

## Claim under scrutiny
(I) derives from (C) + physical setup, reducing P4.2 to one axiom.

## Potential weaknesses

### 1. Self-adjointness is load-bearing
The "physical setup" includes self-adjoint H, which is a substantial assumption
for singular potentials. For V(x) = -α/|x|² (inverse-square beyond critical
coupling), H is NOT essentially self-adjoint — different self-adjoint extensions
give different identity limits (or none). So "setup" isn't free.

**Severity: MINOR.** The claim is about P4.2 (which concerns the free-particle
kernel explicitly). For the free particle, H = -ℏ²Δ/2m is essentially self-adjoint
on C_c^∞(ℝ^d). The general-V extension is a strengthening, not the core claim.

### 2. Circular reasoning risk
If "physical setup" is defined as "system with well-posed time evolution," then
the identity limit is essentially built into the setup. The reduction might be
trivially true by expanding what "setup" means.

**Severity: MODERATE.** The honest framing is: (D) and (I) are not independent
physical principles — they are mathematical consequences of "composition law on
a well-defined physical system." The setup assumptions are NOT vacuous (they
exclude Lévy processes, non-self-adjoint generators, etc.) but they are the
kind of background assumptions physicists already make.

### 3. Non-C₀ semigroups
Mathematically, semigroups without identity limit exist (e.g., multiplication
semigroups on L^∞, some translation semigroups). D53 excludes these by
"regularity" / "physical setup." Is this exclusion doing real work?

**Severity: LOW.** The non-C₀ cases are genuinely non-physical (the kernel
doesn't evolve continuously in time). No known physical propagator fails C₀.

## Verdict
**PASS WITH CAVEAT.** The claim holds, but the honest statement should
acknowledge that "physical setup" includes implicit regularity assumptions.
The reduction from 3 axioms to 1+setup is genuine; the setup assumptions
are physically natural but nontrivial.

## Recommended framing
"Composition is the master axiom. Given a well-posed physical system (action-based
dynamics on ℝ^d with self-adjoint generator), the composition semigroup law
alone forces all P4.2 conclusions: the d/2 normalization, exponential weight,
iε prescription, dimensional homogeneity, Lévy exclusion, continuum time,
κ→0 obstruction, identity limit, and κ=ℏ necessity."
