# Q80 Execution: Light coherence pass on main paper

Date: 2026-02-13

## Findings

### 1. Companion-note references — CLEAN
Two references found:
- Line 544 (H4.0a): "A companion note explores further (optional) hypotheses about such scale suppliers" — generic pointer to planck-area paper. Correctly doesn't name it or depend on it. ✓
- Line 1237 (D9.1a): "cf. Derivation HD-D1.3 in the half-density companion note" — references the half-density QFT companion (not planck-area or rg-fundamental). Still accurate. ✓

No references to "rg-fundamental" or "planck-area" by name, which is appropriate for a standalone paper.

### 2. Half-density discussion (Section 6) vs planck-area paper — CLEAN
- H4.0 (bi-half-density kernels): consistent with PA-D1.4a's free-propagator witness. ✓
- D4.0 (coordinate invariance): consistent with the half-density pairing mechanism in PA-E5c. ✓
- D4.1a (semigroup forces t^{-d/2}): this IS the main result that PA-D1.4a makes precise. Consistent and complementary. ✓
- H4.0a (scalarization gauge and length^{d/2} scale): consistent with PA-H2.6b's minimal hypothesis analysis. ✓
- H4.0b (conformal D(4-D)/4 filter): consistent with S80/S81 filter-independence analysis. ✓
- H4.0c (gauge marginality echo at D=4): consistent with the independent-filter structure confirmed in Q73. ✓

The main paper correctly stays at the structural/heuristic level, while the planck-area paper provides the concrete witnesses. No updates needed.

### 3. RG discussion (Section 8) vs rg-fundamental paper — CLEAN
- P6.2 (flow generator from semigroup): uses W_{Λ→κ} notation, same as RG-P1.1 and RG-D1.2a. ✓
- D6.2 (toy log divergence): structural template that the rg-fundamental paper's Section 5.2 realizes concretely. ✓
- D6.2a (step-halving control map): correctly noted as having linear β (no transmutation), with the distinction from nonlinear (transmutation) flows stated at line 991. ✓
- The main paper's Appendix 10.1 (worked renormalization template) remains abstract. The rg-fundamental paper now provides the concrete Wilsonian realization via RG-D1.2a. No conflict. ✓

### 4. Notation — CLEAN
- Main paper: d = composition-variable dimension, D = spacetime dimension (stated Section 2, line 48). ✓
- Planck-area paper: uses d throughout (composition-variable dimension). Compatible. ✓
- RG-fundamental: uses d for spatial dimension in the delta context. Compatible (same usage as main paper's d). ✓

### 5. Stale claims — CLEAN
- Section 9.3 item 3 (line 1112): "no full one-loop or higher-loop field-theory computation is included in the main text." Still accurate — the 2D delta computation lives in the companion. ✓
- Section 9.5 Future Work item 1 (line 1119): "one field-theory loop computation in a fixed scheme." Still valid as a future-work item for the main paper itself. ✓
- Section 9.4 (Residual Vulnerabilities): all four items remain accurate. ✓

## Overall assessment
**CLEAN.** The main paper's companion references are appropriately generic, the half-density and RG discussions are consistent with all satellite developments (S82–C126), and notation conventions are compatible. No updates needed at this time.

## Recommended follow-up cycles
None required. The main paper remains coherent after the planck-area and rg-fundamental satellite work.
