# C107 Execution: Promote H4.0c (RG-side D=4 echo) into paper/main.md

Date: 2026-02-12

## Work performed
- Inserted `Heuristic H4.0c (RG-side echo: gauge-coupling marginality at D=4)` into `paper/main.md` Section 6, immediately after H4.0b and before Derivation D4.1.
- The remark notes: (1) gauge-coupling marginality [g^2]=length^{D-4}=0 at D=4, (2) YM conformal invariance e^{(D-4)s}=1, (3) the form-degree matching D=2(p+1) for p=1, and (4) the kinematic/dynamic filter distinction.

## Diffstat
```
paper-diffstat (cached): TOTAL +3 -0 (1 files)
  +3 -0 paper/main.md
```

## Guard checks
- Cycle-tag leak: `rg -n 'C[0-9]{2}' paper/main.md` → no matches.
- Transcript mention: `rg -n 'conv_patched' paper/main.md` → no matches.

## Result
- H4.0c is now in the manuscript between H4.0b and D4.1.
- No new citations needed (the remark is self-contained dimensional analysis).

## Spawned cycles
- `Q62`: referee pass on C107.
