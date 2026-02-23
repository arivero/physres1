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
KEEP: planck-area-geometric-channel.md | mathematician | THREE-AGENT A_geom analysis, sound independence lemma M12.1
KEEP: caustics-maslov-half-density.md | mathematician | Standard but correctly connects Maslov index to half-density framework
KEEP: ordering-unitarity-dilation-generator.md | mathematician | Rigorous symmetry defect computation, essential self-adjointness analysis
KEEP: deformation-equivalence-physical.md | mathematician | Four-layer stratification corrected and verified, observability test sound
KEEP: harish-chandra-vhd-geometric-interpretation.md | mathematician | HC proof M3.1 verified THREE-AGENT, core boxed identity correct
KEEP: efimov-groupoid-sketch.md | mathematician | Verified PSL(2,R) numerics, clear Q3 overclaim documentation
KEEP: nonperturbative-contact-pade.md | mathematician | Comprehensive Pade/dispersion/Borel analysis with corrections applied
KEEP: odd-d-scalarization-parity.md | mathematician | Clean parity lemma proof, precise d=4 selection statement
KEEP: oq1a-planck-area-fundamental.md | mathematician | Buckingham pi uniqueness verified, critic sev-2 fix applied
KEEP: p42-extensions-interacting-curved.md | mathematician | P4.2 metric/potential independence established, errata documented
KEEP: p42-hypothesis-reduction.md | mathematician | Hypothesis count reduced to 3 via exponential uniqueness theorem
KEEP: renormalization-semigroup-mechanics.md | mathematician | Concrete QM worked example of RG semigroup property
KEEP: resurgence-composition-bridge.md | mathematician | Alien calculus Leibniz rule provable from composition, four-agent
KEEP: tangent-groupoid-quantization-bridge.md | mathematician | Rigorous groupoid framework connecting to composition law
KEEP: vhd-product-warped-additivity.md | mathematician | Theorem C5.1 correct, S3 correction documented, FOUR-AGENT
KEEP: wick-rotation-representation-channel.md | mathematician | Correct RCP-A3 classification with literature support
KEEP: quantum-groups-lattice-composition.md | mathematician | Well-posed question on q-deformation vs composition forcing
KEEP: integrable-systems-rcp.md | mathematician | Sound isomonodromy-composition connection, Stage 2.5 framing
KEEP: seeley-dewitt-a1-zero.md | mathematician | Theorem M4.1 universal a1=0 correct, retracted sections documented
KEEP: planck-area-geometric-channel.md | student | Solid three-agent analysis of A_geom as motivation for PA-H2.5a
KEEP: caustics-maslov-half-density.md | student | Clean exposition of Maslov index in half-density framework, connects to delta-objects
KEEP: ordering-unitarity-dilation-generator.md | student | Precise derivation that alpha=1/2 forced by symmetry, core to ordering story
KEEP: deformation-equivalence-physical.md | student | Four-layer stratification resolves Section 7 vs 10.2 tension, with observability test
KEEP: harish-chandra-vhd-geometric-interpretation.md | student | HC proof of V_HD=-|rho|^2, geometric interpretation of FdV formula
KEEP: efimov-groupoid-sketch.md | student | Verified Efimov numerics plus RCP connection, groupoid sketch speculative but valuable
KEEP: nonperturbative-contact-pade.md | student | Comprehensive treatment of Pade recovery, EH resurgence, BW verification, conformal Pade
KEEP: odd-d-scalarization-parity.md | student | Parity lemma and transmutation table sharpen the d=4 selection claim
KEEP: oq1a-planck-area-fundamental.md | student | Central to OQ1a, covers area-vs-hbar inversion, Voros bridge, b-calculus
KEEP: p42-extensions-interacting-curved.md | student | Closes three major free-particle-artifact objections to P4.2, very thorough
KEEP: p42-hypothesis-reduction.md | student | Reduces P4.2 from 4 to 3 effective hypotheses, foundational result
KEEP: renormalization-semigroup-mechanics.md | student | Concrete QM worked example of RG semigroup, supports cornerstone Section 10
KEEP: resurgence-composition-bridge.md | student | Four-agent verified Borel convolution semigroup and alien Leibniz rule from composition
KEEP: tangent-groupoid-quantization-bridge.md | student | Connects Connes groupoid to composition law via Lackman path integrals
KEEP: vhd-product-warped-additivity.md | student | Product additivity theorem and warped product decomposition, key technical results
KEEP: wick-rotation-representation-channel.md | student | Wick rotation as A3 operation with lapse-based literature support
KEEP: quantum-groups-lattice-composition.md | student | Explores q-deformation from lattice discretization, speculative but well-posed
KEEP: integrable-systems-rcp.md | student | Stage 2.5 exploration connecting isomonodromy to RCP, opens new research direction
KEEP: seeley-dewitt-a1-zero.md | student | Universal a1=0 theorem with composition chain, corrects D=4 specificity claims
KEEP: planck-area-geometric-channel.md | computationalist | THREE-AGENT A_geom analysis with clean independence lemma
KEEP: caustics-maslov-half-density.md | computationalist | Solid Maslov index connection to half-density framework
KEEP: ordering-unitarity-dilation-generator.md | computationalist | Rigorous alpha=1/2 derivation from unitarity symmetry defect
KEEP: deformation-equivalence-physical.md | computationalist | Four-layer stratification with observability test resolves key tensions
KEEP: harish-chandra-vhd-geometric-interpretation.md | computationalist | THREE-AGENT verified V_HD=-|rho|^2 on Lie groups
KEEP: efimov-groupoid-sketch.md | computationalist | PSL(2,R) numerics verified, Efimov-RCP connection valuable
KEEP: nonperturbative-contact-pade.md | computationalist | Comprehensive Pade/Borel/EH verification with numerical checks
KEEP: odd-d-scalarization-parity.md | computationalist | Clean parity obstruction proof with precise d=4 selection
KEEP: oq1a-planck-area-fundamental.md | computationalist | Central OQ1a analysis with Buckingham pi and Voros bridge
KEEP: p42-extensions-interacting-curved.md | computationalist | Closes free-particle-artifact objections with Mehler kernel analysis
KEEP: p42-hypothesis-reduction.md | computationalist | Hypothesis reduction 4->3 via exponential uniqueness, foundational
KEEP: renormalization-semigroup-mechanics.md | computationalist | Concrete QM example of RG semigroup with Butcher product fix
KEEP: resurgence-composition-bridge.md | computationalist | Borel convolution semigroup and alien Leibniz from composition law
KEEP: tangent-groupoid-quantization-bridge.md | computationalist | Rigorous Connes groupoid to composition law via Lackman
KEEP: vhd-product-warped-additivity.md | computationalist | Theorem C5.1 verified, warped product decomposition FOUR-AGENT
KEEP: wick-rotation-representation-channel.md | computationalist | Correct RCP-A3 classification with lapse-based argument
KEEP: quantum-groups-lattice-composition.md | computationalist | Well-posed q-deformation question from lattice discretization
KEEP: integrable-systems-rcp.md | computationalist | Sound isomonodromy-composition connection at Stage 2.5
KEEP: seeley-dewitt-a1-zero.md | computationalist | Theorem M4.1 a1=0 verified numerically R28, O2/O3 correction pending
KEEP: planck-area-geometric-channel.md | critic | THREE-AGENT A_geom analysis sound, independence lemma correct
KEEP: caustics-maslov-half-density.md | critic | Standard Maslov index material, correctly connects to half-density framework Ex 3.5b
KEEP: ordering-unitarity-dilation-generator.md | critic | Rigorous alpha=1/2 forcing from symmetry, essential self-adjointness checked
KEEP: deformation-equivalence-physical.md | critic | Four-layer stratification resolves tensions, observability test sound
KEEP: harish-chandra-vhd-geometric-interpretation.md | critic | HC identity verified THREE-AGENT, core boxed identity correct
DELETE: efimov-groupoid-sketch.md | critic | Pure speculation, Q3 OVERCLAIM, no verification path, groupoid connection unsubstantiated
KEEP: nonperturbative-contact-pade.md | critic | Comprehensive and well-verified numerical analysis across multiple domains
KEEP: odd-d-scalarization-parity.md | critic | Clean parity lemma, precise d=4 selection mechanism via monomial sieve
KEEP: oq1a-planck-area-fundamental.md | critic | Central OQ1a notebook, Buckingham pi uniqueness verified, sev-2 fix applied
KEEP: p42-extensions-interacting-curved.md | critic | Closes three free-particle-artifact objections, Mehler/Van Vleck analysis thorough
KEEP: p42-hypothesis-reduction.md | critic | Hypothesis count 4->3 via exponential uniqueness theorem, foundational
KEEP: renormalization-semigroup-mechanics.md | critic | Concrete QM worked example of RG semigroup, supports cornerstone Section 10
KEEP: resurgence-composition-bridge.md | critic | Alien calculus Leibniz rule provable from composition, four-agent verified
KEEP: tangent-groupoid-quantization-bridge.md | critic | Rigorous groupoid framework, d/2 exponent from groupoid composition
DELETE: vhd-product-warped-additivity.md | critic | Absorbed into p42-extensions Part 7, chart-dependence in D9.1n
KEEP: wick-rotation-representation-channel.md | critic | Correct RCP-A3 classification, lapse-based approach well-supported
DELETE: quantum-groups-lattice-composition.md | critic | Pure conjecture, no agent consensus, Level 3 speculation without path to verification
KEEP: integrable-systems-rcp.md | critic | Sound isomonodromy-composition connection, Stage 2.5 framing appropriate
DELETE: seeley-dewitt-a1-zero.md | critic | Thm M4.1 correct but downstream O2/O3 confusion invalidated most sections per R26
KEEP: caustics-maslov-half-density.md | physicist | clean BKS-composition bridge with TWO-AGENT Prop M7.1
KEEP: deformation-equivalence-physical.md | physicist | four-layer stratification resolves apparent tension, observability test complete
KEEP: nonperturbative-contact-pade.md | physicist | comprehensive OQ4 treatment with loop-level computation and conformal Pade
KEEP: odd-d-scalarization-parity.md | physicist | essential parity obstruction analysis for planck-area paper
KEEP: oq1a-planck-area-fundamental.md | physicist | central to OQ1a with Voros bridge and FOUR-AGENT uniqueness
KEEP: ordering-unitarity-dilation-generator.md | physicist | clean derivation of alpha=1/2 from symmetry with scope disclaimers
KEEP: p42-extensions-interacting-curved.md | physicist | closes three free-particle artifact objections with Mehler+VanVleck+singular dynamics
KEEP: p42-hypothesis-reduction.md | physicist | foundational hypothesis reduction from 4 to 1 axiom
KEEP: planck-area-geometric-channel.md | physicist | A_geom motivation for PA-H2.5a with THREE-AGENT consensus
KEEP: renormalization-semigroup-mechanics.md | physicist | RG semigroup worked example with Stone/HY reversibility analysis
KEEP: vhd-product-warped-additivity.md | physicist | product additivity theorem C5.1 and warped product decomposition
KEEP: tangent-groupoid-quantization-bridge.md | physicist | groupoid foundation for composition-law approach
KEEP: seeley-dewitt-a1-zero.md | physicist | core SD coefficient analysis with a1=0 theorem and D=4 coincidences
KEEP: caustics-maslov-half-density.md | computationalist | BKS-composition parallel + Prop M7.1 valuable for half-density universality argument
KEEP: deformation-equivalence-physical.md | computationalist | Four-layer stratification + observability test are rigorous and well-verified
KEEP: nonperturbative-contact-pade.md | computationalist | Contains my verified computations (Pade, EH, BW, conformal Pade); core OQ4 content
KEEP: odd-d-scalarization-parity.md | computationalist | Parity lemma and transmutation route are clean results supporting planck-area paper
KEEP: oq1a-planck-area-fundamental.md | computationalist | Comprehensive OQ1a treatment with 5-level validation and FOUR-AGENT consensus on key results
KEEP: ordering-unitarity-dilation-generator.md | computationalist | Clean alpha=1/2 selection proof from symmetry/unitarity; foundational for ordering arguments
KEEP: p42-extensions-interacting-curved.md | computationalist | Closes three major P4.2 generality objections (interacting, curved, combined); core project content
KEEP: p42-hypothesis-reduction.md | computationalist | Documents hypothesis reduction from 4 to 1 axiom; central to composition-forcing narrative
KEEP: planck-area-geometric-channel.md | computationalist | A_geom analysis and PA-H2.5a motivation are THREE-AGENT; supports planck-area paper
KEEP: renormalization-semigroup-mechanics.md | computationalist | Concrete QM worked example for RG semigroup property; useful for RG-fundamental paper
KEEP: vhd-product-warped-additivity.md | computationalist | Product additivity theorem C5.1 and warped product corrections are FOUR-AGENT verified
KEEP: tangent-groupoid-quantization-bridge.md | computationalist | Lackman/Connes groupoid framework is the mathematical backbone of the project thesis
KEEP: seeley-dewitt-a1-zero.md | computationalist | Thm M4.1 + SD coefficient computations + SU(3) exponential structure; my primary research contributions
KEEP: caustics-maslov-half-density.md | student | stable research content
KEEP: deformation-equivalence-physical.md | student | stable research content
KEEP: nonperturbative-contact-pade.md | student | stable research content
KEEP: odd-d-scalarization-parity.md | student | stable research content
KEEP: oq1a-planck-area-fundamental.md | student | stable research content
KEEP: ordering-unitarity-dilation-generator.md | student | stable research content
KEEP: p42-extensions-interacting-curved.md | student | stable research content
KEEP: p42-hypothesis-reduction.md | student | stable research content
KEEP: planck-area-geometric-channel.md | student | stable research content
KEEP: renormalization-semigroup-mechanics.md | student | stable research content
KEEP: seeley-dewitt-a1-zero.md | student | stable research content
KEEP: tangent-groupoid-quantization-bridge.md | student | stable research content
KEEP: vhd-product-warped-additivity.md | student | stable research content
KEEP: caustics-maslov-half-density.md | physicist | BKS-composition parallel verified TWO-AGENT, Prop M7.1 genuine result
KEEP: deformation-equivalence-physical.md | physicist | four-layer stratification + observability test; key Layer 2 correction
KEEP: nonperturbative-contact-pade.md | physicist | comprehensive OQ4 treatment; Pade vs dispersion vs Borel classification
KEEP: odd-d-scalarization-parity.md | physicist | parity lemma + transmutation route for odd d; essential for planck-area scope
KEEP: oq1a-planck-area-fundamental.md | physicist | OQ1a central notebook; inversion hbar=LpCubed/G, Voros bridge, FdV strange formula
KEEP: ordering-unitarity-dilation-generator.md | physicist | clean alpha=1/2 uniqueness proof from symmetry defect
KEEP: p42-extensions-interacting-curved.md | physicist | Mehler+curved space extensions close free-particle-artifact objections
KEEP: p42-hypothesis-reduction.md | physicist | exponential uniqueness + Levy-Khintchine; reduces P4.2 to 3 axioms
KEEP: planck-area-geometric-channel.md | physicist | A_geom motivation for PA-H2.5a; THREE-AGENT consensus on scope
KEEP: renormalization-semigroup-mechanics.md | physicist | concrete QM worked example of RG semigroup from Section 10.1
KEEP: seeley-dewitt-a1-zero.md | physicist | central SD coefficient notebook; Thm M4.1, spectral dictionary, D=4 coincidences
KEEP: tangent-groupoid-quantization-bridge.md | physicist | Lackman groupoid path integral + Connes tangent groupoid bridge
KEEP: vhd-product-warped-additivity.md | physicist | Thm C5.1 product additivity + warped decomposition + S3 correction
KEEP: caustics-maslov-half-density.md | computationalist | BKS-composition parallel + Prop M7.1 for half-density universality
KEEP: deformation-equivalence-physical.md | computationalist | Four-layer stratification + observability test well-verified
KEEP: nonperturbative-contact-pade.md | computationalist | Core OQ4 Pade/Borel/EH computations verified numerically
KEEP: odd-d-scalarization-parity.md | computationalist | Clean parity lemma supporting planck-area d=4 selection
KEEP: oq1a-planck-area-fundamental.md | computationalist | Central OQ1a with Buckingham pi and Voros bridge
KEEP: ordering-unitarity-dilation-generator.md | computationalist | Clean alpha=1/2 forcing from unitarity symmetry
KEEP: p42-extensions-interacting-curved.md | computationalist | Closes free-particle-artifact objections with Mehler+VanVleck
KEEP: p42-hypothesis-reduction.md | computationalist | Hypothesis reduction 4->1 axiom, foundational result
KEEP: planck-area-geometric-channel.md | computationalist | THREE-AGENT A_geom analysis and PA-H2.5a motivation
KEEP: renormalization-semigroup-mechanics.md | computationalist | Concrete QM RG semigroup worked example
KEEP: seeley-dewitt-a1-zero.md | computationalist | Thm M4.1 + SD coefficients + SU(3) exponential structure; primary contributions
KEEP: tangent-groupoid-quantization-bridge.md | computationalist | Lackman/Connes groupoid backbone of project thesis
KEEP: vhd-product-warped-additivity.md | computationalist | Product additivity C5.1 and warped product FOUR-AGENT verified
KEEP: planck-area-geometric-channel.md | mathematician | THREE-AGENT A_geom analysis, sound independence lemma
KEEP: ordering-unitarity-dilation-generator.md | mathematician | Rigorous alpha=1/2 from unitarity, essential self-adjointness
KEEP: deformation-equivalence-physical.md | mathematician | Four-layer stratification verified, observability test sound
KEEP: nonperturbative-contact-pade.md | mathematician | Comprehensive Pade/Borel analysis with corrections applied
KEEP: odd-d-scalarization-parity.md | mathematician | Clean parity lemma proof, precise d=4 selection
KEEP: oq1a-planck-area-fundamental.md | mathematician | Buckingham pi uniqueness verified, Voros bridge, b-calculus
KEEP: p42-extensions-interacting-curved.md | mathematician | P4.2 metric/potential independence established, errata documented
KEEP: p42-hypothesis-reduction.md | mathematician | Hypothesis count reduced to 3 via exponential uniqueness
KEEP: renormalization-semigroup-mechanics.md | mathematician | Concrete QM worked example of RG semigroup property
KEEP: vhd-product-warped-additivity.md | mathematician | Theorem C5.1 correct, warped decomposition, FOUR-AGENT
KEEP: caustics-maslov-half-density.md | mathematician | BKS-composition bridge via Prop M7.1, groupoid convolution
KEEP: tangent-groupoid-quantization-bridge.md | mathematician | Rigorous groupoid framework, three bridges analyzed, CFT-P1.1 Stage 3
KEEP: seeley-dewitt-a1-zero.md | mathematician | Central SD notebook: retracted secs documented, §14 corrected SD THREE-AGENT, CMP11.2 proved M8.1, Gangolli M9.1
