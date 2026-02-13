# C15 Execution

Start date: 2026-02-09

## Work Completed
1. Made the delta thread less “single-formula” by adding a boundary-condition (self-adjoint extension) viewpoint:
   - `papers/rg-fundamental/main.md` §5.7: \(2\)D point interaction encoded as \(\psi(r)=A\ln(r/R)+o(1)\), with bound-state scale extracted from the \(K_0\) expansion.
2. Made “RG as semigroup / non-invertible coarse-graining” non-metaphorical:
   - `papers/rg-fundamental/main.md` §6.1: exact Gaussian integration as a coarse-graining map, semigroup property by iterated integration (nested Schur complements), and explicit non-invertibility (\(a_{\rm eff}=a-b^2/c\) does not determine \((a,b,c)\)).
3. Identified and ingested the intended “Cristina 2D delta” reference as an independent validation anchor:
   - Added `[ManuelTarrach1994PertRenQM]` (arXiv:`hep-th/9309013`, Phys. Lett. B 328 (1994) 113) to `paper/bibliography.md`.
   - Ingested the OA source capture in `sources/9309013-6f2e5cc3.md`.
   - Cited it in `papers/rg-fundamental/main.md` and in `paper/main.md` (Section 8.1 + Appendix 10.5) to triangulate the 2D delta renormalization formulas.
4. Rebuilt `papers/rg-fundamental/main.pdf` and checked manuscript policy hygiene:
   - `rg -n 'C[0-9]{2}' paper/main.md` (no matches).
   - `rg -n 'conv_patched' paper/main.md` (no matches).

## Remaining
1. Optional: add one more independent (non-Tarrach/Manuel, non-Rivero) standard reference (e.g. Jackiw/Adhikari/Mead–Godines lineage) if we want an additional triangulation point beyond a single external anchor.
