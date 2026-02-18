# Research Roadmap: "From Newton to the Path Integral"
## Six-month horizon — written 2026-02-18

**Author:** Alejandro Rivero
**Paper:** `paper/main.md` (~1810 lines). Central claim: the chain Newton → action → path integral → deformation quantization → renormalization is a single consistency problem about composable refinement limits.

---

## I. Honest standing of the paper

### What IS a theorem
**P4.2** (ℏ forced by composition + identity limit + dimensional homogeneity) is a real result. The hypothesis reduction in Remarks P4.2c-h brings the effective axiom count from 4 to 1: composition alone, on ℝ^d with action-based dynamics, forces Gaussian kernels, the t^{-d/2} normalization, and a finite action scale ℏ. The content is close to known facts about Gaussian convolution semigroups and Lévy-Khintchine, but the *packaging as a forced-completion theorem* is original.

### What is honest narrative
The forced-completion chain (each stage is the minimum enrichment needed for consistency at the next level) is a compelling organizing principle. It reframes known physics as structural necessity. This is valuable — but it's a *reading* of the literature, not a discovery within it.

### What is vulnerable
- The path integral measure question (Section 9.4): Gaussian witnesses (Appendix 10.6) work, but nothing beyond quadratic potentials is proven.
- Some "derivations" in Sections 6-7 are heuristic bridge arguments in proposition clothing.
- Stage 4 (composition over dynamical geometry, Remark P9.1a) is open and may force the linear chain to branch.

### What a referee would say
"Individual results are known. The synthesis is interesting but claims of novelty should be carefully scoped. P4.2 is the strongest contribution — formalize it properly. The rest is well-written exposition of known connections."

---

## II. Threads worth sustained effort (ranked)

### 1. FORMALIZE P4.2 — the crown jewel
**Why:** It's the one claim that could stand as a theorem in a mathematics journal. A Lean 4 formalization would be definitive.
**Current state:** Initial Lean project at `formalization/RGLipschitz/` has the control map semigroup proven. The harder targets (Gaussian convolution closure, Lévy-Khintchine obstruction forcing α=2) are not yet started.
**Next steps:**
- Formalize the functional equation: if K*K closes on the same family and K→δ, then K is Gaussian. This is essentially Cramér's theorem or the characterization of Gaussian semigroups.
- Formalize P4.2d: dimensional homogeneity + semigroup → α=2 (no fractional Lévy processes).
- These are bounded, well-specified tasks with clear success criteria.
**Success criterion:** A Lean proof that checks — or a precise statement of what additional Mathlib infrastructure would be needed.
**Risk:** Low mathematical risk (the theorems are true), moderate engineering risk (Mathlib may lack needed semigroup/measure theory).

### 2. THE HALF-DENSITY STORY — most mathematically distinctive
**Why:** The claim that propagator composition is measure-free on bi-half-densities (H4.0, D4.0, D4.3) is the paper's most distinctive mathematical contribution. The conformal cancellation at D=4 (H4.0b) is a nontrivial structural check. Multiple unwritten companion satellites reference this.
**Current state:** Stated in the paper but no standalone development. The "half-density in QFT" satellite (H4.0b) doesn't exist yet.
**Next steps:**
- Write the half-density satellite: composition formula on |Ω|^{1/2} bundles, proof that the Van Vleck determinant is a bi-half-density, explicit comparison with the measure-dependent scalar formulation.
- Investigate whether the D=4 conformal cancellation and gauge-coupling marginality (H4.0c) reduce to a single group-theoretic fact about SO(4,2).
- Check Blattner's half-form pairing (1970s) — is the paper's claim genuinely beyond this?
**Success criterion:** A clean standalone note proving the measure-freedom claim with precise hypotheses, plus an honest assessment of overlap with Blattner/Woodhouse.
**Risk:** The mathematics is likely known to geometric quantization specialists. Value may be primarily expositional.

