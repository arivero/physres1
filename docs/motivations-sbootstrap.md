# Research Motivations: The sBootstrap and SO(32) Scalars

This file lists what the project is trying to achieve. Read it at the start of
every session to orient work toward genuine research goals.

## Core Thesis

The scalar partners of a supersymmetric Standard Model need not be new
elementary particles. They can be **composites** — diquarks and mesons —
built from the very fermions they are supposed to partner. This
self-referential identification (the "sBootstrap") has a uniqueness theorem:
requiring the composite spectrum to match the SUSY scalar count forces
exactly $N = 3$ generations, separates five light quarks from one heavy
non-participant (the top), and unexpectedly recovers the group SO(32) as the
colour-flavour unification group.

Supersymmetry is not broken. It is **compositionally realised**: the algebra
closes, but the scalars are bound states rather than elementary fields.

---

## The Uniqueness Result

### Postulates

Divide quarks into **turtles** (which bind pairwise into scalars) and
**elephants** (which do not). Assume $N$ generations, $k_u$ up-type turtles,
$k_d$ down-type turtles. Require that each scalar type has exactly $2N$
members (the SUSY count). This gives four equations:

$$2N = k_u k_d \qquad \text{(squarks up)}$$
$$2N = k_d(k_d+1)/2 \qquad \text{(squarks down)}$$
$$2N = k_u k_d \qquad \text{(charged sleptons)}$$
$$4N = k_u^2 + k_d^2 - 1 \qquad \text{(neutral sleptons)}$$

### Unique solution

$N = 3$, $k_u = 2$, $k_d = 3$. Five turtles, one elephant.

This is a **theorem**, not a fit. There is no continuous parameter to adjust.
The number of generations is forced by the internal consistency of the
composite interpretation.

### The colour recursion

The bootstrap closes because $\bar{3} \times \bar{3} = 3 + 6$ in SU(3) — the
antisymmetric product of two antifundamentals contains the fundamental.
This is **unique to SU(3)**: for general SU($N$), the antisymmetric product
$\wedge^2 \bar{N}$ has dimension $N(N-1)/2$, which equals $N$ only when $N=3$.
The compositeness postulate therefore implicitly selects colour SU(3).

---

## The Ascent to SO(32)

The five turtles organise into an SU(5) flavour group. The scalars fill
the **15** and **24** representations. Unifying colour and flavour gives
SU(15). From SU(15), the natural orthogonal completion is SO(30), which
uplifts to **SO(32)** when SU(3)$_c$ is extended to U(3) (adding the
baryonic U(1)).

The adjoint **496** of SO(32) decomposes as:

$$496 = (\mathbf{1, 24, 1^c}) + [\mathbf{1, 15, \bar{3}^c}] +
[\mathbf{1, \bar{15}, 3^c}] + \ldots$$

with two hypercharges combining via $Q = \frac{1}{5}(\frac{2}{3}Y_1 - Y_2)$
to reproduce Standard Model electric charges. The bold components give
exactly the scalar content of a three-generation MSSM.

**This was not the starting point.** The postulates are purely combinatorial.
SO(30) emerged; SO(32) was recognised afterward as the anomaly-free gauge
group of Type I string theory (Green-Schwarz, 1984). The connection to
string theory is an output, not an input.

---

## The Mass Mechanism (Koide, 1982)

Koide's formula is not numerology. It is a **compositeness mass formula**:

$$E(q_a, q_b) = (q_a + q_b)^2 K_\Omega$$

where $q_a, q_b$ are abelian charges of the preon constituents and $K_\Omega$
is a universal scale factor. With a trace condition
$z_0^2 = (z_1^2 + z_2^2 + z_3^2)/3$ on SU(3) flavour charges, this produces
lepton masses $(m_e, m_\mu, m_\tau)$ from two free parameters $(\alpha, k)$,
with the prediction $m_\tau = 1776.97$ MeV confirmed to better than one sigma.

Within the sBootstrap, the same formula applied to turtle composites produces
**paired equal-mass scalars** (as required by unbroken SUSY) at $\alpha = 0$.
The scale factor $kz_0^2 = 313.85$ MeV is the constituent quark mass familiar
from QCD phenomenology.

### Rehabilitation

