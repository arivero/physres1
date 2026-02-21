# Referee Report (Round 2): Renormalization Group as a Fundamental Compatibility Principle

**Referee:** referee-2
**Date:** 2026-02-21
**Paper:** pub-track/sent/rg-fundamental/main.md
**Round 1 report:** papers/rg-fundamental/referee-2.md

---

## Summary of Revision

This is my Round 2 report. In Round 1, I identified three MAJOR issues (M1–M3) and eight MINOR issues (m1–m8). I review each below against the revised manuscript. All three MAJOR issues have been adequately addressed. Most MINOR issues are resolved; two residual minor points remain, both acceptable without re-review.

---

## Status of Round 1 Issues

### MAJOR Issues

**M1 (Composition test gap, Section 4.2) — RESOLVED.**
Round 1 objected that Derivation RG-D1.0b claimed $M_{h/2}^{\mathrm{expl}} \circ M_{h/2}^{\mathrm{expl}}(y) = M_h^{\mathrm{expl}}(y) + O(h^3)$ without making the cancellation explicit. The revised paper now includes the full intermediate computation through $O(h^2)$ in detail, and concludes with the explicit statement:

> "Thus the discrepancy $M_{h/2}^{\mathrm{expl}} \circ M_{h/2}^{\mathrm{expl}}(y) - M_h^{\mathrm{expl}}(y) = O(h^3)$: the $O(h^0)$, $O(h^1)$, and $O(h^2)$ terms match exactly, confirming the order-2 composition structure."

The gap is closed. This is the appropriate level of explicitness for a note of this type.

**M2 (Borel/self-completion overreach, Remark RG-R1.1) — RESOLVED.**
Round 1 objected to: (a) an internal metadata tag "(FOUR-AGENT result: computationalist + mathematician + physicist + critic, BB6; sev-3)" appearing in a submitted manuscript; and (b) a speculative conjecture about multi-instanton Borel residues $\kappa_\ast^{2n}$ being presented as an established result, unsupported by derivation or literature.

Both defects are corrected. The metadata tag is completely removed. The revised Remark RG-R1.1 retains the analytically correct observation that the geometric T-matrix series of the 2D delta model has an elementary Borel singularity and that the transmutation scale $\kappa_\ast$ is $\mu$-independent, but now explicitly marks the extension to multi-instanton models as an open question:

> "Whether an analogous rigidity extends beyond exactly solvable models (e.g., to CP($N{-}1$) sigma models with genuine multi-instanton sectors) remains an open question."

This is the appropriate treatment. The speculative conjecture is demoted to an honest open question; the derivable claim (Borel singularity of the geometric series, $\mu$-independence of $\kappa_\ast$) is kept and is correct.

**M3 (Factor-of-2 error in 3D imaginary loop integral) — RESOLVED.**
Round 1 identified that the on-shell imaginary part of $I_{3D}$ was stated as $-i\frac{m}{2\pi\hbar^2}k$ but the correct value from the $d^3q/(2\pi)^3$ integral is $-i\frac{m}{4\pi\hbar^2}k$. The revised manuscript corrects this in both locations where the formula appears: Section 5.8.1 (the physical discussion) and the definitive convention map Section 5.9 now consistently read

$$I_{3D}(E;\Lambda) = -\frac{m}{\pi^2\hbar^2}\Lambda - i\,\frac{m}{4\pi\hbar^2}k + O\!\left(\frac{k^2}{\Lambda}\right).$$

The linear (real) term was already correct; only the imaginary coefficient is changed. No downstream consequences since the 3D case was not used elsewhere.

---

### MINOR Issues

**m1 (Notation clash $\kappa$) — RESOLVED.**
The bound-state wave number in Section 5.3 is now consistently written $\kappa_b$, with an explicit parenthetical disambiguation note distinguishing it from the 1D scattering parameter $\kappa = mg/\hbar^2$ in Example RG-E1.1. The notation clash is eliminated.

**m2 (Internal metadata tag in manuscript) — RESOLVED.**
The "(FOUR-AGENT result:...sev-3.)" tag is removed entirely. See also the M2 discussion above.

**m3 ($\tau_1 \otimes \tau_1 = 2\tau_2$ under-explanation) — RESOLVED.**
The revised Remark RG-D1.0c now provides a complete, self-contained one-paragraph derivation of the B-series composition rule. The coefficient of $\tau_2$ in the composed B-series is shown to be $a(\tau_2) + b(\tau_2) + a(\tau_1)b(\tau_1)$, with explicit identification of the contributing coproduct term $\bullet \otimes \bullet$. A reader unfamiliar with Butcher series can now follow the computation. The shorthand notation "$\tau_1 \otimes \tau_1 = 2\tau_2$" is retained but now labeled explicitly as a shorthand and explained in context.