### 3. THE "FOUR FACES" CONJECTURE — highest risk/reward
**Why:** The claim that open systems, measurement, anomalies, and UV divergence are four faces of one obstruction (composition failure) is the paper's most ambitious idea. If sharpened into a theorem, it would be significant.
**Current state:** A conjecture with suggestive parallels but no formal framework. The first two faces (open systems, measurement) are essentially the same (partial trace). Anomalies and UV divergence are related but distinct.
**Next steps:**
- Look for a categorical/algebraic framework: all four as failures of a specific functor to preserve (co)limits.
- The symmetric monoidal category of quantum channels is a natural home — composition failures there are well-studied (Selinger, Coecke-Kissinger). Can anomalies and UV divergence be expressed as failures of functoriality in this setting?
- Read Freed's anomaly classification via invertible field theories — this is the state of the art on "anomalies as obstruction."
**Success criterion:** A precise definition of "composition obstruction" that specializes to all four cases, or a clear argument for why they're genuinely distinct.
**Risk:** HIGH. This may be too vague to sharpen. The four phenomena may share a family resemblance without a common formal root.

### 4. STRUCTURE vs CONTENT — the philosophical message
**Why:** "Composition forces structure (kernel form, d/2, exponential weight) but NOT content (which Lagrangian). Content enters only at renormalization." This is a crisp formulation of a known insight (QM is a framework, not a theory), but the refinement-specific version is distinctive.
**Current state:** Stated in the paper. Related to but distinct from Hardy (2001) and Chiribella-D'Ariano-Perinotti (2011) informational axioms.
**Next steps:**
- Write a short note comparing the paper's axioms with Hardy/Chiribella explicitly. Where do they agree? Where does the refinement approach give something the information-theoretic one doesn't?
- The key selling point: information-theoretic axioms are abstract; refinement axioms are *constructive* (you build the kernel explicitly at each stage). Emphasize this.
**Success criterion:** A 10-page comparison note suitable for Foundations of Physics or similar.
**Risk:** Low. The comparison is straightforward and would clarify the paper's position.

### 5. DECORATED TREES: the ODE→PDE→QFT bridge

**Why:** The paper's H6.2 and D6.2a-sg use rooted trees (Butcher group) to organize the ODE refinement story. The natural question is: what happens for PDEs / field theory? There is a three-level hierarchy of tree algebras that parallels the paper's three-level refinement chain:

