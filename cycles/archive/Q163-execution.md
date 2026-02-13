# Q163 Execution: Review Remark 3.1

**Referee:** Sonnet 4.5
**Date:** 2026-02-13

## 1. Mathematical Correctness Analysis

### Claim 1: Dimensional analysis for q=2
**Stated:** For \(q=2\), \([K]=[\text{energy}\cdot\text{length}]=[\text{angular momentum}\cdot\text{velocity}]\).

**Verification:**
From line 27, \(F(r)=K/r^q\), so \([F]=[K]/[r]^q\).
Since \([F]=[\text{force}]\), we have \([K]=[\text{force}]\cdot[r]^q\).

For \(q=2\):
\[
[K]=[\text{force}]\cdot[\text{length}]^2=[\text{mass}]\cdot[\text{acceleration}]\cdot[\text{length}]^2
\]
\[
=[M][L/T^2][L^2]=[M L^3/T^2]
\]

Now check \([\text{energy}\cdot\text{length}]\):
\[
[\text{energy}\cdot\text{length}]=[M L^2/T^2]\cdot[L]=[M L^3/T^2] \quad \checkmark
\]

Check \([\text{angular momentum}\cdot\text{velocity}]\):
\[
[\text{angular momentum}]=[M L^2/T],\quad [\text{velocity}]=[L/T]
\]
\[
[\text{angular momentum}\cdot\text{velocity}]=[M L^2/T]\cdot[L/T]=[M L^3/T^2] \quad \checkmark
\]

**Verdict on Claim 1:** CORRECT.

### Claim 2: General q relation K/L = v·r^(q-2)
**Stated:** "For general \(q\), the circular-orbit condition gives \(K/L=v\cdot r^{q-2}\)."

**Verification:**
From lines 33-34 and 38-39:
\[
K=\gamma m v^2 r^{q-1},\qquad L=\gamma m r v
\]

Dividing:
\[
\frac{K}{L}=\frac{\gamma m v^2 r^{q-1}}{\gamma m r v}=v\cdot r^{q-2} \quad \checkmark
\]

For \(q=2\): \(K/L=v\cdot r^0=v\), recovering the boxed identity at line 54.

**Verdict on Claim 2:** CORRECT.

### Claim 3: Eliminating r re-introduces m and γ for q≠2
**Stated:** "eliminating the residual \(r^{q-2}\) re-introduces the mass and Lorentz factor, and no clean mass-independent identity survives."

**Verification:**
From \(L=\gamma m r v\), we have \(r=L/(\gamma m v)\).
Substituting into \(K/L=v\cdot r^{q-2}\):
\[
\frac{K}{L}=v\cdot\left(\frac{L}{\gamma m v}\right)^{q-2}=v\cdot\frac{L^{q-2}}{(\gamma m)^{q-2}\,v^{q-2}}=\frac{v^{3-q}\,L^{q-2}}{(\gamma m)^{q-2}}
\]

For \(q\neq 2\), this expression involves \(m\), \(\gamma\), \(L\), and \(v\) — no simple mass-independent ratio like \(v=K/L\) survives. \(\checkmark\)

**Verdict on Claim 3:** CORRECT.

## 2. Placement Analysis
**Location:** Lines 69-70, between:
- Line 68: discussion of the SR Kepler bound orbit reference
- Line 72: "## 3.1 Extension to all bound orbits"

**Context:** Immediately after the boxed results at lines 54 and 58, and after the radius formula (lines 61-65) and literature anchor (line 67).

**Assessment:** The placement is natural. The remark explains *why* the identity \(v=K/L\) is so clean for \(q=2\), immediately after that identity is presented. Placing it before Section 3.1 (which extends the bound to all orbits, not just circular) is appropriate, as the remark specifically addresses the circular-orbit identity.

**Verdict on Placement:** APPROPRIATE.

## 3. Insight Value Assessment
**Question:** Does this add genuine insight beyond what's already present?

**Already present (Section 3):**
- Lines 48-55: The identity \(v=K/L\) is derived algebraically by dividing the two equations.
- Lines 56-59: The bound \(L>K/c\) follows from \(v<c\).
- The derivation is mechanical; no discussion of *why* \(q=2\) is special.

**What Remark 3.1 adds:**
- **Dimensional explanation:** It explains that \(q=2\) is the unique exponent where \(K\) has the same dimensions as \(L\times v\), making the identity automatic.
- **Contrast with general q:** It shows that for other exponents, the ratio \(K/L\) carries unwanted powers of \(r\), which then entangle mass and Lorentz factor.
- **Structural insight:** The "mass-independent" characterization connects to the later discussion of how SR effects (which involve \(m\) and \(\gamma\)) are minimized for \(q=2\).

**Comparison with similar remarks:**
- Remark 5.2a (lines 246-247) identifies \(q=2\) as a stability boundary.
- Remark 3.1 identifies \(q=2\) as a *dimensional* boundary.
- These are complementary perspectives on the same structural fact.

**Verdict on Insight:** GENUINE AND VALUABLE. The remark provides a dimensional-analysis lens that is not redundant with the algebraic derivation. It answers "why is \(q=2\) special?" from a different angle.

## 4. Guardrail Compliance
**Check:** No cycle labels in manuscript text?

**Search performed (conceptually):** The remark text at lines 69-70 contains no strings like "C279", "S203", "Q163", etc.

**Verdict on Guardrails:** COMPLIANT.

## Overall Assessment
All four criteria are satisfied:
1. **Mathematical correctness:** All dimensional claims and algebraic manipulations verified.
2. **Placement:** Natural location after boxed results, before Section 3.1.
3. **Insight value:** Genuine dimensional perspective, not redundant.
4. **Guardrails:** No cycle labels present.

**Preliminary verdict:** PASS.
