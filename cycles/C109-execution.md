# C109 Execution: Promote Remark HD-D1.3a (half-density vs conformal Laplacian)

Date: 2026-02-12

## Parent study cycle
- `S72`

## Work performed
Added Remark HD-D1.3a after HD-D1.3 in `papers/half-density-qft/main.md`. The remark records three results from S72:

1. **Distinct operators**: the half-density conjugation (weight D/2) differs from the Yamabe operator (weight (D-2)/2) in all coefficient groups.
2. **Not xi*R**: the half-density potential cannot be written as a curvature coupling for any single xi; matching the laplacian(sigma) term gives xi = D/(4(D-1)), but the (grad sigma)^2 term has residual D/2.
3. **Conformal-class-specific**: the D=4 cancellation relies on conformal structure; in a general metric, the half-density potential V = |nabla omega|^2 - Delta_g omega with omega = (1/4)ln|g| does not simplify the same way.

## Diffstat
```
paper-diffstat (cached): TOTAL +8 -1 (1 files)
  +8 -1 papers/half-density-qft/main.md
```

## Guard checks
- `paper/main.md` not modified — no cycle-tag or transcript checks needed.

## Notes
- The remark references the conformal coupling value xi_conf = (D-2)/(4(D-1)) but does not add a new citation; this is standard differential geometry (e.g. Wald, Parker & Toms).
