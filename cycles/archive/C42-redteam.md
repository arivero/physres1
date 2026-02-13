# C42 Red Team

## Failure Modes
1. Overcommitting to a specific \(2\pi\) convention in a context where kernels are treated as half-densities (scalarization-dependent).
2. Adding more than one sentence and bloating the kernel-normalization discussion.
3. Accidentally introducing cycle labels into `paper/main.md`.

## Mitigations
- Phrase the statement as “delta limit fixes the remaining constant; in standard scalar conventions one gets … up to phase”.
- Add exactly one sentence.
- Run the `rg -n 'C[0-9]{2}' paper/main.md` check.

