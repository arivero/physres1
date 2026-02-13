# S263 — Execution

## Evaluation of candidates

### (a) Sommerfeld/quantum connection
**Strength: HIGH.** The paper's SR orbit equation (Remark 3.2) is
$$\frac{d^2u}{d\phi^2} + \omega^2 u = \frac{mK}{L^2}\omega^2, \qquad \omega^2 = 1 - \frac{K^2}{c^2 L^2}.$$
This is *structurally identical* to the orbit equation in Sommerfeld's 1916
relativistic treatment of hydrogen. In the Coulomb case K = Ze^2/(4pi epsilon_0),
applying Bohr-Sommerfeld quantization L = n_phi hbar gives omega^2 = 1 - (Z alpha / n_phi)^2,
where alpha = e^2/(4pi epsilon_0 hbar c) is the fine structure constant. The
precessing-ellipse orbits quantize to give Sommerfeld's fine structure formula
E_n = mc^2 [1 + (Z alpha)^2/(n_r + n_phi omega)^2]^{-1/2}, which matches the
Dirac result to order (Z alpha)^4.

This connection is genuinely distinct from both existing Outlook items: item 1
concerns field-mediated interactions (replacing external potentials), item 2
concerns the refinement-compatibility spine. The Sommerfeld connection instead
goes *upward* from classical SR orbits to quantum energy levels via
semiclassical quantization — a different direction entirely. It connects
directly to the paper's key results (the orbit equation, the precession
parameter omega, the bound L > K/c), and it points to a real open question:
what does the refinement-witness viewpoint say about the semiclassical
limit and the transition from continuous orbits to discrete energy levels?

The connection also has historical resonance: Sommerfeld obtained the correct
fine structure formula *before* the Dirac equation, using exactly the classical
SR orbit equation that this paper derives from first principles.

**Risk:** the observation is not new (it is well-known in atomic physics
history). But as an Outlook pointer, it need not be new — it needs to be a
genuine forward direction that this paper's results naturally lead to.

### (b) Post-Newtonian expansion
**Strength: MODERATE.** The paper already notes (Remark 3.2) that the SR
precession is the 1PN kinematic contribution. Asking which other SR orbit
properties have clean PN counterparts is a valid question, but it is somewhat
*methodological* rather than *physical*. It also partially overlaps with
Outlook item 2 (refinement-compatibility spine), since the PN expansion is
itself a refinement hierarchy (successive approximations in v/c). The question
is also less sharply defined: "which properties have PN counterparts" is an
open-ended survey, not a pointed research question.

### (c) Multi-body / reduced mass
**Strength: LOW-MODERATE.** The observation that the SR two-body problem lacks
a clean center-of-mass frame is correct and important (no Lorentz-invariant
separation of internal and external motion). However, this direction is
*orthogonal* to the paper's content: the paper never touches two-body
kinematics, and the connection would require substantial new machinery
(Breit equation, Darwin Lagrangian, etc.). It would feel like an afterthought
rather than a natural outgrowth.

### (d) Experimental tests
**Strength: LOW.** The paper's SR precession for Coulomb orbits is already
embedded in the hydrogen fine structure (as noted in the candidate description
itself). There is no independent experimental test that isolates the SR
precession from quantum corrections. This direction would either (i) reduce to
the Sommerfeld connection (candidate a) or (ii) require speculative scenarios
(e.g., classical charged particles in macroscopic Coulomb traps) that are
far from the paper's theoretical focus.

## Summary scoring

| Candidate | Distinctness | Connection | Conciseness | Value | Overall |
|-----------|-------------|------------|-------------|-------|---------|
| (a) Sommerfeld/quantum | HIGH | HIGH | HIGH | HIGH | BEST |
| (b) Post-Newtonian | MODERATE | MODERATE | MODERATE | MODERATE | 2nd |
| (c) Multi-body | MODERATE | LOW | MODERATE | LOW | 3rd |
| (d) Experimental | LOW | LOW | LOW | LOW | 4th |

## Recommended candidate

**(a) Sommerfeld/quantum connection.** It is the clear winner:

1. **Distinctness:** items 1-2 go "sideways" (field theory) and "down"
   (refinement spine). This goes "up" (quantization). All three directions
   are orthogonal.
2. **Connection:** it directly uses the orbit equation and omega parameter
   already derived in Remark 3.2. The bound L > K/c becomes the condition
   omega^2 > 0, which in the quantized case becomes n_phi > Z alpha — a
   non-trivial constraint on quantum numbers.
3. **Conciseness:** the statement is self-contained in 2-3 sentences.
4. **Value:** it connects SR classical mechanics to quantum mechanics through
   semiclassical quantization, which is the central theme of the broader
   project (refinement as the thread from classical to quantum physics).

## Draft Outlook item

> 3. The SR orbit equation of Remark 3.2 is identical to the one
> Sommerfeld (1916) used to derive the relativistic hydrogen fine
> structure: applying Bohr-Sommerfeld quantization \(L = n_\phi\hbar\)
> to the precessing ellipses turns \(\omega^2 = 1 - K^2/(c^2L^2)\)
> into \(\omega^2 = 1 - (Z\alpha/n_\phi)^2\), and the resulting energy
> levels reproduce the Dirac fine structure to order \((Z\alpha)^4\).
> This classical-to-quantum bridge suggests asking which of the
> refinement-witness bounds derived here (admissibility, stability,
> critical-exponent shift) survive or sharpen under semiclassical
> quantization.

(3 sentences, ~85 words. No new formalism, just a forward pointer.)

## Promotable?

YES — ready for a C-cycle to insert as Outlook item 3 in Section 6.
The text is self-contained, correctly anchored to Remark 3.2, and adds
a genuine forward direction without overclaiming novelty.
