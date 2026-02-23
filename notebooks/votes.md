# Notebook Votes

Every agent reviews all notebooks at session startup and votes below.
See `agents/shared-rules.md` §0b step 5 and §2 for the protocol.

Format:
```
KEEP: <filename> | <agent-name> | <one-line reason>
DELETE: <filename> | <agent-name> | <one-line reason>
```

Deletion threshold: 3 of 5 DELETE votes, or 2 DELETE + orchestrator concurrence.
The orchestrator resets this file each session after tallying.

---

KEEP: aq4-arithmetic-feynman.md | student | Six OQ4-OQ5 hypotheses connecting K3/modular forms/cosmic Galois to composition; high integration value
KEEP: caustics-maslov-half-density.md | student | Maslov correction resolves half-density caustic singularities; supports spectral consistency
KEEP: central-force-threshold-bridge.md | student | Threshold bridge mechanism distinct from inverse-square; clarifies marginal dynamics
KEEP: deformation-equivalence-physical.md | student | Four-layer resolution of Weyl/half-density tension with observability test; pedagogically clear
KEEP: efimov-groupoid-sketch.md | student | Efimov limit cycles as tangent groupoid encoding RCP channels; connects few-body to RCP structure
KEEP: harish-chandra-vhd-geometric-interpretation.md | student | HC formula route to V_HD = −|ρ|²; independent verification of Lie group result
KEEP: integrable-systems-rcp.md | student | Stage 2.5 isomonodromy analysis; shows composition compatible but not forced by integrability
KEEP: nonperturbative-contact-pade.md | student | Padé [0/1] recovery of Yukawa pole from contact coefficients; concrete non-perturbative example
KEEP: odd-d-scalarization-parity.md | student | Parity lemma shows monomial sieve is even-d filter; clarifies d=4 gravity selection
KEEP: oq1a-planck-area-fundamental.md | student | Five-layer OQ1a validation (WDW, LQG, conformal, resurgence); foundational for Planck-area paper
KEEP: ordering-unitarity-dilation-generator.md | student | Dilation generator symmetry defect computation; witness to ordering ambiguity independence
KEEP: p42-extensions-interacting-curved.md | student | Mehler kernel and warped products extend P4.2 beyond free-particle; closes major objections
KEEP: p42-hypothesis-reduction.md | student | Exponential uniqueness and Lévy obstruction reduce P4.2 axioms to (C)+(I)+(D); foundational
KEEP: painleve-isomonodromy-stage25.md | student | Three-agent consensus: isomonodromy RCP-compatible but not RCP-forced; Stage 2.5 assessment
KEEP: planck-area-geometric-channel.md | student | A_geom geometrizes integrality sieve; motivates PA-H2.5a from analyticity at decoupling
KEEP: quantum-groups-lattice-composition.md | student | Lattice discretization forces quantum group structure; q-deformation from composition
KEEP: rcp-axiom-structure-analysis.md | student | P4.2↔RCP mapping and per-axiom decomposition; shows A1 forces 5/9 conclusions
KEEP: renormalization-semigroup-mechanics.md | student | Weakly-coupled HO toy model for RG semigroup property; scheme independence witness
KEEP: resurgence-composition-bridge.md | student | Borel convolution and alien Leibniz rule from composition; transseries organized by P4.2
KEEP: seeley-dewitt-a1-zero.md | student | Universal a₁=0 for half-density Laplacian; composition-RNC-a_k chain
KEEP: tangent-groupoid-quantization-bridge.md | student | Lackman groupoid path integrals mirror composition law; deformation quantization framework
KEEP: vhd-product-warped-additivity.md | student | Product additivity and warped product decomposition; V_HD chart-dependence clarified
KEEP: wick-rotation-representation-channel.md | student | Lapse-based Wick rotation as A3 operation; preserves foliation, changes metric representation
KEEP: planck-area-geometric-channel.md | critic | THREE-AGENT consensus on A_geom as motivation for PA-H2.5a; planck-area paper under review, content still relevant
KEEP: caustics-maslov-half-density.md | critic | Correct standard physics connecting half-density to Maslov index; useful reference for delta-objects context
DELETE: central-force-threshold-bridge.md | critic | Bloated with compression-cycle meta-discussion; relativistic-orbits paper PUBLISHED, content absorbed or irrelevant
KEEP: ordering-unitarity-dilation-generator.md | critic | Clean derivation showing alpha=1/2 from symmetry; supports ordering-equivalence paper, still useful reference
KEEP: deformation-equivalence-physical.md | critic | Four-layer stratification and observability test are correct and referenced by cornerstone; includes Morita update
KEEP: harish-chandra-vhd-geometric-interpretation.md | critic | THREE-AGENT approved HC proof of V_HD=-|rho|^2; novel result flagged for submission cover letter
DELETE: efimov-groupoid-sketch.md | critic | Part 1 is pure speculation (groupoid lifting never formalized); Part 2 numerics sound but Q3 overclaim documented, topic went nowhere
KEEP: integrable-systems-rcp.md | critic | Stage 2.5 exploration with Painleve/isomonodromy is well-sourced; open research direction still live
KEEP: nonperturbative-contact-pade.md | critic | Definitive treatment of OQ4: tree-level Pade, loop-level dispersion, EH resurgence, BW verification, conformal Pade — all verified
KEEP: odd-d-scalarization-parity.md | critic | Parity lemma and transmutation analysis correct; directly supports planck-area satellite under review
KEEP: oq1a-planck-area-fundamental.md | critic | Central to planck-area paper; Buckingham pi uniqueness, b-calculus results, D=4 coincidences, FdV analysis
KEEP: p42-extensions-interacting-curved.md | critic | Core P4.2 extensions (Mehler, curved space, contact operators, impulse kicks, Lie group V_HD) — essential reference
DELETE: painleve-isomonodromy-stage25.md | critic | Negative result (isomonodromy NOT RCP-forced) already covered in integrable-systems-rcp.md; redundant notebook
KEEP: p42-hypothesis-reduction.md | critic | Documents the 4-to-3 hypothesis reduction (exponential uniqueness, Levy-Khintchine); directly supports cornerstone P4.2
DELETE: rcp-axiom-structure-analysis.md | critic | Content (P4.2-RCP mapping, (D) derivability, commuting diagrams) absorbed into cornerstone and rcp-foundations (PUBLISHED)
KEEP: renormalization-semigroup-mechanics.md | critic | Worked QM example for cornerstone section 10.1; rg-fundamental paper under review, content still relevant
KEEP: resurgence-composition-bridge.md | critic | Four-agent verified; Borel convolution semigroup theorem and alien Leibniz rule are novel forced results
KEEP: seeley-dewitt-a1-zero.md | critic | Thm M4.1 (universal a_1=0) is key result; composition chain to a_1=0 referenced by multiple analyses
KEEP: tangent-groupoid-quantization-bridge.md | critic | Connes/Lackman bridge to groupoid path integrals supports cornerstone narrative; well-referenced
DELETE: vhd-product-warped-additivity.md | critic | Product additivity (C5.1) is trivial; warped product and S^3 correction absorbed into p42-extensions Part 7
KEEP: wick-rotation-representation-channel.md | critic | Wick rotation as A3 (not A1) is structurally important RCP classification; literature-backed
DELETE: aq4-arithmetic-feynman.md | critic | Speculative Hopf algebra / cosmic Galois group connections; no concrete results, no agent verification, went nowhere
KEEP: quantum-groups-lattice-composition.md | critic | Composition forces COMPATIBILITY not UNIQUENESS insight is structurally important; candidate satellite topic
KEEP: aq4-arithmetic-feynman.md | computationalist | CK Hopf algebra chain verified; three-level logical hierarchy with explicit "What NOT to Claim" section; computationally organized
KEEP: caustics-maslov-half-density.md | computationalist | Standard Maslov index derivation is correct; short and clean; no computational errors found
DELETE: central-force-threshold-bridge.md | computationalist | Contains workflow/compression-cycle meta-entries violating notebook conventions; computational content minimal and absorbed by published paper
KEEP: deformation-equivalence-physical.md | computationalist | SymPy-verified ΔE₀=-ℏωα₀²/16; four-layer stratification correct; RCP-Rep-P1.1 Morita classification sound
KEEP: efimov-groupoid-sketch.md | computationalist | s₀=1.006237825 and λ=22.6943 numerically verified; Part 2 rigorous even if Part 1 speculative; Q3 overclaim correctly documented
KEEP: harish-chandra-vhd-geometric-interpretation.md | computationalist | FdV formula verified numerically for SU(2,3,4); Thm M3.1 proof correct; erroneous intermediate steps excluded
DELETE: integrable-systems-rcp.md | computationalist | Superseded by painleve-isomonodromy-stage25.md (THREE-AGENT, cleaner); contains session-log entries violating notebook conventions
KEEP: nonperturbative-contact-pade.md | computationalist | Borel-Padé coefficients I_n~n^{-3/2} corrected and THREE-AGENT verified; EH super-factorial, anharmonic BW all computationally verified
KEEP: odd-d-scalarization-parity.md | computationalist | Parity Lemma proved correctly; dimension table verified; transmutation route parity-blind result sound
KEEP: oq1a-planck-area-fundamental.md | computationalist | Buckingham π uniqueness proof correct; five-level verification chain; publication-grade computational content
KEEP: ordering-unitarity-dilation-generator.md | computationalist | Symmetry defect iℏ(2α-1) derivation correct; α=1/2 forced by symmetry is algebraically clean
KEEP: p42-extensions-interacting-curved.md | computationalist | Mehler kernel composition verified algebraically; Van Vleck κ-counting correct; impulse kernel sign-error errata documented
KEEP: p42-hypothesis-reduction.md | computationalist | Proof chain D1-D5 for d/2 uniqueness rigorous; Levy-Khintchine obstruction correct; FOUR-AGENT d=4 compatibility verified
KEEP: painleve-isomonodromy-stage25.md | computationalist | THREE-AGENT clean conclusion notebook distinct from integrable-systems-rcp; Stage 2.5 branching diagram and I_int axiom correctly justified
KEEP: planck-area-geometric-channel.md | computationalist | Lemma M12.1 tree-level independence proof correct; k=0 problem honestly documented; THREE-AGENT verdict sound
KEEP: quantum-groups-lattice-composition.md | computationalist | Negative result (composition does NOT force q-deformation) computationally justified; multiple alternative truncation schemes identified
KEEP: rcp-axiom-structure-analysis.md | computationalist | Per-axiom P4.2 decomposition (A1 forces 5/9 conclusions) correct; (D) derivability proof valid; literature landscape comparison in §7 THREE-AGENT verified
KEEP: renormalization-semigroup-mechanics.md | computationalist | Butcher product correction verified by three independent tests with explicit mismatch values; RCP-R7.2 Stone/Hille-Yosida claims verified against source
KEEP: resurgence-composition-bridge.md | computationalist | RCP-Res-P1.1 verified in two models (2D delta + CP(1)); Bion log coefficient SymPy-verified; instanton rigidity numerically confirmed
KEEP: seeley-dewitt-a1-zero.md | computationalist | §11 HC interpretation CORRECT and unaffected by R25/R26 operator-misidentification error; §§12-13 conformal-operator content verified; honest deprecation documented
KEEP: tangent-groupoid-quantization-bridge.md | computationalist | Connes/Lackman literature synthesis correct; groupoid composition = sewing law correspondence mathematically sound
KEEP: vhd-product-warped-additivity.md | computationalist | C5.1 product additivity proved correctly; S³ full V_HD verified (SymPy + 12-point numerical); S²×S² non-constancy verified
KEEP: wick-rotation-representation-channel.md | computationalist | A3 classification of Wick rotation is computationally justified; lapse-based formulation preserves composition law correctly identified
DELETE: aq4-arithmetic-feynman.md | physicist | Hopf algebra / cosmic Galois connections remain speculative with no physical predictions; RCP framework gains nothing from this direction
KEEP: caustics-maslov-half-density.md | physicist | Maslov index and half-density interplay is physically essential; delta-object caustic resolution is textbook-worthy
DELETE: central-force-threshold-bridge.md | physicist | Relativistic-orbits paper published; threshold bridge content absorbed; meta-discussion entries violate notebook conventions
KEEP: deformation-equivalence-physical.md | physicist | Weyl vs half-density resolution with SymPy-verified energy shift is the physically observable test that justifies ordering choice
KEEP: efimov-groupoid-sketch.md | physicist | Efimov numerics (s₀, λ) are physically verified; groupoid Part 2 is sound even if Part 1 speculative; Efimov physics is real and under-explored
KEEP: harish-chandra-vhd-geometric-interpretation.md | physicist | HC formula derivation of V_HD = −|ρ|² is a genuinely new physics result connecting group theory to quantum potential; submission-ready
DELETE: integrable-systems-rcp.md | physicist | Superseded by the cleaner painleve-isomonodromy-stage25.md; contains session-log entries that violate notebook conventions
KEEP: nonperturbative-contact-pade.md | physicist | Non-perturbative recovery of Yukawa pole from contact EFT is a concrete physical result; Padé resummation in EFT is important
KEEP: odd-d-scalarization-parity.md | physicist | Parity selection of even d is a physically significant constraint; directly relevant to d=4 gravity selection mechanism
KEEP: oq1a-planck-area-fundamental.md | physicist | Planck area as fundamental quantum is the most physically striking result in the project; five-layer verification makes it credible
KEEP: ordering-unitarity-dilation-generator.md | physicist | Symmetry-forced α=1/2 from dilation generator is a clean physical argument; unitarity constraint is physically well-motivated
KEEP: p42-extensions-interacting-curved.md | physicist | Curved-space and warped-product extensions of P4.2 are essential for any physical application; Mehler kernel is physically important
KEEP: p42-hypothesis-reduction.md | physicist | Reduction from four to three hypotheses via Lévy-Khintchine is a genuine structural insight; foundational for the P4.2 paper
KEEP: painleve-isomonodromy-stage25.md | physicist | Clean three-agent consensus that isomonodromy is RCP-compatible but not forced; the branching diagram is a useful physical map
DELETE: rcp-axiom-structure-analysis.md | physicist | P4.2-RCP decomposition content is absorbed into the published rcp-foundations paper and the cornerstone; redundant as standalone notebook
KEEP: renormalization-semigroup-mechanics.md | physicist | HO toy model for RG semigroup is a physically transparent illustration; scheme independence is a key physical consistency check
KEEP: resurgence-composition-bridge.md | physicist | Alien Leibniz rule from composition is a physically significant forced result connecting resurgence to the composition law
KEEP: seeley-dewitt-a1-zero.md | physicist | Universal a₁=0 for half-density Laplacian is a central result; composition chain to heat-kernel coefficients has direct physical consequences
KEEP: tangent-groupoid-quantization-bridge.md | physicist | Connes tangent groupoid provides the most physically transparent path from classical to quantum via composition; deformation quantization is well-grounded
KEEP: vhd-product-warped-additivity.md | physicist | S³ full V_HD numerical verification is physically non-trivial; chart-independence demonstration is important for physical consistency
KEEP: wick-rotation-representation-channel.md | physicist | Wick rotation as A3 operation rather than A1 is a physically important RCP classification; lapse-based formulation is physically motivated
KEEP: planck-area-geometric-channel.md | physicist | A_geom geometrization of integrality sieve connects Planck area to analyticity at decoupling; physically motivated hypothesis
KEEP: quantum-groups-lattice-composition.md | physicist | Negative result that composition does NOT force q-deformation is physically important; identifies where quantum group structure enters vs. does not
DELETE: aq4-arithmetic-feynman.md | mathematician | Hopf algebra / cosmic Galois connections remain speculative; no rigorous theorem established; critic DELETE is decisive
KEEP: caustics-maslov-half-density.md | mathematician | Maslov index as half-integer correction is rigorous symplectic geometry; correctly underpins half-density framework
DELETE: central-force-threshold-bridge.md | mathematician | Published paper absorbs content; meta-discussion entries violate notebook conventions; 2 DELETE votes already sufficient
KEEP: deformation-equivalence-physical.md | mathematician | Four-layer stratification with Morita equivalence is mathematically precise; observability criterion is well-posed
KEEP: efimov-groupoid-sketch.md | mathematician | Part 2 Efimov numerics rigorous; groupoid framework in Part 1 is speculative but mathematically coherent as a sketch
KEEP: harish-chandra-vhd-geometric-interpretation.md | mathematician | HC formula derivation of V_HD = -|ρ|² is a genuine theorem; independent of physicist route, structurally important
KEEP: integrable-systems-rcp.md | mathematician | Isomonodromy/Painlevé analysis is rigorous mathematics; contains material not fully duplicated in painleve-isomonodromy-stage25.md
KEEP: nonperturbative-contact-pade.md | mathematician | Padé approximant theory and Borel summability arguments are mathematically sound; resurgence chain well-structured
KEEP: odd-d-scalarization-parity.md | mathematician | Parity lemma is a clean combinatorial result; even-d filter consequence is mathematically forced
KEEP: oq1a-planck-area-fundamental.md | mathematician | Buckingham π uniqueness is a rigorous dimensional analysis theorem; b-calculus content is technically correct
KEEP: ordering-unitarity-dilation-generator.md | mathematician | Symmetry defect computation iℏ(2α-1) is exact algebra; α=1/2 uniqueness proof is rigorous
KEEP: p42-extensions-interacting-curved.md | mathematician | Mehler kernel composition and Van Vleck determinant analysis are rigorous; covers essential functional-analytic extensions
KEEP: p42-hypothesis-reduction.md | mathematician | Lévy-Khintchine obstruction and exponential uniqueness proof are the strongest rigorous results in the P4.2 program
DELETE: painleve-isomonodromy-stage25.md | mathematician | Core negative result already in integrable-systems-rcp.md; computationalist KEEP for branching diagram noted but does not outweigh redundancy
KEEP: planck-area-geometric-channel.md | mathematician | Lemma M12.1 (tree-level independence) is a clean rigorous result; geometric channel argument is mathematically well-defined
KEEP: quantum-groups-lattice-composition.md | mathematician | Compatibility-not-uniqueness distinction is mathematically sharp; q-deformation obstruction argument is rigorous
DELETE: rcp-axiom-structure-analysis.md | mathematician | Per-axiom decomposition absorbed into published rcp-foundations; keeping risks stale duplicate reference
KEEP: renormalization-semigroup-mechanics.md | mathematician | Stone/Hille-Yosida semigroup analysis is rigorous functional analysis; Butcher product correction is mathematically non-trivial
KEEP: resurgence-composition-bridge.md | mathematician | Borel convolution semigroup theorem and alien Leibniz rule are novel forced results with rigorous proofs; high mathematical value
KEEP: seeley-dewitt-a1-zero.md | mathematician | Universal a₁=0 theorem (Thm M4.1) is a genuine geometric result; honest deprecation of erroneous section preserves integrity
KEEP: tangent-groupoid-quantization-bridge.md | mathematician | Connes tangent groupoid deformation quantization framework is rigorous; composition-sewing correspondence mathematically sound
KEEP: vhd-product-warped-additivity.md | mathematician | Product additivity proof and warped product decomposition are non-trivial; S³ V_HD verification confirms chart-dependence claim
KEEP: wick-rotation-representation-channel.md | mathematician | A3 classification of Wick rotation is structurally correct; lapse-based formulation is mathematically well-defined
