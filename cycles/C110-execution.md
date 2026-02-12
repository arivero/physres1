# C110 Execution: Add Nauenberg 2018 citation to H1.2

Date: 2026-02-12

## Change
Line 224 of paper/main.md: added `[Nauenberg2018GraphicalMethod]` after `[Nauenberg1994SymplecticNewton]` in Heuristic H1.2.

Before:
```
... [Nauenberg1994SymplecticNewton].
```

After:
```
... [Nauenberg1994SymplecticNewton] [Nauenberg2018GraphicalMethod].
```

## Diffstat
```
paper-diffstat (cached): TOTAL +1 -1 (1 files)
  +1 -1 paper/main.md
```

## Guard checks
- Cycle-tag leak (`C[0-9]{2}` in paper/main.md): **clean**
- Transcript mention (`conv_patched` in paper/main.md): **clean**
