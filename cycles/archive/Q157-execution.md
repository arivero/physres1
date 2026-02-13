# Q157 Execution

Read `papers/dirac-probes-corners-impulses/main.md`, lines 100–101.

**Mathematical correctness:** The formula ΔH = (m/2)(v₊²-v₋²) = J·v̄ is verified by direct algebra. For free particle with p = mv, Theorem 3.2 gives v₊-v₋=J/m. Then ΔH = (m/2)(v₊²-v₋²) = (m/2)(v₊-v₋)(v₊+v₋) = (J/m)·m·((v₊+v₋)/2) = J·v̄. ✓

**Discrete analog claim:** Power P=F·v becomes work W=F·Δx. For impulse J=F·Δt, work is J·v̄ where v̄ is average velocity during the infinitesimal Δt. The continuous-to-discrete passage is correctly stated. ✓

**Contrast with corner:** Remark 3.1b (line 68–73) states corners have continuous H; Remark 3.2a correctly notes J=0 at corners, so energy jump vanishes. The contrast is explicit and accurate. ✓

**Dichotomy summary:** "corners preserve both p and H; impulses shift p by J and H by J·v̄" is the correct paired statement. ✓

**Placement:** Remark 3.2a appears after Theorem 3.2 (line 80–96), before Section 4 (line 103). Placement is logical and appropriate. ✓

**Verdict:** PASS. All mathematical claims are correct, the discrete analog is properly motivated, the corner contrast is explicit, and placement is appropriate.
