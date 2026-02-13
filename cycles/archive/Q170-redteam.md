# Q170 — Red Team

## Attack vectors considered

### 1. Effective mass error (γm vs γ³m)
**Challenge:** The "longitudinal mass" γ³m appears in F = γ³m a_∥ for
acceleration parallel to velocity. Could the radial oscillation use γ³m
instead of γm?

**Rebuttal:** No. At the circular orbit, the unperturbed velocity is purely
tangential. A radial perturbation δr involves radial momentum p_r, which is
perpendicular to the circular velocity. The Hamiltonian expansion
∂²H/∂p_r²|_{p_r=0} = 1/(γm) correctly gives the transverse effective mass.
The γ³m factor would only appear if perturbing in the direction of existing
motion. This is verified by the Hamilton's equations approach in S267.

### 2. Missing higher-order terms
**Challenge:** Does the formula hold only for infinitesimal perturbations,
or could finite-amplitude effects change the ratio?

**Rebuttal:** The epicyclic frequency ratio is by definition a
linearization result. The remark correctly says "radial oscillation frequency"
which implies the linear regime. This is standard usage in celestial mechanics.

### 3. Gauge dependence of ω_φ
**Challenge:** Is ω_φ = L/(γmr_0²) coordinate-time or proper-time?

**Rebuttal:** In SR (flat spacetime), coordinate time and proper time of the
lab frame coincide. The angular momentum L = γmr_0²(dφ/dt) gives
dφ/dt = L/(γmr_0²). Both ω_r and ω_φ are measured in coordinate time (which
is also the lab frame proper time in SR), so the ratio is unambiguous. This
is unlike GR where the distinction matters.

### 4. Cross-check with GR weak field
**Challenge:** At q=2 and weak fields (v²/c² ~ M/r_0), the SR formula gives
ω_r²/ω_φ² ≈ 1 − M/r_0, while Schwarzschild gives 1 − 6M/r_0. Is the
factor-of-6 discrepancy explained?

**Rebuttal:** Yes. The SR model captures only the kinematic (1PN velocity)
contribution, which is 1/6 of the full GR precession (Remark 3.2). The
remaining 5/6 comes from the Schwarzschild −2ML²/r³ curvature term. This
is consistent with the paper's established 1/6 ratio.

### 5. Logical circularity with Remark 5.2c
**Challenge:** Does Remark 5.2d make 5.2c redundant?

**Rebuttal:** No. Remark 5.2c establishes the conceptual duality
(stability ↔ precession) via the invariant γ²ω² = 1. Remark 5.2d provides
the mechanistic explanation (epicyclic frequency ratio) and generalizes to
all q. They play different roles: 5.2c is a structural observation, 5.2d is
a computational result that contains 5.2c as a special case. Keeping both
maintains the logical progression.

## Conclusion

No attack vector succeeds. The formula, its derivation pathway, and its
placement in the paper are all sound.