**m4 (RG-H1.12 disconnected from surrounding text) — SUBSTANTIALLY ADDRESSED.**
The revised remark now opens with an explicit motivating sentence ("The convention map above shows that scalar loop integrals carry measure-dependent prefactors") and makes clear that the half-density formalism is "developed in the companion paper [HalfDensityQFT]". The remark is no longer orphaned; it reads as a preview of and pointer to the companion satellite. The consequence is still implicit (the companion paper develops the formalism), but this is acceptable given the note format.

**m5 (Section 7 RCP over-expansion) — RESOLVED.**
The revised Section 7 reduces the RCP material to a single short remark (RG-H1.15) of three sentences, pointing to [RCPFoundations] for the full multi-channel axiom system. The extensive falsifiability criterion, formal notation $\mathcal{O}_{h,\theta}$, and "three crown witnesses" table that appeared in Round 1 are gone. The conclusion section now has appropriate proportions relative to the body.

**m6 ([ConnesMarcolli2004] reference incompleteness) — RESOLVED.**
The reference now includes full published journal details: *Journal of Geometry and Physics* 56 (2006), 55–85, with DOI `10.1016/j.geomphys.2005.04.016`. The citation is complete.

**m7 (Companion satellites lack arXiv identifiers) — ADEQUATELY ADDRESSED.**
The references [RootedTreeBookkeeping] and [RCPFoundations] now carry the explicit tag "companion satellite paper in this series (2026)". Since these papers are in-progress within this series and no arXiv numbers are available yet, the present labeling is as complete as currently possible and is honest about the paper's context.

**m8 (Abstract over-promises "deformation quantization") — RESOLVED.**
The revised abstract no longer contains the phrase "deformation quantization." The abstract now accurately describes the paper's actual content: semigroup composition structure, the calculus micro-model, the 2D delta potential, and the rooted-tree/Hopf-algebra thread. No undelivered promises remain.

---

### Detailed Comments from Round 1: Status

**Section 3 / RG-H1.1a (motivation for $z_0 = 0$):** The round 1 detailed comment noted that the condition $D(1) = 0$ was presented as "one possible choice" rather than as a physical requirement. The revised text now reads "requiring that the derivative of a constant vanishes — i.e., $D(1) = 0$ (a physical input, not merely a normalization choice) — forces $z_0 = 0$." This is precisely the requested fix.

**Section 5.9 (Euclidean vs. Minkowski convention note):** The round 1 detailed comment asked for a one-sentence statement of the integration convention. Added verbatim: "All integrals are in Euclidean-like (Schrödinger-equation) convention with the $+i0$ causal prescription for the free propagator." Resolved.

**Section 4.3 / $\bullet \cdot \bullet$ notation:** Round 1 flagged $\bullet^2$ (non-standard) for the forest of two disjoint $\bullet$ trees. The revised paper uses "$\bullet \cdot \bullet$" consistently, with an explicit parenthetical note: "Here $\bullet \cdot \bullet$ denotes the forest product of two single-vertex trees, not a tree of order 2." The notation ambiguity is resolved.

**Section 5.1 ($I(E)$ as regularized kernel):** The round 1 detailed comment asked for a clarification that $\langle 0|(E-H_0+i0)^{-1}|0\rangle$ is a regularized distribution, not an inner product of normalizable states. The revised text adds: "a regularized distribution, not a matrix element between normalizable states." This is now explicit.

---

## Remaining Issues

No MAJOR issues remain. Two negligible editorial points are recorded for completeness but do not require further revision:

1. The reference [HalfDensityQFT] at item 14 is listed without "in this series" — unlike [RootedTreeBookkeeping] and [RCPFoundations]. Minor inconsistency; harmless.

2. The reference [Brouder1999] at item 2 has no published journal details (only arXiv). Since Brouder's paper was published in *European Physical Journal C* 12 (2000) 521–534, adding this would be good practice. Not required for acceptance.

These two points do not affect the verdict.

---

## Verdict

**Recommendation:** ACCEPT

**Justification:** All three MAJOR issues from Round 1 have been corrected: the composition-test gap is closed with an explicit computation, the Borel/self-completion remark is demoted appropriately and the internal metadata removed, and the factor-of-2 error in the 3D loop integral is fixed in both locations. All eight MINOR issues are resolved or adequately addressed. The paper is now a correct, well-structured, and honest contribution. It is ready for publication.
