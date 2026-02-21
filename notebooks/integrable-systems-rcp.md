# Integrable Systems and Refinement Compatibility: Stage 2.5 Exploration

**Date:** 2026-02-21
**Agent:** Student
**Status:** OPEN exploration (Level 2 serendipity)
**Sources:** Les Houches lectures (exact WKB); van Spaendonck-Vonk (Painlevé I + transseries); arXiv:2204.09062; arXiv:1102.3789 (Efimov limit cycles)

---

## Summary

The project's main narrative runs Stage 1 (classical) → Stage 2 (quantum via composition + dimensional analysis forcing d/2) → Stage 3 (QFT/RG). However, there exists a class of **integrable quantum systems** (Painlevé equations, 2D integrable QFTs, algebraic integrable systems, Efimov few-body physics) that achieve nonperturbative resummation via **isomonodromy deformation** rather than RG beta functions. This notebook explores whether these systems constitute a "Stage 2.5" — a regime where composition + integrability together force a Painlevé/isomonodromy structure — and whether they satisfy refinement compatibility.

---

## 1. What is Isomonodromy Deformation?

### 1.1 Definition

Given a linear ODE
$$\frac{d\psi}{dx} = A(x,t) \psi(x)$$
where $A$ depends on a *deformation parameter* $t$, the **monodromy matrix** $M_L(t)$ (encodes how $\psi$ winds around singularities) can remain invariant as $t$ varies:
$$\frac{dM_L}{dt} = 0.$$

The nonlinear equation governing $t$ such that monodromy is conserved is the **Painlevé equation** associated with that ODE.

**Example:** Painlevé I ($P_I$):
$$\frac{d^2u}{dt^2} = 6u^2 + t$$

arises from isomonodromy of the 2nd-order Schrödinger-like ODE
$$-\frac{d^2\psi}{dx^2} + (u(t) + xu)\psi = E(t)\psi$$
with monodromy preserved as $u$ deforms.

### 1.2 Why Integrability?

Isomonodromy is a **conserved structure** — the monodromy data (eigenvalues, multiplicities, Stokes multipliers) are constants of motion. This conservation law makes these systems integrable: there are enough conserved quantities to solve the system exactly (at least in principle).

**Contrast:** Generic QFTs flow via RG (monotone, irreversible). Integrable systems have cyclic flows (limit cycles, like Efimov) or fixed points (critical points where RG flow stops).

---

## 2. Exact WKB and Voros Periods

### 2.1 WKB Asymptotics vs Exact WKB

