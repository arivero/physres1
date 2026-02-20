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

---

## Euler-Heisenberg Lagrangian: resurgence verification (2026-02-20, Computationalist)
Source: blackboards/3.md (physicist proposal + computationalist verification), Task #5.
Scripts: `tmp/eh_verification.py`, `tmp/eh_verify2.py`, `tmp/eh_verify3.py`

### Setup
The EH weak-field expansion (in $x = (eE/m^2)^2$, coefficients indexed by $k$):
$$a_k = c_{k+1} \cdot (2k-1)! \qquad c_n = \frac{2^{2n} B_{2n}}{(2n)!}$$

### Verified facts (SymPy + numpy)

**F1** (Bernoulli coefficients, exact):
$c_n = 2^{2n} B_{2n}/(2n)!$ confirmed against Taylor series of $s\coth s - 1 - s^2/3$.
First values: $c_2 = -1/45$, $c_3 = 2/945$, $c_4 = -1/4725$ (alternating sign).
Large-$n$ behavior: $|c_n| \sim 2/\pi^{2n}$ (from Bernoulli asymptotics $|B_{2n}| \sim 2(2n)!/(2\pi)^{2n}$).

**F2** (Proper-time integral, exact):
$\int_0^\infty s^{2n-3} e^{-s}\,ds = \Gamma(2n-2) = (2n-3)!$ (Euler; confirmed for $n=2,3,4,5$).

**F3** (Correct large-order growth):
$$a_k \sim C \cdot \frac{(2k-1)!}{\pi^{2k}}, \qquad C \approx 0.2026$$
Confirmed: ratio $|a_k|/[(2k-1)!/\pi^{2k}] \to 0.2026$ to 5 significant figures by $k=9$.

**F4** (Generalized Borel transform convergent):
$\tilde{B}(t) = \sum_k [a_k/(2k-1)!]\,t^k$ has coefficients $\sim 0.2026/\pi^{2k}$.
Convergence radius $= \pi^2 \approx 9.87$. The series is convergent; no Borel singularity
in this representation.

