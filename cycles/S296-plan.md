# S296 Plan: Dimensional Obstruction to Discrete-Time Composition

Date: 2026-02-14
Track: S-study (dimensional analysis)
Parent: D40 (Discrete-time composition and continuum forcing)

## Goal
Determine whether lattice spacing ε (discrete time step) can be derived from fundamental constants {m, ℏ} while maintaining composition semigroup structure, or if dimensional homogeneity (D) forces continuum limit.

## Deliverable (keep bounded)
- Target: 1-2 pages of dimensional analysis
- Output: `blackboards/<slot>.md` (will choose slot per README)
- Format: Explicit dimensional checks for ε, scale-invariance argument, continuum-forcing verdict

## Technical Specification

### Setup

P4.2 hypothesis (D): Kernel parameters built from {m, ℏ} only, with [K] = [length]^{−d}.

**Question:** Can discrete-time formulation introduce lattice spacing ε (time step) while satisfying (D)?

### Dimensional Analysis of ε

Fundamental constants available: m (mass), ℏ (action).

Dimensions:
- [m] = M
- [ℏ] = ML²T^{−1}
- [ε] = T (time step)

**Can ε be expressed as ε = f(m, ℏ)?**

Dimensional analysis:
```
[ε] = [m]^a [ℏ]^b = M^a · (ML²T^{−1})^b = M^{a+b} L^{2b} T^{−b}
```

Matching:
- M: a + b = 0 ⇒ a = −b
- L: 2b = 0 ⇒ b = 0
- T: −b = 1 ⇒ b = −1

**Inconsistent:** L-equation gives b = 0, T-equation gives b = −1.

**Conclusion:** ε **cannot** be expressed as a function of {m, ℏ} alone.

### Compton Time (Apparent Counterexample)

**Compton time:** τ_C = ℏ/(mc²)

Dimensions: [ℏ/(mc²)] = (ML²T^{−1})/(M · L²T^{−2}) = T ✓

**Problem:** This requires speed of light c, which is **not** in the {m, ℏ}-only set of P4.2 (non-relativistic quantum mechanics).

**For non-relativistic QM:** {m, ℏ} only, no c. Cannot form time scale.

### Alternative: State-Dependent Scales

**de Broglie time:** τ_dB = ℏ/E (energy-dependent).

Dimensions: [ℏ/E] = (ML²T^{−1})/(ML²T^{−2}) = T ✓

**Problem:** E is **state-dependent** (not a universal kernel property). Discrete time step ε must be **fixed** for the lattice, independent of quantum state.

**Verdict:** State-dependent scales violate universality of kernel structure.

### Scale-Invariance Obstruction

**Semigroup composition:** K_T = K_t₁ ∘ K_t₂ for T = t₁ + t₂.

In continuum: this holds for **arbitrary** t₁, t₂ > 0 (no preferred scale).

In discrete: K_{nε} = (K_ε)^n. Composition holds only for multiples of ε.

**If ε is fixed from {m, ℏ}:**
- Example: ε = ℏ/(mc²) (Compton time, requires c).
- Fixes a **preferred scale** in the theory.
- Violates semigroup's scale-invariance: composition should work for any t, not just t = nε.

**Tension:** (D) forbids external inputs → ε must come from {m, ℏ}. But {m, ℏ} (non-relativistic) cannot produce time scale → ε is external → violates (D).

### Identity Limit (Secondary Obstruction)

Hypothesis (I): K_ε → δ as ε → 0⁺.

Discrete kernel on lattice: K_ε(x_i, x_j) for sites {x_i}.

For finite ε > 0, kernel has finite support (nearest neighbors, or bounded range). Cannot concentrate to δ-function.

**Continuum required:** ε → 0 limit forces lattice spacing → 0 (continuum).

## Questions to Answer (MUST Compute in Blackboard)

1. **Dimensional consistency:** Show explicitly that [ε] = T cannot be matched by [m]^a [ℏ]^b for any a, b (without c).