Koide's result has been discussed as a numerical coincidence for 40 years,
partly because it was popularised without its preon-model context (Rivero
and Gsponer, "The strange formula of Dr. Koide," hep-ph/0505220, 26
citations — the most-cited paper in this program, and the one most
responsible for the "numerology" label). The sBootstrap provides the
composite framework that Koide's formula was always embedded in.

Mechanistic proposals for Koide's formula exist:
- **Sumino** (arXiv:0812.2103, 0903.3640): U(3) family gauge symmetry
  cancels QED radiative corrections, explaining why the formula is
  radiatively stable.
- **Yukawaon models** (arXiv:2007.05878): SU(3) flavour-nonet scalar
  fields whose VEV structure produces the Koide relation.

Neither has been connected to the sBootstrap. Doing so would provide
a dynamical mechanism for the mass formula within the composite framework.

---

## Predictions

### The ±4/3 scalar quarks

The SU(5) 15 contains a $(1,3)_{-6}$ component that gives three scalar quarks
of charge $+4/3$ per generation (and their antiparticles at $-4/3$). These
are a **necessary cost** of the group theory — they complete the flavour
multiplet.

Current LHC bounds are weak. Blum, Efrati, Frugiuele, Nir (arXiv:1610.06582,
JHEP 2017) studied exotic colored scalars systematically: for SU(2)$_W$
non-singlet color-triplet scalars with $|Q| = 4/3$, masses as low as
250-450 GeV remain compatible with existing searches. The S3 scalar
leptoquark triplet (in SU(5) GUTs) contains a charge-$4/3$ member, but
no dedicated search for this specific quantum number exists.

This is a concrete, testable prediction.

### Three generations (retrodiction)

The N=3 result is a retrodiction, not a prediction. But it was derived
without assuming the Standard Model — only the compositeness postulate
and SUSY counting. If any future experiment found evidence of a fourth
generation, the sBootstrap would be falsified.

---

## Open Questions (prioritised)

### 1. Type I brane embedding

**The question:** Does there exist a Type I string compactification where
the open string endpoint combinatorics reproduces the sBootstrap counting?

The SO(32) gauge group of Type I string theory arises from 16 D9-branes
(and their orientifold images). The Chan-Paton labels are in the
fundamental of SO(32). The sBootstrap's "turtle pairing" is equivalent to
pairing two open string endpoints. Can a specific brane configuration
(intersecting branes, branes at singularities, magnetised branes)
produce the decomposition SO(32) → SU(15) × U(1) → SU(5) × SU(3)?

**Relevant literature:**
- Ibañez, Marchesano, Rabadan (hep-th/0105155): SM from intersecting branes
- Aldazabal, Franco, Ibañez, Rabadan, Uranga (hep-th/0011073): chiral
  compactifications from intersecting branes
- Cvetic, Shiu, Uranga (hep-th/0102059): first SUSY three-family SM from
  Type IIA D6-branes
- Blumenhagen, Cvetic, Langacker, Shiu (hep-th/0502005): review of
  intersecting D-brane models
- Blumenhagen, Gorlich, Kors, Lust: Type I magnetic flux compactifications
  (T-dual to intersecting branes)

These papers produce $SU(3) \times SU(2) \times U(1)$ directly from brane
configurations. The novelty would be producing the *intermediate* SU(15)
or SU(5) flavour, and showing that the adjoint content matches the
sBootstrap scalar spectrum.

**Why it matters:** A brane embedding would promote the sBootstrap from a
combinatorial observation to a string theory result. It would also provide
the **binding mechanism** (open string dynamics) that the postulates alone
lack.

**Publishability:** High. The intersecting brane model community actively
searches for new SM-reproducing configurations. A configuration that also
reproduces the scalar sector would be a publishable result in JHEP or
Nucl. Phys. B, regardless of whether the author believes in the sBootstrap.

**Status:** Not started.

### 2. Dynamical binding mechanism

**The question:** What dynamics produces the turtle composites at the right
mass scale?

QCD can't do it — the composites need to form at a scale where SUSY
mass pairing is approximate, not at $\Lambda_{QCD}$. The top quark must
be excluded by dynamics, not by fiat.

**Candidates:**
- Extended technicolor (ETC) or tumbling gauge theories
- A new confining gauge interaction at the TeV scale
- Open string dynamics in Type I (see Question 1)

