# S258 Execution: Bertrand's Theorem and SR Precession

**Date:** 2026-02-13
**Paper:** `papers/relativistic-central-orbits/main.md`

---

## 1. Conventions and Setup

The paper uses the attractive central force convention F(r) = K/r^q with K > 0.
For the Bertrand pair:
- **Inverse-square (Kepler/Coulomb):** F = K/r^2, i.e. q = 2. Potential
  U(r) = -K/r (bound states exist for E < 0).
- **Isotropic oscillator (Hooke):** F = kr (force *increases* with r, directed
  toward center). This corresponds to q = -1 in the paper's convention:
  F = K r = K / r^{-1}. Potential V(r) = kr^2/2.

**Important notational finding:** Example 5.2b (line 257) labels q = 1 as
"Hooke / isotropic oscillator." This is **incorrect**: F = K/r is an
inverse-linear force, not a Hooke (linear restoring) force. The Hooke force
F = kr corresponds to q = -1. The stability analysis at q = 1 is mathematically
correct (1 + gamma^2 > 0 is indeed always true), but the physical label should
read "inverse-linear" or simply omit the Hooke tag. This mislabeling should be
corrected in a future C cycle.

---

## 2. q = 2 (Inverse-Square): SR Breaks Bertrand Closure

### 2.1 The argument

From Remark 3.2, the SR orbit equation for F = K/r^2 is:

   d^2 u / d phi^2 + omega^2 u = (mK / L^2) omega^2,
   omega^2 := 1 - K^2 / (c^2 L^2).

The general solution is a precessing conic:

   u(phi) = mK/L^2 + A cos(omega phi + phi_0).

The orbit closes if and only if the apsidal angle 2pi/omega is a rational
multiple of 2pi, equivalently, if and only if omega is rational.

Now omega = sqrt(1 - K^2/(c^2 L^2)). Since L can take any value in (K/c, +inf)
(the bound-orbit existence condition), omega ranges continuously over (0, 1).
For a fixed K, as L varies:

   omega(L) = sqrt(1 - K^2 / (c^2 L^2)).

This is a smooth, monotonically increasing function of L mapping (K/c, +inf)
onto (0, 1). The set of L-values giving rational omega has measure zero (the
rationals are countable, and the preimage of each rational under a smooth
monotone map is a single point). Therefore:

**For generic (Lebesgue-typical) values of L, omega is irrational and the orbit
does not close.**

The orbit is "generically open" — it densely fills an annular region between
perihelion and aphelion. Closure occurs only for a measure-zero set of
finely-tuned angular momenta.

### 2.2 Quantitative example

For a mildly relativistic orbit with v_circ/c = 0.1, one has K/L = 0.1c and
omega = sqrt(1 - 0.01) = sqrt(0.99) approx 0.99499. This is irrational
(sqrt(0.99) is irrational since 0.99 is not a perfect square of a rational).
The orbit does not close.

Even for the "nice" case v_circ/c = 1/sqrt(2), giving omega = 1/sqrt(2),
the orbit has apsidal angle 2pi sqrt(2) — again irrational.

### 2.3 Comparison with GR

In GR (Schwarzschild), the orbit equation is d^2u/dphi^2 + u = mK/L^2 +
3Mu^2, which is *nonlinear*. The nonlinearity means even the concept of a
single "omega" is an approximation (valid only near circular orbits). In SR,
the linearity of the Binet equation makes omega exact and global: every bound
SR orbit has the same omega (for fixed L), regardless of eccentricity. This is
a simplification not shared by GR.

---

## 3. q = -1 (Hooke/Isotropic Oscillator): SR Also Breaks Closure

### 3.1 Newtonian baseline

For V(r) = kr^2/2, the Newtonian orbit is an ellipse centered at the force
center (not at a focus). The apsidal angle is exactly pi/2 — the particle
passes through perihelion and aphelion twice per orbit, and the orbit closes
after angle 2pi. This is one half of Bertrand's theorem.

### 3.2 SR modification: the apsidal angle becomes energy-dependent

In SR, consider a particle of rest mass m in the potential V(r) = kr^2/2.
The conserved relativistic energy is E = gamma mc^2 + kr^2/2. The conserved
angular momentum is L = gamma m r^2 dot{phi}.

For the radial motion, the effective 1D energy equation is:

   (dr/dt)^2 = c^2 [1 - (m^2 c^4 + L^2 c^2/r^2) / (E - kr^2/2)^2].

This is NOT a simple harmonic equation in any substitution.

**Key structural difference from q=2:** For q=2, the SR Binet equation is
linear in u = 1/r, with a constant omega. For q=-1 (Hooke), no substitution
linearizes the orbit equation. The effective radial "frequency" depends on
the orbit's energy and angular momentum in a way that does not factor into a
single constant omega.

### 3.3 Perturbative analysis near circular orbits

For a circular orbit at radius r_0 under F = kr, the circular-orbit condition
gives:

   k r_0 = gamma m v^2 / r_0 = gamma m r_0 dot{phi}^2

so k = gamma m dot{phi}^2, i.e. the angular frequency satisfies
omega_phi^2 = k / (gamma m).

For small radial perturbations delta r about r_0, the radial oscillation
frequency omega_r is determined by W_L''(r_0). Using the paper's effective
potential W_L(r) = sqrt(m^2 c^4 + L^2 c^2/r^2) + kr^2/2, one needs:

   W_L''(r_0) = (L^2 / (m r_0^4 gamma^3)) [1 + (2 - q) gamma^2] + k

