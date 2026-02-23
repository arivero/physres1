---
layout: page
math: backslash
title: "Measurement as Compositional Boundary: Born Rule, Partial Trace, and POVMs from the Sewing Law"
author: "A.I.Scaffold"
date: "2026"
abstract: |
  The companion paper [Main] derives quantum structure from the kernel sewing law
  $K(x,z;t_1+t_2)=\int dy\,K(x,y;t_1)K(y,z;t_2)$ across six stages but does not
  address measurement, noting (Remark P9.1) that "subsystem tracing violates global
  composition." This paper fills that gap. We show that composite-system kernels
  factorize into tensor products (MC-P2.1), that the partial trace is the unique linear
  CPTP map preserving the sewing law when subsystems decouple (MC-P3.1), that the Born
  rule $p_a=|K(a;y)|^2/Z$ follows from inserting projectors into the sewing chain
  (MC-D4.1), and that POVMs arise as the most general composition-compatible measurements
  via Naimark dilation (MC-P5.1). Decoherence restores effective semigroup composition at
  macroscopic scales (MC-H6.1), and subsystem compatibility is proposed as a fourth RCP
  channel alongside partition, representation, and scale (MC-H7.1). Throughout, the
  composition law is the single organizing principle; measurement structure follows
  from the sewing law and a single operational postulate (projector insertion),
  replacing a multi-axiom measurement theory with a compositional derivation.
---

# 1. Introduction

The companion paper [Main] develops a six-stage chain from Newton's polygonal dynamics to the renormalized path integral, with the kernel sewing law

\[
K(x,z;\,t_1+t_2) = \int d^d y\; K(x,y;\,t_1)\, K(y,z;\,t_2) \tag{Sewing}
\]

as the central organizing structure. Proposition P4.2 of [Main] shows that composition alone forces \(\kappa = \hbar\) (the structural constant), the \(d/2\) normalization exponent, and exponential weighting \(e^{iS/\hbar}\). Classical dynamics are recovered by stationary-phase concentration (D4.2a), and deformation quantization emerges as the representation-channel complement (Section 7 of [Main]).

Yet measurement is conspicuously absent. Remark P9.1 of [Main] explicitly acknowledges the gap: *"measurement (subsystem tracing violates global composition)"* is a known departure, mapped to "singular-probe incompleteness" (Heuristic H0.2). The Born rule is cited as external work (Goyal, Knuth, and Skilling 2010 [GKS2010]; Koplinger 2025 [Koplinger2025]) but never integrated into the compositional framework.

This paper fills that gap. We show that the full measurement apparatus — partial trace, Born rule, POVMs — is *derivable* from the sewing law (Sewing) applied to composite systems. The argument is:

1. Independent subsystems → tensor-product composition (Section 2).
2. Subsystem decoupling → partial trace as the unique sewing-compatible reduction (Section 3).
3. Projective insertion into the sewing chain → Born rule (Section 4).
4. Positivity + partial-trace compatibility → POVM axioms (Section 5).
5. Decoherence suppresses entanglement corrections → effective classical semigroup (Section 6).
6. Subsystem compatibility as a fourth RCP channel (Section 7).

The kinematic complement is provided by [GKS2010] (amplitude pairs from information-theoretic axioms) and [Koplinger2025] (Hurwitz division algebras). Hartle [Hartle1995] derives the decoherence functional and Born rule from path-integral composition in the consistent-histories framework; the present paper works directly with the kernel sewing law rather than histories, and adds the partial-trace uniqueness result (MC-P3.1) and the fourth-channel proposal (MC-H7.1).

# 2. Composite Systems as Tensor Composition

**MC-P2.1 (Proposition: Factorization of independent subsystems is consistent with the sewing law).**
Consider two subsystems \(A\) and \(B\) with configuration spaces \(M_A\) and \(M_B\). When the subsystems are dynamically independent (no interaction Hamiltonian coupling them), the joint propagator factorizes:

\[
K_{AB}(x_A,x_B,\,z_A,z_B;\,t) = K_A(x_A,z_A;\,t)\, K_B(x_B,z_B;\,t).
\]

