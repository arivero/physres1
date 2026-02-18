# Newton's Limit Problem and Why $\hbar$ Must Remain Finite

## The logical problem in Newton's terms

Newton's polygonal method (Book I, Proposition I of the *Principia*) constructs dynamics by a refinement procedure: replace a smooth curve by a sequence of straight segments with impulses at each vertex, prove invariants at finite step, then "let the number of triangles be augmented, and their breadth diminished *in infinitum*" [Newton1687]. The equal-area law (D1.1--D1.2 in `main.md`) is exact at each finite step — it does not depend on the passage to the limit. But Newton's procedure raises an unavoidable logical question:

> **What licenses the passage from finitely many steps to the continuous curve?**

Newton's contemporaries saw this clearly. Berkeley's *Analyst* (1734) attacked the foundations of the fluxion calculus with the "ghosts of departed quantities" objection: the increments $o$ are first treated as nonzero (to form the ratio $\Delta f/\Delta x$), then set to zero (to obtain the derivative). Berkeley did not dispute the *results* — he disputed the *logical right* to take the limit, noting that the reasoning appeared to involve a division by zero followed by setting the divisor to zero.

In the manuscript's language (Heuristic H0.2), this is obstruction (3): **the refinement limit does not automatically converge**, and when it does, additional axioms are required to justify the passage.

## How the limit was eventually admitted

The resolution came in stages, each adding an explicit axiom:

1. **Cauchy (1820s):** Replaced infinitesimals with the $\varepsilon$-$\delta$ definition of limit. The axiom is: a sequence $(a_n)$ converges to $L$ if for every $\varepsilon > 0$ there exists $N$ such that $|a_n - L| < \varepsilon$ for all $n > N$. This makes "send $h \to 0$" a precise statement with checkable conditions, rather than an ontological claim about vanishing quantities.

2. **Weierstrass (1860s--70s):** Completed the arithmetization of analysis. The key additional axiom is **completeness of the real numbers** (every bounded monotone sequence converges; equivalently, every Cauchy sequence has a limit). Without completeness, refinement sequences can fail to have limits even when they are "well-behaved" — the rationals have gaps that the reals fill.

3. **Riemann/Lebesgue (integration theory):** For the passage from discrete sums $S_N = \sum \mathcal{L} \Delta t$ to continuous integrals $S = \int \mathcal{L}\,dt$, the axiom of completeness plus uniform continuity of the integrand suffices (Riemann). For singular or distributional integrands, Lebesgue's dominated convergence theorem provides the control: interchange of limit and integral is licensed by a dominating integrable function.

In each case, **the axiom that licenses $h \to 0$ is a completeness or convergence-control hypothesis** — not a statement about nature, but a mathematical guarantee that the limiting object exists and is unique.

## The structural obstruction that $\hbar$ resolves

The manuscript's central observation (Proposition P4.2, especially Remark P4.2h) is that when one moves from Newton's single-trajectory refinement to the **compositional** setting — where the refinement involves integrating over intermediate configurations — the naive $h \to 0$ limit encounters a new obstruction that the Cauchy--Weierstrass axioms do not resolve:

**Composition requires a finite action scale.**

The argument, in brief:
- Composition of transition amplitudes across time slices is a convolution: $K(x,y;t_1+t_2) = \int dz\, K(x,z;t_1) K(z,y;t_2)$.
- For this convolution to close on the same family of kernels, the normalization must scale as $t^{-d/2}$ (forced by semigroup closure, D4.1a).
- The identity limit $K \to \delta$ as $t \to 0^+$ then forces a scale $\kappa$ with $[\kappa] = [\text{action}]$ in the exponential weight.
- Setting $\kappa \to 0$ collapses the composition to Hamilton--Jacobi extremization: the kernel concentrates on $\delta(q_f - q_{\mathrm{cl}}(q_i))$, which is generically *not* $\delta(q_f - q_i)$ for $t > 0$. The identity limit is lost.
- Setting $\kappa \to \infty$ makes the weight trivial (flat measure), losing all dynamical content.

Therefore: **the compositional refinement problem has no solution at $\kappa = 0$**. The finite scale $\kappa = \hbar$ is not an optional physical input but a structural necessity forced by the requirement that "refine and compose" produces a consistent semigroup with an identity.

## Newton's problem, revisited

From Newton's perspective, the situation can be stated as follows:

Newton proved that certain invariants (angular momentum, equal areas) are **exact at finite step** — they do not require the limit. His contemporaries objected to the limit, and the eventual resolution (Cauchy completeness) provided the axiom needed for the single-trajectory refinement to converge.

But when the same refinement procedure is applied to the *compositional* problem — assembling a global amplitude from local pieces by integrating over intermediate positions — the Cauchy axiom is necessary but not sufficient. A new structural constant $\kappa$ is forced, and the $\kappa \to 0$ limit is singular in a way that no completeness axiom can repair: it changes the *algebraic structure* of the composition (from soft integration to hard extremization), not merely the convergence of a sequence.

This is the precise sense in which the quantum scale $\hbar$ solves a problem that Newton's contemporaries identified but could not fully articulate: the refinement-to-zero passage requires not just a convergence axiom, but a **composition-compatible scale** that keeps the limiting operation well-defined. Berkeley was right that "sending $h$ to zero" requires justification; the justification for the single-trajectory case is Cauchy completeness, but for the compositional case, the justification is that $\hbar$ stays finite.

## Summary

| Layer | Problem | Resolution | Axiom |
|-------|---------|------------|-------|
| Newton's curve | Polygon $\to$ smooth trajectory | Cauchy limit + completeness | $\varepsilon$-$\delta$; completeness of $\mathbb{R}$ |
| Action integral | Discrete sum $\to$ $\int \mathcal{L}\,dt$ | Riemann/Lebesgue | Uniform continuity / dominated convergence |
| Composition | $\prod K_\Delta \to K$ via $\int dq$ | Finite $\kappa = \hbar$ | Semigroup closure + identity limit (P4.2) |

The first two rows are resolved by 19th-century analysis. The third row is the manuscript's contribution: **composition-compatible refinement forces a finite action scale**, and this is a structural theorem (not a physical postulate) once composition, identity, and dimensional homogeneity are accepted as axioms.
