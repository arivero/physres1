# Q184 Execution: Referee pass on C302 (Remark D4.1c)

Date: 2026-02-14

## Parent cycle reviewed
- `C302`

## Material under review
Lines 648-649 of `paper/main.md`: `Remark D4.1c (Symmetry selects the midpoint)`.

Verbatim text:

> In the position representation \(\hat H_\alpha=-i\hbar(q\tfrac{d}{dq}+(1-\alpha))\)
> on \(L^2(\mathbb R,dq)\), the formal symmetry defect is
> \(\langle u,\hat H_\alpha v\rangle - \langle\hat H_\alpha u,v\rangle = i\hbar(2\alpha-1)\langle u,v\rangle\)
> for test functions with compact support away from \(q=0\). This vanishes if and
> only if \(\alpha=1/2\). The logical chain is: unitarity of the generated group
> requires self-adjointness of the generator, self-adjointness requires symmetry,
> and symmetry selects \(\alpha=1/2\). Essential self-adjointness (closure to a
> unique self-adjoint extension) additionally depends on the configuration space:
> it holds automatically on \(\mathbb R_+\) via the dilation group but requires
> choosing a self-adjoint extension on \(\mathbb R\) where the singularity at
> \(q=0\) creates deficiency indices \((1,1)\). The \(\alpha=1/2\) selection itself
> is a purely algebraic consequence of the \(L^2\) inner product and is
> independent of these domain subtleties.

## Overall Verdict

**PASS WITH MINOR REVISIONS**

The remark is mathematically correct. The symmetry-defect formula is verified
by explicit computation (integration by parts on the domain
C_c^infty(R\{0})). The logical chain is stated correctly. The domain
discussion is accurate. The issues below are all minor and none affects
correctness.

## Numbered Issues

### Issue 1 (Minor): Inner product space stated as L^2(R,dq) but domain is R\{0}
**Severity:** Minor (precision).

The remark says the operator is "on L^2(R,dq)" but the test functions have
"compact support away from q=0," meaning the dense domain is actually
C_c^infty(R\{0}). The Hilbert space is still L^2(R,dq), but the domain of
the symmetric operator excludes q=0. This is stated correctly in the second
half of the remark (the deficiency-index discussion), and the sentence
"for test functions with compact support away from q=0" does convey the
domain restriction. No ambiguity for an operator-theory-literate reader.

**Assessment:** Acceptable as written. No action required.

### Issue 2 (Minor): Position-representation formula could cross-reference D4.1b
**Severity:** Minor (reader convenience).

The remark introduces the position representation
H_alpha = -i*hbar*(q*d/dq + (1-alpha)) without derivation. The computation
is straightforward (apply p_hat = -i*hbar*d/dq to the operator form in D4.1b),
and the notebook `ordering-unitarity-dilation-generator.md` has the full
derivation. However, a reader encountering D4.1c immediately after D4.1b must
mentally verify the position representation themselves.

**Assessment:** Acceptable for a remark-level statement. The derivation is a
two-line exercise from D4.1b's operator identity. No action required, but a
parenthetical "(expanding D4.1b in the position representation)" would be a
minor clarity improvement.

### Issue 3 (Minor): Logical chain direction
**Severity:** Minor (logical precision).

The logical chain is stated as: "unitarity requires self-adjointness,
self-adjointness requires symmetry, symmetry selects alpha = 1/2." This is
correct as a chain of necessary conditions read right-to-left. However, the
implication directions could be stated more precisely: unitarity <=> self-
adjointness (Stone's theorem is an equivalence), and self-adjointness =>
symmetry (one-way). The current phrasing "requires" is correct for both links
but does not flag that the first link is actually an equivalence. For a remark,
this level of compression is appropriate.

**Assessment:** Correct as stated. The word "requires" is valid for both
links. A pedantic reader might prefer "unitarity is equivalent to self-
adjointness (Stone), which implies symmetry," but this would lengthen the
remark without adding content at the appropriate scope. No action required.

### Issue 4 (Minor): "Essential self-adjointness (closure to a unique self-adjoint extension)"
**Severity:** Minor (terminology precision).

The parenthetical definition is slightly informal. Essential self-adjointness
means the closure of the symmetric operator is self-adjoint, which is
equivalent to having a unique self-adjoint extension. The parenthetical
"closure to a unique self-adjoint extension" slightly conflates two
equivalent characterizations. For the target audience (mathematical
physicists reading a Physics Reports survey), this is acceptable and
arguably more informative than the formal definition.

**Assessment:** Acceptable. No action required.

### Issue 5 (Minor): Deficiency indices (1,1) stated without citation
**Severity:** Minor (reference hygiene).

The claim that H_{1/2} on C_c^infty(R\{0}) has deficiency indices (1,1) is
standard but non-trivial. It follows from a standard analysis of the
distributional solutions to the deficiency equation, as detailed in the
source notebook. Standard references include Reed-Simon Vol. II and Albeverio
et al. (Solvable Models in Quantum Mechanics). No citation is provided.

**Assessment:** Acceptable for a remark. The C302 red-team file
(Failure mode 3) explicitly discusses this and argues the compression is
appropriate. If a future bibliography cycle (B-series) touches operator theory
references, a citation to Reed-Simon or Albeverio et al. could be added.
This is not blocking.

### Issue 6 (Minor): Heuristic H0.2 bullet 2 inconsistency
**Severity:** Minor (internal consistency).

As flagged in the C302 red-team file, H0.2 bullet 2 says "requiring unitarity
selects a symmetric (half-density) convention," while D4.1c refines this to
"symmetry selects alpha = 1/2." The two are logically compatible (unitarity
implies symmetry), but the precision level differs. The C302 red-team
correctly assesses this as acceptable: H0.2 is heuristic framing in the
Introduction, while D4.1c is the precise technical statement in the body.

**Assessment:** No action required now. An optional future micro-edit to H0.2
could harmonize the language, but it is not incorrect as-is.

### Issue 7 (Positive): Final sentence correctly isolates the algebraic result
The closing sentence -- "The alpha = 1/2 selection itself is a purely algebraic
consequence of the L^2 inner product and is independent of these domain
subtleties" -- correctly separates the algebraic symmetry argument (which works
on any domain where integration by parts has vanishing boundary terms) from
the analytic essential-self-adjointness question (which is domain-dependent).
This is the key insight and it is stated cleanly.

