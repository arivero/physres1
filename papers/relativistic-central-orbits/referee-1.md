# Referee Report: Relativistic Central Orbits as Refinement-Witnesses

**Referee:** referee-1
**Date:** 2026-02-21
**Paper:** pub-track/sent/relativistic-central-orbits/main.md
**Round:** 2 (re-review after MAJOR REVISION)

## Summary

The paper derives admissibility and stability conditions for circular and bound orbits under power-law central forces in special relativity, framed as "refinement witnesses" — constraints that emerge when Newtonian mechanics is refined by relativistic kinematics. The central results are: (i) the exact identity $v = K/L$ for inverse-square SR circular orbits, yielding the angular-momentum existence bound $L > K/c$; (ii) extension of this bound to all bound orbits via the effective radial potential $W_L(r)$; (iii) a compact SR stability criterion $1 + (2-q)\gamma^2 > 0$ for power-law forces; (iv) a systematic SR/GR comparison covering precession (1/6 kinematic vs. 5/6 curvature), ISCO as a curvature effect, and the critical-exponent shift from $q_{\rm crit} = 3$ (Newton) to $q_{\rm crit} = 2$ (SR). Section 4 records the standard Schwarzschild baseline (photon sphere, timelike ISCO, coordinate Kepler law, ISCO binding energy) in a form parallel to the SR treatment.

## Strengths

- **Mathematical correctness**: All key derivations have been independently verified. The identity $v = K/L$ (Section 3) follows cleanly from dividing the circular-orbit force condition by $L = \gamma mvr$. The stability formula $W_L''(r_0) = L^2(1+(2-q)\gamma^2)/(mr_0^4\gamma^3)$ is correct: using $L = \gamma mvr_0$, the centrifugal term contributes $(3-\beta^2)L^2/(\gamma mr_0^4)$ and the potential curvature contributes $-qL^2/(\gamma mr_0^4)$, summing to $L^2(3-q-\beta^2)/(\gamma mr_0^4) = L^2(1+(2-q)\gamma^2)/(\gamma^3 mr_0^4)$. The epicyclic ratio $\omega_r^2/\omega_\phi^2 = 3-q-\beta^2$ (Remark 5.2d) follows from this by straightforward substitution of $\omega_r^2 = W_L''/(\gamma m)$ and $\omega_\phi = L/(\gamma mr_0^2)$. Schwarzschild results (ISCO at $r=6M$, $E^2 = 8/9$, $\eta \approx 5.72\%$) are all standard and correct.

- **Structural coherence**: The Newton $\to$ SR $\to$ GR progression is well-maintained across sections. The parallel structure between the SR effective potential (Section 3.1) and the Schwarzschild effective potential (Section 4) makes the comparison transparent.

- **The unified threshold rule** (Remark 3.1c, $q_{\rm crit} = \nu + 1$ from kinetic asymptotics) is a clean and correct generalization. It correctly identifies Newtonian ($\nu = 2$) and ultrarelativistic SR ($\nu = 1$) as two instances of the same mechanism.

- **Stability-precession duality** (Remark 5.2c): At $q = 2$, the stability factor $1 + (2-q)\gamma^2 = 1$ and the precession frequency satisfies $\gamma^2\omega^2 = 1$, so the stability factor equals $\gamma^2\omega^2$. This is a correct and elegant observation unifying orbital shape (precession) and radial response (stability).

- **Sommerfeld remark** (Remark 3.2b) now includes the necessary caveat about the accidental degeneracy: the Sommerfeld formula reproduces the Dirac spectrum exactly only for the $1/r$ potential, due to coincident classical Runge-Lenz symmetry and quantum degeneracy. This is historically accurate and prevents over-interpretation.

- **Derivation scaffolding in Remark 5.2d**: The remark now derives the epicyclic ratio from $W_L''$ explicitly, tracing $\omega_r^2 = W_L''/(m\gamma)$ and $\omega_\phi = L/(\gamma mr_0^2)$ through to the result $3-q-\beta^2$. The identification of the effective radial mass $M_{\rm eff} = \gamma m$ (Hamiltonian formulation, not $\gamma^3 m$) is explicitly justified by reference to $\partial^2 H/\partial p_r^2|_{p_r=0}$.

- **Inline justification in Remark 3.1d**: The argument that angular momentum is preserved across central impulses now carries an explicit one-sentence justification ($\Delta\mathbf{p} \parallel \hat{r}$ implies zero moment about the center). This makes the remark self-contained without the companion reference.

