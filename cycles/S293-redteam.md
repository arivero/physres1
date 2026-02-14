# S293 Red Team: Mehler Kernel Composition Failure Modes

Date: 2026-02-14

## Failure modes

- **Algebra/sign mistakes in trigonometric identities:**
  - Mitigation: Every trig identity used (sin(a+b), cos(a+b)) is standard and self-checking. The final result is the known textbook Mehler composition (Schulman eq. 5.40, Feynman-Hibbs Ch. 3). If any intermediate step had an error, the final boxed result would not match.
  - Status: MITIGATED (textbook cross-check)

- **Branch cut ambiguity in sqrt(i) manipulation (Section 4):**
  - The step i*sqrt(-i) = sqrt(i) depends on consistent branch choice. For t, s in the first half-period (0 < wt < pi), sin(wt) > 0, so the branch is unambiguous.
  - Mitigation: Result confirmed by independent normalization check (d-dimensional version in Section 4a).
  - Status: MITIGATED

- **Claim overgeneralization: "P4.2 extends to interacting systems":**
  - Risk: The Mehler kernel is one specific potential (quadratic). Claiming general V requires additional argument.
  - Mitigation: The verdict carefully states "extends to the interacting harmonic oscillator" (an exact witness), not "all V." The generalization argument (perturbative, via Seeley-DeWitt) is noted in the debate file but not claimed as proven.
  - Status: ACKNOWLEDGED (scope boundary is explicit)

- **a_1 extraction is only to leading order in (x-y):**
  - The full a_1(x,y) involves the midpoint average, not just V(x). The boxed formula uses the diagonal limit y -> x.
  - Mitigation: This is the standard convention for Seeley-DeWitt coefficients (coincidence limit). The off-diagonal structure is subleading.
  - Status: MITIGATED (standard convention)

- **Euclidean vs Lorentzian signature confusion:**
  - The main paper D12.3 uses Euclidean signature (sinh, cosh). This blackboard uses Lorentzian (sin, cos). These are related by Wick rotation t -> -it.
  - Mitigation: Both are stated explicitly. The composition mechanism is signature-independent (same algebraic structure).
  - Status: MITIGATED