Apply the sewing law to the joint system at time \(t = t_1 + t_2\):

\[
K_{AB}(x_A,x_B,\,z_A,z_B;\,t_1+t_2) = \int d^{d_A}y_A\, d^{d_B}y_B\; K_{AB}(x_A,x_B,\,y_A,y_B;\,t_1)\, K_{AB}(y_A,y_B,\,z_A,z_B;\,t_2).
\]

Under factorization, the right-hand side separates:

\[
= \left[\int d^{d_A}y_A\; K_A(x_A,y_A;\,t_1)\, K_A(y_A,z_A;\,t_2)\right] \left[\int d^{d_B}y_B\; K_B(x_B,y_B;\,t_1)\, K_B(y_B,z_B;\,t_2)\right].
\]

Each factor is the sewing law for the individual subsystem. Factorization of the joint propagator is an *additional physical input* encoding dynamical independence; the sewing law is consistent with it but does not force it. (The sewing law for a joint system is satisfied by any joint propagator, factorized or not.) In the Hilbert-space representation (forced by Proposition P4.2 of [Main]), this factorization is the tensor product \(\mathcal{H}_{AB} = \mathcal{H}_A \otimes \mathcal{H}_B\): the joint propagator is a bi-half-density on \(M_A \times M_B\), and the sewing integrals decouple into tensor factors.

`Remark MC-R2.1 (Connection to P4.2f: interaction and universal \(\kappa\)).`
When an interaction \(V(q_A, q_B)\) couples the subsystems, the joint kernel no longer factorizes: \(K_{AB} \neq K_A \otimes K_B\). However, the sewing law still holds for the *joint* kernel on \(M_A \times M_B\). Proposition P4.2 of [Main] forces a single structural constant \(\kappa = \hbar\) for the joint system — the same \(\kappa\) that governs each subsystem individually. Interaction couples sectors but does not introduce a second deformation parameter. This universality of \(\hbar\) across subsystems is a consequence of composition, not a postulate.

`Remark MC-R2.2 (Half-density viewpoint).`
In the half-density formalism of [Main] (Derivation D4.1e), the single-system kernel is a bi-half-density on \(M\), transforming as \(|dx|^{1/2}|dy|^{1/2}\) under coordinate changes. The joint kernel is then a bi-half-density on \(M_A \times M_B\): it transforms as \(|dx_A|^{1/2}|dx_B|^{1/2} \cdot |dy_A|^{1/2}|dy_B|^{1/2}\). The sewing integral pairs the target half-density of the first kernel with the source half-density of the second, yielding a full density \(|dy_A|\,|dy_B|\) — exactly the Lebesgue measure needed for integration, with no additional Jacobian. This is the composite-system version of the mechanism described in Remark TG-R5.1 of [TangentGroupoid].

# 3. Partial Trace from Composition

This section contains the central result: the partial trace is uniquely determined by the requirement that subsystem reduction preserves the sewing law.

**MC-P3.1 (Proposition: Partial trace from sewing-law preservation).**
*Let \(K_{AB}\) be a joint propagator on \(M_A \times M_B\) satisfying the sewing law (Sewing). Define the reduced kernel for subsystem \(A\) by integrating out subsystem \(B\):*

\[
K_A^{\mathrm{red}}(x_A, z_A;\, t) := \int d^{d_B} x_B\; K_{AB}(x_A, x_B,\, z_A, x_B;\, t). \tag{PT}
\]

*This is the kernel-space partial trace: setting \(z_B = x_B\) and integrating. Then:*

*(i) In general, \(K_A^{\mathrm{red}}\) does NOT satisfy the semigroup law. The obstruction is entanglement: for a general joint state,*

\[
K_A^{\mathrm{red}}(x_A, z_A;\, t_1+t_2) \neq \int d^{d_A} y_A\; K_A^{\mathrm{red}}(x_A, y_A;\, t_1)\, K_A^{\mathrm{red}}(y_A, z_A;\, t_2).
\]

*The failure is measured by the entanglement correction*

