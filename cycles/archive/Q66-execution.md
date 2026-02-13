# Q66 Execution: Referee pass on C111

Date: 2026-02-12

## Checks performed

### 1. Formula verification
Re-derived Q_W(fp²) via Q_W = ¼(fp̂² + 2p̂fp̂ + p̂²f):
- p̂fp̂ = fp̂² - iℏf'p̂
- p̂²f = fp̂² - 2iℏf'p̂ - ℏ²f''
- Sum/4: fp̂² - iℏf'p̂ - ¼ℏ²f''
- Q_W - Q_L = -iℏf'p̂ - ¼ℏ²f'' ✓

### 2. Physical application
f = 1/m → f' = -m'/m² → O(ℏ) term is iℏ(m'/m²)p̂. Matches the remark's claim. ✓

### 3. Half-density claim
Standard result: in 1D, conjugating the Laplace-Beltrami operator by g^{1/4} eliminates the first-derivative (connection) term. This is the defining property of half-density Laplacians. ✓

### 4. Cross-reference
HD-D1.3 exists at line 101 of papers/half-density-qft/main.md (conformal metric expansion). ✓

### 5. Notation consistency
Uses f'(q̂)p̂, f''(q̂), Q_W, Q_L, |g|^{1/4}Δ_g|g|^{-1/4} — all match surrounding text conventions. ✓

### 6. Placement
After D9.1 (extends the computation), before P9.1 (which subsumes both examples). P9.1's "O(ℏ) corrections" means "vanishing as ℏ→0," which includes the O(ℏ²) term. ✓

### 7. Guards
Verified clean in C111 (no cycle tags, no conv_patched). ✓

## Verdict
**Clean pass.** No issues, no follow-up actions needed.
