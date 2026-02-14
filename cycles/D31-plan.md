# D31 Plan: Measure-theoretic κ→0 obstruction

Date: 2026-02-14
Track: D-triage (discovery planning)
Parent: (follow-up to C309 crown jewel theorem, completes P4.2 deepening trilogy)

## Question
**What is the precise measure-theoretic obstruction that prevents κ→0 while keeping distributional identity limit?**

P4.2 conclusion (iii) states: "κ→0 collapses to Hamilton-Jacobi extremization with no distributional identity limit." What is the **mathematical mechanism** behind this failure?

## Context from Haiku search (sources/)
**Key findings** (agent a2ad01f):

**Available:**
- Rivero (9803035): Feynman integral as **convergence condition for regularized Dirac measures**, not probability measure
- Rivero (0302285): Path integral concentrated on continuous-everywhere, differentiable-nowhere trajectories
- Connes-Kreimer: Gaussian measures exp(iS₀(φ))[dφ] in QFT context

**Critical gaps:**
- Landsman 1998 (pending): measure-theoretic foundations, Cameron-Martin, quasi-invariance
- Connes 1994 (pending): tangent groupoid framework
- No explicit treatment of: cylinder sets, Kolmogorov extension, Cameron-Martin theorem

## Hypothesis
The κ→0 obstruction has **two aspects**:

1. **Oscillatory failure**: exp(iS/κ) with κ→0 oscillates infinitely fast, preventing convergence as a distribution (no test function can regularize it)

2. **Measure-theoretic collapse**: In κ→0 limit, the "measure" concentrates entirely on classical extremal paths (Dirac measure on action minimizers). This is:
   - **Too singular** for identity limit: δ(q_f−q_i) requires non-zero support around diagonal, but extremal paths are zero-measure sets
   - **Wrong dimensionality**: Classical paths live in finite-dimensional space, but distributional identity requires full infinite-dimensional support

The identity limit (I) requires **spreading** over path space; κ→0 produces **collapsing** to extrema. These are incompatible.

## In scope
1. Formalize the measure-theoretic setup: what "measure" means for κ-family
2. Identify where κ→0 limit breaks distributional convergence
3. Contrast with κ→∞ (trivial weights, loses dynamics but might keep identity?)
4. Assess whether missing bibliography (Landsman, Connes) is essential or we can argue with existing sources

## Out of scope
- Full infinite-dimensional measure theory course (use available sources + conceptual argument)
- Bibliography acquisition (B-cycle if needed)
- Manuscript promotion (C-cycle after resolution)

## Success criteria
**Sharp verdict on one of these:**
1. κ→0 fails because **oscillatory integrals don't converge distributionally**
2. κ→0 fails because **support collapses to zero-measure extremal paths**
3. κ→0 fails because **distributional identity requires finite non-zero κ** (dimensional obstruction)
4. All three mechanisms operate (redundant obstructions)

## Technical approach
- Start from distributional identity: lim_{t→0} ⟨K_t, φ⟩ = φ(q_i) for test function φ
- Analyze κ-dependence: K ~ (2πκt/m)^{-d/2} exp(iS/κ)
- Take κ→0 holding t fixed: what happens to distribution?
- Compare with stationary phase: κ→0 isolates extremal paths, but does this give δ(q_f−q_i)?

## Spawned cycles (expected)
- S289: Distributional convergence test for κ→0 (if technical calculation needed)
- B34/B35: Landsman 1998, Connes 1994 (if load-bearing for rigorous argument)