The Armoni-Shifman-Veneziano result (hep-th/0307097) is relevant: in
one-flavour QCD with quarks in the antisymmetric representation (which
coincides with the fundamental for SU(3)), the bosonic sector is
nonperturbatively equivalent to N=1 SYM at large N. This "planar
orientifold equivalence" gives SUSY relics — condensates, vacuum
structure — in ordinary QCD. Can this equivalence be extended to the
sBootstrap's composite spectrum?

**Why it matters:** Without a mechanism, the sBootstrap is a pattern.
With one, it becomes a theory.

**Publishability:** A lattice or analytic calculation showing that diquark
composites with the right quantum numbers form in a specific strongly
coupled theory would be publishable independently of the sBootstrap.

**Status:** Not started.

### 3. The double uniqueness of SU(3)

**The question:** Does the bootstrap closure $\bar{N} \times \bar{N} \supset N$
(unique to SU(3)) provide a new selection principle for the gauge group?
And is it connected to the anomaly structure?

The Standard Model's colour group is usually taken as given. Asymptotic
freedom constrains $N$ but doesn't fix it. Anomaly cancellation constrains
representations but works for any $N$. The bootstrap closure
$\wedge^2 \bar{N} = N$ is a genuinely new criterion.

**The anomaly rigidity connection.** SU(3) is special in a second,
related way. For SU($N$) with $N \geq 3$, the cubic anomaly coefficient
of the fundamental is $A(\mathbf{N}) = 1$. To cancel it, you need a
representation with $A = -1$. The antisymmetric representation
$\wedge^2 \mathbf{N}$ has $A = N - 4$:

- SU(5): $A(\mathbf{10}) = 1$ — can cancel a $\bar{\mathbf{5}}$
  without a Dirac partner (this is the Georgi-Glashow model)
- SU(4): $A(\mathbf{6}) = 0$ — anomaly-neutral, can't help
- **SU(3): $\wedge^2 \mathbf{3} = \bar{\mathbf{3}}$ itself** — the
  antisymmetric IS the anti-fundamental. No other representation
  of SU(3) has $A = -1$.

Therefore: in SU(3), the **only** way to cancel the cubic anomaly of a
fundamental is with an anti-fundamental — a Dirac partner. There are
no exceptions, no exotic representations that could substitute. Every
coloured fermion must be Dirac.

**These two uniquenesses are the same group-theoretic fact.** The bootstrap
closure ($\bar{3} \times \bar{3} \supset 3$) and the anomaly rigidity
($\wedge^2 \mathbf{3} = \bar{\mathbf{3}}$) are two faces of one property.
SU(3) is the unique simple Lie group where both hold simultaneously.

**Consequence for the ±4/3 scalars.** The anomaly rigidity means the
±4/3 fermion partners cannot exist as Weyl fermions coupled to SU(3) —
there is no anomaly-cancelling arrangement. Combined with the SUSY
superfield structure (which forbids gauge-coupling a scalar without its
fermion partner), this gives a precise mechanism for the ±4/3 scalars
to decouple: SU(3) and U(1) are structurally unable to couple to
non-Dirac matter, and the ±4/3 states' would-be partners can only be
non-Dirac (see Question 7 below).

**Connection to string theory:** In the large-$N$ ('t Hooft) limit, strings
are classical and $N$ is taken to infinity. The sBootstrap selects $N=3$,
where strings are maximally quantum ($1/N$ corrections are $O(1/3)$).
This is a tension — or a selection principle. The correct string-theoretic
setting is Type I (fixed SO(32), no large-$N$ limit), not 't Hooft.
The colour SU(3) emerges from the brane decomposition, possibly through
"branes ending on branes" (Hanany-Witten type constructions).

**Publishability:** A clean paper proving that bootstrap closure and
anomaly rigidity uniquely select SU(3), with consequences for gauge
group selection, would be publishable in J. Math. Phys., PLB, or
any journal that discusses why the Standard Model has its specific
gauge group. This result is **independent of the sBootstrap** and
stands on its own.

**Key references:**
- Peskin-Schroeder, Section 19.4 (anomaly coefficients for SU(N) representations)
- Weinberg, QFT Vol. 2, Section 22.4
- Bertlmann, *Anomalies in Quantum Field Theory* (Oxford, 1996)
- Vafa-Witten, Nucl. Phys. B 234 (1984) 173 (vector-like gauge theories)
- Witten, Phys. Lett. B 117 (1982) 324 (SU(2) global anomaly)

**Status:** The result is implicit in the sBootstrap equations and in
standard anomaly theory. Making the connection explicit and proving
it cleanly is a bounded task.

### 4. Koide mechanism from sBootstrap dynamics

**The question:** Can the Koide mass formula be derived from the
compositeness postulate plus a specific binding dynamics, rather than
imported as an independent result?

**Approach:** Connect Sumino's family gauge symmetry (U(3) protection
of the Koide relation against radiative corrections) to the SU(5) flavour
group of the sBootstrap. If the flavour group contains Sumino's U(3)
as a subgroup, the radiative stability is automatic.