- **Reference base is now adequate**: The addition of Landau-Lifshitz §14 (SR orbit equation) and Will (1993) §9 (1/6 kinematic vs. 5/6 curvature decomposition) addresses the gaps from Round 1.

- **Honest scope**: The paper does not overclaim. The abstract explicitly states the goal is "not to replace standard treatments, but to keep a minimal derivation-first record." The GR section is labeled a "baseline" and anchored to Carroll (1997).

## Weaknesses

### MAJOR

- None identified.

### MINOR

1. **Remark 3.2 (Binet derivation sketch)**: The paper states that the orbit ODE follows from "elimination of time gives the orbit ODE; see [LandauLifshitz1975] §14 or [BoscagginDambrosioFeltrin2020RelKepler] for the Hamiltonian treatment" but the intermediate steps shown ($H = \sqrt{m^2c^4 + p_r^2c^2 + L^2c^2u^2} - Ku$ and $p_r = Lu'(\phi)$) are given without the squaring-and-differentiating step that yields the stated ODE. A reader wanting to verify the orbit equation $u'' + \omega^2 u = mK\omega^2/L^2$ must work through: $(E+Ku)^2 = m^2c^4 + L^2c^2(u'^2 + u^2)$, differentiate w.r.t. $\phi$, and divide by $u'$, giving $(E+Ku)K = L^2c^2(u''+u)$. The claim that this yields $u'' + \omega^2 u = mK\omega^2/L^2$ requires an additional step (using the circular-orbit energy $E_0$) that is not shown. The external references adequately anchor the result, so this is not a correctness concern, but a reader checking the derivation in situ will find a gap. Adding one sentence pointing to the squaring step would close it.

2. **Remark 4.3f ("coordinate identity specific to Schwarzschild time")**: The revised phrasing correctly removes the earlier "gauge accident" language and provides a careful statement that $\omega_\phi^2 = M/r_0^3$ is a coordinate identity in Schwarzschild time. The remark also correctly identifies the proper-time period as encoding curvature effects. However, the phrase "coordinate identity" could be read as suggesting this is a mere artifact of gauge choice (it appears in any spherically symmetric metric with this $g_{tt}$). A brief parenthetical noting that this Kepler relation follows directly from the Killing-field conserved quantities (not from a gauge choice) would sharpen the point.

3. **The bound $L > K/c$ is stated as "necessary and sufficient" for bound orbits** (end of Section 3.1), but the proof of sufficiency is given only for circular orbits (existence of a potential well). For non-circular bound orbits with $L > K/c$, the paper shows a potential minimum exists but does not explicitly verify that orbits starting in the well remain in it (no energy escape to infinity argument). This is physically clear but logically the "sufficient" claim merits one more sentence: the potential rises to $mc^2$ at infinity and to $+\infty$ at the origin, so any particle with $W_L(r_{\rm init}) < mc^2$ is trapped.

## Verdict

**Recommendation:** ACCEPT

**Justification:** The paper is mathematically correct (all key derivations independently verified), clearly organized, and honestly positioned. All significant issues from Round 1 have been addressed: the Remark 5.2d derivation is now explicit, the Sommerfeld degeneracy caveat is present, the inline angular-momentum justification in Remark 3.1d is present, the Will (1993) and Landau-Lifshitz references are included, and the sign-convention and effective-mass discussions are clarified. The three remaining minor points are expository improvements that do not affect correctness or completeness; they can be addressed in copy-editing without re-review.

## Detailed Comments

- **Section 3.1, "necessary and sufficient"**: Add one sentence after the three-regime summary: "Since $W_L(r) \to mc^2$ as $r \to \infty$ and $W_L(r) \to +\infty$ as $r \to 0^+$ for $L > K/c$, any orbit with total energy $mc^2\sqrt{1-K^2/(c^2L^2)} \le E < mc^2$ is radially confined and hence bound."

- **Remark 3.2 (Binet derivation)**: After "elimination of time gives the orbit ODE," consider adding: "(Squaring $(E+Ku) = \sqrt{\cdots}$ and differentiating with respect to $\phi$ yields $(E+Ku)K = L^2c^2(u''+u)$; evaluating $E+Ku_0$ at the circular orbit $u_0 = mK\omega^2/L^2\cdot 1/\omega^2 = mK/L^2$ then gives the stated form.)"

- **Remark 4.3f**: Replace "a coordinate identity specific to Schwarzschild time coordinates" with "a consequence of the Killing-field conserved quantities in Schwarzschild coordinates; it is not a gauge artifact" (or similar) to distinguish coordinate-dependent from gauge-dependent.
