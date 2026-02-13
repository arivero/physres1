# Q108 Execution
Date: 2026-02-13

## Review verdicts

### Remark 4.4 (action-angle, von Mises): CLEAN
All claims correct: c_m ∝ I_m(κ), R = I_1(2κ)/I_0(2κ), asymptotic ratio → 1. No fix needed.

### Remark 4.2 (fermionic mediators, ERE): MINOR, accepted as-is
Reviewer flagged that "C₀ determines a at Born level" oversimplifies (full matching requires resummation). However the text already qualifies with "at Born level," making the statement technically correct. No fix applied.

### Remark 2.3 (uncuttable, Euler–Maclaurin): TWO ERRORS FIXED
1. **Sign error**: boundary terms had [f^{(j-1)}(a)−f^{(j-1)}(b)] but should be [f^{(j-1)}(b)−f^{(j-1)}(a)]. Verified by testing f(x)=x on [0,1]: left-point sum = 0, integral = 1/2, j=1 correction must be −1/2 (not +1/2).
2. **Simpson's rule claim incorrect**: "including j=2 gives Simpson's rule" replaced with accurate statement that the j=2 term adds an endpoint-derivative correction raising the order to O(h⁴). Simpson's rule uses interior function evaluations, not endpoint derivatives; the j=2 correction gives the corrected trapezoidal rule instead.
3. **Added explicit B_j values** (B₁=−1/2, B₂=1/6, B₃=0) for clarity.

## Diffstat
```
paper-diffstat (cached): TOTAL +2 -2 (1 files)
  +2 -2 papers/uncuttable-controlled-refinement/main.md
```
