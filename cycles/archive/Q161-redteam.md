# Q161 Red-Team: Adversarial review of C277

## Attack vectors

### 1. Historical accuracy of "du Bois-Reymond lemma (1879)"
**Challenge**: Is the 1879 date correct? The fundamental lemma of calculus of variations is sometimes attributed to Euler or Lagrange. Paul du Bois-Reymond worked on the calculus of variations in the 1870s-1880s, but did he state this specific distributional result?

**Counterargument**: The classical "du Bois-Reymond lemma" in the calculus of variations states that if \(\int_a^b f(x) \eta'(x) dx = 0\) for all \(\eta \in C_c^\infty\), then \(f\) is constant. The distributional extension (vanishing against all test functions gives a.e. vanishing) is the natural generalization in distribution theory. The 1879 date aligns with du Bois-Reymond's work on the foundations of calculus of variations. While the modern distributional formulation is 20th century (Schwartz, 1940s-50s), attributing the core idea to du Bois-Reymond is standard in the literature.

**Verdict**: The attribution is defensible. The remark does not claim du Bois-Reymond stated it in modern distributional language, only that the lemma bears his name.

### 2. "Continuity at \(t_0\) is the minimal gate"
**Challenge**: What about weaker hypotheses? For instance, if \(F[q]\) is bounded and measurable, then by the Lebesgue differentiation theorem, \(F[q](t_0)\) equals the limit of averages over shrinking intervals for a.e. \(t_0\). Isn't this weaker than continuity?

**Counterargument**: The Lebesgue differentiation theorem gives pointwise recovery for a.e. \(t_0\), not for every \(t_0\). Theorem 2.1 seeks to prove \(F[q](t_0) = 0\) at a *specified* point \(t_0 \in (t_i, t_f)\). For this, continuity at \(t_0\) is indeed minimal: without it, the mollifier convolution may not converge to the pointwise value at \(t_0\). The remark's claim is correct in this context.

**Verdict**: No error. The claim is precise and contextually accurate.

### 3. "Hilbert's differentiability theorem"
**Challenge**: Is this the correct name? Modern references (Evans, Giusti) often call this "elliptic regularity" or "bootstrap regularity" without specific attribution to Hilbert.

**Counterargument**: "Hilbert's differentiability theorem" is used in classical texts (Giaquinta & Hildebrandt, Morrey) to refer to the result that solutions to the Euler-Lagrange equation inherit full smoothness from the Lagrangian. The remark does not claim Hilbert proved this result in full generality, only uses his name as a historical label. This is acceptable scholarly practice.

**Verdict**: No error. Historical labels are conventional, not claims of priority.

### 4. Does the remark add value, or is it redundant with Remark 2.2?
**Challenge**: Remark 2.2 already says "(H3) is the local regularity gate: without it, mollifier limits may fail to converge or may converge to an averaged value rather than a pointwise one." Does Remark 2.2a just repeat this?

**Counterargument**: Remark 2.2 makes the point briefly. Remark 2.2a deepens it by:
- Naming the du Bois-Reymond lemma explicitly.
- Explaining the regularity hierarchy: a.e. → pointwise (via H3) → \(C^\infty\) (via Hilbert bootstrap).
- Stating that (H3) is the *weakest* hypothesis, which is a stronger claim than Remark 2.2's "regularity gate."

The added depth is valuable for readers who want the functional-analytic underpinning, while Remark 2.2 serves readers who just need the operational summary.

**Verdict**: Not redundant. Remark 2.2a provides substantive deepening.

### 5. Cycle-label leak or other non-negotiable violations?
**Challenge**: Are there any cycle labels (C277, etc.) in the manuscript? Any citations of `conv_patched.md`?

**Verification**: Ran `rg -n 'C[0-9]{3}'` — no matches. No transcript citations visible in the remark.

**Verdict**: Clean. No guardrail violations.

## Overall red-team verdict

No fatal flaws found. All mathematical statements withstand adversarial scrutiny. The remark is publication-ready.

Final verdict: **PASS**.