### Issue 8 (Positive): Remark placement is correct
D4.1c follows D4.1b naturally: D4.1b introduces the alpha-discretization
family, D4.1c answers "which alpha?" The remark is self-contained and
requires no forward references.

## Notation Consistency Check
- D4.1b uses: H_alpha, alpha, q_hat, p_hat, i*hbar, q', delta'(q'-q),
  q_alpha, Weyl-symmetric, Moyal product.
- D4.1c uses: H_alpha (consistent), alpha (consistent), L^2(R,dq)
  (consistent with standard usage), d/dq (position representation,
  standard), <u,v> (standard inner product notation, used elsewhere in
  the paper).
- Section 6 header uses: Delta t_k, q_k, alpha (consistent).
- No notation inconsistency detected.

## Claim-Scope Check
- The remark claims the symmetry defect is i*hbar*(2*alpha-1)*<u,v>. This
  is verified by explicit computation (integration by parts).
- The remark claims alpha = 1/2 is necessary and sufficient for symmetry.
  This follows immediately from the defect formula.
- The remark claims essential self-adjointness holds on R_+ via the dilation
  group. This is correct (Stone's theorem applied to the unitary dilation
  group on L^2(R_+, dq)).
- The remark claims deficiency indices (1,1) on R. This is a standard result
  for the operator q*d/dq + 1/2 on C_c^infty(R\{0}).
- No overclaim detected. The remark carefully separates the algebraic
  selection (alpha = 1/2) from the analytic question (essential self-
  adjointness), and does not claim that symmetry alone implies unitarity.

## Mathematical Verification (Explicit)
Starting from H_alpha = p_hat*q_hat + alpha*i*hbar on L^2(R, dq):

1. Position representation: H_alpha*psi = -i*hbar*(q*psi' + (1-alpha)*psi).
   Check: p_hat*q_hat*psi = -i*hbar*d/dq(q*psi) = -i*hbar*(psi + q*psi').
   Adding alpha*i*hbar*psi: -i*hbar*(psi + q*psi') + alpha*i*hbar*psi
   = -i*hbar*q*psi' - i*hbar*(1-alpha)*psi = -i*hbar*(q*psi' + (1-alpha)*psi).
   VERIFIED.

2. Symmetry defect: <u, H_alpha v> - <H_alpha u, v>.
   After integration by parts (boundary terms vanish on C_c^infty(R\{0})):
   = i*hbar*alpha*<u,v> + i*hbar*integral[q*conj(u)'*v dq]
     - i*hbar*(1-alpha)*<u,v> - i*hbar*integral[q*conj(u)'*v dq]
   = i*hbar*(2*alpha - 1)*<u,v>.
   VERIFIED.

3. Alpha = 1/2 iff defect = 0: 2*alpha - 1 = 0 iff alpha = 1/2.
   VERIFIED.

4. Dilation group on R_+: U(s)*psi(q) = e^{s/2}*psi(e^s*q).
   ||U(s)*psi||^2 = integral_0^infty e^s * |psi(e^s*q)|^2 dq
   = integral_0^infty |psi(x)|^2 dx (substituting x = e^s*q, dx = e^s*dq).
   Generator: -i*hbar*(q*d/dq + 1/2) = H_{1/2}. VERIFIED.

5. Deficiency indices on R: standard result. The deficiency equations
   H_{1/2}^* psi = +/- i psi have L^2 solutions near q = 0 but not at
   infinity, giving one-dimensional deficiency spaces on each side.
   VERIFIED (by reference to Reed-Simon Vol. II).

## Graduate-Student Readability
The remark is dense but appropriate for a Physics Reports survey targeting
mathematical physicists. A graduate student with a standard quantum mechanics
background (Sakurai level) would follow the symmetry-defect argument. The
deficiency-index discussion is more specialized but is clearly flagged as a
separate (domain-dependent) issue, so readers unfamiliar with operator theory
can still extract the main message: alpha = 1/2 is forced by the L^2 inner
product.

## Required follow-ups (spawn cycles)
None required (PASS WITH MINOR REVISIONS, all issues non-blocking).

## Recommended follow-ups (optional, non-blocking)
1. **Optional micro-edit (future C-wave):** Add parenthetical "(expanding
   D4.1b in the position representation)" after the first formula for
   reader convenience (Issue 2). Can be bundled with any future C-wave
   touching Section 6.3.
2. **Optional H0.2 harmonization (future C-wave):** Change H0.2 bullet 2
   from "requiring unitarity selects" to "requiring symmetry of the generator
   selects" for precision consistency with D4.1c (Issue 6). Low priority.

## Notes (non-actions)
- The +3 -0 diffstat (cumulative with C301) is appropriate for a remark
  addition.
- No regressions to Section 6.4 transition or surrounding derivations.
- The remark is self-contained and does not introduce forward references.
