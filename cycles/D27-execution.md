# D27 Execution: Odd-Dimension Scalarization Scales and Transmutation

Date: 2026-02-14
Status: Completed

## Decision (append-only)
- Chosen target: Determine whether odd-\(d\) scalarization can claim a natural scale supplier, or whether strict monomial universality is blocked.
- Why now: Open Problem 3 in `papers/planck-area/main.md` explicitly calls for this analysis. The hypothesis ladder (PA-H2.5a vs PA-H2.13) is mature enough to give a clean answer.

## One-sentence novelty claim (append-only)
The parity obstruction (Remark PA-D1.3a) for odd \(d\) is categorical under the monomial sieve but absent under dimensional transmutation, cleanly separating the two branches and establishing that scalarization universality in odd \(d\) requires the transmutation route.

## Scope disclaimer (append-only)
This is a conceptual triage, not a new theorem. The result is a classification of which hypothesis branches allow/block odd-\(d\) scalarization, with explicit toy-model witnesses tabulated in S284.

## Triage findings (2026-02-14)

### Core analysis

The half-density scalarization exponent is \(d/2\). For odd \(d\), this is a half-integer.

**Branch 1: Monomial sieve (PA-H2.5a).** The admitted couplings under PA-H2.7a are action coefficients with canonical field normalization. These have integer length dimensions:
- \([G_d] = \text{length}^{d-2}\) (integer for integer \(d\)),
- \([\Lambda_d] = \text{length}^{-2}\),
- \([g_d^2]_{\mathrm{YM}} = \text{length}^{d-4}\) (the squared coupling appears in the action \(1/(4g^2)\int F^2\)).

Any monomial \(\prod g_i^{n_i}\) with integer \(n_i\) in couplings with integer length dimensions produces an integer total length dimension. A half-integer target \(d/2\) is therefore unreachable. This is the **parity obstruction** of Remark PA-D1.3a: it is categorical and independent of which integer-dimensional couplings are admitted.

Note: the unsquared YM coupling \(g_d\) has dimension \(\text{length}^{(d-4)/2}\), which is half-integer for odd \(d\). But \(g_d\) is not the admitted coupling under PA-H2.7a (the action coefficient is \(g_d^2\)), so invoking \(g_d\) directly would amount to taking a fractional power of the admitted coupling, violating PA-H2.5a.

**Branch 2: Dimensional transmutation (PA-H2.13).** A transmutation scale \(\Lambda_\ast\) with \([\Lambda_\ast] = \text{length}^{-1}\) is a positive real number. \(\Lambda_\ast^{-d/2}\) is well-defined for all real \(d/2\), integer or not. The transmutation scale is already non-analytic in the coupling (\(\Lambda_\ast \sim \mu\,e^{-\text{const}/g^2}\)), so raising it to a half-integer power introduces no additional non-analyticity. Conclusion: transmutation is equally available in all \(d\) where a marginal or asymptotically free coupling exists.

**Branch 3: Fractional powers of couplings.** Allowing fractional powers (relaxing PA-H2.5) trivially resolves the problem: \(G_d^{d/(2(d-2))}\) works in any \(d > 2\). But this makes the sieve vacuous.

### Summary table (detailed in S284)

| \(d\) | Exponent \(d/2\) | Parity | Monomial sieve | Transmutation | Notes |
|-------|-------------------|--------|----------------|---------------|-------|
| 1     | 1/2               | half   | BLOCKED        | Available (if marginal coupling exists) | QM on half-line; limited physical models |
| 2     | 1                 | int    | Blocked (\(G_2\) dimensionless) | Available (2D delta: \(\kappa_\ast^{-1}\)) | Explicit witness: PA-E5 |
| 3     | 3/2               | half   | BLOCKED (parity) | Available (3D delta: scattering length) | Power-law renormalization |
| 4     | 2                 | int    | \(\checkmark\) (\(G_4 = \text{area}\)) | Also available (\(\Lambda_{\mathrm{QCD}}^{-2}\)) | Unique monomial-sieve solution |
| 5     | 5/2               | half   | BLOCKED (parity) | Available (if marginal YM in \(d=5\) existed) | YM is super-renormalizable in \(d=5\) |

### Decision

The honest conclusion is: **the monomial sieve is an even-\(d\) filter** (and further selects \(d=4\) under gravity-only). In odd \(d\), scalarization universality is not blocked *per se* but requires the transmutation branch (PA-H2.13). The parity obstruction is categorical for the monomial branch and absent for transmutation. This cleanly separates the two hypothesis ladders and should be stated as a scope boundary in the Planck-area note.

## Spawned cycles (planned)
- `S284`: odd-\(d\) scale-supplier table + witness (spawned, see below).
- `B32` (optional): transmutation-in-odd-\(d\) anchor(s). **Deferred**: the existing witnesses (PA-E5 for \(d=2\), Jackiw for \(d=2,3\)) are sufficient for the triage conclusion.

## S284 completion (2026-02-14)

S284 completed. Blackboard slot 0 overwritten with the scale-supplier table and parity obstruction analysis. Key outputs:
1. **Parity lemma** formalized: Z-module structure of coupling dimensions blocks half-integer targets categorically.
2. **Coupling dimension table** for d=1..5 with five standard couplings (G_d, Lambda_d, g_d^2, m, alpha_*).
3. **d=3 explicit witness**: scattering length a from 3D delta interaction supplies a^{3/2} = length^{d/2}.
4. **Transmutation parity-blindness proof**: Lambda_*^{-d/2} is smooth for all d/2 > 0.

## Acceptance check

Plan acceptance criteria:
- "A clear, scoped conclusion that can guide later Planck-area claims": YES. The conclusion is: the monomial sieve is an even-d filter; odd d requires transmutation; d=4 is uniquely selected by gravity-only monomial sieve.
- "Either a viable odd-d scale-supplier mechanism with one explicit witness, or a justified statement that strict scalarization universality is blocked": YES. The d=3 witness (scattering length) provides the viable mechanism. Additionally, the parity obstruction provides the justified blocking statement for the monomial branch.

Both halves of the disjunction are satisfied. D27 is complete.

