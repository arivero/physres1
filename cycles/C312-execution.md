# C312 Execution: P4.2 Hypothesis Reduction + Extensions + Deformation Correction

Date: 2026-02-14

## Summary
- What changed in manuscripts (high level):
  - Added Remarks P4.2c, P4.2d, P4.2e, P4.2f to paper/main.md Section 6
  - Corrected Remark D9.1a in Section 10.2 (four-layer stratification)

## Work log
1. Read blackboards 0-6, notebooks (p42-hypothesis-reduction, p42-extensions-interacting-curved, deformation-equivalence-physical)
2. Identified C304-C308, C310-C311 already executed in manuscripts from prior session
3. Identified C309 content (P4.2 base proposition) already in manuscript but hypothesis reduction NOT promoted
4. Added Remark P4.2c: exponential weight uniqueness theorem from D29/S288 (functional equation forces Gaussian)
5. Added Remark P4.2d: Levy-Khintchine obstruction from D39/S295 (alpha=2 forced by dimensional analysis; effective hypothesis count 4->3)
6. Added Remark P4.2e: extensions from D30/S287 (curved), D36/S293 (interacting), D34+D37/S291+S292 (Lorentzian + iepsilon uniqueness)
7. Added Remark P4.2f: kappa universality across sectors from D32/S286 (transitivity of interaction forces single kappa)
8. Corrected Remark D9.1a: replaced incorrect "eliminates first-derivative ambiguity entirely" with four-layer stratification from D35/S290 + D38/S294; added explicit energy-shift estimate; precision fix on scalar formula (H_W - H_HD = -hbar^2 f'^2/(32mf))
9. Harmonized H0.2 bullet 2: replaced "unitarity selects" with "symmetry of the generator selects" per D23/S280 analysis; added cross-reference to D4.1c

## Diffstat
```
paper-diffstat (cached): TOTAL +21 -5 (1 files)
  +21 -5 paper/main.md
```
Content: 4 new remarks P4.2c-f, 1 correction D9.1a (with formula precision fix), 1 contributions item, 1 H0.2 wording fix.

## Guard checks
- No cycle IDs leaked into manuscripts: CLEAN (rg -n 'C[0-9]{2}' paper/main.md)
- Manuscript does not cite transcripts: CLEAN (rg -nF 'conv_patched' paper/main.md)

## Outputs
- Manuscripts edited:
  - paper/main.md (+16 -1)
- PDFs rebuilt: not yet

## Spawned cycles
- Q185: referee pass on C312
