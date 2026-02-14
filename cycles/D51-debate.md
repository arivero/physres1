# D51 Debate: Are commuting diagrams theorems or axioms?

## Main claim
Cross-channel commutativity follows from A1-A5. No A6 needed.

## For
- Each channel pair has a clear mechanism: short-time universality (P×R), parameter independence (P×S), deformation equivalence (R×S)
- The framework remains at 5 axioms — economy is a virtue
- The distinction between parameter-level and observable-level commutativity is well-motivated

## Against / caveats
1. **P×R commutativity is only asymptotic.** At finite N (finite partition), commutativity fails. Does this matter?
   - Response: No — A1 requires composability in the limit, not at each finite step. Physical predictions are continuum-limit quantities.

2. **R×S commutativity relies on D35/D38.** If deformation equivalence breaks for some system (e.g., non-smooth potentials), does commutativity fail?
   - Response: D35/D38 show deformation equivalence for smooth potentials. For non-smooth potentials, A3 itself may fail (different orderings give genuinely different physics). So the failure is of A3, not of commutativity given A3.

3. **Is "trivially true" for P×S really trivial?** In QFT, the UV cutoff (scale) IS the lattice spacing (partition). So P and S are NOT always independent.
   - Response: Valid caveat. In QFT, the partition (lattice spacing a) and the UV cutoff Λ~1/a are the same parameter. The continuum limit a→0 IS the removal of the UV regulator. But RCP treats these as separate operations: partition refinement is temporal composition, scale change is coupling flow. In the path integral, these ARE distinguishable (temporal slicing vs momentum cutoff).

## Resolution
The claim holds for the non-relativistic quantum mechanics setting of the RCP paper. In QFT, the partition/scale distinction may need refinement. This is related to Open Question #3 (gravity/QFT extension).
