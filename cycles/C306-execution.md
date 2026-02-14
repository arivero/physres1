# C306 Execution: Itô/Stratonovich Dictionary to Main Paper

Date: 2026-02-14

## Summary
- What changed in manuscripts (high level):
  - Added Remark D4.1d to main paper: discretization-stochastic dictionary mapping alpha-discretization to Itô/Stratonovich

## Work log
1. Read blackboards/2.md (S282 output: stochastic discretization and Itô correction)
2. Located insertion point: after Remark D4.1c in Section 6.3 (line ~653)
3. Added Remark D4.1d containing:
   - Mapping of alpha=0/1/2 to Itô/Stratonovich/anti-Itô
   - N-impulse model with position-dependent random impulses
   - Stratonovich-to-Itô correction formula
   - Structural connection: chain-rule corrections in both formalisms
   - Disclaimer: not claiming path integrals "are" stochastic processes

## Diffstat
Paste output of:
```bash
scripts/paper-diffstat.sh --cached
```

## Guard checks (required before finalizing)
- No cycle IDs leaked into manuscripts:
  - `rg -n 'C[0-9]{2}' paper/main.md`
- Manuscript does not cite transcripts:
  - `rg -nF 'conv_patched' paper/main.md`

## Outputs
- Manuscripts edited:
  - <list>
- PDFs rebuilt (if applicable):
  - <list>

## Spawned cycles
- `Qxx`: referee pass on this `Cxx`
- `Sxx` / `Bxx` / `Dxx`: <if needed>

