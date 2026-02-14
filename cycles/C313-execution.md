# C313 Execution

Date: 2026-02-14

## Actions Taken

### 1. Planck-Area Paper: Odd-d Witness Closure
- **File:** `papers/planck-area/main.md`, Open Problems Section 7, item #3
- **Before:** "An explicit odd-d transmutation witness is still open."
- **After:** Marked as "(Addressed: Remark PA-D1.3b.)" with summary of d=3 scattering-length witness: a^{3/2} = length^{3/2} = length^{d/2} without fractional coupling powers.
- **Source:** Blackboard 0 (D27/S284), notebook `odd-d-scalarization-parity.md`

### 2. Cornerstone Paper: Remark P5.2a (Deformation Equivalence Is Physical)
- **File:** `paper/main.md`, Section 7.4, after Proposition P5.2
- **Content:** New remark establishing that deformation equivalence is physical (not merely formal):
  - Weyl and half-density agree on Layers 1+2, differ only on Layer 3 (O(hbar^2) scalar)
  - Ground-state energy shift |ΔE_0| = hbar*omega*alpha_0^2/16
  - For GaAs quantum wells: ≤0.06 meV, below 0.1 meV resolution
  - Four-layer stratification referenced to D9.1a in Appendix 10.2
  - Half-density as geometrically distinguished representative (Lorenz gauge analogy)
- **Source:** Notebook `deformation-equivalence-physical.md` (D35/S290 + D38/S294)

### 3. Cornerstone Paper: Package B + Package C Status Updates
- **File:** `paper/main.md`, Section 9.5
- Package B status: updated to mention four-layer stratification and observability estimates from D9.1a
- Package C status: added note that RG-fundamental companion paper already has the one-loop Wilsonian witness (RG-D1.2a)

### 4. RG-Fundamental Paper: Remark RG-H1.9 (Composition Forces Both ℏ and Scale Compatibility)
- **File:** `papers/rg-fundamental/main.md`, Section 7 (Conclusion and Outlook)
- **Content:** New remark connecting temporal composition (forcing ℏ via P4.2) with scale composition (forcing RG via this paper). "Horizontal" vs "vertical" sewing. Both consequences of taking composition seriously.
- **Source:** Synthesis of P4.2 results (D29-D39) with RG-fundamental paper's existing semigroup analysis

### 5. Cornerstone Paper: Section 9.3 and 9.4 Corrections
- **File:** `paper/main.md`, Sections 9.3 item 5 and 9.4 item 2
- Section 9.3 item 5: Corrected "eliminating the connection term" (wrong since C312/D38 correction) to accurate "agreeing on connection, differing only in O(ℏ²) scalar". Added P5.2a reference.
- Section 9.4 item 2: Updated from "deferred" to "partially addressed" with PDM model reference. Notes remaining gap (full curved-manifold domain analysis).

## Diffstat (final)

```
paper-diffstat (cached): TOTAL +36 -11 (3 files)
  +29 -9 paper/main.md
  +1 -1 papers/planck-area/main.md
  +6 -1 papers/rg-fundamental/main.md
```

## Cycle ID Leak Check
- `rg -n 'C[0-9]{2}' paper/main.md` — clean
- `rg -n 'C[0-9]{2}' papers/planck-area/main.md` — clean
