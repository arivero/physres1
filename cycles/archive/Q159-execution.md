# Q159 Execution

**Location:** Remark HD-D4.2a, lines 190-192.

**Verification:**

1. **a_n(x,x) local curvature polynomial:** CORRECT. Standard heat kernel theory [Vassilevich2003]. In even D=2n, a_n has mass dimension D and is local polynomial in curvature tensors and covariant derivatives. ∫_M a_n d^D x is scheme-independent (topological).

2. **Trace anomaly ⟨T^μ_μ⟩ ∝ a_{D/2}:** CORRECT. Conformal trace anomaly in even D is proportional to the middle Seeley-DeWitt coefficient a_{D/2}(x,x) [Vassilevich2003]. For D=4: a_2 contains E_4 (Euler density) and Weyl^2 terms. Citation present at line 191.

3. **Atiyah-Singer index via McKean-Singer:** CORRECT. McKean-Singer formula: ind(D) = sTr(e^{-tD^2}) is t-independent; for t→0 the heat kernel expansion gives ∫_M a_{D/2} d^D x. This is the heat-kernel proof of the index theorem (standard, appears in Vassilevich and Gilkey reviews).

4. **Half-density coordinate-free trace:** CORRECT. Remark HD-D4.2 (lines 185-187) defines Tr K(t) = ∫_M K̃(t;x,x) d^D x with K̃ := |g(x)|^{1/4} K(t;x,y) |g(y)|^{1/4}. The sqrt{|g|} factor is absorbed into K̃, making the trace intrinsic. Claim at line 191 ("intrinsic trace of Remark HD-D4.2 absorbs the metric factor") is internally consistent.

5. **Internal consistency:** CORRECT. Remark HD-D4.2a directly follows HD-D4.2. The parent remark establishes: (a) heat kernel expansion with a_n coefficients (line 178); (b) bi-half-density form K̃; (c) trace without sqrt{|g|} (line 186); (d) first coefficients a_1, a_2 (line 188). HD-D4.2a then uses a_{D/2} for trace anomaly and index, consistent with the setup. No contradictions detected.

6. **Citation [Vassilevich2003]:** PRESENT. Line 191 cites [Vassilevich2003] for trace anomaly. Full reference at line 265. Also cited in HD-D4.2 (line 176), HD-D5.3b (line 222), HD-D5.4 (line 225). Appropriate use.

**Verdict:** PASS

Remark HD-D4.2a is mathematically sound, properly cited, and internally consistent. All claims are standard heat kernel results correctly applied to the half-density framework.
