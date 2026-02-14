# S284 Execution: Odd-d Scale-Supplier Table

Date: 2026-02-14
Status: Completed
Parent: D27

## What changed
- Overwrote blackboard slot 0 (previously: minimal RCP axiom set S211, stale/concluded) with the odd-d scale-supplier table.
- The table covers d=1,2,3,4,5 with explicit witnesses for each non-blocked entry.

## What was learned

### Parity lemma (the core result)
All admitted couplings under PA-H2.7a have integer length dimensions. Any Z-linear combination of integers is an integer. Therefore the monomial sieve (PA-H2.5a) can never reach a half-integer target d/2. This is categorical -- it does not depend on which specific couplings are available.

### The YM loophole that isn't
The unsquared YM coupling g_d has half-integer length dimension for odd d, but g_d is not an admitted coupling under PA-H2.7a (the action contains g_d^2). Using g_d directly requires taking sqrt(g_d^2), violating PA-H2.5a.

### Transmutation is parity-blind
A transmutation scale Lambda_* (positive real, dimension length^{-1}) can be raised to any power d/2, integer or not. Since Lambda_* is already non-analytic in couplings, taking Lambda_*^{-d/2} with half-integer d/2 adds no qualitatively new non-analyticity.

### The d=3 witness
The 3D delta interaction generates a scattering length a via power-law renormalization. The scalarization constant a^{3/2} = length^{3/2} = length^{d/2} is the explicit odd-d transmutation witness. The object a^{3/2} is perfectly well-defined (smooth function of positive a) and carries the correct dimension.

## Discovery flag
YES: The parity lemma provides a clean categorical separation between the monomial sieve (even-d only) and the transmutation route (all d). This sharpens Remark PA-D1.3a from "three obstruction mechanisms" to a single root cause for the odd-d case: the Z-module structure of coupling dimensions.

## Output
- `blackboards/0.md` (overwriting slot 0)
