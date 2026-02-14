# D26 Execution: Heat Kernel / Half-Density Semantics as a QFT-Grade Witness

Date: 2026-02-14
Status: Completed

## Decision (append-only)
- Chosen target: Produce one self-contained derivation that starts from the half-density heat kernel \(\widetilde{K}(t;x,y) = |g(x)|^{1/4} K(t;x,y) |g(y)|^{1/4}\) and shows, in a single coherent argument: (a) the \(t\to 0^+\) limit recovers the canonical identity kernel \(K_{\mathrm{Id}}\) with the universal \((4\pi t)^{-D/2}\) normalization; (b) the first curvature correction \(a_1(x,x) = (\tfrac{1}{6}-\xi)R\) follows from the conjugation potential \(V(p) = \tfrac{1}{6}R\) computed in normal coordinates; (c) the D/2 exponent that normalizes the identity is the same one that controls UV divergence degree in proper-time/dim-reg.
- Why now: The HD-QFT paper (Remarks HD-D4.2, HD-D4.5, HD-D5.3b) contains all three ingredients but scattered across separate remarks. A single unified derivation thread, suitable as a blackboard witness, would make the connection explicit and promotable.

## One-sentence novelty claim (append-only)
The half-density heat kernel \(\widetilde{K}(t)\) interpolates continuously between the canonical identity kernel (\(t\to 0^+\)) and the propagator (\(t\)-integral), with the same \(D/2\) exponent controlling normalization, UV divergence, and dimensional-regularization pole location; the leading curvature potential \(V=\tfrac{1}{6}R\) is the universal conjugation artifact, matching conformal coupling only at \(D=4\).

## Scope disclaimer (append-only)
This is a triage cycle; the actual derivation belongs in S283. Conformal-class-specific statements (the \(D(4-D)(\partial\sigma)^2\) cancellation) are flagged as distinct from the universal normal-coordinate result. No manuscript edits.

## Spawned cycles (actual)
- `S283`: worked heat-kernel witness in half-density language (blackboard note).
- `B31`: deferred (Vassilevich2003 already cited and available as OA arXiv; no new anchor needed).

