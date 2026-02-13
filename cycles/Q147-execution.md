# Q147 — Execution

## Verification Performed

### 1. Mathematical Derivation of ω_φ² = M/r₀³

From Schwarzschild Killing vectors:
- ω_φ = dφ/dt = (L/r₀²) · (1-2M/r₀)/E

With circular-orbit formulas (§4.3):
- L² = Mr₀²/(r₀-3M)
- E² = (r₀-2M)²/(r₀(r₀-3M))

Substitution:
```
ω_φ² = (L²/r₀⁴) · (1-2M/r₀)²/E²
     = [Mr₀²/(r₀-3M)] / r₀⁴ · [(r₀-2M)²/r₀²] / [(r₀-2M)²/(r₀(r₀-3M))]
     = [Mr₀²/(r₀-3M)] · [r₀(r₀-3M)/(r₀⁴)] · [(r₀-2M)²/(r₀-2M)²]
     = Mr₀³/r₀⁴
     = M/r₀³  ✓
```

The coordinate Kepler law is exact at all r₀ > 3M. **CORRECT.**

### 2. Proper-Time Correction T_τ = T_t √(1-3M/r₀)

From metric: dt/dτ = E/(1-2M/r₀) on circular orbit.

For circular orbit: E = (r₀-2M)/√(r₀(r₀-3M))

Therefore:
```
dτ/dt = (1-2M/r₀)/E
      = [(r₀-2M)/r₀] / [(r₀-2M)/√(r₀(r₀-3M))]
      = [(r₀-2M)/r₀] · [√(r₀(r₀-3M))/(r₀-2M)]
      = √(r₀(r₀-3M))/r₀
      = √[(r₀-3M)/r₀]
      = √(1-3M/r₀)  ✓
```

**CORRECT.** The remark correctly identifies this as the gravitational time-dilation factor for the orbital period.

### 3. ISCO Numerical Check

At r₀ = 6M:
```
T_τ/T_t = √(1-3M/(6M)) = √(1-1/2) = √(1/2) = 1/√2 ≈ 0.707  ✓
```

**CORRECT.**

### 4. "Gauge Accident" Characterization

The remark characterizes the coordinate Kepler law ω_φ² = M/r₀³ as a "gauge accident" of Schwarzschild coordinates.

**Assessment:** The term is physically appropriate but slightly informal. In GR, coordinate time t is indeed coordinate-dependent (a "gauge" choice). The simplicity of the coordinate-time formula — identically Newtonian despite strong-field curvature effects — is a feature of the Schwarzschild coordinate system, not a fundamental invariant. The proper-time period √(1-3M/r₀) encodes the real physical curvature.

**Alternative phrasing** (optional refinement): "coordinate artifact" instead of "gauge accident" would be more precise GR terminology, but "gauge accident" is widely understood in the physics community and appears in informal literature.

**VERDICT:** Acceptable as written. The physical point is correct and clear.

### 5. Cross-References to Remarks 4.3a-e

Verified all exist:
- Remark 4.3a (line 178): SR vs GR stability
- Remark 4.3b (line 181): ISCO angular-momentum floor
- Remark 4.3c (line 184): Hierarchy of radii
- Remark 4.3d (line 187): Accretion efficiency
- Remark 4.3e (line 190): Apsidal advance

All cross-references **CORRECT.**

### 6. Page Budget

Execution log reports: 259 → 262 lines (+3), 5pp. Current wc confirms 262 lines. **Within budget.**

## Additional Comments

The remark makes a subtle but important point: the coordinate Kepler law's simplicity is deceptive. Observers measuring proper time see the √(1-3M/r₀) factor, which:
- Vanishes at r₀ = 3M (photon sphere)
- Gives 1/√2 at ISCO
- Approaches 1 as r₀ → ∞

This ties the orbital period to the same curvature term (-2ML²/r³) responsible for:
- ISCO existence (Remarks 4.3a-b)
- Precession (Remark 4.3e, plus Remark 3.2's 5/6 curvature fraction)

The remark successfully closes the loop on the "curvature attribution" theme running through Remarks 4.3a-e.

## Verdict

**PASS**

All mathematical derivations are correct. The physical interpretation is sound. Cross-references are accurate. Page budget satisfied. The remark adds value by highlighting a coordinate-dependent simplification that contrasts with the physically meaningful proper-time correction.

Optional refinement (not required): replace "gauge accident" with "coordinate artifact" for stricter GR terminology. Current phrasing is acceptable.