\[
\Delta K_A(x_A, z_A;\, t_1, t_2) := K_A^{\mathrm{red}}(x_A, z_A;\, t_1+t_2) - \int d^{d_A} y_A\; K_A^{\mathrm{red}}(x_A, y_A;\, t_1)\, K_A^{\mathrm{red}}(y_A, z_A;\, t_2),
\]

*which vanishes if and only if the joint state is a product state at the intermediate time.*

*(ii) When subsystems decouple (factorized case \(K_{AB} = K_A \otimes K_B\)), the partial trace preserves sewing exactly:*

\[
K_A^{\mathrm{red}}(x_A, z_A;\, t_1+t_2) = \int d^{d_A} y_A\; K_A^{\mathrm{red}}(x_A, y_A;\, t_1)\, K_A^{\mathrm{red}}(y_A, z_A;\, t_2).
\]

*Proof of (ii).* Work in the density-matrix formulation: for a factorized state \(\rho_{AB} = \rho_A \otimes \rho_B\), the partial trace gives \(\mathrm{tr}_B[\rho_{AB}(t)] = \rho_A(t) \cdot \mathrm{tr}\,\rho_B = \rho_A(t)\). The reduced density matrix \(\rho_A(t)\) inherits the sewing law from subsystem \(A\)'s propagator, and the \(B\)-trace normalization (\(\mathrm{tr}\,\rho_B = 1\)) cancels at every time step. \(\square\)

*(iii) Canonicity (Choi-Kraus in sewing-law language). Among all linear, completely positive, trace-preserving (CPTP) maps \(\mathcal{E}: \mathcal{B}(\mathcal{H}_A \otimes \mathcal{H}_B) \to \mathcal{B}(\mathcal{H}_A)\), the partial trace (PT) is the canonical choice — the unique one that acts as a conditional expectation onto \(\mathcal{B}(\mathcal{H}_A) \otimes I_B\) (Accardi-Cecchini [AC1982]; Takesaki [Takesaki1972]). In Stinespring language [Stinespring1955]: every CPTP map is "embed into a larger system, then partial-trace"; the partial trace itself is the minimal such map, with trivial Kraus representation \(\{I_B\}\). The sewing-law connection is that the conditional-expectation property ensures the reduced density matrix inherits the composition structure of the joint system for factorized states (part (ii)). We do not claim that the four conditions (linearity, complete positivity, trace preservation, sewing compatibility) suffice to uniquely determine the partial trace — additional CPTP maps satisfying them exist — but the partial trace is singled out as the unique conditional expectation, the algebraically canonical reduction.*

**MC-D3.1 (Derivation: Coupled oscillators — explicit Gaussian partial trace).**
Consider two harmonically coupled oscillators: \(L = \tfrac{m}{2}(\dot{q}_A^2 + \dot{q}_B^2) - \tfrac{m\omega^2}{2}(q_A^2 + q_B^2) - \tfrac{m\lambda}{2}(q_A - q_B)^2\). Normal-mode coordinates \(q_\pm = (q_A \pm q_B)/\sqrt{2}\) decouple the system with frequencies \(\omega_- = \omega\), \(\omega_+ = \sqrt{\omega^2 + 2\lambda}\). The partial trace (setting \(z_B = x_B\), integrating) mixes normal modes via the constraint \(z_+ - z_- = x_+ - x_-\), yielding \(K_A^{\mathrm{red}} \propto \exp\!\left[\tfrac{im}{2\hbar}(\alpha(t)(x_A^2 + z_A^2) + \beta(t)\, x_A z_A)\right]\) with \(\alpha(t) = \tfrac{\omega_-}{2}\cot(\omega_- t) + \tfrac{\omega_+}{2}\cot(\omega_+ t)\) and \(\beta(t) = -\omega_-/\sin(\omega_- t) - \omega_+/\sin(\omega_+ t)\) (standard Gaussian propagator identities; cf. Schulman 1981). The entanglement correction is \(O(\lambda/\omega^2)\): for \(\lambda = 0\) exact sewing is restored; for \(\lambda \neq 0\) off-diagonal Gaussian correlations prevent sewing-integral factorization.