**Why it matters:** This would unify two results currently treated as
independent (sBootstrap counting + Koide mass formula) into a single
framework.

**Publishability:** Moderate. The Koide formula community is small but
dedicated. A paper connecting it to a compositeness framework would be
read by both the Koide and the composite Higgs communities.

**Status:** Not started.

### 5. Connection to hadronic supersymmetry (Brodsky-de Teramond)

**The question:** Is the sBootstrap's fermion-scalar SUSY related to the
Brodsky-de Teramond meson-baryon SUSY?

The light-front holographic QCD program (arXiv:1501.04790, 1606.04638,
1612.02370) derives an effective supersymmetry between mesons and baryons
from the superconformal algebra (de Alfaro-Fubini-Furlan). This is an
active, well-cited program. Their supercharges connect mesons and baryons
with the same Regge slope.

The sBootstrap identifies scalars (diquarks, mesons) as SUSY partners of
fermions (quarks, leptons). These are different SUSY identifications —
Brodsky-de Teramond relate mesons to baryons, the sBootstrap relates
mesons/diquarks to quarks/leptons. But both invoke hadronic supersymmetry,
and both trace their lineage to Miyazawa (1968).

**Why it matters:** The Brodsky-de Teramond program is the most active
research community working on hadronic SUSY. Connecting the sBootstrap
to their framework would give it an institutional home and an audience.

**Publishability:** A paper comparing the two SUSY identifications
(meson-baryon vs meson-quark) within a common framework would be
publishable in PLB or PRD.

**Status:** Not started. Requires careful comparison of the two
supercharge constructions.

### 6. ±4/3 phenomenology

**The question:** What are the collider signatures of charge-$\pm 4/3$
colour-triplet scalars?

**Approach:** Use the sBootstrap quantum numbers (colour triplet, SU(2)
singlet or triplet, specific hypercharge) to compute pair-production cross
sections and decay modes at $\sqrt{s} = 13.6$ TeV. Compare with existing
leptoquark searches. Identify the gap between existing bounds and the
sBootstrap prediction.

**Why it matters:** This is the only direction that produces an
experimentally testable result in the near term.

**Publishability:** High. Phenomenology papers on exotic colored scalars
are routinely published (cf. Blum et al., JHEP 2017; Dorsner et al.,
arXiv:1706.07779). The sBootstrap provides a specific motivation
(generation uniqueness) that distinguishes it from generic leptoquark
searches.

**Status:** Not started.

### 7. Orphan scalars and the Dirac-ness constraint

**The concept:** A scalar particle that exists in the group-theoretic
decomposition but has no fermion superpartner — because the would-be
partner is forbidden by anomaly cancellation. This concept does not
appear in the standard SUSY corpus, which assumes complete pairing
(exact SUSY), mass-split pairing (soft breaking), or fermion-without-scalar
(non-linear realisation / nilpotent superfields). The reverse —
scalar-without-fermion — is unexplored.

**The argument, specific to SU(3):**

1. The ±4/3 scalars complete the SU(5) **15** in the SO(32) decomposition.
   There are 3 per generation (from the $(1,3)_{-6}$ component).
2. If these scalars had fermion superpartners, those fermions would need
   to be Weyl (3 scalars → 3 Weyl fermions, not 6 for Dirac).
3. A Weyl fermion in the fundamental of SU(3) with $Q = +4/3$ creates
   an uncancelled $SU(3)^3$ anomaly. For SU(3) specifically, the
   antisymmetric representation $\wedge^2 \mathbf{3} = \bar{\mathbf{3}}$,
   so no alternative representation can cancel the anomaly — only a
   Dirac partner (anti-fundamental of the same chirality) works.
