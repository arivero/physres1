# Threshold Bridge Sanity Grid (Toy Small-r Sign Test)

Date: 2026-02-14

## Toy expression
To validate exponent ordering only, use
\[
\Delta(r)=r^{-\nu}-r^{-(q-1)},
\]
with equal positive coefficients and inspect the sign as \(r\to0\).

## Cases
- Newton-subcritical: \((\nu,q)=(2,2)\) gives \(\Delta(r)>0\) and growing.
- Newton-critical: \((\nu,q)=(2,3)\) gives \(\Delta(r)=0\) in this equal-coefficient toy.
- SR-critical: \((\nu,q)=(1,2)\) gives \(\Delta(r)=0\) in this equal-coefficient toy.
- SR-supercritical: \((\nu,q)=(1,3)\) gives \(\Delta(r)<0\) and decreasing.

These signs match the asymptotic inequality criterion:
\[
\nu \gtrless q-1 \quad\Longleftrightarrow\quad \text{barrier} \gtrless \text{attraction}.
\]

## Promotion wording lock (<=3 sentences)
For central power-law attraction, fixed-\(L\) small-\(r\) asymptotics with kinetic degree \(E_{\mathrm{kin}}\sim p^\nu\) imply \(q_{\mathrm{crit}}=\nu+1\). This recovers Newton \((\nu=2\Rightarrow q_{\mathrm{crit}}=3)\) and SR \((\nu=1\Rightarrow q_{\mathrm{crit}}=2)\). The criterion is distinct from the separate algebraic/dimensional inverse-square identity mechanism.

## Assumption-break stress tests
### Test A: scale-dependent kinetic exponent
For relativistic kinetic energy
\[
E_{\mathrm{kin}}(p)=\sqrt{p^2+m^2}-m,
\]
the local log-slope
\[
\nu_{\mathrm{eff}}(p)=\frac{d\ln E_{\mathrm{kin}}}{d\ln p}
\]
interpolates from \(2\) (nonrelativistic) to \(1\) (ultrarelativistic), so a single fixed \(\nu\) is not valid at all scales.

### Test B: non-power-law singularity
For
\[
U(r)=-\frac{1}{r^{q-1}\big(1+\ln(1/r)\big)},
\]
the local effective attraction exponent is \(r\)-dependent, approaching \(q-1\) only asymptotically. This breaks the strict fixed-power assumption behind \(q_{\mathrm{crit}}=\nu+1\).

## Back-and-forth log
1. **Objection:** "If \(\nu\) and effective \(q\) drift with scale, the bridge rule fails."
   **Response:** The rule is asymptotic, not global. It remains valid when both channels admit stable asymptotic power laws in the same regime.
2. **Objection:** "Should we remove the bridge from the main paper?"
   **Response:** No. Keep it with explicit assumptions; it still gives a concise orientation map.

## Safe claim vs unsafe claim (stress-test updated)
- Safe: "The threshold rule is an asymptotic power-law comparator that requires stable exponents in the same regime."
- Unsafe: "The rule applies unchanged when kinetic or potential channels have strong scale-dependent exponents."

## Candidate compressed manuscript sentences (for optional C300)
1. **A (technical-complete):** "For power-law attraction with fixed \(L\) and asymptotic kinetic degree \(E_{\mathrm{kin}}\sim p^\nu\), the small-\(r\) threshold is \(q_{\mathrm{crit}}=\nu+1\); at equality, coefficient data controls the marginal sign."
2. **B (bridge-first):** "The Newton-to-SR shift (\(3\to2\)) follows from \(q_{\mathrm{crit}}=\nu+1\) under fixed-\(L\) asymptotic power laws, while inverse-square dimensional identity is a separate mechanism."
3. **C (scope-first):** "Use \(q_{\mathrm{crit}}=\nu+1\) only as an asymptotic comparator for shared power-law regimes, not as a full orbit-classification theorem."

Recommended promotion pattern if `C300` opens:
- Use **B + short tail from C** in two sentences (bridge plus scope guard).

### Iteration 2: caveat-coverage matrix
Coverage check against required elements (`fixed-L`, `asymptotic`, mechanism-separation, marginal caveat):
- A: covers fixed-\(L\), asymptotic, marginal; misses mechanism-separation.
- B: covers fixed-\(L\), asymptotic, mechanism-separation; misses marginal caveat.
- C: scope-focused but misses fixed-\(L\) and mechanism-separation.

Updated best blend:
- Sentence 1 from **B** (bridge + mechanism split).
- Add short marginal tail from **A** ("at equality, coefficient data controls sign").

### Iteration 3: full two-sentence draft and compact variant
- Draft D1 (full): 42 words / 312 chars.
- Draft D2 (compact): 34 words / 247 chars.

Proposed promotion candidate (D2):
"Newton-to-SR shift (\(3\to2\)) follows from \(q_{\mathrm{crit}}=\nu+1\) for fixed-\(L\) asymptotic power laws; inverse-square dimensional identity is separate. At marginality, coefficients set the leading sign, so this is an asymptotic comparator, not a full orbit theorem."

