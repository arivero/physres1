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

---

## Explicit loop-level computation (2026-02-20, Computationalist)
Source: blackboards/6.md, Task #4.

### Setup: Dispersive representation
- Im Pi(s) = (alpha/3)(1 + 2m^2/s) sqrt(1 - 4m^2/s)  for s > 4m^2
- Dispersive integral: Pi(q^2) = (alpha/3pi) q^2 z g(z),  z = q^2/(4m^2)
- Closed form: g(z) = integral_0^1 dw (1 + w/2) sqrt(1-w) / (1-wz)  for |z|<1

### Taylor coefficients (SymPy verified)
g(z) = sum_{n>=0} I_n z^n where:

I_n = B(n+1, 3/2) + (1/2) B(n+2, 3/2)  [B = Beta function; exact rationals for all n]

Exact values:
- I_0 = 4/5
- I_1 = 12/35
- I_2 = 64/315
- I_3 = 32/231
- I_4 = 512/5005

Decay rate: I_n ~ n^{-2} (algebraic, NOT factorial).

### Branch cut structure (Sokhotski-Plemelj)
Branch cut at z=1 (q^2 = 4m^2). Square-root onset:
  Im g(z+i0) = (pi/z)(1 + 1/2z) sqrt((z-1)/z)  for z > 1
  Im g -> O(sqrt(z-1)) at threshold.

### Pade pole convergence (numpy verified)
[p/q] Pade of g(z); smallest real positive pole:

| Pade   | smallest pole | distance from z=1 |
|--------|---------------|-------------------|
| [1/1]  | 1.6875        | 0.6875            |
| [2/2]  | 1.2659        | 0.2659            |
| [3/3]  | 1.1454        | 0.1454            |
| [4/4]  | 1.0925        | 0.0925            |
| [5/5]  | 1.0643        | 0.0643            |

Convergence is logarithmically slow (Montessus de Ballore: poles accumulate on cut).

### Key structural results

**R1** (Borel-Pade inapplicability).
The momentum-expansion Taylor series g(z) = sum I_n z^n has algebraic
coefficients I_n ~ n^{-2}. Borel-Pade applies to factorial-growth series
(perturbative alpha expansion, renormalons). It is NOT the correct tool
for the momentum expansion.

**R2** (Correct loop-level analogue).
The correct loop-level counterpart of "tree-level Pade recovers the Yukawa
pole" is: the sequence {I_n}_{n>=0} uniquely determines the spectral measure
rho(w) = (1+w/2) sqrt(1-w) dw on [0,1], which in turn determines g(z) 
completely (including Im g above threshold). This is a moment problem.

**R3** (Structural contrast: pole vs cut).
- Yukawa: simple pole -> [0/1] Pade recovers EXACTLY from (C_0, C_2).
- Vac. pol: branch cut (sqrt) -> Pade ACCUMULATION (not exact recovery).
- The distinction is topological: simple pole vs. branch cut.
- Pade correctly DETECTS the threshold (nearest pole -> z=1) but cannot
  reproduce Im g with finite-N Pade.

**R4** (Two-level structure of Borel-Pade in QED).
The perturbative series in alpha for any fixed q^2 (renormalon series)
IS factorial and Borel-Pade IS the right resummation method there.
That is a DIFFERENT expansion from the momentum Taylor series.

### Status update: Question 4(a)
The explicit loop-level Pade computation is now done. The pair-production
threshold at q^2=4m^2 (z=1) IS detected by Pade accumulation. The method
is Pade (not Borel-Pade) for the momentum series. Borel-Pade applies at
the perturbative-in-alpha level (not computed here; requires renormalon analysis).

Question 4(a): RESOLVED (Pade accumulation, not Borel-Pade).
Question 4(b) (Efimov): still open.