4. Therefore: the fermion partners are **forbidden by the gauge theory**.
5. In SUSY, the superfield $\Phi = (\phi, \psi, F)$ ties the scalar
   $\phi$ to the fermion $\psi$ via the gauge coupling
   $\int d^4\theta\, \Phi^\dagger e^{2gV} \Phi$. If $\psi$ can't exist
   consistently, the whole superfield is forbidden, and $\phi$ decouples
   from the gauge interaction.

**Empirical support:** Nature provides zero examples of charged Weyl
fermions without Dirac partners. Every electrically charged fermion
observed — all quarks, all charged leptons — has both chiralities
coupled by a Higgs-generated mass term. Only neutrinos (neutral) might
be purely Weyl or Majorana.

**Four possible interpretations:**

(a) **Orphan scalars (novel):** The ±4/3 scalars exist as physical
    states but are gauge-decoupled — present in the algebra but absent
    from interactions. SUSY is compositionally realised for the
    Dirac-compatible sector and structurally pruned for the rest.

(b) **10D pairing:** In the parent SO(32) theory in 10D, the SUSY
    is $\mathcal{N}=1$ (16 supercharges), which is much larger than
    4D $\mathcal{N}=1$. The ±4/3 states may have perfectly good
    Dirac fermion partners in 10D (where spinors have more components).
    The "orphaning" happens only upon compactification to 4D, when extra
    spinor components are projected out. The scalars survive algebraically
    but lose their partners dynamically.

(c) **Dynamical non-formation:** The binding mechanism (whatever produces
    the turtle composites) might simply not produce the ±4/3 states.
    The group theory says they could exist; the dynamics says they don't
    form. The SU(5) **15** is algebraically complete but dynamically pruned.

(d) **They exist and are testable:** The ±4/3 scalars are physical,
    gauge-coupled, and have fermion partners that we haven't identified
    (perhaps from a larger symmetry breaking). This reduces to Question 6.

**Why it matters:** "Orphan scalars" would be a genuinely new concept in
the SUSY literature — a fourth mode of SUSY realisation beyond exact,
softly broken, and non-linearly realised. If properly characterised, it
could generate engagement from the SUSY community: other people could
write papers exploring orphan scalars in different SUSY frameworks.

**Publishability:** High if framed as a general SUSY concept with the
sBootstrap as the motivating example. The anomaly argument (specific
to SU(3)) gives it mathematical teeth.

**Status:** Not started. Requires a careful survey of the SUSY
literature to confirm that this mode is genuinely new.

---

## Publication History and Lessons

### Papers in this program

| arXiv | Title | Year | Citations |
|-------|-------|------|-----------|
| hep-ph/0505220 | The strange formula of Dr. Koide (with Gsponer) | 2005 | 26 |
| hep-ph/0512065 | Supersymmetry with composite bosons | 2005 | 4 |
| 0710.1526 | Third Spectroscopy with a hint of superstrings | 2007 | 0 |
| 0910.4793 | Unbroken supersymmetry without new particles | 2009 | 0 |
| 1111.7230 | A possible origin of the q=4/3 diquark | 2011 | 0 |
| 2407.05397 | An interpretation of scalars in SO(32) (EJPC) | 2024 | 0 |

### The framing problem

The most-cited paper (26 citations) is the one that framed Koide's result
as a "strange formula" — numerology. The papers that present the
compositeness *theory* behind the formula have 0-4 citations. The lesson:
framing determines reception. A result presented as a curiosity will be
received as a curiosity.

### What generates engagement

Results generate follow-up work when they enable other people to write
papers. The sBootstrap needs to produce:
- **Calculable problems** (not just observations): cross sections, lattice
  targets, group-theoretic classifications
- **Connections to active programs** (intersecting brane models,
  holographic QCD, composite Higgs): so that workers in those fields
  can cite it without changing their research program
- **Predictions with error bars** (not just qualitative): specific mass
  ranges, specific decay channels, specific branching ratios

---

## Related Programs