**Perturbative WKB:**
$$\psi(x) \sim e^{(i/\hbar)S(x)} \sum_{n=0}^\infty \hbar^n a_n(x),$$
where $S(x) = \int_x p(x') dx'$ (classical action). This series has **zero radius of convergence** (asymptotic but not convergent).

**Exact WKB (Voros method):**
Instead of truncating the WKB series, **Borel-resum** it. The Borel transform
$$\hat{S}(t) = \int_0^\infty e^{-t/\hbar} S(s) ds$$
converts the divergent series into an integral representation. Analytic continuation of $\hat{S}(t)$ across **Stokes lines** (loci where two WKB solutions become exponentially close) recovers the true monodromy matrix and Stokes multipliers.

### 2.2 Voros Periods

The monodromy is encoded via **Voros periods** — integrals of the classical action around closed orbits (action variables):
$$I_j = \oint_{C_j} p(x) dx,$$
where $C_j$ are the action contours (classical limit cycle for Schrödinger equation, or integration cycles on the spectral curve for higher-genus systems).

The exponent of the monodromy eigenvalue around a closed orbit is
$$\mu_j = \frac{1}{\pi\hbar} I_j + O(\hbar).$$

**Nonperturbative structure:** The Voros periods are the "hidden data" — they encode the nonperturbative physics that the perturbative WKB expansion misses. When isomonodromy holds, these periods are **conserved quantities** of the dynamics.

---

## 3. Painlevé Equations as Composition at Integrability

### 3.1 Two Candidates for Composition Law

**Hypothesis 1 (QM composition):** In quantum mechanics with a discrete spectrum, the composition law might be $K(t_1 + t_2) = K(t_1) \circ K(t_2)$ (path integral propagator composition).

**Hypothesis 2 (Integrable composition):** In integrable systems, the composition law might be *isomonodromy* — gluing two ODE pieces together such that monodromy data remain invariant.

### 3.2 Sketch: Why Composition Might Force Isomonodromy

**Scenario:** Suppose we have a scattering problem with two sequential interactions:
1. Particle interacts with potential $V_1(x)$ over domain $D_1$.
2. Particle emerges and interacts with potential $V_2(x)$ over domain $D_2$.

The full solution is obtained by **sewing** the two solutions: $\psi_{\mathrm{full}} = \psi_2 \circ \psi_1$.

For this composition to be **valid** (conserve scattering data, S-matrix unitarity), the monodromy of the combined system must relate predictably to the monodromy of the parts.

**Composition constraint:** The effective potential $V_{\mathrm{eff}}(x;t)$ governing the combined system must evolve such that its monodromy matrix is a function of $\psi_1$'s monodromy and $\psi_2$'s monodromy.

**Integrability consequence:** If composition AND scattering unitarity are imposed, then the allowed deformations of $V_{\mathrm{eff}}(t)$ are precisely those for which **monodromy is invariant** — i.e., isomonodromy.

### 3.3 Painlevé as "Forced Completion" at Integrability

Analogy to our main narrative:
- **Stage 2:** Composition + dimensional homogeneity forces d/2 exponent and $\hbar = \kappa$ (quantization scale).
- **Stage 2.5 (conjectural):** Composition + integrability (unitarity + solvability) forces isomonodromy deformation, with Painlevé equations governing the deformation parameter and Voros periods as conserved charges.

---

## 4. Refinement Compatibility Check for Painlevé Systems

### 4.1 RCP Framework Reminder

**RCP (from cornerstone):** Refinement compatibility means that composed predictions must equal single-step predictions:
$$\mathcal{O}(h, \theta) = \mathcal{O}(h', \tau(\theta)) \circ T$$
where $h$ is the partition scale, $\theta$ is the representational freedom, and $T$ is the scale-drift operator.

Three independent channels:
1. **Partition:** splitting interaction into substeps (temporal composition, semigroup)
2. **Representation:** changing quantization scheme (ordering, measure, gauge)
3. **Scale:** integrating out short-distance modes (RG flow, cutoff)

### 4.2 Partition Channel for Painlevé

**Question:** Does a Painlevé system satisfy partition refinement?

**Hypothesis:** Yes, if the Painlevé equation is derived from a scattering/composition problem. Splitting the integration domain $[0, T]$ into $N$ substeps gives
$$\psi(T) = \psi_N \circ \cdots \circ \psi_1(0),$$
where each $\psi_j$ obeys a Painlevé equation **with modified initial conditions** (endpoint of $\psi_{j-1}$ becomes initial condition for $\psi_j$).

**Refinement prediction:** In the limit $N \to \infty$ (step size $\Delta t \to 0$), the monodromy data (Stokes multipliers, Voros periods) should converge to the continuous-time Painlevé solution.

**Status:** Untested. Requires explicit computation for a specific Painlevé (e.g., $P_I$ or anharmonic oscillator Painlevé II).

### 4.3 Representation Channel for Painlevé

**Question:** Do different quantization schemes (e.g., WKB vs exact WKB, Borel resummation vs Padé approximation) satisfy refinement compatibility?

**Hypothesis:** Yes. The exact WKB Borel transform recovers the same monodromy matrix as the isomonodromy ODE, hence different resummation methods (Borel, Padé, transseries sectors) must produce the same Stokes data upon refinement.

**Resurgence connection:** Alien calculus (the rule for composing transseries sectors) IS a refinement-compatible structure — different sector orderings give the same total result when alien derivatives commute correctly.

**Status:** Likely true by construction (resurgence theory is designed to ensure this). Could be made explicit by checking resurgent Lefschetz thimble theory.

### 4.4 Scale Channel for Painlevé

**Question:** As we cut off the spectral problem at different energy scales (UV regularization), how does the Painlevé parameter $t$ or the isomonodromy data change?

**Hypothesis:** Painlevé systems might NOT have an RG-like scale channel (no monotone beta functions). Instead, scale change might induce a *cyclic* evolution — reminiscent of RG limit cycles (Efimov example), but at isomonodromy level.

**Speculation:** Voros periods might serve as the scale-channel "witness" — analogous to how contact operators witness the scale channel in quantum mechanics. As UV cutoff $\Lambda$ changes, the periods $I_j(\Lambda)$ might exhibit a "controlled deformation" that preserves integrability.

**Status:** Open. Requires careful analysis of how Painlevé parameters depend on UV regularization.

---

## 5. Efimov as Concrete Witness to Stage 2.5?

### 5.1 Efimov Limit Cycles (from BB3 + Blackboard 3)

The Efimov effect exhibits a **discrete scaling invariance** in the three-body problem:
$$\psi(e^{\pi/s_0} k) \leftrightarrow \psi(k) \quad \text{(up to Möbius phase)},$$
where $s_0 = 1.006238$ and the scaling factor is $\lambda = e^{\pi/s_0} \approx 22.7$.

This discrete scaling arises from:
1. **Two-body unitarity** at resonance ($a \to \infty$),
2. **Three-body Lippmann-Schwinger composition** (spectator + rescatter),
3. **UV renormalization** (absorbing logarithmic divergence in the three-body parameter $\kappa_*$).

The Efimov RG **does not flow to a fixed point** but instead exhibits a **limit cycle** — an RG orbit that closes on itself after each rescaling by $e^{\pi/s_0}$.

### 5.2 Comparison to Painlevé Integrability

| Feature | Efimov RG Limit Cycle | Painlevé Isomonodromy |
|---------|----------------------|----------------------|
| Conserved quantity | Monodromy phase $\arg(T_3)$ | Monodromy matrix $M_L$ (all entries) |
| Parameter evolution | Log-periodic in energy scale $E$ | Isomonodromic deformation of $t$ |
| Nonperturbative structure | Discrete scaling (transseries via resurgence) | Isomonodromy Stokes data (transseries via alien calculus) |
| Fixed points? | No (limit cycle instead) | No (but critical points exist) |
| Integrability | Weak (only discrete scaling, not fully integrable) | Strong (infinite conserved quantities from isomonodromy) |

**Hypothesis:** Efimov limit cycles are a **partially integrable realization** of Stage 2.5 — they exhibit discrete scaling and nonperturbative structure but fall short of the full isomonodromy integrability of Painlevé systems. Perhaps a spectrum: Stage 2 (quantum, fully composition-determined) ⊂ Stage 2.5 (partial integrability, Efimov-like limit cycles) ⊂ Stage 2.75 (full integrability, Painlevé-like isomonodromy) ⊂ Stage 3 (QFT/RG with soft integrability breaking).

### 5.3 Efimov Refinement Compatibility (to be checked)

From BB3: Efimov limit cycles are forced by "3-body composition at unitarity + UV renormalizability." Do they satisfy all three RCP channels? Likely yes for partition (sewing three-body interactions), harder for scale channel (no monotone beta function, only cyclic).

---

## 6. Open Questions

### Level 1 (Definite follow-up)
1. **Does composition force Painlevé structure?** Formalize the argument in §3.2 for a specific model (e.g., anharmonic oscillator or Coulomb + relativistic corrections).
2. **Partition channel for Painlevé:** Compute refinement limit ($N \to \infty$) for $P_I$ or $P_{\mathrm{II}}$ explicitly.
3. **Efimov vs Painlevé:** Are limit cycles a discrete shadow of isomonodromy? Is there a continuum limit where discrete → continuous integrability?

### Level 2 (Deeper integration)
4. **Stage 2.5 satellite paper:** "Integrable Quantum Mechanics and Isomonodromy: Composition Forces Conservation Laws." Structure: composition axiom → isomonodromy + Voros periods as forced invariants. Examples: anharmonic oscillator, Coulomb potential, simple integrable systems.
5. **Painlevé τ-functions as "Hilbert spaces" of monodromy data:** Can τ-functions be interpreted as quantum amplitudes in a Stage 2.5 Hilbert space? Is there a tau-function version of $\hbar$?
6. **Connection to CFT at integrability:** Are integrable CFTs (WZW, minimal models, Virasoro minimal series) examples where composition forces isomonodromy? Does the Virasoro algebra encode Painlevé structure?

### Level 3 (Speculation)
7. **Master structure unifying RG and isomonodromy:** Is there a common categorical framework (higher groupoids, Hopf algebroids, $\infty$-categories) that recovers both RG flows and isomonodromy as special cases?
8. **Painlevé as boundary between integrability and chaos:** At what deformation parameter does isomonodromy break? Could this transition be RCP-forced (composition breaking)?

---

## 7. Bibliography & Sources

### Primary (Exact WKB, Isomonodromy, Painlevé)
- Voros, A. "The Zeta function of the Quartic Oscillator." Ann. Inst. H. Poincaré, Phys. Théor. 39, no. 3 (1983): 211–338.
- Delabaere, E., Dillinger, H., & Pham, F. "Résurgence de Voros et périodes des potentiels de Mathieu." Ann. Inst. Fourier (Grenoble) 43, no. 1 (1993): 163–199. [HAL: hal-01389261]
- Jimbo, M., Miwa, T., Ueno, K. "Monodromy Preserving Deformation of Linear Ordinary Differential Equations with Rational Coefficients. I." Phys. D 2, no. 2 (1981): 306–352.
- Les Houches Lectures on Exact WKB Analysis and Painlevé Equations. arXiv:2512.17599 (2024-2025). [Recent pedagogical treatment]

### Primary (Painlevé + Transseries + Quantum)
- van Spaendonck, A., & Vonk, M. "Painlevé I and exact WKB: Stokes phenomenon for two-parameter transseries." arXiv:2204.09062 (2022).
- Dunne, G. V., & Ünsal, M. "What is QFT? Resurgent Transseries and Lefschetz Thimbles." PoS LATTICE2015 (2016): 010.
- Costin, O., & Dunne, G. V. "Resurgence and Trans-Asymptotics." Int. Math. Res. Not. 2015, no. 17 (2015): 8749–8820.

### Secondary (Efimov & Limit Cycles)
- Bedaque, P., Hammer, H.-W., & van Kolck, U. "Renormalization of the Three-Body Problem with Short-Range Interactions." Nucl. Phys. A 646, no. 4 (1999): 444–466. [arXiv:nucl-th/9807046]
- Braaten, E., & Hammer, H.-W. "Universality in Few-Body Systems with Large Scattering Length." Ann. Phys. 322, no. 1 (2007): 120–163. [arXiv:nucl-th/0612123]
- arXiv:1102.3789 (2011): "Efimov physics from a renormalization group perspective." [RG limit cycle perspective]

### Tertiary (Integrable QFT, Algebraic Structures)
- Kazakov, V. A., & Marshakov, A. "Classical/Quantum Integrability in AdS/CFT." J. High Energy Phys. 2004, no. 5 (2004): 024.
- Staudacher, M. "The Factorized S-Matrix of CFT/AdS." J. High Energy Phys. 2005, no. 5 (2005): 054.
- Dorey, P., Tateo, R. "Excited States by Analytic Continuation of TBA Equations." Nucl. Phys. B 482, no. 3 (1996): 639–659. [Painlevé in integrable field theory]

---

## 8. Session Notes

**Session 2026-02-21 (evening research, Task #5):** Opened this notebook as a Level 2 serendipity exploration. Found Les Houches 2024-25 exact WKB lectures (arXiv:2512.17599) and van Spaendonck-Vonk arXiv:2204.09062. Realized Efimov limit cycles (BB3, confirmed by three agents) might be the *discrete* shadow of Painlevé isomonodromy. Next steps: formalize composition → isomonodromy; test RCP channels for Painlevé; propose Stage 2.5 satellite.

---

**Last updated:** 2026-02-21, 17:30 CET