- **Butcher trees (1972):** Unordered rooted trees. Organize B-series for ODE integrators (y' = f(y)). The Butcher group is the group of characters of the Connes-Kreimer Hopf algebra H_CK. This is the ODE/single-trajectory level.
- **Frabetti colored/planar trees (2000-2008):** Planar binary trees, non-commutative Hopf algebra. Extend Connes-Kreimer to QED (multiple propagator species: electron, photon). Brouder-Frabetti showed QED renormalization (Zimmermann forest formula) = antipode of this Hopf algebra. This handles multiple species but NOT spatial singularities.
- **Hairer decorated trees (2014, Fields Medal):** Decorated trees with regularity structures. Handle singular SPDEs (KPZ, Φ⁴₃, etc.). Bruned-Hairer-Zambotti (2019) proved that Hairer's BPHZ-type renormalization of regularity structures IS a Hopf-algebraic renormalization on decorated trees, explicitly connecting to Connes-Kreimer.

**The parallel to the paper's chain:**
| Paper's chain | Tree algebra |
|---|---|
| ODE well-posedness (Lipschitz, Picard) | Butcher trees / B-series |
| Quantum composition (path integral) | Connes-Kreimer / Frabetti colored trees |
| Field theory (RG, renormalization) | Hairer decorated trees / regularity structures |

**Current state:** The paper references Brouder (1999) and the Butcher-RG connection in H6.2, but doesn't mention Frabetti's colored extension or Hairer's decorated trees. The Frabetti work (coloring = multiple species) turned out to be a mathematical result without major physical payoff — it proved Connes-Kreimer extends to gauge theories but didn't simplify calculations. Hairer's regularity structures are the deeper development: they solve the PDE/spatial-singularity problem that colored trees alone don't address.

**Next steps:**
- Investigate whether Hairer's renormalization of regularity structures can be read through the paper's RCP lens. Hairer's BPHZ for regularity structures = a composition-compatible subtraction scheme for singular stochastic PDEs. Is this an instance of D6.0 (control map at fixed ruler) in the PDE setting?
- The Lipschitz condition enters here too: regularity structures handle solutions that are NOT classically Lipschitz (they live in Hölder spaces with negative exponents). This connects to the paper's Lipschitz→Kato→renormalizable hierarchy.
- A concrete target: write a note showing D6.2a (step-halving control map for ODEs) → Frabetti (colored control maps for multi-species) → Hairer (decorated control maps for spatial singularities) as three instances of the same algebraic pattern.

**Success criterion:** A note demonstrating the three-level tree-algebra hierarchy as a concrete instance of the paper's refinement chain, with explicit coproduct formulas at each level.
**Risk:** MEDIUM. The individual pieces are known (Butcher, Brouder, Frabetti, Hairer). The value is in showing they instantiate the paper's RCP pattern. May be seen as "just a dictionary" by specialists, but the dictionary itself would be useful.
**Key references:** Brouder hep-th/9904014 (1999), Brouder-Frabetti hep-th/0011161 (2000), Frabetti J. Algebra 319 (2008), Hairer Inventiones 2014, Bruned-Hairer-Zambotti 2019.

---

## IIb. Critical vulnerability: the EFT challenge to the refinement chain

### The ambiguity in the paper (after reading Sections 8-9)

The paper is genuinely ambiguous on whether the refinement chain demands UV completion or just scale-consistency:

- **P6.1 (line 946) explicitly takes Λ→∞:** "O_phys ≡ lim_{Λ→∞} O_Λ(g_B(Λ))." This is a UV-completion demand.
- **D6.0 (line 968) works at fixed ruler h > 0:** The control map τ_b compares at a fixed resolution without needing Λ→∞. This is EFT-compatible.
- **H6.1 (line 934) makes RG constitutive:** "the renormalization prescription is part of the definition of the continuum theory." Stronger than "RG is bookkeeping" but compatible with both Wilson and EFT.
- **P9.1 (line 1283)** says "infinite-mode assembly via renormalization yield field theory" — ambiguous between "the assembly must succeed" (UV completion) and "the attempt at assembly reveals what RG consistency requires" (EFT).

### Three possible readings

**Reading A (UV completion required):** The forced-completion chain predicts that the Standard Model must embed into something UV-complete. But φ⁴₄ triviality and the unsolved Yang-Mills existence problem are direct counterevidence. This is the strongest claim and the hardest to defend.

**Reading B (scale-consistency only):** Composition at each finite scale must be controlled; you don't need Λ→∞. This aligns with mainstream physics but the word "forced" loses force — the chain doesn't force a next stage, it organizes what we have.

**Reading C (the question is forced, not the answer):** The compositional structure forces you to ADDRESS the scale question — you can't ignore it. Whether the answer is "UV completion" or "controlled EFT with specified domain" depends on the specific theory. The framework forces the QUESTION, not the ANSWER. This is defensible and interesting: it predicts that any compositionally consistent theory must have a well-defined RG structure (understanding the flow), even if the flow doesn't extend to Λ=∞.

### Wilson vs EFT — a distinction the paper should make

Wilson (1971-74) cared about the FLOW: fixed points, relevant/irrelevant operators, universality, the global structure of theory space. The existence of UV fixed points (asymptotic freedom for QCD) was central. This is a program about what theories ARE.

The modern EFT doctrine (Weinberg 1979 folk theorem, Georgi 1993) takes Wilson's technology but discards his question: we don't need the UV completion, just the effective description below some Λ. This is post-Wilsonian, not Wilsonian.

The paper's D6.0 (control map at fixed ruler) is naturally Wilsonian — it asks about the structure of the flow, not about its UV endpoint. The paper's P6.1 (Λ→∞ limit) is pre-Wilsonian — it assumes the UV endpoint exists. This tension should be resolved.

### Recommended action for the paper

Add a paragraph in Section 8.1 or 9.4 clarifying:
> "P6.1 is stated with Λ→∞ for definiteness, but the compositional framework does not require that this limit exist. The essential requirement is D6.0: scale compatibility at each finite resolution. Whether the flow extends to all scales (asymptotic freedom/safety) or terminates at a finite cutoff (effective theory) is model-specific. What the framework forces is that the scale question must be answered — scale-dependent composition requires a control map τ, and the existence or non-existence of τ at arbitrarily fine scales is physically meaningful."

This is Reading C, and it is the strongest defensible position. It preserves "forced completion" (you must have RG structure) without committing to UV completion (the structure may terminate).

### Connection to constructive QFT

The constructive QFT existence question (Wightman axioms, Clay Millennium Yang-Mills) is the mathematical form of Reading A. Haag's theorem (free ≠ interacting Fock spaces) is a composition obstruction. The EFT response: we never needed the exact Fock space, just the effective one. Under Reading C, these existence questions are physically meaningful markers of where the control map τ breaks down — they're not about whether QFT "exists" in the abstract but about where compositional control ends.

---

## III. Dead ends — do not revisit

- **G (Planck area from scalarization):** WRONG. The demand for dimensionless scalar amplitudes is a convention; flat space has canonical Lebesgue scalarization; G enters circularly. The paper's own hedging is correct.
- **RG-Gronwall as a "new theorem":** It's Dahlquist's logarithmic norm (1958) repackaged. Connes-Kreimer and Brouder (1999) already formalized the Butcher-RG connection. The finite-scale version L(h)=μ(h)/h has at most marginal novelty. Don't oversell.
- **Lipschitz-Kato-renormalizable as a "hierarchy":** The individual pieces are known (Dahlquist, Simon 1982, Connes-Kreimer 2000). The unified framing is useful pedagogically but is not a theorem. Worth a short note for exposition, not a paper.

---

## IV. The user's own key insight

The derivative, the Lipschitz condition, and renormalization are three views of one thing: subtraction at a point, control of that subtraction, and running the control across scales. The paper's D6.3 (difference quotient as counterterm) is the seed. This is the conceptual engine of the whole project.

Connes would likely say "yes, that's the Hopf algebra" and consider it settled. The user sees foundational/organizational value that goes beyond what the algebraic formalism captures — specifically, the Lipschitz perspective connects to ODE well-posedness in a way the Hopf algebra does not.

**UPDATE (2026-02-18):** This insight has been developed into `paper/notes/trees-cornerstone.md`, which states the "Cornerstone Proposition": each edge of a Butcher tree is one counterterm subtraction (derivative). The exact flow is the "fully renormalized" character of H_CK. Quantization extends from one character to all characters (weighted sum). ℏ is forced by composition + identity. Renormalization handles divergences using the same coproduct. The honest gap: the path integral is not literally a sum over B-series characters (paths are Hölder-1/2, not C^∞); the identification works at the perturbative level. Non-perturbative content requires going beyond the tree algebra.

---

## V. Existing companion materials

| File | Content | Status |
|------|---------|--------|
| `paper/notes/lipschitz.md` | Lipschitz boundary of classical mechanics, ℏ as regularizer, Kato class | Complete, ~550 lines |
| `paper/notes/rg-lipschitz.md` | RG-Gronwall inequality, prior-art acknowledged (Dahlquist) | Complete with caveats, ~570 lines |
| `paper/notes/newton.md` | Newton's limit problem → ℏ must remain finite | Complete, ~60 lines |
| `formalization/RGLipschitz/` | Lean 4: ControlMap (proven), SubAdditive, Fekete, RGGronwall, Examples | Compiles need Mathlib; 1 sorry |
| `paper/main_es.md` | Spanish version (untracked) | Unknown state |
| `contImmediate.md` | Session-recovery notes (session bookkeeping) | For immediate context recovery only |

### Unwritten satellites referenced in main.md
- "Uncuttable as Controlled Refinement" (§1)
- Half-density in QFT (H4.0b) — **priority target**
- Action-angle indeterminacy (D4.2c)
- Ordering equivalence (§7.4)
- Rooted-tree bookkeeping (H6.2)
- Fermionic mediators (§8.1)
- RG-fundamental (§9.5 Package C)
- Path integral normalization (D3.5)
- RCP Foundations (P4.2h)

---

## VI. Key references for future work

- **Cramér's theorem / Gaussian semigroup characterization** — for formalizing P4.2
- **Blattner's half-form pairing (1970s)** — prior art check for half-density composition
- **Freed (anomalies via invertible field theories)** — state of the art for "four faces" thread
- **Hardy 2001, Chiribella-D'Ariano-Perinotti 2011** — comparison targets for structure vs content
- **Soderlind 2006** — logarithmic norm review (prior art for RG-Gronwall)
- **Simon 1982** — Kato class, Feynman-Kac (Lipschitz hierarchy)

---

## VII. Strategic question: where to publish

The paper's natural audience splits:
- **P4.2 formalized** → Journal of Mathematical Physics, or Letters in Mathematical Physics
- **The full narrative** → Reviews of Modern Physics (if ambitious), Foundations of Physics, or Studies in History and Philosophy of Modern Physics
- **Half-density satellite** → Journal of Geometry and Physics
- **Structure vs Content comparison** → Foundations of Physics

The Lean formalization of P4.2 would be a genuine contribution to the formalization community and could appear alongside the mathematical paper as a verified companion.
