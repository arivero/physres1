# Q170 — Execution

## 1. Mathematical correctness — PASS

From Section 5.2 of the paper:

  W_L''(r_0) = L² / (m r_0⁴ γ³) · (1 + (2−q)γ²)

From the Hamiltonian expansion at p_r = 0:

  ∂²H/∂p_r² |_{p_r=0} = 1/(γ₀ m)

so the effective mass is m_eff = γ₀ m (transverse, not longitudinal γ³m).
The radial oscillation frequency:

  ω_r² = W_L''(r_0) / (γ m)
       = L²(1 + (2−q)γ²) / (m² r_0⁴ γ⁴)

The orbital frequency:

  ω_φ = L/(γ m r_0²),  so  ω_φ² = L²/(γ² m² r_0⁴)

The ratio:

  ω_r²/ω_φ² = (1 + (2−q)γ²)/γ²
             = 1/γ² + 2 − q
             = (1 − β²) + (2 − q)
             = 3 − q − β²   ✓

## 2. q=2 specialization — PASS

At q=2:  ω_r²/ω_φ² = 3 − 2 − β² = 1 − β² = 1/γ².

From Remark 3.2:  ω² = 1 − K²/(c²L²). For q=2, v=K/L, so ω² = 1−v²/c² = 1/γ².

Therefore ω_r/ω_φ = ω (the Binet precession parameter).  ✓

## 3. Newtonian limit — PASS

v → 0 ⟹ β² → 0 ⟹ ω_r²/ω_φ² → 3 − q.

Standard Newtonian epicyclic frequency ratio. For q=2: ratio=1 (closed ellipses);
for q=1: ratio=2; for q=−1 (Hooke): ratio=4.  ✓

## 4. Consistency with Remark 5.2c — PASS

Remark 5.2c states γ²ω² = 1 at q=2.

From Remark 5.2d at q=2:  ω_r²/ω_φ² = 1/γ².
Hence γ²(ω_r²/ω_φ²) = 1.
Since ω_r/ω_φ = ω, this is γ²ω² = 1.  ✓

## 5. Scope and overlap — PASS

The remark adds genuinely new content:
- The general-q formula ω_r²/ω_φ² = 3−q−β² is not stated elsewhere in the paper.
- Section 5.2 gives the stability criterion 1+(2−q)γ²>0 but does not interpret
  it as a frequency ratio.
- Remark 5.2c gives only the q=2 special case.
- The universality of the −β² correction (independent of q) is a non-trivial
  physical statement, not mere algebraic rearrangement.
- The remark unifies three existing threads: stability (Section 5.2),
  precession (Remark 3.2), and duality (Remark 5.2c).

Verdict: not redundant, adds structural coherence.

## 6. Guardrails — PASS

- `rg -n 'C[0-9]{2}' papers/relativistic-central-orbits/main.md`: no matches.
- No transcript citations in paper.

## 7. Minor optionals (LOW)

1. **Phrasing "Hamiltonian expansion of Section 5.1"**: Section 5.1 is titled
   "Circularity and the effective-potential viewpoint." The Hamiltonian is
   introduced in the Section 5 preamble (lines 217-220), and W_L'' is computed
   in Section 5.2. "Effective-potential framework of Sections 5.1-5.2" would be
   slightly more precise, but the intent is clear. LOW — no fix required.

2. **"gives the radial oscillation frequency ω_r²/ω_φ²"**: Strictly, ω_r²/ω_φ²
   is a frequency *ratio*, not a frequency. The sentence reads naturally enough
   that no reader would be confused. LOW — no fix required.

## Verdict

**PASS.** All mathematical checks confirmed. No required fixes. Two LOW optionals
noted but not actionable — both are minor phrasing preferences that do not affect
correctness or clarity.