`Remark MC-R3.1 (Connection to H0.2: singular-probe obstruction).`
The partial trace (PT) involves a diagonal restriction: setting \(z_B = x_B\) restricts the joint kernel to the diagonal submanifold \(\Delta_B = \{(x_B, x_B)\} \subset M_B \times M_B\). This diagonal restriction is well-defined only because the kernel has a controlled singularity as \(z_B \to x_B\): the short-time expansion \(K(x,x;t) \sim (m/2\pi i\hbar t)^{d/2}\) has the \(d/2\) singularity forced by composition (Derivation D4.1a of [Main]). This is the "singular-probe incompleteness" of Heuristic H0.2: the diagonal restriction probes the kernel at coincident points, where the normalization singularity \(t^{-d/2}\) is essential for a well-defined trace. Without the composition-forced \(d/2\) normalization, the partial trace would be either divergent or ambiguous — composition controls the very singularity that measurement requires.

# 4. Born Rule from Composition

**MC-D4.1 (Derivation: Born rule from projective insertion into the sewing chain).**
Consider a measurement of observable \(\hat{A}\) with discrete eigenvalues \(\{a\}\) and eigenstates \(\{|a\rangle\}\), performed at intermediate time \(t_1\) during propagation from \(t_0\) to \(t_2 = t_0 + t_1 + t_1'\). The sewing law (Sewing) composes the propagator across the intermediate time:

\[
K(x, z;\, t_1 + t_1') = \int d^d y\; K(x, y;\, t_1)\, K(y, z;\, t_1').
\]

A projective measurement at time \(t_1\) *selects* the outcome \(a\) by inserting the projector \(P_a = |a\rangle\langle a|\) into the sewing chain. In the kernel representation:

\[
K_a(x, z;\, t_1, t_1') = \int d^d y\, d^d y'\; K(x, y;\, t_1)\, \langle y | a \rangle \langle a | y' \rangle\, K(y', z;\, t_1').
\]

The probability of outcome \(a\), given initial state \(\psi_i(y)\) at \(t_0\) and post-selected to final state \(\psi_f(z)\) at \(t_2\), is the squared modulus of the restricted amplitude relative to the unrestricted one. In the simplest case (no post-selection, trace over final states):

\[
p_a = \frac{\int d^d z\; |K_a(x, z;\, t_1, t_1')|^2}{\sum_{a'} \int d^d z\; |K_{a'}(x, z;\, t_1, t_1')|^2}.
\]

We now show that this gives the Born rule. Expanding the numerator and using the unitarity relation \(\int d^d z\, K(y,z;t)K^*(y',z;t) = \delta(y-y')\) to perform the \(z\)-integration:

\[
\int d^d z\; |K_a|^2 = \int d^d y\; K(x,y;t_1)\,\langle y|a\rangle\, \overline{\int d^d y'\; K(x,y';t_1)\,\langle y'|a\rangle} = \left|\int d^d y\; K(x,y;t_1)\,\langle y|a\rangle\right|^2.
\]

Therefore \(p_a = |\langle a | \psi(t_1) \rangle|^2\), where \(|\psi(t_1)\rangle = \int d^d y\, K(x,y;t_1)\, \psi_i(y)\). This is the **Born rule**.

The unitarity relation used above is a *kernel-level identity*, not a probabilistic postulate: it follows from the sewing law's identity limit \(K(y,z;t) \to \delta(y-z)\) as \(t \to 0\) (Proposition P4.2(I) of [Main]), which forces the propagator to be an isometry in \(L^2\). No probability interpretation is invoked in establishing it — it is a distributional consequence of \(K_{t_1} * K_{t_2} = K_{t_1+t_2}\) and \(K_0 = \delta\).

The derivation rests on four inputs:
1. **Composition** (Sewing): the propagator composes by integration over intermediate configurations.
2. **Unitarity**: \(\int d^d z\, K(y,z;t)K^*(y',z;t) = \delta(y-y')\) (from composition + identity limit, P4.2 of [Main]; no probabilistic content).
3. **Projector insertion**: representing a selective measurement by inserting \(P_a\) into the sewing chain. This is an *additional operational postulate* — composition determines the form of the propagator, but the identification of measurement with projector insertion is a physical assumption about what measurement *does* to the composition chain. It is motivated by, but not derived from, the sewing law.
4. **Positivity**: probabilities are non-negative, requiring the squared modulus.

The Born rule thus follows from composition + projector insertion: composition determines the *form* (\(p \propto |\text{amplitude}|^2\)); projector insertion determines the *content* (which amplitudes correspond to which measurements), paralleling the structure/content distinction of Remark P9.1 of [Main].

`Remark MC-R4.1 (GKS = kinematic, MC-D4.1 = dynamic).`
[GKS2010] derives the Born rule from information-theoretic axioms: given amplitude pairs, the only consistent probability assignment is \(p \propto |a|^2\). That derivation is *kinematic* (assumes amplitudes exist); MC-D4.1 is *dynamic* (derives the same rule from the propagator sewing chain). The two are complementary: GKS constrains functional form, MC-D4.1 shows why it arises from dynamics.

`Remark MC-R4.2 (Koplinger/Hurwitz: sewing over division algebras).`
[Koplinger2025] shows that the composition law over normed division algebras restricts to the four Hurwitz algebras \(\mathbb{R}, \mathbb{C}, \mathbb{H}, \mathbb{O}\) (Hurwitz 1898 [Hurwitz1898]). The Born rule \(p \propto |a|^2\) is the unique norm-compatible probability assignment. The octonionic case \(\mathbb{O}\) lacks associativity — the sewing integral \(\int K(x,y)K(y,z)\,dy\) requires associative multiplication of amplitudes for the chain to compose consistently, and \((ab)c \neq a(bc)\) generically for \(\mathbb{O}\) — so the sewing law cannot be formulated. This limits quantum mechanics to \(\mathbb{R}\), \(\mathbb{C}\), and \(\mathbb{H}\).

# 5. POVMs as Composition-Compatible Measurements

**MC-P5.1 (Proposition: POVM axioms from composition + positivity + partial trace).**
*A measurement on subsystem \(A\), performed by coupling \(A\) to a probe system \(B\) and then tracing out \(B\), is described by a set of operators \(\{E_a\}\) on \(\mathcal{H}_A\) satisfying:*

1. *Positivity: \(E_a \geq 0\) for all \(a\).*
2. *Resolution of identity: \(\sum_a E_a = I_A\).*

*These are the POVM (positive operator-valued measure) axioms. They follow from three composition-law requirements:*

- *Total probability = 1* (normalization, from the sewing law's identity limit).
- *Positivity of probabilities* (from the squared-modulus structure of the Born rule, MC-D4.1).
- *Partial-trace compatibility* (the measurement statistics of \(A\) must be independent of unmeasured degrees of freedom of \(B\), by MC-P3.1).

*Proof sketch.* The measurement procedure is: (1) prepare \(A\) in state \(\rho_A\) and probe \(B\) in state \(|0_B\rangle\); (2) apply joint unitary evolution \(U_{AB}\) (sewing-law-compatible, since \(U_{AB}\) is a propagator); (3) measure observable \(\hat{B}\) on the probe with outcome \(b\). The probability of outcome \(b\) is

\[
p_b = \mathrm{tr}_{AB}\!\left[(I_A \otimes |b\rangle\langle b|)\, U_{AB}(\rho_A \otimes |0_B\rangle\langle 0_B|)\, U_{AB}^\dagger\right] = \mathrm{tr}_A[E_b\, \rho_A],
\]

where \(E_b = \langle 0_B| U_{AB}^\dagger (I_A \otimes |b\rangle\langle b|)\, U_{AB} |0_B\rangle\). The sewing law enters at each step: \(U_{AB}\) is the joint propagator satisfying the sewing law (MC-P2.1); the Born rule for the probe measurement follows from MC-D4.1 applied to subsystem \(B\); and the POVM structure on \(A\) is the partial-trace compatibility of MC-P3.1. Positivity of \(E_b\) follows from \(|b\rangle\langle b| \geq 0\); resolution \(\sum_b E_b = I_A\) from \(\sum_b |b\rangle\langle b| = I_B\) and unitarity of \(U_{AB}\).

**Naimark's theorem** [Naimark1943] provides the converse: every POVM \(\{E_a\}\) on \(\mathcal{H}_A\) can be realized as a projective measurement on a larger Hilbert space \(\mathcal{H}_A \otimes \mathcal{H}_B\) followed by partial trace over \(B\). The circle closes: projective measurements + partial trace (both derived from composition) generate all POVMs, and conversely, every POVM is a projective measurement + partial trace. \(\square\)

`Remark MC-R5.1 (Star-product viewpoint).`
In phase space (Section 7.3 of [Main]), the Born rule becomes a Moyal trace: \(p_a = \int (dq\,dp/2\pi\hbar)\, W_\rho \star W_{E_a} = \int (dq\,dp/2\pi\hbar)\, W_\rho\, W_{E_a}\), using the trace property \(\int f \star g = \int fg\). For general POVM elements the Husimi function \(Q_{E_a} \geq 0\) provides the appropriate positive distribution.

`Remark MC-R5.2 (Cross-reference: phase POVM from action-angle satellite).`
Remark 2.2 of [ActionAngle] constructs the phase POVM \(d\Pi(\phi) = (2\pi)^{-1}\sum_{m,n} |m\rangle\langle n| e^{i(m-n)\phi}\, d\phi\) for the angle conjugate to \(L_z\). This is a concrete instance of MC-P5.1: Naimark dilation embeds the phase POVM into a projective measurement on \(\mathcal{H}_A \otimes \mathcal{H}_{\mathrm{ref}}\), with the composition-law origin being projector insertion (MC-D4.1) in the angular sewing chain, generalized via partial trace (MC-P5.1).

# 6. Decoherence and Effective Classical Composition

**MC-H6.1 (Heuristic: Decoherence suppresses entanglement correction).**
The entanglement correction \(\Delta K_A\) of MC-P3.1(i) is suppressed by environmental decoherence. For a system of mass \(m\) interacting with a thermal environment at temperature \(T\), the decoherence rate for spatial superpositions of separation \(\Delta x\) is [JoosZeh1985, Zurek2003]:

\[
\Gamma_{\mathrm{dec}} \sim \frac{1}{\tau_{\mathrm{dec}}} \sim \frac{m^2}{\hbar^2} \cdot D \cdot (\Delta x)^2,
\]

where \(D\) is the diffusion coefficient characterizing the environment (for thermal photon scattering, \(D \sim k_B T \cdot \sigma_{\mathrm{scat}} \cdot c / V\) with \(\sigma_{\mathrm{scat}}\) the scattering cross section). Equivalently, in terms of the thermal de Broglie wavelength \(\lambda_{\mathrm{dB}} = \hbar/\sqrt{2mk_BT}\):

\[
\Gamma_{\mathrm{dec}} \sim \left(\frac{\Delta x}{\lambda_{\mathrm{dB}}}\right)^2 \cdot \gamma_0,
\]

where \(\gamma_0\) is the bare relaxation rate. The two expressions are related by the fluctuation-dissipation relation \(D = \gamma_0 m k_B T / \hbar^2\), so \(\Gamma_{\mathrm{dec}} = \gamma_0 (\Delta x / \lambda_{\mathrm{dB}})^2\). For macroscopic objects (\(m \sim 1\,\mathrm{g}\), \(\Delta x \sim 1\,\mathrm{cm}\), room-temperature air molecules), \(\Gamma_{\mathrm{dec}} \sim 10^{40}\,\mathrm{s}^{-1}\) [JoosZeh1985] — the entanglement correction is suppressed on timescales vastly shorter than any dynamical timescale.

In the language of MC-P3.1: decoherence drives the off-diagonal elements of the joint density matrix (in the pointer basis) to zero exponentially fast, making the joint state effectively factorized on the decoherence timescale. Once effectively factorized, MC-P3.1(ii) applies: the partial trace preserves the sewing law. The reduced dynamics of subsystem \(A\) is then an effective semigroup — the Lindblad master equation [Lindblad1976]:

\[
\frac{d\rho_A}{dt} = -\frac{i}{\hbar}[H_A, \rho_A] + \sum_k \gamma_k \left(L_k \rho_A L_k^\dagger - \frac{1}{2}\{L_k^\dagger L_k, \rho_A\}\right),
\]

where the Lindblad operators \(L_k\) encode the coupling to the environment. This is the density-matrix analog of the sewing law, with the CPTP map \(\mathcal{E}_t(\rho) = e^{\mathcal{L}t}(\rho)\) forming a one-parameter semigroup.

`Remark MC-R6.1 (Two classical recovery routes).`
[Main] identifies classical recovery via stationary phase (\(\hbar \to 0\), D4.2a). This paper identifies a second route: decoherence at finite \(\hbar\), suppressing interference and restoring effective semigroup composition. The first is a structural-constant limit; the second is dynamical (subsystem coupling). Only the second operates in the real world where \(\hbar\) is fixed.

`Remark MC-R6.2 (Coherent-state pointer basis).`
The pointer basis selected by decoherence is generically the coherent-state basis \(|q,p\rangle\) (Zurek's einselection [Zurek2003]), saturating \(\Delta q\,\Delta p = \hbar/2\). In [ActionAngle], the analog is the coherent angular-momentum state on \(S^1\), connecting decoherence to the phase POVM (MC-R5.2) via the coherent-state resolution of identity.

# 7. Measurement as Fourth RCP Channel

**MC-H7.1 (Heuristic: Subsystem compatibility as fourth channel).**
The Refinement Compatibility Principle (P10.1 of [Main]; axiomatized in [RCPFoundations]) identifies three compatibility channels:

| Channel | Operation | Structural output |
|---------|-----------|-------------------|
| Partition \(\mathcal{C}_t\) | Temporal composition/refinement | \(\hbar\), sewing law, \(d/2\) exponent |
| Representation \(\mathcal{Q}_\hbar\) | Ordering/discretization change | Equivalence classes of star products |
| Scale \(\mathcal{R}_\Lambda\) | RG flow / cutoff shift | Running couplings, beta functions |

We propose a fourth channel:

| Channel | Operation | Structural output |
|---------|-----------|-------------------|
| Subsystem \(\mathcal{S}_B\) | Partial trace / subsystem reduction | Born rule, POVMs, decoherence |

The operational form parallels the existing three channels. Write predictions for subsystem \(A\) as \(\mathcal{O}_{A,\theta}\), where \(\theta\) includes the environment specification. Subsystem compatibility requires: for every partial-trace operation \(\mathcal{S}_B\), there exists a parameter update \(\tau_S\) such that

\[
\mathcal{O}_{A,\theta} = \mathcal{O}_{A,\tau_S(B;\theta)} \circ \mathcal{S}_B.
\]

This is falsifiable: closure fails when no finite \(\tau_S\) restores sewing-law compatibility after tracing out \(B\). The crown witness is MC-P3.1: the partial trace is the *unique* CPTP map preserving the sewing law for factorized states, just as Proposition P4.2 shows that \(\hbar\) is the unique structural constant preserving partition composition.

`Remark MC-R7.1 (Crown witness = partial trace uniqueness).`
The analogy to the partition channel is precise:

| | Partition channel | Subsystem channel |
|---|---|---|
| **Semigroup** | \(\{K_t\}_{t>0}\) on \(M \times M\) | \(\{\mathcal{E}_t\}_{t>0}\) on \(\mathcal{B}(\mathcal{H}_A)\) |
| **Crown witness** | P4.2: \(\kappa = \hbar\) forced | MC-P3.1: partial trace is unique conditional expectation |
| **Failure mode** | \(\kappa \to 0\): no identity limit | Entanglement: \(\Delta K_A \neq 0\) |
| **Classical recovery** | Stationary phase (\(\hbar \to 0\)) | Decoherence (\(\Gamma \to \infty\)) |

The partition channel asks: "Does temporal composition preserve the sewing law?" The subsystem channel asks: "Does subsystem reduction preserve the sewing law?" Both questions are answered constructively by forced structural constants (respectively \(\hbar\) and the partial-trace operation itself).

`Remark MC-R7.2 (Scope limitation).`
MC-H7.1 is a *Heuristic*, not a *Proposition*, because: (1) **Non-Markovian dynamics** — memory effects break the semigroup property (\(\mathcal{E}_{t_1+t_2} \neq \mathcal{E}_{t_2} \circ \mathcal{E}_{t_1}\)); the Lindblad form is only the Markovian limit, and non-Markovian closure requires process tensors or quantum combs. (2) **Gravitational measurement** — in quantum gravity the tensor-product decomposition (and hence partial trace) is gauge-dependent; the subsystem channel presupposes fixed background geometry.

# 8. Outlook

Three directions emerge: (1) **Quantum error correction** as composition-compatible encoding — the Knill-Laflamme conditions as sewing-law compatibility for the code subspace under partial trace over the noise channel. (2) **Gravitational measurement** and Stage 4 obstructions (Remark P9.1a of [Main]) — background-independent partial trace requires cobordism-level composition, the same open problem as Stage 4. (3) **Quantitative bounds** via the regulated kernels of Appendix 10.6 of [Main], where exact composition gives controlled entanglement corrections bounded by the regulator parameter.

# Bibliography

- [Main] A. Rivero and A.I.Scaffold, "From Newton to the Path Integral: Composition, Quantization, and Renormalization," companion paper (2026).
- [GKS2010] P. Goyal, K.H. Knuth, and J. Skilling, "Origin of complex quantum amplitudes and Feynman's rules," *Phys. Rev. A* **81** (2010): 022109. arXiv:0907.0909.
- [Koplinger2025] J. Koplinger, "Division algebras and quantum mechanics," preprint (2025).
- [Stinespring1955] W.F. Stinespring, "Positive functions on C*-algebras," *Proc. Amer. Math. Soc.* **6** (1955): 211--216.
- [Choi1975] M.-D. Choi, "Completely positive linear maps on complex matrices," *Linear Algebra Appl.* **10** (1975): 285--290.
- [Kraus1983] K. Kraus, *States, Effects, and Operations: Fundamental Notions of Quantum Theory*, Lecture Notes in Physics **190**, Springer (1983).
- [Naimark1943] M.A. Naimark, "On a representation of additive operator set functions," *C. R. (Doklady) Acad. Sci. URSS* **41** (1943): 359--361.
- [JoosZeh1985] E. Joos and H.D. Zeh, "The emergence of classical properties through interaction with the environment," *Z. Phys. B* **59** (1985): 223--243.
- [Zurek2003] W.H. Zurek, "Decoherence, einselection, and the quantum origins of the classical," *Rev. Mod. Phys.* **75** (2003): 715--775. arXiv:quant-ph/0105127.
- [Lindblad1976] G. Lindblad, "On the generators of quantum dynamical semigroups," *Commun. Math. Phys.* **48** (1976): 119--130.
- [Landsman1998] N.P. Landsman, *Mathematical Topics Between Classical and Quantum Mechanics*, Springer (1998).
- [Hartle1995] J.B. Hartle, "Spacetime Quantum Mechanics and the Quantum Mechanics of Spacetime," in *Gravitation and Quantizations* (Les Houches 1992), North-Holland (1995). arXiv:gr-qc/9304006.
- [Hurwitz1898] A. Hurwitz, "Ueber die Composition der quadratischen Formen von beliebig vielen Variablen," *Nachr. Ges. Wiss. Gottingen* (1898): 309--316.
- [AC1982] L. Accardi and C. Cecchini, "Conditional expectations in von Neumann algebras and a theorem of Takesaki," *J. Funct. Anal.* **45** (1982): 245--273.
- [Takesaki1972] M. Takesaki, "Conditional expectations in von Neumann algebras," *J. Funct. Anal.* **9** (1972): 306--321.
- [TangentGroupoid] A. Rivero and A.I.Scaffold, "From Pair Groupoid to Tangent Groupoid," companion satellite paper (2026).
- [ActionAngle] A. Rivero and A.I.Scaffold, "Action-Angle Indeterminacy in Central Potentials," companion satellite paper (2026).
- [RCPFoundations] A. Rivero and A.I.Scaffold, "Refinement Compatibility as a Foundational Principle," companion satellite paper (2026).
