# Q183 Execution: Referee pass on C301 (Remark H1.2a)

Date: 2026-02-14

## Parent cycle reviewed
- `C301`

## Material under review
Lines 234-235 of `paper/main.md`: `Remark H1.2a (Convergence theorem and failure mode)`.

Verbatim text:

> Standard convergence theory for one-step numerical integrators guarantees that
> the polygonal orbit converges to the true continuous orbit with global error
> O(h) on any finite time interval where the force nabla V is Lipschitz -- i.e.
> away from the r=0 collision singularity of central potentials. At the collision
> point the Lipschitz constant diverges, the fixed-step scheme breaks down, and
> regularization (Kustaanheimo-Stiefel / Levi-Civita coordinate transformations)
> or adaptive stepping is required. The structural invariants (angular momentum,
> equal areas) are exact at each finite step regardless and do not depend on the
> convergence of the interpolation limit. This makes precise the hedge in H1.1a:
> the limit exists in the standard differentiable sense exactly where the force
> is Lipschitz, and fails at the singularities where central-force models cease
> to be smooth.

## Overall Verdict

**PASS WITH MINOR REVISIONS**

The remark is mathematically correct at remark level, well-placed in the
narrative, and adds genuine precision to the existing hedge in H1.1a. The
issues below are all minor and none affects correctness.

## Numbered Issues

### Issue 1 (Minor): Missing explicit citation for the convergence theorem
**Severity:** Minor (bibliography, not correctness).

The remark invokes "standard convergence theory for one-step numerical
integrators" but provides no citation. The supporting blackboard (6.md) names
the precise results: Hairer-Lubich-Wanner (HLW06, Theorem IX.3.1) and
Hairer-Norsett-Wanner (HNW93, Theorem II.3.6). The C301 red-team file
explicitly acknowledges this gap and defers it to a bibliography cycle.

**Assessment:** Acceptable for a remark-level statement; "standard convergence
theory" is a phrase any numerical analysis reader will recognize. However, adding
at least one citation (e.g., `[HLW06]`) would strengthen the remark and is easy
to do. Recommend spawning a B-cycle for this.

### Issue 2 (Minor): "nabla V is Lipschitz" vs "F is Lipschitz"
**Severity:** Minor (notation consistency).

The remark writes "the force nabla V" but Section 3.2 uses F(r) = f(r) r-hat
as the force notation (with the sign convention F = -nabla V implicit in the
Hamiltonian H1.2). Using "nabla V" here briefly conflates the gradient of the
potential with the force. The rest of Section 3 consistently uses F for force.

**Assessment:** Not incorrect (the Lipschitz condition on nabla V is
mathematically equivalent to the Lipschitz condition on F when F = -nabla V),
but for notation consistency within Section 3, writing "the force F = -nabla V
is Lipschitz" or simply "the force is Lipschitz" would be cleaner. This is a
minor wording adjustment.

### Issue 3 (Negligible): Kustaanheimo-Stiefel and Levi-Civita named but not cited
**Severity:** Negligible.

The remark names two regularization techniques without citations. The C301
red-team correctly notes this is appropriate for a remark: the point is to flag
that regularization exists, not to derive it. Celestial mechanics readers will
recognize the names.

**Assessment:** No action required. If a bibliography pass is spawned for
Issue 1, KS/LC citations could be bundled.

### Issue 4 (Negligible): "cease to be smooth" vs "cease to be Lipschitz"
**Severity:** Negligible (precision of language).

The closing sentence says "central-force models cease to be smooth." Strictly,
the relevant property is Lipschitz continuity of the force, not smoothness of the
model per se. The force 1/r^2 is smooth (C-infinity) on R^3 \ {0}; it is at
r = 0 that the function ceases to exist (not merely ceases to be smooth). The
point is that the Lipschitz constant on any ball containing r = 0 is infinite.

**Assessment:** The intended meaning is clear in context and not misleading. A
pedantic referee might suggest "where the force ceases to be Lipschitz" instead
of "where central-force models cease to be smooth," but this is a stylistic
preference at remark level.

### Issue 5 (Positive): Structural-invariant independence correctly stated
The final two sentences correctly separate the structural invariants
(angular-momentum conservation, equal areas) from the convergence question.
This is the key insight: D1.1 and D1.2 are algebraic identities at each finite
step and do not require any regularity hypothesis. The remark states this
cleanly.

### Issue 6 (Positive): Connection to H1.1a is well-executed
The closing sentence ties back to the Nauenberg/Pourciau debate referenced in
H1.1a and makes precise what was previously a generic hedge. The two remarks
are complementary, as the C301 debate file argues.

## Notation Consistency Check
- Section 3 uses: r_k, v_k, L_k, F, hat-r, Delta t, h (step size in H1.2).
- Remark H1.2a uses: h (consistent with H1.2), nabla V (see Issue 2), r = 0
  (standard), O(h) (standard).
- No inconsistency beyond Issue 2.

## Claim-Scope Check
- The remark claims O(h) convergence "on any finite time interval where the
  force nabla V is Lipschitz." This is correct and is the standard theorem
  statement.
- The failure mode is correctly identified as the collision singularity where
  the Lipschitz constant diverges.
- No overclaim detected. The remark does not assert convergence rate better
  than O(h), does not claim anything about long-time behavior, and does not
  claim the structural invariants need convergence.

## Graduate-Student Readability
The remark is readable at the level expected for a Physics Reports survey.
A graduate student in theoretical physics or mathematical physics would follow
the argument. The only potential confusion point is the Lipschitz terminology,
which is standard in numerical analysis but less common in physics pedagogy;
however, the remark implicitly defines the concept by connecting it to "away
from the r = 0 collision singularity," which is concrete enough.

## Required follow-ups (spawn cycles)
1. **B33 (recommended, not blocking):** Add citations for the convergence theorem
   (HLW06 Theorem IX.3.1, HNW93 Theorem II.3.6) and optionally for
   Kustaanheimo-Stiefel / Levi-Civita regularization. This addresses Issues 1
   and 3.
2. **C302 (optional, minor):** Harmonize "nabla V" to "the force F" in Remark
   H1.2a for notation consistency with Section 3.2 (Issue 2). Could be bundled
   with any future C-wave touching Section 3.

## Notes (non-actions)
- The +3 -0 diffstat is appropriate for a self-contained remark addition.
- No regressions to Section 3.4 transition or Section 4 opening.
- If the remark is later compressed, the key content to preserve is: (a) O(h)
  convergence under Lipschitz forces, (b) failure at r = 0, (c) structural
  invariants exact regardless.
