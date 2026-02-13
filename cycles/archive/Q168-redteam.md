# Q168 — Red Team

## Attack 1: Remark 3.1b's barrier comparison skips the potential energy form
The remark compares "barrier ∝ r⁻²" vs "attractive potential ∝ r⁻⁽ᑫ⁻¹⁾." But for q=2
(inverse-square), the attractive potential is ∝ r⁻¹ (i.e., q−1=1), while the barrier is
∝ r⁻². Since 2 > 1, the barrier wins — consistent with q=2 < q_crit=3. For q=3, the
potential is ∝ r⁻² and the barrier is ∝ r⁻² — marginal, consistent with q_crit=3.
**Result:** The comparison is self-consistent. No error.

## Attack 2: SR barrier formula omits the rest-mass term
Remark 3.1b writes the SR barrier as "Lc/r ∝ r⁻¹" but the full effective potential is
√(m²c⁴ + L²c²/r²), not just Lc/r. The rest-mass term m²c⁴ is subdominant as r→0,
so the ultrarelativistic approximation is valid for the asymptotic comparison.
The remark explicitly qualifies: "the ultrarelativistic limit E ≈ pc" and "high-momentum
limit relevant as r→0." No overclaim.
**Result:** Qualification is adequate. No error.

## Attack 3: Bertrand's theorem also requires radial stability
Bertrand's theorem assumes the orbits are bound and stable. Remark 3.2a discusses orbit
*closure* specifically. The stability of SR inverse-square orbits is established in
Section 5.2 (all γ permitted for q=2). So the precondition for applying Bertrand-like
reasoning (stable bound orbits exist) is satisfied in the SR context. No gap.
**Result:** No error. Stability precondition covered by Section 5.2.

## Attack 4: "Measure-zero subset" could be misread as "no closed orbits at all"
A careless reader might interpret "measure-zero" as "empty." The remark is precise:
"reduces... from an open family to a measure-zero subset." A measure-zero subset is
non-empty (countably many L values give rational ω). The phrasing is correct.
**Result:** No ambiguity. Non-blocking.

## Attack 5: Example 5.2b — could q=1 need a physical example?
The old label "Hooke" was wrong but at least evocative. The new "inverse-linear" is
correct but bare. A brief parenthetical like "(e.g., a force F=K/r)" could help
readability. However, this is below the threshold for a required fix —
it is a LOW-priority style preference, and the stability criterion 1+γ²>0 is
the mathematical point, not the physical identity of the force.
**Result:** Optional. Not blocking.

## Summary
No blocking issues found. All five attacks resolved without corrections needed.
Verdict: PASS confirmed.