**F5** (Physicist's growth formula corrected):
The physicist's formula $a_n \sim C \cdot n! \cdot \pi^{-n}$ is incorrect as stated.
The actual growth is super-factorial: $(2k-1)!/\pi^{2k}$, faster than $k!/\pi^k$ by the
factor $(2k-1)!!/k! = (2k)!/(2^k k! \cdot k!) \sim (4/\pi)^{1/2} \cdot 4^k/\sqrt{k}$.

### Physical interpretation (corrected)

The non-perturbative content is the Schwinger rate:
$$\mathrm{Im}\,\mathcal{L}_{\rm EH} \sim e^{-\pi m^2/eE} = e^{-\pi/z}$$
This is an essential singularity at $z=0$ in the variable $z = eE/m^2$.
The associated transseries: $\sum_{n=1}^\infty (c_n/n^2) e^{-n\pi/z}$.

Standard Borel-Padé (dividing by $k!$) does NOT apply here: the non-perturbative term
$e^{-\pi/z}$ corresponds to a singularity in $1/z$-plane at distance $\pi$, not to
a singularity of the Borel transform of the $z$-series.

### Status of Remark 2.8 (uncuttable paper)

The EH Lagrangian IS a valid resurgence witness for Remark 2.8, but with corrected claim:
- The weak-field series has super-factorial growth (confirmed), signalling non-Borel-summability.
- The non-perturbative content is the Schwinger rate via transseries.
- The chain $\{a_k\} \to \Gamma_{\rm Schwinger} \to \mathrm{Im}\,\Pi(q^2) \to C_0, C_2, \ldots$ (physicist's OQ4 chain) is qualitatively correct but the Borel-Padé reconstruction step does not apply to the weak-field expansion — the correct non-perturbative reconstruction uses the Schwinger formula directly.

The physicist's proposed remark language needs amendment: replace "Borel-Padé applies" with
"resurgent transseries applies." See blackboard 3 for corrected remark draft.

### Comparison with vacuum polarization (blackboard 6 / R1-R4 above)

| Expansion | Variable | Growth | Borel-Padé | Non-pert. structure |
|-----------|----------|--------|------------|---------------------|
| Vac. pol. $\Pi(q^2)$ | $q^2/4m^2$ | $I_k \sim k^{-2}$ (algebraic) | NOT applicable | Branch cut (threshold) |
| EH $\mathcal{L}$ (weak field) | $x = (eE/m^2)^2$ | $a_k \sim (2k-1)!/\pi^{2k}$ | NOT applicable (super-factorial, not simple factorial) | Essential singularity (Schwinger instanton), transseries |
| EH $\mathcal{L}$ (coupling $\alpha$) | $\alpha$ (at fixed $eE$) | Renormalon: $\sim n!$ | APPLICABLE | Borel singularity = renormalon |

The relevant level for Borel-Padé in QED effective action is the $\alpha$-expansion (renormalons),
not the weak-field expansion.

Question 4: FURTHER REFINED — resurgence IS operative in the EH case but via transseries structure,
not standard Borel-Padé. The physicist's OQ4 chain is valid; the reconstruction mechanism
requires clarification.

---

## Anharmonic oscillator: RS perturbation theory verification (2026-02-20, Computationalist)
Self-directed. Scripts: `tmp/bw_anharmonic.py`, `tmp/bw_check.py`, `tmp/bw_fix.py`, `tmp/bw_final.py`

This is the reference example cited in Remark 2.8 of the uncuttable paper (BW69, BW73).

### Setup
$H = p^2/2 + x^2/2 + \lambda x^4$. Ground-state energy $E(\lambda) = \sum_{n=0}^\infty E_n \lambda^n$.

### Verified exact values (SymPy RS PT)

| $n$ | $E_n$ | Exact (BW) |
|-----|-------|------------|
| 0 | 0.5 | 1/2 |
| 1 | 0.75 | 3/4 |
| 2 | −2.625 | −21/8 |
| 3 | 20.8125 | 333/16 |

All match BW1969 Table I exactly.

### Key x^4 matrix elements (HO basis)

$(a + a^\dagger)^4 |0\rangle = 2\sqrt{6}|4\rangle + 6\sqrt{2}|2\rangle + 3|0\rangle$

$\Rightarrow$ $\langle 0|x^4|0\rangle = 3/4$, $\langle 2|x^4|0\rangle = 3\sqrt{2}/2$, $\langle 4|x^4|0\rangle = \sqrt{6}/2$.

### Large-order behavior (confirmed)

$E_n / ((-3)^n \Gamma(n+1/2)) \to C$ where $C \approx -0.49$ (converging slowly from $-0.22$ at $n=2$).
From BW: $C = -\sqrt{6/\pi}/2 \approx -0.489$.

Verified: $|E_n| \sim C' \cdot 3^n \cdot \Gamma(n+1/2)$ with alternating signs $(-1)^{n+1}$ for $n \geq 2$.
This IS simple factorial growth times a power: $\Gamma(n+1/2) \sim \sqrt{\pi} (n-1)!$ as $n\to\infty$.

### Borel transform (Gamma(n+1/2)-type)

$\tilde{B}(t) = \sum_n (E_n/\Gamma(n+1/2)) t^n$.

Ratio $\tilde{b}_n/\tilde{b}_{n-1} \to -3$ (confirmed: value at $n=20$ is $-3.014$, converging).
$\Rightarrow$ Borel singularity at $t = -1/3$.

### Padé poles (confirmed convergence to $t = -1/3$)

| Padé | Nearest pole | Distance from $-1/3$ |
|------|-------------|---------------------|
| [4/4] | −0.33350 | 0.00017 |
| [6/6] | −0.33259 | 0.00075 |
| [8/8] | −0.33309 | 0.00025 |

Rapid convergence to $t = -1/3$. Standard Borel-Padé IS applicable here (simple factorial growth).

### Contrast with EH case

| System | Growth | Borel-Padé | Borel singularity |
|--------|--------|------------|-------------------|
| Anharmonic osc. (BW) | $\Gamma(n+1/2) \cdot 3^n$ ≈ factorial | YES, applicable | $t = -1/3$ (instanton at $A = 1/3$) |
| EH weak-field | $(2k-1)!/\pi^{2k}$ (super-factorial) | NO (convergent Borel transform) | None (essential singularity) |

Remark 2.8's reference to BW is the correct example for standard Borel resurgence.
The EH example is a DIFFERENT resurgence mechanism (transseries, not Borel-Padé).

### Implication for uncuttable paper

Remark 2.8 as written is correct for the BW reference. The proposed Remark 2.8a (EH)
needs corrected language: EH belongs to the "transseries" class, not the "Borel-Padé" class.
Two distinct resurgence mechanisms, both valid witnesses of Remark 2.8's thesis but at different levels.

---

## d/2 Universality: 1D Double-Well Instanton (2026-02-20, Computationalist)
Self-directed from student specification (status.md §Tier 1A). Script: `tmp/instanton_d2.py`

### System

$V(x) = (x^2 - a^2)^2$, $d=1$ configuration space, Euclidean time $T$.

**Three channels** where $T^{-d/2} = T^{-1/2}$ appears:

1. **Composition (UV)**: $\int K(x,z;T/2)\,K(z,y;T/2)\,dz = K(x,y;T)$ forces $K \sim T^{-d/2}$.
   Numerically confirmed: ratio = 1.0000 for $T \in \{0.5, 1.0, 2.0\}$.

2. **Van Vleck–Morette determinant (UV semiclassical)**: $K = (2\pi\hbar)^{-d/2}\,D^{1/2}\,e^{iS_{\rm cl}/\hbar}$
   with $D = -\partial^2_{x_f\partial x_i}S_{\rm cl} \sim m/T$ near diagonal.
   $\Rightarrow K \sim T^{-1/2}$ exactly for free particle; same leading order for any potential.

3. **Wick rotation (A3 phase)**: $t \to e^{i\eta}t$ sends $c_0 \to e^{-i\eta d/2}c_0$.
   For $\eta = \pi/2$: phase factor $e^{-i\pi/4}$; exponent $d/2$ preserved.

### Instanton results

- Kink solution: $x(\tau) = a\tanh(\sqrt{2}\,a(\tau - \tau_0))$; verified $\dot x = \sqrt{2V}$ (SymPy).
- Action: $S_0 = \tfrac{4\sqrt{2}}{3}a^3$ (analytic + numerical match at $a=1$).
- Fluctuation operator: Pöschl–Teller, exactly solvable.
- Zero modes: **exactly 1** (translation $\tau_0$); $\|\psi_0\|^2 = S_0$.

### Key structural finding

**The instanton sector scales as $T^{+1}$, not $T^{-1/2}$.**

The moduli-space integral $\int_0^T d\tau_0$ gives a factor $T$.
Combined with $(S_0/2\pi\hbar)^{1/2} e^{-S_0/\hbar} \cdot (\det{\rm ratio})$:
$$K_{\rm 1-inst}(T) \sim T \cdot (S_0/2\pi\hbar)^{1/2}\,e^{-S_0/\hbar}$$

This is an IR (long-$T$) effect (tunneling dominates).
The $T^{-1/2}$ is UV (short-$T$) structure from composition/Van Vleck.

### d/2 universality table

| Mechanism | $T$-scaling | Regime | Confirmed |
|-----------|------------|--------|-----------|
| Composition | $T^{-d/2}$ | UV | Numerically |
| Van Vleck determinant | $T^{-d/2}$ | UV | Analytically |
| Wick rotation | $e^{-i\eta d/2}$ phase | UV | Analytically |
| Instanton zero mode | $T^{+1}$ (moduli volume) | IR | Analytically |

**Conclusion:** d/2 universality is genuine and UV-structural, not a coincidence.
The three UV derivations are different facets of the composition constraint.
The IR instanton $T^{+1}$ is complementary — it is the moduli space volume, not a UV divergence.

**Correction to student specification:** "2 zero modes (position + scale)" is incorrect.
The 1D double-well instanton has exactly 1 zero mode. The scale mode is not a modulus
of the vacuum-to-vacuum kink (only the center position $\tau_0$ is a collective coordinate).

---

## Physicist's complement: P4.2 scope in the instanton sector (2026-02-20)
Source: blackboards/3.md

### Key structural claim

P4.2 hypothesis (C) (composition law) is satisfied by the full kernel K = K_pert + K_inst + ...
The instanton sector uses the SAME action scale κ=ℏ — it contributes e^{-S₀/ℏ} with the
same ℏ forced by composition.

**What P4.2 does NOT prove:** The specific instanton content (S₀, tunneling rate, instanton action)
is NOT forced by composition alone. This matches P9.1's "structure vs content" principle:
- Structure forced: κ=ℏ, exponential weight, d/2 in UV sector
- Content NOT forced: which Lagrangian V(x), hence which instanton solutions exist

### The translation-invariance distinction (Mathematician, BB4 §7)

TG-P1.1's d/2 derives from hypothesis (T): f(x,y;t) = h(x-y;t) (translation invariance).
- Perturbative sector: (T) holds → d/2 universality applies
- Instanton sector: (T) FAILS (instanton saddle depends on both x_i, x_f via τ₀) → d/2 does NOT apply

This explains the T^{-1/2} (UV) vs T^{+1} (IR) split: not a contradiction, but a boundary between
hypothesis-satisfying and hypothesis-violating contributions.

### Paper-edit candidate (path-integral-normalization satellite, PN-R1.3a)

Add remark after PN-P1.3 clarifying that d/2 universality = UV structure (translation-invariant
saddle, (T) satisfied). Instanton sector uses same ℏ but T^{+1} scaling. Paper-edit request #10
sent to orchestrator. Three-agent: computationalist (numerical F1-F3) + mathematician (§7 analysis)
+ physicist (P4.2 scope framing).

### Numerical confirmation of (T) violation (Computationalist, BB4 §8)

Script: tmp/instanton_translation.py. Same separation x_f - x_i = 1.0, varying center:

| (x_i, x_f) | S_cl (instanton) | center |
|------------|------------------|--------|
| (-0.90, +0.10) | 1.070088 | -0.4 |
| (-0.70, +0.30) | 1.239794 | -0.2 |
| (-0.50, +0.50) | 1.296362 | 0.0 |
| (-0.30, +0.70) | 1.239794 | +0.2 |
| (-0.10, +0.90) | 1.070088 | +0.4 |

S_cl varies with center → K_inst(x_f, x_i; T) ≠ h(x_f - x_i; T) → (T) VIOLATED.
Free particle (same separations): S_free = (x_f-x_i)²/2T = 0.500 (constant) → (T) HOLDS.

Two-agent rule satisfied: Mathematician (§7, proposed (T)-violation argument) + Computationalist (§8, numerical verification).

---

## P4.2 Scope in the Instanton Sector (Physicist + Mathematician, 2026-02-20)

**Promoted from:** blackboards/3.md. Two-agent complete (physicist proposed, mathematician verified).
**Paper-edits sent:** PN-R1.3a (#10), P9.2 cornerstone §9 (#12).

### Key results

**Result 1 (K_inst satisfies composition (C)):**
Dilute n-instanton contribution: K^{(n)}(x,y;T) ∝ (1/n!)·(amplitude)^n·T^n·e^{-nS₀/ℏ}.
Composition integral via binomial convolution: Σ_{k=0}^n ∫K^{(k)}(x,z;t₁)K^{(n-k)}(z,y;t₂)dz = K^{(n)}(x,y;T). ✓
(C) holds sector by sector in dilute gas limit; full semigroup K = ⟨x|e^{-HT/ℏ}|y⟩ satisfies (C) non-perturbatively.
Caveat (Critic, §9): dilute gas sector decomposition breaks down at T ~ τ_inst (instanton overlap); (C) holds for full K at all regimes, not sector by sector outside dilute limit.

**Result 2 (d/2 = UV property of Gaussian envelope):**
Short-time limit T→0:
- K_pert(x,y;T) ~ T^{-d/2} e^{im|x-y|²/2ℏT} → δ(x-y) [d/2 from identity limit]
- K_inst(x,y;T) ~ T e^{-S₀/ℏ} → 0 [suppressed at short time]
d/2 universality is UV (T→0) structure, carried by K_pert alone.

**Result 3 (Translation invariance (T) fails for instantons):**
K_inst violates TG-P1.1 hypothesis (T) (translation invariance):
- K_free(x,y;T) = h(x-y;T) [translational symmetric]
- K_inst(x,y;T) depends on boundary conditions via τ₀ (instanton center = saddle point fixed by boundary)
→ TG-P1.1 hypothesis (T) fails → TG-P1.1 is INAPPLICABLE to K_inst (not falsified; hypothesis fails)
→ K_inst ~ T^{+1} scaling from zero-mode collective coordinate, not from d/2 (which applies only to K_pert)

**Sharp statement (for manuscript):**
P4.2 forces the STRUCTURAL fact (weight e^{iS/ℏ}, normalization t^{-d/2} for Gaussian sector); the CONTENT of S — which interaction, which saddle — is independent input (P9.1 structure vs content distinction). Instantons use the SAME κ=ℏ forced by (C), but their specific action S₀ and tunneling rate are determined by the Lagrangian, not by composition.

### References
- paper/main.md P4.2, P9.1
- papers/uncuttable-controlled-refinement/main.md §4
- blackboards/3.md (source; two-agent complete)
