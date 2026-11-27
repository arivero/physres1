# Innovations for Opus

Proposed by a Fable subagent review of this repo.

## 1. Claim-indexed computational verification suite with CI

The repo has 100+ ad-hoc SymPy/numerical scripts in gitignored `tmp/` (e.g. `cmp112_verify.py`, `a2_sign_check.py`, `conformal_a3_check.py`), each written once during a session and never re-run — and the project's most painful recent event, the D9.1p/D9.1q retraction (a₁(Δ_{1/2}) claimed 0, actually R/6, caught only on re-derivation in R26), shows why computed claims rot. Opus would curate these into a versioned `verification/` package with a manifest mapping claim labels (D9.1l V_HD formula, CMP9b.4 a₂(conf;S^d), Seeley-DeWitt coefficients, Butcher composition τ₁⊗τ₁=2τ₂, Efimov λ≈22.7, τ=det(1−K_Ai)) to executable checks, plus a runner and a GitHub Actions workflow (`.github/` already exists) so every commit re-verifies the corpus's numerical claims. This gives the Computationalist agent a durable regression surface and gives the referee pipeline machine-checked ground truth.

**Size:** medium

## 2. Lean 4 formalization of the P4.2 composition-core theorem

`note.md` explicitly names the gap: "The mathematics here is informal… SymPy and Lean are better tools for verification," while `meta/research-state.md` records the flagship result — composition alone forces the exponential weight, ℏ, and the d/2 exponent — as settled only by informal multi-agent consensus (including the "Cauchy measurability for d/2" resolution). Opus would formalize the discrete skeleton in Lean 4/mathlib: Chapman-Kolmogorov ⇒ semigroup, the measurable-Cauchy functional equation forcing the exponential, and the d/2 normalization from Fourier multiplicativity + dimensional homogeneity (Proposition TG-P1.1's route), producing a `formal/` directory with a build check. This would be the project's first machine-checked pillar and directly hardens the cornerstone's Vulnerability-1 appendix against human referees.

**Size:** large

## 3. Develop MC-H7.1: subsystem compatibility as the fourth RCP channel

The newest satellite (`papers/measurement-composition/`, committed in the last session) derives partial trace, Born rule, and POVMs from the sewing law and *proposes* — as hypothesis MC-H7.1 — that subsystem compatibility is a fourth RCP channel alongside partition, representation, and scale. Opus would run a research session in the existing agent architecture to test this: state the channel as a commuting-diagram axiom matching the A1–A5 format of `papers/rcp-foundations/`, produce one witness computation (a two-subsystem kernel where tracing commutes vs. fails to commute with refinement, per the "one computation per concept" guardrail), and draft the consensus-gated patches to rcp-foundations §2 and cornerstone §10 through the standard `patches/` + referee pipeline. This converts the corpus's freshest open hypothesis into either a settled extension of the RCP or a documented negative result for `meta/anomalies.md`.

**Size:** medium