### Iteration 4: readability delta vs current manuscript wording
Tokenized sentence-level comparison:
- Current `Remark P1.1a` body (approx): 85 words across 4 sentences, avg 21.25 words/sentence.
- Candidate D2: 34 words across 2 sentences, avg 17 words/sentence.

Interpretation: D2 is materially shorter and slightly lighter per sentence while preserving required caveats, so `C300` remains a readability-only option (not a correctness fix).

## S277 extension: scale-window validity for effective kinetic exponent
For \(E_{\mathrm{kin}}=\sqrt{p^2+m^2}-m\), define \(x:=p/m\) and
\[
\nu_{\mathrm{eff}}(x)=\frac{d\ln E_{\mathrm{kin}}}{d\ln p}.
\]
Tolerance windows from numeric scan:
- \(\epsilon=0.2\): \(|\nu_{\mathrm{eff}}-2|\le\epsilon\) for \(x\lesssim 0.75\), and \(|\nu_{\mathrm{eff}}-1|\le\epsilon\) for \(x\gtrsim 4.9\).
- \(\epsilon=0.1\): \(x\lesssim 0.48\) (near-2) and \(x\gtrsim 10\) (near-1).
- \(\epsilon=0.05\): \(x\lesssim 0.33\) (near-2) and \(x\gtrsim 20\) (near-1).

Manuscript-safe scope sentence:
"Using a single kinetic exponent is justified only inside a scale window (nonrelativistic \(p\ll m\) or ultrarelativistic \(p\gg m\)); the crossover requires caution."

## S278 extension: potential-channel drift diagnostic
For
\[
U(r)=-\frac{1}{r^{q-1}\big(1+\alpha\ln(1/r)\big)},
\]
define \(m_{\mathrm{eff}}(r):=-(d\ln|U|/d\ln r)\). Then
\[
m_{\mathrm{eff}}(r)=(q-1)-\frac{\alpha}{1+\alpha\ln(1/r)},
\]
and drift from pure power law is
\[
\Delta m(r):=(q-1)-m_{\mathrm{eff}}(r)=\frac{\alpha}{1+\alpha\ln(1/r)}.
\]

Diagnostic recipe:
- If \(\Delta m(r)\) is not small in the operating range, do not apply fixed-\(q\) threshold intuition directly.

Sample sweep (\(q-1=2\), \(\alpha=0.5,1,2\)) confirms monotone decay of drift with smaller \(r\), but non-negligible drift at moderate scales.

Robust caution sentence:
"Potential-channel logarithmic corrections induce a running effective attraction exponent, so \(q_{\mathrm{crit}}=\nu+1\) should be applied only where drift diagnostics are small."

## S278 Iteration 2: alternative correction family check
Consider
\[
U(r)=-r^{-m}\big(1+\alpha r^\beta\big),\qquad \alpha>0,\ \beta>0.
\]
Then
\[
m_{\mathrm{eff}}(r)=m-\frac{\alpha\beta r^\beta}{1+\alpha r^\beta},
\qquad
\Delta m(r)=\frac{\alpha\beta r^\beta}{1+\alpha r^\beta}.
\]
For this family, drift decays faster than the logarithmic-correction case as \(r\to0\).

Numerical sweep (\(m=2,\alpha=1\)):
- \(\beta=0.5\): drift \(\approx 1.20\times 10^{-1}\) at \(r=10^{-1}\), \(\approx 5\times 10^{-5}\) at \(r=10^{-8}\).
- \(\beta=1\): drift \(\approx 9.09\times 10^{-2}\) at \(r=10^{-1}\), \(\approx 10^{-8}\)-scale by \(r=10^{-8}\).

Generalized diagnostic addendum:
- Apply fixed-\(q\) threshold intuition only where \(\Delta m(r)\) is small over the operating \(r\)-window, regardless of correction family.

## S277 Iteration 2: analytic window formula (exact)
For relativistic interpolation,
\[
E_{\mathrm{kin}}(x)=\sqrt{1+x^2}-1,\qquad x:=p/m,
\]
one gets an exact local exponent:
\[
\nu_{\mathrm{eff}}(x)=\frac{d\ln E_{\mathrm{kin}}}{d\ln p}=1+\frac{1}{\sqrt{1+x^2}}.
\]
Hence tolerance windows are analytic:
\[
|\nu_{\mathrm{eff}}-1|\le \epsilon \iff x\ge \sqrt{\epsilon^{-2}-1},
\]
\[
|\nu_{\mathrm{eff}}-2|\le \epsilon \iff x\le \sqrt{(1-\epsilon)^{-2}-1}.
\]
For \(\epsilon=0.2,0.1,0.05\), these reproduce the numeric thresholds from S277 initial pass.

Addendum: this gives a clean manuscript-side phrasing option:
"In relativistic interpolation, window-validity bounds can be written analytically via \(\nu_{\mathrm{eff}}(p/m)=1+1/\sqrt{1+(p/m)^2}\)."
