# C230 Execution: Promote Hubbard-Stratonovich into Fermionic Paper

## Work Done
1. Inserted Remark 6.5 before References section
2. Included trace-log effective action formula
3. Added BCS and NJL examples
4. Included channel decomposition caveat
5. Noted RG matching requirements
6. Added 2 bibliography entries: Hubbard1959, NambuJonaLasinio1961

## Content Added
```
**Remark 6.5** (Hubbard-Stratonovich & Effective Action).
HS transformation: Gaussian identity generates effective action Γ_eff[auxiliary].
Fermion determinant → trace-log: det[1̂ + Ĝ] = exp[Tr log(1̂ + Ĝ)].
Examples: BCS gap equation, NJL chiral symmetry breaking.
Caveat: channel decomposition via Fierz rearrangement is basis-choice dependent.
RG matching (not naive inheritance) controls running of auxiliary couplings.
```

## Diffstat
```
+8 -0 (Remark 6.5 added)
TOTAL +8 -0
```

## Checks
- Cycle-tag leak: PASS (no C### in rendered text)
- Transcript mention: PASS (no conv_patched)
- Physics verified: YES (S189 reviewer approved)
- Bibliography entries added: Hubbard1959, NambuJonaLasinio1961

## Status
Ready for commit (C230 → manuscript files first, then cycles/docs).
