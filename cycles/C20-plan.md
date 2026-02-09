# C20 Plan

## Goal
Make the 1D “rich fixed points” point do real work in `papers/rg-fundamental/main.md` by showing an explicit RG flow of boundary parameters (engineering dimension) and how fixed points correspond to simple quantization rules (constant phase shifts).

## Scope
1. Add a short derivation in `papers/rg-fundamental/main.md`:
   - scaling \(x\mapsto b x\) induces \(\lambda\mapsto b^{-1}\lambda\) for the Robin parameter,
   - hence a beta function for a dimensionless combination (e.g. \(\hat\lambda=\lambda/\mu\)),
   - and fixed points correspond to Dirichlet/Neumann limits.
2. Add one concrete scattering example to connect “boundary RG” to “S-matrix RG”:
   - 1D \(\delta\)-potential on the full line (reflection/transmission amplitudes),
   - show the two endpoint behaviors (transparent vs reflective) as scale limits.
3. Keep it short and labeled; do not turn this into a full self-adjoint-extension classification paper.

## Acceptance Tests
1. `papers/rg-fundamental/main.md` gains one labeled `Derivation` adding an explicit RG flow for \(\lambda\) and one labeled `Example` for the 1D \(\delta\) scattering matrix limits.
2. `papers/rg-fundamental/main.pdf` rebuilds without errors.

