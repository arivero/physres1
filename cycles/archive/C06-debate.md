# C06 Debate

## Claim
Renormalization should be presented as the controlled refinement rule that makes cutoff removal meaningful (not an after-the-fact fix).

## Objection
Defining physics as "whatever has a finite limit" risks sounding tautological.

## Resolution
State renormalization as an operational stability requirement and make the mechanism explicit via: (i) bare-parameter tuning, (ii) RG consistency equations, and (iii) at least one explicit divergent template calculation.

## Status
Accepted.

## Claim
RG should be framed as a semigroup/consistency property under composed refinement steps between scales.

## Objection
Calling it a "group" is misleading because coarse-graining is not invertible in general.

## Resolution
Use semigroup language explicitly and tie it to the composition logic already used in `C04`.

## Status
Accepted.

## Claim
Cutoff independence implies an RG equation by the chain rule once dependence on the cutoff is made explicit.

## Objection
This assumes the observable depends on the cutoff only through a chosen parameterization; missing operators can spoil closure.

## Resolution
State the dependence assumption and show the multi-parameter form; note that additional operators may be required by symmetry/completeness (effective-field-theory viewpoint).

## Status
Accepted with scope caveat.

## Claim
The rooted-tree/numerical-analysis analogy is a legitimate bridge in this manuscript's refinement narrative.

## Objection
It may read as an unrelated digression.

## Resolution
Keep it short and label it `Heuristic`, using it only to reinforce the shared "refine, compose, rescale, compare" structure [RiveroOde2002] [ConnesKreimer2000].

## Status
Accepted.

## Claim
Include one explicit divergent template (log divergence) to show subtraction and beta-function emergence concretely.

## Objection
A template without a named model could be criticized as too abstract or scheme-dependent.

## Resolution
Make the scheme dependence explicit (constant \(c\) depends on convention) and present it as a minimal worked mechanism, not as a model claim.

## Status
Accepted.

## Claim
The rerun should make the semigroup-to-beta-generator link explicit, not only implicit.

## Objection
Adding this may duplicate `D6.1` and overcomplicate the flow discussion.

## Resolution
Add one compact proposition defining the infinitesimal generator of scale maps \(W_{\Lambda\to\kappa}\) and interpret beta functions as its components.

## Status
Accepted.

## Claim
The rerun should explicitly separate exact RG in full operator space from truncated finite-parameter flows.

## Objection
This may look like a technical side track.

## Resolution
Add a short closure proposition clarifying that finite beta systems depend on truncation ansatz, while the structural cross-scale consistency claim remains valid.

## Status
Accepted.
