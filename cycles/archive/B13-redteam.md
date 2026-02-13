# B13 Red Team: Newton limit bibliography

Date: 2026-02-12

## Failure modes

### 1. Over-citing a historical debate in a physics paper
- Risk: the manuscript is not a history-of-science paper. Extensive discussion of the Pourciau–Nauenberg debate could derail the physics narrative.
- Mitigation: one sentence + two citations is sufficient. The manuscript's P1.1 hedge ("whenever the limit exists") already signals awareness; a footnote-level citation closes the gap without diversion.

### 2. Nauenberg's defence may not fully resolve the convergence question
- Risk: Nauenberg shows Newton's Lemma 3 justifies the limit for "nice" force laws but the convergence for singular forces (e.g. inverse-square at r=0) is a separate issue.
- Mitigation: the manuscript's Section 3 works with central forces away from the origin (r > 0). The singular case is handled later (Section 4, weak forms + mollifiers). This scope separation is already correct.

### 3. Missing the Euler-method convergence connection
- Risk: the modern analog of Newton's polygonal scheme is the Euler method for ODEs. The standard convergence theorem (Lipschitz vector field ⟹ O(Δt) global error) is the rigorous underpinning. Not citing it leaves the "whenever the limit exists" hedge hanging on historical arguments rather than mathematics.
- Mitigation: consider citing a standard ODE textbook (e.g. Hairer–Nørsett–Wanner) for the Euler convergence theorem in a future cycle. This would close the mathematical gap cleanly.
