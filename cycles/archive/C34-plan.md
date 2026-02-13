# C34 Plan

## Goal
Start a new dependent follow-up draft `papers/half-density-qft/main.md` that makes the “half-density prioritary” viewpoint explicit in QFT, not just QM/statics, with at least one worked computation (so it is not an outline):
1. propagators/Green functions as **bi-half-density kernels** on spacetime,
2. densitized fields \(\psi=|g|^{1/4}\phi\) as a scalarization gauge,
3. local counterterms/contact terms as diagonal \(\delta(x-y)\) (and derivatives) in kernel form.

## Scope
1. Add `papers/half-density-qft/main.md` (wave 1) with:
   - short abstract + purpose,
   - explicit densitized scalar field computation,
   - kernel/delta normalization discussion,
   - short “contact terms as delta-kernel pieces” remark (linking to RG/Planck-area follow-ups without overreaching).
2. Update `papers/README.md` to list the new draft.
3. Update `docs/research-log.md` and `cycles/index.md`.

## Non-Goals
- No BV deep dive (outlook only; queue references for a later `B` cycle if promoted).
- No bibliography ingestion in this cycle (use the repo’s existing anchors only).
- No edits to `paper/main.md` in this cycle.

## Acceptance Tests
1. The new draft contains at least one explicit worked computation (densitized scalar field).
2. The draft cleanly separates “canonical half-density kernel objects” from scalarization conventions and from physical-scale claims.

