# Research Motivations and Open Questions

This file lists what the project is trying to achieve. Read it at the start of
every session to orient work toward genuine research goals, not just mechanical
expansion.

## Overarching Thesis
Physically meaningful laws are those that survive controlled refinement in
partition/representation/scale (the Refinement Compatibility Principle, RCP).

## Foundational Goals

The deepest ambition of the project is to show that quantum mechanics was
**inevitable** from the standpoint of mathematical and logical formalism —
not a discovery about nature that could have gone otherwise, but a consequence
of taking limit procedures seriously.

The core argument runs in three stages:

1. **Classical mechanics already requires controlled limits.** Newton's
   polygonal approximation, the calculus of variations, and the notion of
   extremal points (stationary action) are all refinement-to-zero constructions.
   The mathematics that analyses extrema of functionals (Euler-Lagrange theory)
   is inseparable from the mathematics of limits.

2. **Quantum composition is forced by the same logic.** Once action is
   recognized as additive under temporal partition, multiplicative composition
   of amplitudes (the Feynman formula) follows from the exponential map —
   the unique homomorphism from additive to multiplicative structure. The path
   integral is not a physical postulate bolted onto classical mechanics; it is
   the natural completion of the refinement/composition framework that classical
   mechanics already uses. Noncommutative geometry (NCG) makes this explicit:
   the same algebraic structure that unifies secants (finite differences) and
   tangents (derivatives) in Connes' framework also unifies classical and quantum
   composition laws.

3. **Renormalization is the next inevitable layer.** When refinement limits
   diverge — as they must when probes become singular or dimensions exceed
   critical thresholds — the control mechanism is parameter flow
   (renormalization group). This is not an ad hoc fix for infinities but the
   natural extension of limit-control theory to settings where the naive limit
   does not converge. Field theory emerges as the regime where both quantum
   composition (stage 2) and divergent-limit control (stage 3) operate
   simultaneously.

In short: the project thesis is that the chain
**calculus → variational principles → path integral → renormalization**
is a single logical progression, each stage forced by taking the previous
one's limits seriously. The satellite papers provide concrete worked examples
at each stage; the cornerstone paper tells the story as a whole.

## Open Questions (prioritized)

### 1. Does half-density normalization select d=4?
The conformal-class computation in the half-density QFT paper shows a term
D(4-D)(∂σ)² that cancels at D=4. Is this a genuine dimension-selection
mechanism, or a conformal-class artifact? What happens for general metrics?
**Status**: S204 derived V(p) = (1/6)R from normal-coordinate expansion
(dimension-independent). This matches conformal coupling ξ_conf = (D−2)/(4(D−1))
only at D=4. Extends HD-D1.3 beyond the conformal class. Ready for C-cycle
promotion as Remark HD-D1.3b.

**Sub-question 1a (Lp vs ℏ).** If gravity is forced to exist (as part of the
RCP chain), then G and c are fundamental constants. In D=4, half-density
normalization requires an area scale — the Planck area Lp². Then ℏ = Lp²c³/G
is *derived*, not fundamental. Exercise: rewrite the Feynman path integral as
exp(iS·G/(Lp²c³)), making the action measured in gravitational-area units.
Which is the more fundamental input: the action quantum ℏ, or the
geometric area Lp²? The half-density program suggests the latter.

### 2. What is the minimal axiom set for RCP?
Can the Refinement Compatibility Principle be stated as a small set of
commuting-diagram axioms that *derive* quantum mechanics (path integral,
deformation quantization) as consequences? The main paper has the narrative
but not the formal axioms.
**Status**: conceptual (main paper Section 10). Needs formalization.

### 3. Does the contact-expansion universality produce new constraints?
The fermionic paper shows that different UV completions give the same contact
data C₀. Does this universality, combined with RCP, constrain the space of
consistent low-energy theories beyond what standard EFT already says?
**Status**: open. The fermionic paper states the universality but doesn't
extract novel constraints.

### 4. Is there a non-perturbative analog of the contact expansion?
The contact expansion C₀ + C₂q² + ... is perturbative in q/M. Resurgence
(uncuttable paper Remark 2.8) suggests that the non-perturbative content
(bound states, instantons) should be recoverable from the perturbative
coefficients. Is there a concrete worked example connecting the two?
**Status**: the uncuttable paper discusses resurgence abstractly. Needs a
concrete model computation.

### 5. What is the "uncuttable" content of anomalies?
Anomalies are topological constraints on the refinement limit (uncuttable
Remark 4.5). How does the RCP framing add to the standard anomaly-matching
story? Is there a refinement-compatibility characterization that's cleaner
than the standard one?
**Status**: open. The anomaly matching is stated but not reframed via RCP.

## Satellite Paper Status and Aims

### Compiled page counts (elsarticle 3p twocolumn = PLB format)
Run `scripts/count-pages.sh` to recompute. Last run: 2026-02-13.

### Within PLB 6pp limit — room for targeted expansion
- **Half-density QFT** (4pp compiled, 209 lines): aim = one more worked
  example (heat kernel as bi-half-density). Then stop.
- **Delta objects** (4pp compiled, 178 lines): aim = connect more explicitly
  to self-adjoint extensions. Room for ~2 remarks.
- **Dirac probes** (4pp compiled, 196 lines): aim = sharpen weak
  Euler-Lagrange + mollifier theorem. Room for ~2 remarks.
- **Relativistic orbits** (4pp compiled, 218 lines): aim = one more physical
  example or bound-orbit completion. Then stop.

### Over PLB 6pp limit — trim references or reclassify
- **Action-angle** (13pp compiled, 240 lines, 40 refs): the 40 full-entry
  references consume ~6 pages alone. Compact to BibTeX numbered style to
  bring to ~7pp, or accept as PRD-length.
- **Fermionic** (13pp compiled, 244 lines, 40 refs): same reference problem.
  Compact refs first; if still >6pp after, reclassify.
- **Uncuttable** (13pp compiled, 240 lines, 40 refs): same.
- **RG fundamental** (9pp compiled, 596 lines, 8 refs): PRD-length paper.
  Accept longer format or split.
- **Planck area** (14pp compiled, 730 lines, 9 refs): PRD-length paper.
  Accept longer format or split.

### Main paper (cornerstone)
- 23pp compiled (1486 lines): Physics Reports scale. The integration target.
- **Aim**: tell a coherent story connecting all satellites via RCP.
- **Open work**: polish, cross-reference network, possibly a concluding
  section that addresses the open questions above.

## Lifecycle Rule
Every satellite paper must end in one of two states:
1. **Publication track** (P cycle) — compiled, submitted, done.
2. **Discarded** (`git rm -r`) — content salvaged to notebooks if valuable,
   then deleted. No ceremony. The discard protocol in `notebooks/README.md`
   applies.

No paper should linger indefinitely in draft. If a paper has been at the page
limit for multiple sessions without moving to P-cycle, evaluate whether to
publish or discard.

## Session Priority Rule
Open questions come first. If a session can make progress on an open question,
do that. If not, targeted expansion of below-limit satellites. Never expand
a paper that's already at the page limit.
