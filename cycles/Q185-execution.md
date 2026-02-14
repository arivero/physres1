# Q185 Execution — Referee Review of C313

Date: 2026-02-14

## Review Summary

### 1. Remark P5.2a (Deformation Equivalence Is Physical)

**Mathematical correctness:**
- Energy-shift formula |ΔE₀| = ℏωα₀²/16: VERIFIED against blackboard 6 (S294) boxed formula ΔE₀ = -ℏωα₀²/16. Absolute value correct.
- Numerical estimate: α₀ = 0.3, ℏω = 10 meV gives |ΔE₀| = 10 × 0.09/16 = 0.056 meV. Remark says "≤ 0.06 meV" — correct.
- Layer 1+2 agreement claim: Verified against blackboard 6, Section 3c (2fW' + f'/2 = f'). Self-adjointness condition b = a' forces same first-derivative term.
- Layer 3 difference: Verified against blackboard 6, Section 4: ΔH = -ℏ²f'²/(32mf), purely scalar.

**Consistency with existing text:**
- P5.2 says "generally differing in subleading quantum terms" — P5.2a makes this precise (O(ℏ²) scalar only). No contradiction.
- D9.1a in Appendix 10.2 contains the detailed four-layer stratification. Cross-reference is correct.
- "Lorenz gauge" analogy used in both P5.2a and D9.1a. Consistent.

**Scope:**
- Remark is correctly limited to one example (f(q)=1+αq² in harmonic trap). Does not overclaim universality.
- The structural claim (Layer 2 agreement from self-adjointness) IS general for kinetic operators. Correctly stated.

**Verdict on P5.2a: PASS.**

### 2. Planck-Area Open Problem #3 Closure

**Correctness:**
- The open problem asked for "an explicit odd-d transmutation witness." Remark PA-D1.3b (already in the paper, line 108) provides exactly this: d=3 scattering length a gives a^{3/2} = length^{d/2}.
- The closure text summarizes correctly and adds the conditional: "provided one admits transmutation-generated scales." Properly scoped.

**Verdict on planck-area edit: PASS.**

### 3. Package B/C Status Updates

**Package B:** Status now mentions "four-layer stratification of ordering differences with quantitative observability estimates" — this is what D9.1a now contains. Accurate.

**Package C:** Status now notes RG-fundamental companion paper has one-loop Wilsonian witness (RG-D1.2a). Verified: papers/rg-fundamental/main.md lines 193-218 contain explicit shell integration, beta function β(g) = (m/πℏ²)g², and semigroup composition. Status says "Importing this into Appendix 10.1 in matching conventions remains open" — correctly identifies the gap.

**Verdict on status updates: PASS.**

## Overall Verdict

**PASS.** All changes are mathematically correct, properly scoped, consistent with existing text, and free of cycle-ID leaks.

No follow-up cycles spawned.
