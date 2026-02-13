# S85 Plan: Wilsonian shell-integration beta function for 2D delta

Date: 2026-02-13

## Goal
Produce a self-contained Wilsonian derivation of the 2D delta beta function by explicitly integrating out a thin momentum shell, making the semigroup/composition property (RG-P1.1) concrete. This complements the existing renormalization-condition derivation in Section 5.2 of `papers/rg-fundamental/main.md`.

## Deliverable (keep bounded)
- Target: 1–2 pages of derivation + SymPy verification
- Output file(s):
  - `blackboards/2026-02-13-wilsonian-shell-2d-delta.md`

## Allowed files
- `blackboards/`
- `paper/notes/`
- `docs/research-log.md`
- `cycles/S85-*.md`

## Forbidden files
- Manuscripts: `paper/main.md`, `papers/*/main.md`
- Bibliography ledger: `paper/bibliography.md`
- `sources/`

## Acceptance criteria
- Explicit shell integral Λ' < |q| < Λ evaluated in closed form.
- Matching to effective coupling g_eff(Λ') at lower cutoff.
- Semigroup composition shown: W_{Λ₁→Λ₂} ∘ W_{Λ→Λ₁} = W_{Λ→Λ₂}.
- Beta function agrees with Section 5.2: β(g) = (m/πℏ²) g².
- SymPy verification of the shell integral.
- Discovery flag filled in.
