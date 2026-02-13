# S241 — Execution

**Analysis:**
- Remark 3.2a: ΔH = J·v̄ with v̄ = (v₊+v₋)/2 (midpoint convention).
- Stochastic calculus conventions:
  - Itô: pre-point value v₋ → would give ΔH = J·v₋
  - Stratonovich: midpoint (v₊+v₋)/2 → gives ΔH = J·v̄ ✓
- The variational principle selects the Stratonovich/midpoint result.
- This is a known phenomenon: Stratonovich preserves the chain rule
  d(f(x)) = f'(x)∘dx (geometric correctness), while Itô introduces
  a correction term (½f''(x)dt for Brownian motion).
- For deterministic impulses, both conventions are equivalent (the
  Itô correction vanishes). For random impulses (Outlook item 1),
  the distinction becomes physical.

**Content produced:** 4th Outlook item (2 lines). Insert after item 3
(line 234), before References section.