2. **Compton time caveat:** Explain why τ_C = ℏ/(mc²) is not available in non-relativistic {m, ℏ}-only setting.

3. **Scale-invariance:** Argue that fixing ε from {m, ℏ} (if possible) would break composition's scale-freedom.

4. **Identity limit:** Show that finite-ε discrete kernel cannot satisfy lim_{ε→0⁺} K_ε = δ without continuum limit.

## Success Criteria (Verdicts)

Deliver ONE of these (with explicit calculation in blackboard):

1. **Dimensional obstruction (expected):** ε cannot be derived from {m, ℏ} in non-relativistic setting. Discrete formulation requires external input, violating (D).
   → D40 verdict: Continuum forced by dimensional homogeneity.

2. **Scale-invariance obstruction:** Even if ε could be derived (e.g., with c), fixing a preferred scale breaks semigroup structure.
   → D40 verdict: Composition (C) + (D) force continuum.

3. **Identity obstruction:** Finite ε prevents δ-concentration, forcing ε → 0 for (I).
   → D40 verdict: Identity limit forces continuum.

4. **Discrete compatible (unlikely):** ε can emerge from {m, ℏ, ...} without violating (C)+(I)+(D).
   → D40 verdict: Continuum is convenience, not necessity.

## Scope

**In scope:**
- Dimensional analysis: [ε] vs {m, ℏ}
- Compton time τ_C (requires c, not available)
- Scale-invariance argument (semigroup structure)
- Identity limit for finite ε

**Out of scope:**
- Relativistic formulations (Feynman checkerboard uses c explicitly)
- Lattice QFT renormalization (separate issue)
- Trotter error analysis (already known; focus on structural necessity)

## Where The Math Goes

**CRITICAL (Rule 8):** The explicit calculation MUST appear in the blackboard, including:
- Dimensional analysis: [ε] = [m]^a [ℏ]^b matching equations
- Solution: b = 0 (from L) vs b = −1 (from T), contradiction
- Compton time formula: τ_C = ℏ/(mc²), showing c requirement
- Scale-invariance argument: ε = f(m,ℏ) fixes preferred scale, breaking semigroup freedom
- Identity limit: discrete K_ε(lattice sites) vs continuum δ(x−y)

The cycles/S296-execution.md should contain only:
- Summary verdict (which success criterion)
- Pointer to blackboard
- Discovery flag

## Connection to Existing Work

- D29/S288 (notebooks/p42-hypothesis-reduction.md): Composition forces exponential weight
- D39/S295 (notebooks/p42-hypothesis-reduction.md): (D) forces α=2 (Gaussian), excluding Levy jumps
- Paper P4.2 (lines 610-612): Hypotheses (C)+(L)+(I)+(D)
- Greensite (sources/): Lattice QCD, continuum limit a → 0
- Hossenfelder 1203-6191v2 (sources/): Minimal length scale question

## Expected Novelty

**HIGH.** Lattice formulations and continuum limits are standard topics, but the specific question "does P4.2's (D) hypothesis **forbid** discrete time as external input, thereby forcing continuum?" is novel to this project.

Expected result: **Verdict 1** (dimensional obstruction). {m, ℏ} in non-relativistic QM cannot produce time scale ε → external input required → violates (D) → continuum forced.

## Physical Interpretation

**Continuum time is not optional:**
- P4.2 proves κ = ℏ necessity (action scale)
- D40/S296 extends: composition + (D) force **continuum time** (discrete requires external ε)
- Combined: Quantum mechanics requires **both** ℏ (action) and continuous parameter t (time)

**Lattice formulations viable only with additional structure:**
- Lattice QFT: speed of light c available (relativistic) → can form ε ~ ℏ/(mc²)
- Or: ε as **cutoff** (UV regulator), explicitly external, not pretending to satisfy (D)
- Or: ε → 0 limit **mandatory** (Trotter, numerical methods)

**For fundamental {m, ℏ}-only non-relativistic QM:** Continuum is forced.
