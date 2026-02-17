# D68 Discovery: Composition extends to gauge fields via conditional forcing

Date: 2026-02-14
Parent: D54 (two-layer QFT), D59 (fermionic composition), D58 (Atiyah-Segal)

## Novelty target
Does the composition framework extend to gauge fields / internal symmetry?

## Analysis

### Matrix-valued kernels
If K(x,y;t) ∈ End(V) for an internal vector space V, the composition integral
uses matrix multiplication under the integral. The scalar part (Gaussian, d/2,
κ=ℏ) is forced identically to the scalar case — P4.2's algebraic argument
doesn't see internal indices. The matrix part must satisfy its own composition
constraint: holonomy along x→y then y→z must equal holonomy along x→z. This
is the definition of parallel transport.

**Verdict: CONSISTENT.** Composition forces the *form* of the coupling
(path-ordered exponential of a connection) once V is posited, but does not
force V's existence. V is additional setup (like ℝ^d in P4.2).

### Connection structure (CONDITIONAL THEOREM)
Given V and structure group G, composition forces:
1. A must be a 1-form (couples to dx^μ in short-time kernel)
2. A must be Lie-algebra valued (holonomies ∈ G acting on V)
3. These are the defining properties of a connection on a principal G-bundle

But G and the representation V are setup, not forced.

### Non-Abelian structure and path-ordering
Matrix multiplication under the composition integral is non-commutative.
The short-time kernel is K_dt ~ exp(iS_free/ℏ) · (1 + iA_μ dx^μ + ...).
Composing N short-time kernels produces the path-ordered exponential
P exp(i∫A), with ordering arising from the sequential composition.
**Verdict: THEOREM** — path-ordering is forced by matrix composition.

### Gauge covariance
Under g(x): K(x,y) → g(x) K(x,y) g(y)^{-1}. The composition integral:
∫ [g(x)K_t(x,z)g(z)^{-1}][g(z)K_s(z,y)g(y)^{-1}] dz
= g(x) [∫ K_t(x,z)K_s(z,y) dz] g(y)^{-1}
The g(z)^{-1}g(z) = 1 cancellation is automatic.
**Verdict: THEOREM** — gauge covariance is automatic from composition.

## Verdict
**MODERATE (conditional forcing).** Given an internal vector space V and
structure group G as physical setup, composition forces: (1) connection
structure (Lie-algebra-valued 1-form), (2) path-ordering of holonomies,
(3) gauge covariance. These are analogous to how P4.2 forces Gaussian
kernels given ℝ^d as setup. The new element for the project: the scalar/gauge
split parallels D59's boson/fermion split — algebraic composition structure is
universal, but the specific setup (ℝ^d vs V, bosonic vs fermionic) is external.

### Promotability
Paper-remark quality (2-3 sentences). Natural target: cornerstone Section 9.6
(extending the forced-completion chain to gauge fields as "Layer 1b:
composition on internal space"). Or RCP foundations remark on gauge channel.

## Spawned cycles
Consider batching with future C-cycle. Short remark in P9.1 or RCP paper.
