# Q95 Execution: Referee pass on expanded Dirac Probes
Date: 2026-02-13

## Checks
1. **Section 4.5 discrete action**: S_N = Σ (m/2)(q_{k+1}-q_k)²/Δt — correct.
2. **Stationarity**: ∂S_N/∂q_k = m(v_{k-1}-v_k) = 0 imposes v_k=v_{k-1} (no impulse at junction). Consistent with Theorem 3.1 corner condition. Correct.
3. **Path integral prefactor**: Originally had (m/(2πiℏΔt))^{N/2} — **wrong**. With N+1 intervals and N intermediate integrations, each segment contributes one factor sqrt(m/(2πiℏΔt)), giving exponent (N+1)/2. Fixed.
4. **LaTeX in Markdown**: `\textit{classical}` should be `*classical*`. Fixed.
5. **PDF**: 6 pages, builds cleanly.
6. **Encoding/paths/labels**: all clean (verified in Q94, no regression).

## Fixes
- Prefactor exponent: N/2 → (N+1)/2 with explanatory sentence.
- \textit → Markdown italics.

## Verdict
Paper clean after fixes. Stays at Tier 1.
