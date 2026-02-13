# C108 Execution: Resolve claim-label namespace collision

Date: 2026-02-12

## Collision inventory (pre-fix)
| Label | paper/main.md | rg-fundamental | planck-area | half-density-qft |
|-------|--------------|----------------|-------------|-----------------|
| P1.1  | Refinement limit of areal velocity | Semigroup compatibility | No canonical half-density=function | — |
| D1.1  | Finite-step angular momentum | Cutoff eval of loop integral | Coordinate invariance of HD pairing | Identity kernel |
| H1.1  | Impulse-to-continuous | Interpretation as renormalization | Why half-densities | — |
| D1.2  | Noether charge from variation | Finite T-matrix and beta fn | Dilation weight explicit | Conjugated kinetic operator |
| D1.3  | — | Scheme dependence | Gravity-only sieve | Conformal metric expansion |
| ... (systemic collision in all X1.y labels) |

## Fix applied
- **rg-fundamental**: all 33 label definitions prefixed with `RG-`.
- **planck-area**: all ~65 label definitions + ~50 inline cross-references prefixed with `PA-`. One cross-reference to half-density-qft updated to `HD-D1.3`.
- **half-density-qft**: all 7 label definitions prefixed with `HD-`.

## Diffstat
```
papers/half-density-qft/main.md |  14 +--
papers/planck-area/main.md      | 218 ++++++++++++++++++++--------------------
papers/rg-fundamental/main.md   |  66 ++++++------
3 files changed, 149 insertions(+), 149 deletions(-)
```
Net change: 0 lines (purely mechanical rename).

## Guard checks
- paper/main.md not modified (confirmed via `git diff --cached --name-only`).
- No cycle-tag leak check needed (companion papers, not main manuscript).
