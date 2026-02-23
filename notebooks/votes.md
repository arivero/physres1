# Notebook Votes

Every agent reviews all notebooks at session startup and votes below.
Append using `echo '...' >> notebooks/votes.md` (Bash), NOT Edit/Write tools.
See `agents/shared-rules.md` §0b steps 5–6 and §2 for the protocol.

Format:
```
KEEP: <filename> | <agent-name> | <one-line reason>
DELETE: <filename> | <agent-name> | <one-line reason>
```

Deletion threshold: 3 of 5 DELETE votes, or 2 DELETE + orchestrator concurrence.
The orchestrator resets this file each session after tallying.

---
KEEP: caustics-maslov-half-density.md | student | half-density framework for semiclassical caustic analysis
KEEP: deformation-equivalence-physical.md | student | resolves tension between deformation equivalence and canonical half-density selection
KEEP: efimov-groupoid-sketch.md | student | tangent groupoid formulation of Efimov limit cycles with RCP channels
KEEP: harish-chandra-vhd-geometric-interpretation.md | student | geometric interpretation of V_HD via Weyl denominator eigenvalue
KEEP: integrable-systems-rcp.md | student | Stage 2.5 exploration of integrable systems and isomonodromy deformation
KEEP: nonperturbative-contact-pade.md | student | non-perturbative content recovery via Pade approximation from contact expansion
KEEP: odd-d-scalarization-parity.md | student | parity obstruction to odd-d half-density scalarization via monomial sieve
KEEP: oq1a-planck-area-fundamental.md | student | Planck area versus hbar fundamentality question in RCP framework
KEEP: ordering-unitarity-dilation-generator.md | student | alpha-discretized Hamiltonian and dilation generator self-adjointness families
KEEP: p42-extensions-interacting-curved.md | student | P4.2 extensions to interacting systems and curved configuration spaces
KEEP: p42-hypothesis-reduction.md | student | reduction of P4.2 hypotheses via composition theorems from four to three
KEEP: planck-area-geometric-channel.md | student | geometric normalization compatibility A_geom as motivation for integrality sieve
KEEP: quantum-groups-lattice-composition.md | student | quantum group structure from lattice discretization of composition laws
KEEP: renormalization-semigroup-mechanics.md | student | renormalization as semigroup worked out in weakly coupled oscillator example
KEEP: resurgence-composition-bridge.md | student | resurgence structure organization by composition axiom via Borel convolution
KEEP: seeley-dewitt-a1-zero.md | student | universal vanishing of a1 coefficient via half-density Laplacian conjugation
KEEP: tangent-groupoid-quantization-bridge.md | student | tangent groupoid framework for composition law and deformation quantization
KEEP: vhd-product-warped-additivity.md | student | product and warped product decomposition of V_HD on Riemannian manifolds
KEEP: wick-rotation-representation-channel.md | student | Wick rotation as representation-channel operation in RCP axioms
KEEP: planck-area-geometric-channel.md | critic | THREE-AGENT consensus on A_geom as PA-H2.5a motivation; clean exposition with open k=0 problem
KEEP: caustics-maslov-half-density.md | critic | Standard material but resolves a genuine tension in the delta-objects paper; draft Remark 3.5c is useful
KEEP: ordering-unitarity-dilation-generator.md | critic | Clean derivation of alpha=1/2 from symmetry; connects unitarity to half-density prescription
KEEP: deformation-equivalence-physical.md | critic | Four-layer stratification with corrected Layer 2; observability test is concrete and useful for paper claims
KEEP: harish-chandra-vhd-geometric-interpretation.md | critic | THREE-AGENT verified HC interpretation of V_HD=-|rho|^2; erroneous intermediates documented but not promoted
DELETE: efimov-groupoid-sketch.md | critic | Speculative groupoid sketch with no verification; Q3 acknowledged as OVERCLAIM; no promotable result after multiple sessions
KEEP: nonperturbative-contact-pade.md | critic | Comprehensive OQ4 treatment: tree Pade exact, loop accumulation, EH resurgence, conformal Pade — all verified
KEEP: caustics-maslov-half-density.md | computationalist | Clean derivation of Maslov index in HD framework; connects to paper Remark 3.5c; cross-ref with Blattner/BKS confirmed
KEEP: odd-d-scalarization-parity.md | critic | Parity lemma is clean and important for planck-area paper scope; d=3 transmutation witness is concrete
KEEP: oq1a-planck-area-fundamental.md | critic | Central OQ1a analysis with Buckingham-pi uniqueness, b-calculus extensions, and PA hypothesis ladder; FOUR-AGENT
KEEP: deformation-equivalence-physical.md | computationalist | Four-layer stratification + observability test: explicit computation verifies deformation equivalence is physical, not merely formal
KEEP: p42-extensions-interacting-curved.md | critic | Closes three free-particle-artifact objections to P4.2; Mehler + Van Vleck + OQ3 + ordering witnesses — core project content
KEEP: p42-hypothesis-reduction.md | critic | Documents reduction from 4 to effectively 1 axiom (composition); central to OQ2 and paper P4.2 claims
KEEP: renormalization-semigroup-mechanics.md | critic | Concrete QM worked example of RG semigroup property; supports cornerstone section 10.1
KEEP: resurgence-composition-bridge.md | critic | FOUR-AGENT; Borel convolution semigroup theorem and alien Leibniz rule are provable results linking P4.2 to resurgence
KEEP: efimov-groupoid-sketch.md | computationalist | Contains verified s0 numerics (Brent, residual 8.88e-16) and THREE-AGENT verdict on Q1-Q3; sketch section is labelled speculative
DELETE: seeley-dewitt-a1-zero.md | critic | Thm M4.1 (a1=0) correct but R26 showed most downstream claims WRONG (operator misID O2 vs O3); superseded by BB3 definitive resolution
KEEP: tangent-groupoid-quantization-bridge.md | critic | Connes tangent groupoid + Lackman groupoid path integrals connect composition to rigorous deformation quantization
KEEP: harish-chandra-vhd-geometric-interpretation.md | computationalist | THREE-AGENT approved; HC proof that V_HD=-|rho|^2 is determined by Weyl denominator eigenvalue; FdV numerics SU(2,3,4) verified
DELETE: vhd-product-warped-additivity.md | critic | Content absorbed into p42-extensions Part 7; chart-dependence corrections already in paper D9.1n; redundant
KEEP: wick-rotation-representation-channel.md | critic | Useful classification of Wick rotation as A3 (representation channel); lapse-based literature connection is solid
DELETE: quantum-groups-lattice-composition.md | critic | Pure conjecture with no verification; lattice q-deformation speculation has no concrete result or agent consensus
KEEP: integrable-systems-rcp.md | critic | Painleve/isomonodromy as Stage 2.5 is well-motivated; subsumes painleve notebook content after merger
DELETE: integrable-systems-rcp.md | computationalist | Contains session-log headers (Sources: lines), negative result in §8 is the main finding; content superseded by resurgence-composition-bridge.md and nonperturbative-contact-pade.md; Stage 2.5 exploratory scaffold not load-bearing
KEEP: nonperturbative-contact-pade.md | computationalist | Rich notebook: Yukawa pole recovery, vacuum polarization branch cut, EH resurgence, BW anharmonic, instanton sector, conformal Pade; all with SymPy/numpy verification
KEEP: odd-d-scalarization-parity.md | computationalist | Parity lemma (integer-dim couplings blocked for half-integer d/2) is clean and necessary for planck-area paper; 3D delta witness verified
KEEP: oq1a-planck-area-fundamental.md | computationalist | Large notebook with FOUR-AGENT verification of L_P^2 uniqueness; Seeley-DeWitt a_1=0 coincidences; b-calculus n_+=1 for all d; D=4 coincidences table; all computationally backed
KEEP: ordering-unitarity-dilation-generator.md | computationalist | Clean computation: symmetry defect i*hbar*(2*alpha-1) forces alpha=1/2; Stone theorem for R_+; domain dependence for R fully analysed
KEEP: p42-extensions-interacting-curved.md | computationalist | Mehler kernel composition verified algebraically; curved-space Van Vleck factorization; 5-class singular dynamics table; impulse kernel SymPy-verified; Part 9 de Sitter D=4 coincidence THREE-AGENT
KEEP: p42-hypothesis-reduction.md | computationalist | Exponential uniqueness theorem + Levy-Khintchine obstruction reduce P4.2 hypotheses 4->3; cornerstone-load-bearing; RCP-R6.3 closed
KEEP: planck-area-geometric-channel.md | computationalist | A_geom motivation for PA-H2.5a is clean; THREE-AGENT; provides physical justification for integrality sieve beyond aesthetics
KEEP: quantum-groups-lattice-composition.md | computationalist | Borel convolution semigroup theorem from composition; alien calculus Leibniz rule; lattice q-deformation analysis; cornerstone-adjacent
KEEP: planck-area-geometric-channel.md | mathematician | Multi-agent verified analysis of A_geom as motivation for PA-H2.5a; sound geometric motivation supporting cornerstone hypothesis ladder
KEEP: renormalization-semigroup-mechanics.md | computationalist | Concrete QM toy model for RG semigroup; scheme-dependence analysis; supports cornerstone §10 claims
KEEP: resurgence-composition-bridge.md | computationalist | FOUR-AGENT: Borel convolution from composition (provable); alien Leibniz rule; Stokes factorization C_{n,m}=C_{1,0}^n C_{0,1}^m; cornerstone §§15 RESOLVED
KEEP: caustics-maslov-half-density.md | mathematician | Standard Maslov index and metaplectic structure treated carefully; caustics as projection artifacts adds geometric value to the half-density framework
KEEP: ordering-unitarity-dilation-generator.md | mathematician | Rigorous α=1/2 unitarity selection for H=qp with explicit symmetry defect computation; directly supports ordering axiom derivation
KEEP: deformation-equivalence-physical.md | mathematician | Four-layer stratification with Morita and Kontsevich content; deformation equivalence is physical claim is substantiated and multi-agent verified
KEEP: seeley-dewitt-a1-zero.md | computationalist | Thm M4.1: a_1(Delta_{1/2})=0 universally; a_k on S^3 closed forms; D=4 coincidence a_2=0 on S^d only d=3; scripts in tmp/ verified
KEEP: harish-chandra-vhd-geometric-interpretation.md | mathematician | Three-agent verified; V_HD = -|ρ|² identification with Harish-Chandra radial formula is carefully scoped and supports cornerstone §§11 content
KEEP: efimov-groupoid-sketch.md | mathematician | Part 2 three-agent verified (s₀=1.006237825 numerics confirmed, Q1-Q3 settled); Part 1 groupoid sketch explicitly labeled tentative and does not contaminate verified results
KEEP: nonperturbative-contact-pade.md | mathematician | Extensive and well-verified: Pade recovery, EH Lagrangian resurgence, anharmonic oscillator, Voros verification, conformal Pade all checked; high-value satellite content
KEEP: tangent-groupoid-quantization-bridge.md | computationalist | Tangent groupoid bridges composition law to deformation quantization; Lackman 2023-2024 provides rigorous path-integral groupoid convolution; load-bearing for TGB satellite
KEEP: vhd-product-warped-additivity.md | computationalist | Thm C5.1 (product additivity) algebraically clean; warped product decomposition with f^{-2} angular term; FOUR-AGENT; BB5 correctly promoted
KEEP: planck-area-geometric-channel.md | physicist | THREE-AGENT verified; A_geom motivation for PA-H2.5a directly supports Planck area paper
KEEP: caustics-maslov-half-density.md | physicist | Maslov index and half-density at caustics; clean correct exposition connected to delta-objects paper
KEEP: ordering-unitarity-dilation-generator.md | physicist | Symmetry defect computation for dilation generator family; alpha=1/2 selection verified
KEEP: deformation-equivalence-physical.md | physicist | TWO-AGENT; four-layer stratification supporting Section 7 and 10.2; Morita classification RCP-Rep-P1.1
KEEP: harish-chandra-vhd-geometric-interpretation.md | physicist | THREE-AGENT; core V_HD=-|rho|^2 result on Lie groups; Weyl denominator eigenvalue novel
KEEP: efimov-groupoid-sketch.md | physicist | THREE-AGENT verified numerics s0=1.006; Efimov/PSL(2,R) groupoid connection; OQ3 resolved
KEEP: nonperturbative-contact-pade.md | physicist | Large high-value notebook; Pade recovery, EH Lagrangian, vacuum polarization, contact universality all verified
KEEP: odd-d-scalarization-parity.md | physicist | Parity lemma, transmutation, d=3 witness with scattering length; directly relevant to Planck area paper
KEEP: oq1a-planck-area-fundamental.md | physicist | OQ1a analysis at 5 validation levels; Voros bridge, b-calculus; publication-grade with multiple agent approvals
KEEP: p42-extensions-interacting-curved.md | physicist | Very large; Mehler kernel, curved spaces, constraint forces, OQ3 Level 2; Parts 1-9 all active
KEEP: p42-hypothesis-reduction.md | physicist | Exponential weight uniqueness, Levy-Khintchine obstruction; 4->3 hypothesis reduction is core theoretical result
KEEP: renormalization-semigroup-mechanics.md | physicist | RG as semigroup; Stone/Hille-Yosida theorem; RCP-R7.2 paper edits sent; active thread
KEEP: resurgence-composition-bridge.md | physicist | THREE-AGENT; alien calculus Leibniz rule forced by composition; paper edits RCP-Res-P1.1 sent
KEEP: seeley-dewitt-a1-zero.md | physicist | Grade-1 error documented (R26 retraction); keep because HC content sec11 correct and error documentation serves future agents
KEEP: tangent-groupoid-quantization-bridge.md | physicist | Connes tangent groupoid; Lackman groupoid path integrals; foundational connection to composition law
KEEP: vhd-product-warped-additivity.md | physicist | FOUR-AGENT verified; product additivity Thm C5.1; S^3 V_HD correction; candidate D9.1q counterexample
KEEP: wick-rotation-representation-channel.md | physicist | Wick rotation as RCP A3; lapse-based approach (arXiv:2406.06047); lapse preserves foliation structure
KEEP: quantum-groups-lattice-composition.md | physicist | Quantum groups from lattice discretization; connects composition law to q-deformations
KEEP: integrable-systems-rcp.md | physicist | Stage 2.5; isomonodromy, Painleve equations, Efimov limit cycles as RCP; active research thread
KEEP: odd-d-scalarization-parity.md | mathematician | Parity lemma proving monomial sieve is even-d filter is clean and correct; d=3 witness + transmutation escape add genuine value
KEEP: oq1a-planck-area-fundamental.md | mathematician | Extensive four-agent verified notebook; OQ1a hypothesis ladder H2.3-H2.5, b-calculus, Seeley-DeWitt D=4 coincidences, Voros bridge all carefully developed; cornerstone-critical
KEEP: p42-extensions-interacting-curved.md | mathematician | Mehler kernel, curved-space witnesses (S², S³, H²), V_HD on Lie groups, impulse kicks, singular dynamics classification; extensive and well-verified
KEEP: wick-rotation-representation-channel.md | computationalist | Lapse-based Wick rotation as A3 representation operation; literature discovery (arXiv:2406.06047); connects to RCP A3 channel identification
KEEP: p42-hypothesis-reduction.md | mathematician | Levy-Khintchine obstruction proof, exponential weight uniqueness, d/2 uniqueness theorem, all-orders treatment all sound; reduces P4.2 to ~3 effective hypotheses
KEEP: renormalization-semigroup-mechanics.md | mathematician | RG as semigroup, Butcher product correction, Stone/Hille-Yosida channels; computationalist verified; strong connection between RG and composition semigroup
KEEP: resurgence-composition-bridge.md | mathematician | Borel convolution semigroup, alien Leibniz rule from (C), instanton lattice rigidity, Stokes factorization, bion forcing theorem; two-model verified; central to resurgence satellite
KEEP: seeley-dewitt-a1-zero.md | mathematician | §11 HC interpretation correct and valuable (R25 CONFIRMED); §§12-13 apply correctly to conformal operator; retain for these sections despite Grade-1 error in Thm M4.1 (§§2-10 wrong, operator misidentification confirmed by Critic R26)
KEEP: tangent-groupoid-quantization-bridge.md | mathematician | Well-developed bridge: Connes tangent groupoid, Lackman groupoid path integrals, d/2 from groupoid convolution; RCP channels mapped to groupoid fiber structure; solid literature foundation
KEEP: vhd-product-warped-additivity.md | mathematician | Product additivity theorem C5.1 proven, warped product decomposition computed, S³ correction (full non-constant V_HD vs radial-sector-only), S²×S² counterexample; numerically verified
KEEP: wick-rotation-representation-channel.md | mathematician | Wick rotation as RCP-A3 (representation channel) is structurally correct; lapse-based formulation (arXiv:2406.06047) adds mathematical precision; Critic note correctly flags duplication with RCP-R7.1
KEEP: quantum-groups-lattice-composition.md | mathematician | Correct negative result (composition does NOT force q-deformation); weak Hopf algebra analysis of truncation, Kitaev-CS equivalence, and composition-compatible algebra category are sound exploratory findings
KEEP: integrable-systems-rcp.md | mathematician | Correct negative result (P8.1: (C) alone does NOT force isomonodromy; I_int axiom needed); Stage 2.5 branching diagram and Efimov comparison are valuable exploratory structure; sound methodology
