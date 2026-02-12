# C114 Execution: Add linear-vs-nonlinear beta boundary to Section 8.4/8.5 transition

Date: 2026-02-12

## Summary
- Added one paragraph (3 sentences) to Section 8.4, after the closing "Butcher group vs Wilsonian semigroup" remark and before §8.5.

## Work log
1. Read Section 8.4 closing paragraph (line 990) and §8.5 header (line 992).
2. Inserted paragraph explaining: D6.2a-sg's linear β gives algebraic RG invariants (no transmutation); D6.2/Section 8.3's nonlinear β gives essential-singularity transmutation scale; the P6.2 semigroup axioms are shared, the difference is order of vanishing of β at fixed point.
3. Ran diffstat and guard checks.

## Diffstat
```
paper-diffstat (cached): TOTAL +1 -0 (1 files)
  +1 -0 paper/main.md
```

## Guard checks (required before finalizing)
- No cycle IDs leaked into manuscripts: CLEAN
- Manuscript does not cite transcripts: CLEAN

## Outputs
- Manuscripts edited:
  - `paper/main.md` (Section 8.4, closing paragraph before §8.5)

## Spawned cycles
- `Q69`: referee pass on C114