where the first term is the "centrifugal" contribution (from the paper's
stability formula with q -> -1, but note the force convention differs for
the potential term). The key point is that the ratio omega_r / omega_phi
depends on gamma (and hence on the orbital speed / energy).

In the Newtonian limit (gamma -> 1): omega_r / omega_phi = 2, giving the
standard apsidal angle pi/(omega_r/omega_phi) = pi/2. The orbit closes.

In SR (gamma > 1): the gamma-dependent corrections shift omega_r/omega_phi
away from exactly 2. Since gamma depends continuously on the orbital energy,
the ratio omega_r/omega_phi is generically irrational.

### 3.4 Literature confirmation

**Kumar and Bhattacharya (2011)** [arXiv:1103.3338] explicitly study the
relativistic generalization of Bertrand's theorem and find: "the inverse
square law passes the relativistic test but the kind of force required for
simple harmonic motion does not. Special relativistic effects do not allow
stable, circular orbits in presence of a force which is proportional to the
negative of the displacement of the particle from the potential center."

Note: This result appears stronger than mere loss of orbit closure — they
claim instability. However, this likely reflects a different formulation of
"relativistic" (e.g., retardation effects, or a specific relativistic
Hamiltonian that is not the simple "SR particle in external potential" model
used in our paper). The instability claim needs careful assessment; it may
apply to a different model than ours.

**Homorodean (2013)** [TJMM] extends Bertrand's theorem to relativistic
classical mechanics and finds "the non-existence of the harmonic oscillator
potential as a solution in the stability equation for closed orbits."

### 3.5 Summary for Hooke

SR breaks the Bertrand closure property for the Hooke force: the apsidal angle
becomes energy-dependent and is generically irrational. The mechanism differs
from q=2 (where a single exact omega exists but is generically irrational):
for q=-1, the orbit equation is intrinsically nonlinear and there is no
single "omega" — the apsidal angle depends on both L and E independently.

---

## 4. The Structural Point: SR Eliminates Both Bertrand Potentials

Bertrand's theorem is a theorem of Newtonian mechanics. It states that among
all power-law central forces, exactly two produce closed orbits for ALL bound
initial conditions: the inverse-square and the Hooke force.

Special relativity breaks this for both:
- **q=2:** The orbit equation has omega = sqrt(1 - K^2/(c^2 L^2)) < 1, which
  is generically irrational. Orbits are generically open (precessing ellipses).
- **q=-1:** The apsidal angle becomes energy-dependent (no single omega), and
  is generically irrational. Orbits are generically open.

This is a clean "refinement witness": the passage from Newtonian to SR
mechanics narrows the class of closed orbits from "two infinite families" to
"measure-zero subsets of those families." No central-force law produces all-
initial-conditions-closed orbits in SR.

The asymmetry is notable: for q=2, there is still a *linear* orbit equation
(just with shifted omega), while for q=-1 the orbit equation becomes
genuinely nonlinear. This reflects the dimensional special status of q=2
noted in Remark 3.1.

---

## 5. Draft Remark for the Paper

### Remark 3.2a (SR and Bertrand's theorem)

**Draft text (3 sentences):**

"Bertrand's theorem asserts that in Newtonian mechanics, only the
inverse-square (q=2) and Hooke (F proportional to r) forces produce closed
orbits for all bound initial conditions. SR eliminates both: for q=2, the
precession frequency omega = sqrt(1 - K^2/(c^2 L^2)) is generically irrational
(since it depends continuously on L), so the orbit is generically open; for
the Hooke force, the apsidal angle acquires an energy-dependent relativistic
correction and is likewise generically irrational. Thus the passage from
Newtonian to SR mechanics reduces the class of all-conditions-closed orbits
from two infinite families to measure-zero subsets — a structural narrowing
consistent with the refinement-witness viewpoint."

---

## 6. Side Finding: Mislabeling in Example 5.2b

Example 5.2b (line 257) labels q=1 as "Hooke / isotropic oscillator." In the
paper's convention F(r) = K/r^q:
- q = 1 gives F = K/r (inverse-linear force)
- q = -1 gives F = K r (Hooke / linear restoring force)

These are different force laws. The stability statement at q=1 is correct
(1 + gamma^2 > 0 always holds), but the label "Hooke / isotropic oscillator"
is wrong. The Hooke case would be q = -1 in this convention.

**Recommendation:** A corrective C cycle should either:
(a) change the label to "inverse-linear" and add a separate q = -1 line for
    the true Hooke case, or
(b) note that the Hooke force is outside the F = K/r^q parametrization (since
    it has the *opposite* r-dependence) and treat it separately.

---

## 7. Assessment: Is This Worth Promoting?

**Yes, with caveats.**

Strengths:
- The q=2 argument is clean and follows directly from Remark 3.2's omega.
- The structural point (SR kills both Bertrand potentials) is a concise insight
  that enriches the paper's "refinement-witness" theme.
- The remark adds no new mathematics — it is a 3-sentence observation connecting
  existing content to a classical theorem.

Caveats:
- The Hooke case is less clean because the paper does not derive the SR orbit
  equation for q=-1. The remark would need to either cite literature or be
  restricted to the q=2 statement.
- The mislabeling in Example 5.2b should be fixed before or simultaneously with
  any Bertrand remark, to avoid confusion.

**Recommended scope for the remark:** Focus on q=2 (where the argument is
self-contained from Remark 3.2) and mention the Hooke case briefly with a
literature pointer, rather than attempting a full derivation.
