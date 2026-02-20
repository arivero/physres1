# Cross-Paper Diagnostic: Overclaiming Pattern and Fix Recommendations
<!-- author: critic -->
Date: 2026-02-20

## 1. The Pattern

After reviewing four items in the project corpus — cornerstone Section 9.6
(P9.1/P9.1a), path-integral-normalization, ordering-equivalence, and
rcp-foundations — a systematic pattern emerges:

**The explicit calculations are sound. The interpretive framing overclaims.**

Specifically, the papers tend to present known mathematical results as if
they are consequences of the Refinement Compatibility Principle (RCP),
when in fact RCP provides an organizing framework (a way to view the results)
rather than a derivation engine (a way to produce the results).

## 2. Catalogue of Instances

### 2.1 Cornerstone Section 9.6 (P9.1)
- **Claim**: "Every known departure from the compositional framework has a
  structural explanation" — four failures listed as "H0.2 obstructions
  reappearing at higher levels."
- **Reality**: H0.2 lists three obstructions; P9.1 lists four different ones.
  The claimed mapping is not justified. The four departures (open systems,
  measurement, anomalies, UV divergence) are real but not derivable from
  the three H0.2 obstructions.
- **Pattern instance**: Retrofitting existing physics into the RCP narrative
  and claiming the narrative explains them.

### 2.2 Path-integral-normalization
- **Claim**: "Three independent arguments converge on d/2."
- **Reality**: One argument (composition) in three guises. The paper
  itself admits non-independence at line 408, contradicting line 400.
- **Pattern instance**: Presenting perspectives on one result as
  independent derivations to strengthen the appearance of convergence.

### 2.3 Ordering-equivalence
- **Claim**: "Half-density as canonical gauge, analogous to Lorenz gauge."
- **Reality**: Lorenz gauge preserves exact gauge invariance; ordering
  equivalence is approximate (Layer 3 differences are measurable in
  principle). The analogy is weaker than stated.
- **Pattern instance**: Upgrading an approximate equivalence to an
  exact gauge freedom via analogy.

### 2.4 RCP-foundations
- **Claim**: "Without the Noether charge, partition refinement would
  break symmetry. RCP forces its existence."
- **Reality**: Noether's theorem follows from action principle + symmetry,
  not from composition (A1). RCP does not force Noether's existence;
  Noether's theorem is compatible with RCP, which is a weaker statement.
- **Pattern instance**: Claiming RCP "forces" something that follows
  from pre-existing mathematics independent of RCP.

## 3. The Distinction

**What the mathematics proves (strong claims):**
- Composition semigroup + dimensional homogeneity forces d/2 normalization (D4.1a)
- Composition + physical setup forces kappa = hbar (P4.2)
- Composition + Fourier L^1 + measurability forces exponential form (P4.2c)
- Levy processes with alpha != 2 are dimensionally incompatible (P4.2d)
- 2D delta potential requires running coupling (Section 8 / RG-fundamental)

**What RCP adds (organizational claims, not derivations):**
- A unified language (partition/representation/scale) for three compatibility problems
- An operational falsifiability test: "does tau(theta) exist?"
- A narrative connecting calculus -> variational -> path integral -> RG as
  "forced completions" (but stage 2->3 is acknowledged as structural, not derived)
- A framework for STATING what the mathematical results mean together

The organizational contribution is genuine and valuable. The error is
presenting organization as derivation.

## 4. Fix Recommendations (applies to all papers)

### 4.1 Language fix: "forces" vs "organizes"
Replace:
- "RCP forces the existence of X" -> "RCP identifies X as a compatibility datum"
- "RCP derives X" -> "X is the constructive witness for the [channel] channel"
- "Independent arguments converge" -> "Multiple perspectives illuminate one constraint"

### 4.2 Structural fix: separate theorem from interpretation
Each paper should have a clear two-part structure:
- Part A: Mathematical result (composition forces d/2, etc.) — stated without RCP language
- Part B: RCP interpretation — how the result fits the compatibility framework

This prevents the interpretive framing from contaminating the mathematical claims.

### 4.3 Scope fix: state what RCP does NOT prove
Each paper should include an explicit scope boundary:
- "RCP is an organizing principle, not a derivation tool. The mathematical
  results (P4.2, d/2 forcing, etc.) are provable without RCP language.
  RCP's contribution is to identify these results as instances of a single
  structural pattern."

### 4.4 Referee defense
At peer review, a referee will ask: "What does RCP prove that we didn't
already know?" The honest answer is: "RCP proves nothing new in the narrow
mathematical sense. It identifies a structural pattern (composition
compatibility) that unifies known results and predicts where new results
should be found." This answer is defensible. The current framing
("RCP forces quantum mechanics") is not.

## 5. The Positive Case

Despite the overclaiming, the project has genuine strengths:

1. **P4.2 is a real theorem**: composition + physical setup forces hbar.
   This is provable without RCP language and is the project's strongest result.

2. **The d/2 forcing is clean**: the semigroup functional equation uniquely
   determines the normalization exponent. Well-calculated, well-presented.

3. **The single-axiom reduction is impressive**: showing that (D) and (I) are
   derivable from (C) is a genuine axiom-minimization result.

4. **The 2D delta RG example is concrete**: an explicit beta function, running
   coupling, and dimensional transmutation in a solvable model.

5. **The four-layer ordering stratification is useful**: it provides a clear
   framework for thinking about ordering ambiguity, even if the PDM numerics
   need fixing.

The fix is not to weaken the project but to sharpen it: let the mathematics
speak for itself, and use RCP as the organizing frame, not the proof engine.
