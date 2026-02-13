# S239 — Execution

**Analysis:**
- In D=2n, the Seeley-DeWitt coefficient a_n(x,x) is a local curvature
  polynomial of mass dimension D. Its integral ∫_M a_n d^Dx is:
  (i) The conformal trace anomaly: ⟨T^μ_μ⟩ = a_{D/2}(x,x)/(4π)^{D/2}
      [Vassilevich2003, §4.1]. In D=4: a_2 involves R², R_μν R^μν, □R.
  (ii) The index of a Dirac-type operator: ind(D) relates to ∫a_{D/2}
       through the McKean-Singer theorem (supertrace of heat kernel).
- Both calculations are coordinate-free in the half-density framework:
  Remark HD-D4.2's intrinsic trace absorbs √|g|.

**Key insight:** The coefficient a_{D/2} sits at the critical position in
the Seeley-DeWitt hierarchy — it's the one that produces scheme-independent,
topological information. All lower coefficients (n < D/2) contribute to
divergent counterterms; all higher ones (n > D/2) are finite and
scheme-dependent. The D/2 exponent controls the boundary.

**Content produced:** Remark HD-D4.2a (3 lines). Insert after line 188,
before Remark HD-D4.4 (line 190).
