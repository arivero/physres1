# Non-Perturbative Content of the Contact Expansion
Promoted from: blackboards/6.md (S208)
Date promoted: 2026-02-14

## The question
The contact expansion C_0 + C_2 q^2 + C_4 q^4 + ... is perturbative in
q/M. Can its non-perturbative content (bound states, production
thresholds, instantons) be recovered from the Taylor coefficients?

## Concrete worked example: Pade recovery of Yukawa pole

### Setup
Yukawa exchange: A(q^2) = g^2/(q^2 + M^2). This is the tree-level
mediator-exchange amplitude (fermionic paper Remark 4.6).

### Contact expansion (Taylor at q^2=0)
  A(q^2) = C_0 + C_2 q^2 + C_4 q^4 + ...
where  C_0 = g^2/M^2,  C_2 = -g^2/M^4,  C_4 = g^2/M^6, ...

The Taylor series converges for |q^2| < M^2 (disk of convergence).
The pole at q^2 = -M^2 (on the physical Riemann sheet) is invisible
in any finite truncation.

### Pade recovery
The [0/1] Pade approximant of C_0 + C_2 q^2:
  P[0/1](q^2) = C_0/(1 - C_2 q^2/C_0) = (g^2/M^2)/(1 + q^2/M^2) = A(q^2)

**Exact recovery from just TWO contact coefficients.**

SymPy verification confirms: P[0/1] = g^2/(q^2+M^2) = A(q^2).

### Physical interpretation
- C_0 = g^2/M^2 is the "scattering length" of the mediator exchange.
- C_2/C_0 = -1/M^2 encodes the mediator mass.
- The Pade pole at q^2 = -M^2 is the mediator propagator pole.
- Two low-energy observables (C_0, C_2) determine the UV mass scale M.

This is "non-perturbative" in the sense that the pole is beyond the
radius of convergence of the Taylor series. The Pade extrapolation
is the simplest instance of controlled extrapolation beyond the
perturbative regime (cf. uncuttable paper's counterterm tower theme).

## Loop-level extension: branch cuts and dispersion

### Setup
At one loop, the vacuum polarization Pi(q^2) (fermionic paper section 3.1)
has a branch cut starting at q^2 = 4m^2 (pair production threshold).

### Contact expansion
Below threshold (q^2 < 4m^2), the Taylor expansion converges:
  Pi(q^2)/q^2 = sum a_n (q^2/4m^2)^n

The imaginary part Im Pi(q^2) for q^2 > 4m^2 is the production cross
section (optical theorem, Remark 3.6). This is invisible to any
finite number of Taylor coefficients.

### Recovery methods
1. Dispersion relations (fermionic paper Remark 3.5):
   Pi(q^2) = (q^2/pi) integral from 4m^2 to infinity ds Im Pi(s)/(s(s-q^2))
   The branch cut determines the full function. Conversely,
   the Taylor coefficients determine the moments of Im Pi.

2. Pade accumulation: [N/N] Pade approximants of the Taylor
   series place poles that accumulate on the branch cut as N -> infinity.
   By Montessus de Ballore, the convergence is logarithmic in N.

3. Borel-Pade (uncuttable paper Remark 2.8): if the Taylor
   coefficients grow factorially (a_n ~ n!), the Borel transform
   B(t) = sum (a_n/n!) t^n has finite radius of convergence, and
   Borel-Pade resummation recovers the full function including
   the imaginary part from the Borel singularity.

### Key structural point
The contact expansion DETERMINES the non-perturbative content
(given analyticity and crossing, which are the RCP consistency
conditions in disguise). The reconstruction requires a controlled
extrapolation:
- Pade for poles (tree-level: exact from 2 coefficients)
- Dispersion for cuts (loop-level: moment problem)
- Borel-Pade for divergent series (non-perturbative: resurgence)

Each reconstruction method is an instance of the "refinement requires
control" thesis: the Taylor coefficients are the "local data" and the
reconstruction is the "refinement limit" that accesses global structure.

## Connection to other papers
- Fermionic: section 4 (contact expansion), Remark 3.5 (dispersion),
  Remark 4.6 (universality) -- the tree-level Pade example is the
  explicit content behind "C_0 doesn't determine the UV."
- Uncuttable: Remark 2.8 (Borel resummation), section 2 counterterm
  tower -- Pade/Borel is the next step beyond Taylor.
- Cornerstone: section 8 (RG as refinement) -- the contact-coupling beta
  function is the perturbative avatar of the full non-perturbative
  structure.

## Question 4 status
Partially addressed. The tree-level Pade recovery is a clean worked
example. The loop-level connection (dispersion, Borel-Pade) is
structural but lacks a new explicit calculation. Two concrete follow-
ups remain:
(a) Explicit Borel-Pade resummation of QED vacuum polarization Taylor
    coefficients, recovering Im Pi above threshold.
(b) Connection to the Efimov effect (Remark 5.5): does Pade of the
    2-body contact expansion predict the 3-body limit cycle?
