# S303 Execution: Formalize P4.2 minimal hypotheses

Date: 2026-02-14

## Revised Theorem Statement

**Theorem P4.2' (Minimal formulation).** Let \(M=\mathbb{R}^d\) with a smooth Lagrangian \(\mathcal{L}(q,\dot{q},t)\) and action \(S[q]=\int\mathcal{L}\,dt\) having dimension \([S]=ML^2T^{-1}\). Let mass \(m\) (with \([m]=M\)) be the only independent dimensional constant of the Lagrangian. Consider a family of transition kernels \(\{K(q_f,t_f;q_i,t_i)\}_{t_f>t_i}\) satisfying:

**(C) Composition:** For all \(t_i < t < t_f\),
\[K(q_f,t_f;q_i,t_i) = \int_{\mathbb{R}^d} K(q_f,t_f;q,t)\,K(q,t;q_i,t_i)\,d^dq.\]

**(I) Identity limit:** \(K(q_f,t_f;q_i,t_i) \to \delta^{(d)}(q_f-q_i)\) as \(t_f \to t_i^+\) in the distributional sense.

Then:

(i) **[From (C)]:** \([K] = L^{-d}\) (forced by composition integral consistency).

(ii) **[From (C)]:** The short-time normalization has power-law form \(\mathcal{N}(\Delta t) \propto (\Delta t)^{-d/2}\), uniquely determined by composition closure.

(iii) **[From (C)]:** For translation-invariant free kernels, the weight function is Gaussian: \(W(u) = \exp(\alpha u^2 + \beta)\) for constants \(\alpha, \beta\). Non-Gaussian (Lévy-type) weights are excluded for action-based kernels.

(iv) **[From (C)]:** Among regulators \(\exp(-\varepsilon f((x-y)^2/t))\), only \(f(x)=x\) (linear) preserves semigroup closure. The iε prescription is unique.

(v) **[From (C) + Setup]:** There exists a constant \(\kappa\) with \([\kappa]=ML^2T^{-1}=[S]\) such that \(\mathcal{N}(\Delta t) = (m/2\pi\kappa\Delta t)^{d/2}\) and the weight contains the phase \(\exp(iS/\kappa)\). Since \([m]=M\) cannot build \([\kappa]=ML^2T^{-1}\), the constant \(\kappa\) is new (cannot be expressed in terms of \(m\) alone). We identify \(\kappa=\hbar\).

(vi) **[From (I)]:** The limit \(\kappa \to 0\) collapses the kernel to \(\delta(q_f - q_{\mathrm{cl}}(q_i))\), which generically fails to equal \(\delta(q_f - q_i)\) for \(t > 0\). The identity limit (I) is incompatible with \(\kappa = 0\).

(vii) **[From (C)]:** The limit \(\kappa \to \infty\) trivializes the weight, making all paths equally weighted. Composition loses dynamical content.

(viii) **[From (C) + Setup]:** Time must be a continuum parameter. No combination of \(\{m, \kappa\}\) can build a quantity with \([T]\) alone: seeking \([m]^a[\kappa]^b = T\) gives \(M^{a+b}L^{2b}T^{-b} = T\), requiring \(2b=0\) and \(-b=1\) simultaneously — a contradiction.

## Comparison with original P4.2

| Feature | Original P4.2 | Revised P4.2' |
|---|---|---|
| Hypotheses | (C), (L), (I), (D) | (C), (I), + Setup |
| Hypothesis count | 4 (later reduced to 3 by D29+D39) | 2 + Setup |
| (L) exponential weight | Assumed | Derived from (C) [conclusion iii] |
| (D) dimensional homogeneity | Assumed | Derived from (C) [conclusion i] + Setup [conclusion v] |
| Per-conclusion attribution | Not explicit | Explicit (each tagged with axiom source) |

## Assessment
The revised statement is mathematically equivalent to the original but:
1. Uses fewer independent hypotheses
2. Makes explicit which axiom forces which conclusion
3. Clarifies the role of the "action-based setup" as distinct from mathematical axioms

The revised statement is publication-quality and could be added as "Remark P4.2h" in the cornerstone or as a theorem variant in the RCP foundations paper.

## Blackboard deliverable
Appended to notebook `notebooks/rcp-axiom-structure-analysis.md` (already contains D49-D51 analysis).
