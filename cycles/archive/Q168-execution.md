# Q168 — Execution

## 1. Remark 3.1b (critical exponent shift) — PASS

### Mathematical correctness
- **Newtonian barrier:** E = p²/(2m) gives centrifugal term L²/(2mr²) ∝ r⁻². Attractive potential ∝ r⁻⁽ᑫ⁻¹⁾. Barrier dominates as r→0 iff 2 > q−1, i.e., q < 3. **Verified.**
- **SR barrier:** E = √(m²c⁴ + p²c²) → pc in UV. Angular momentum term √(m²c⁴ + L²c²/r²) → Lc/r ∝ r⁻¹. Barrier dominates iff 1 > q−1, i.e., q < 2. **Verified.**
- **Drop by one:** Barrier exponent changes from 2 to 1 because dispersion relation degree drops from 2 to 1 in the high-momentum limit. **Verified.**
- **"High-momentum limit relevant as r→0":** As r→0, L²c²/r² ≫ m²c⁴, so the ultrarelativistic regime is indeed the relevant one. **Verified.**

### Placement
After Remark 3.1a (Newtonian limit) and before Remark 3.2 (precession). Line 82 states the shift q_crit = 3 → 2 as a bare fact; Remark 3.1b explains the mechanism. Natural position.

### Duplication check
No overlap with Remark 3.1a (which discusses the c→∞ limit, not the exponent shift). No overlap with Section 3.1 main text (which states the result without the kinematic explanation).

## 2. Remark 3.2a (Bertrand's theorem) — PASS

### Mathematical correctness
- **Bertrand's theorem statement:** Only q=2 (inverse-square) and F∝r (Hooke) yield all-conditions-closed orbits. Standard result, correctly stated. **Verified.**
- **ω = √(1 − K²/(c²L²)) from Remark 3.2 (line 95).** Orbit closes iff 2π/ω is a rational multiple of 2π, i.e., iff ω ∈ Q. **Verified.**
- **"Generically irrational":** ω = √(1−x) where x = K²/(c²L²) ∈ (0,1). ω ∈ Q requires x = 1 − (p/q)² for integers p,q — a countable set, hence measure-zero in (0,1). Since L ↦ x is a smooth bijection from (K/c,∞) to (0,1), the preimage is also measure-zero. **Verified.**
- **"Open family to measure-zero subset":** In Newtonian mechanics (ω=1 exactly), all bound orbits close — a full-measure (indeed, open) family in phase space. In SR, the set of L giving rational ω has measure zero. The phrasing is correct, though slightly informal (what is "open" is the full set of bound initial conditions, not just a family). Severity: LOW, non-blocking.

### Placement
After Remark 3.2 (precession), which derives the ω parameter used in the argument. Remark 3.2a is a direct consequence. Placed before Section 4 (GR baseline), which shifts topic. Good position.

### Duplication check
No other remark discusses orbit closure or Bertrand's theorem.

## 3. Example 5.2b fix — PASS

### Correctness
In the paper's convention F(r) = K/rᑫ:
- q = 1 gives F = K/r, an inverse-linear force.
- Hooke force F = kr corresponds to F = K/r⁻¹ = Kr, i.e., q = −1.
The original label "Hooke / isotropic oscillator" for q=1 was incorrect. The fix to "inverse-linear" is accurate.

### Impact
Label-only change. No mathematical content affected. The stability criterion 1 + γ² > 0 for q=1 remains correct.

## 4. Guardrail checks — PASS

- Cycle-tag leak check: `rg -n 'C[0-9]{2,3}' main.md` — no output. Clean.
- Transcript citation check: `rg -n 'conv_patched' main.md` — no output. Clean.

## 5. Overall flow assessment

Section 3 now has 5 remarks (3.1, 3.1a, 3.1b, 3.2, 3.2a). Each serves a distinct role:
- 3.1: dimensional origin of v=K/L
- 3.1a: Newtonian limit cleanliness
- 3.1b: kinematic origin of q_crit shift
- 3.2: precession derivation (long, equation-heavy)
- 3.2a: Bertrand closure consequence

The sequence is logically ordered and each remark is short (2–3 sentences). The density is appropriate for a note-style paper with explicit remark formatting.

## Verdict: PASS

All three changes are mathematically correct, well-placed, non-duplicative, and guardrail-clean. No fixes required.