| Program | Overlap | Difference |
|---------|---------|------------|
| Brodsky-de Teramond hadronic SUSY | Both invoke Miyazawa; both find SUSY in hadrons | BdT: meson↔baryon SUSY; sBootstrap: meson/diquark↔quark/lepton SUSY |
| Hill et al. "Scalar democracy" (2019) | Both propose composite scalars from fermion pairs | SD: all pairs, no generation fixing; sBootstrap: turtles only, N=3 forced |
| Intersecting brane models | Both produce SM from string constructions | IBM: engineer SM gauge group; sBootstrap: compositeness postulate selects SO(32) |
| Armoni-Shifman-Veneziano | Both find SUSY relics in non-SUSY QCD | ASV: large-N orientifold equivalence; sBootstrap: finite-N compositeness |
| Composite Higgs (Kaplan, Georgi) | Both have composite scalars | CH: Higgs as pseudo-Goldstone; sBootstrap: all scalars as composites |
| Koide/Yukawaon (Sumino, Lehmann) | Both address lepton mass formula | Koide: isolated formula; sBootstrap: embeds it in SU(5) flavour |

---

## Key References

### sBootstrap papers
1. Rivero. "Supersymmetry with composite bosons." hep-ph/0512065 (2005).
2. Rivero. "Third Spectroscopy with a hint of superstrings." arXiv:0710.1526 (2007).
3. Rivero. "Unbroken supersymmetry without new particles." arXiv:0910.4793 (2009).
4. Rivero. "A possible origin of the q=4/3 diquark." arXiv:1111.7230 (2011).
5. Rivero. "An interpretation of scalars in SO(32)." Eur. Phys. J. C 84, 1058 (2024). arXiv:2407.05397.
6. Rivero, Gsponer. "The strange formula of Dr. Koide." hep-ph/0505220 (2005).

### Group theory
7. Gell-Mann, Ramond, Slansky. "Color Embeddings, Charge Assignments, and Proton Stability in Unified Gauge Theories." Rev. Mod. Phys. 50 (1978) 721.
8. Slansky. "Group Theory for Unified Model Building." Phys. Rept. 79 (1981) 1.

### Mass mechanism
9. Koide. Lett. Nuovo Cim. 34 (1982) 201.
10. Sumino. arXiv:0812.2103 (2008). [Family gauge symmetry protecting Koide formula.]
11. Lehmann et al. arXiv:2007.05878 (2020). [Yukawaon model.]

### Hadronic supersymmetry
12. Miyazawa. "Spinor Currents and Symmetries of Baryons and Mesons." Phys. Rev. 170 (1968) 1586.
13. de Teramond, Dosch, Brodsky. "Baryon spectrum from superconformal quantum mechanics." Phys. Rev. D 91, 045040 (2015). arXiv:1501.04790.
14. Brodsky et al. "Meson/Baryon/Tetraquark supersymmetry." arXiv:1606.04638 (2016).

### Intersecting brane models
15. Ibañez, Marchesano, Rabadan. "Getting just the Standard Model at Intersecting Branes." JHEP 0111:002 (2001). hep-th/0105155.
16. Cvetic, Shiu, Uranga. "Three-Family Supersymmetric Standardlike Models from Intersecting Brane Worlds." PRL 87 (2001) 201801. hep-th/0102059.
17. Blumenhagen, Cvetic, Langacker, Shiu. "Toward Realistic Intersecting D-Brane Models." Ann. Rev. Nucl. Part. Sci. 55 (2005). hep-th/0502005.

### Planar orientifolds
18. Armoni, Shifman, Veneziano. "SUSY Relics in One-Flavor QCD." PRL 91 (2003) 191601. hep-th/0307097.

### Exotic colored scalars
19. Blum, Efrati, Frugiuele, Nir. "Exotic colored scalars at the LHC." JHEP 02 (2017) 104. arXiv:1610.06582.

### Composite Higgs / scalar democracy
20. Hill, Machado, Thomsen, Turner. "Scalar Democracy." PRD 100, 015015 (2019). arXiv:1902.07214.

### SU(15) as GUT
21. Adler. "A New Electroweak and Strong Interaction Unification Scheme." Phys. Lett. B 225 (1989) 143.
22. Frampton, Lee. "SU(15) Grand Unification." PRL 64 (1990) 619.
23. Corianò, Frampton et al. "An SU(15) approach to bifermion classification." Mod. Phys. Lett. A 38 (2023). arXiv:2301.02425.

---

## Session Priority Rule

Open questions come first, in priority order. The brane embedding
(Question 1) is the highest-value target because it simultaneously provides
a mechanism and connects to an active community. The ±4/3 phenomenology
(Question 6) is the most immediately publishable. Never mistake
group-theoretic exploration for physics progress — the hard problems are
dynamical (binding, mass spectrum), not algebraic.
