# S290 Execution: Half-density vs Moyal ordering comparison

Date: 2026-02-14

## Work performed
- Compared three quantization prescriptions (half-density, Weyl/Moyal, Born-Jordan) on four test symbols:
  1. H = p^2/(2m) + V(q) on flat space (all three agree exactly)
  2. H = f(q)p^2 on curved/position-dependent mass (diverge at O(hbar): connection term)
  3. H = qp dilation generator (all three agree; half-density = Weyl = alpha=1/2)
  4. Born-Jordan vs Weyl for degree >= 2 symbols (differ at O(hbar))
- Identified four-layer stratification of quantization freedom:
  Layer 1: principal symbol (all agree)
  Layer 2: connection/first-derivative term (half-density fixes uniquely)
  Layer 3: O(hbar^2) scalar potential (deformation freedom persists)
  Layer 4: domain/self-adjoint extension (independent of ordering entirely)
- Connected D23/S280 unitarity selection (alpha=1/2 for qp) to half-density Jacobian: the e^{s/2} prefactor in the dilation group IS |dq'/dq|^{1/2}

## Artifacts produced
- `blackboards/3.md`: Slot 3 overwritten (was central-force threshold bridge, now S290)
- `blackboards/README.md`: Slot index updated

## Commands run (if any)
None (pure analysis from manuscript text and notebook content).

## Result
**Verdict: Option 2 from D35-plan (Scope clarification).**

The tension between Section 7 and Section 10.2 is apparent, not real:
- Section 7 (P5.2): deformation equivalence = all orderings related by formal automorphisms, same classical limit
- Section 10.2 (D9.1a/d): half-density conjugation = distinguished representative that eliminates connection term

These are complementary:
- Half-density fixes the kinetic operator realization (Layer 2: no first-derivative term)
- Deformation freedom persists at subleading scalar level (Layer 3: O(hbar^2) potentials)
- Domain/extension freedom is untouched by either (Layer 4)

Analogy: Section 7 says "all gauges equivalent"; Section 10.2 says "this gauge is canonical." No contradiction.

Flat-space separable Hamiltonians: all prescriptions agree exactly (tension invisible).
Curved-space kinetic operators: half-density is the unique symmetric (self-adjoint) representative.

## Promotion candidate (pointer)
- Location: blackboards/3.md, Section VI (Verdict)
- The four-layer stratification and gauge analogy could strengthen the manuscript's Section 9.3 item 5 (the passage at line 1206 that already mentions the complementarity) and close Residual Vulnerability #2 (line 1218).

## Discovery flag (fill at end of cycle)
- Did this computation reveal something unexpected? **no**
- The resolution matches the D35-plan hypothesis (Option 2). The connection to dilation-group half-density Jacobian (Section III of blackboard) is a clean confirmation of S280 rather than a new finding.

## Spawned cycles
- D35 can now be closed with verdict "scope clarification, complementary"
- Potential C-cycle: sharpen the Section 9.3 item 5 wording (line 1206) to explicitly state the four-layer structure
- Potential C-cycle: advance Package B closure target (line 1218) with the f(q)p^2 comparison as the "one curved-manifold kinetic symbol through two quantizations"
