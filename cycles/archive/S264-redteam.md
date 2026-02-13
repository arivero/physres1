# S264 — Red Team

## Challenge 1: Is Sommerfeld really needed given Boscaggin et al.?
**Attack:** The paper already cites [BoscagginDambrosioFeltrin2020RelKepler], which works with the same SR relativistic Kepler equation. Boscaggin et al. is a peer-reviewed mathematical paper that the referee can check. Adding Sommerfeld 1916 is historical decoration, not scholarly necessity.

**Defense:** Boscaggin et al. 2020 is a modern dynamical-systems analysis of perturbations of the relativistic Kepler problem. It is not the origin of the orbit equation, and it does not discuss the precession formula, the 1/6 ratio, or the v=K/L identity in the explicit way the satellite paper does. Sommerfeld is the originator of the specific result, and the paper's Remark 3.2 is essentially presenting Sommerfeld's orbit equation and comparing its precession to GR. A referee specializing in classical mechanics or GR would expect Sommerfeld here. This is attribution, not decoration.

**Verdict:** Defense holds. Sommerfeld is needed for proper attribution, not just historical flavor.

## Challenge 2: Is Bertrand 1873 necessary, or is naming the theorem sufficient?
**Attack:** Many physics papers name "Bertrand's theorem" without citing Bertrand 1873. The theorem is considered common knowledge in classical mechanics. Adding a citation to an 1873 Comptes Rendus paper in French adds no practical value for the reader.

**Defense:** Fair point — this is a judgment call rather than a clear necessity. The argument for including it rests on (a) the paper explicitly analyzes the theorem's violation under SR, not just mentioning it in passing, and (b) consistency with the paper ecosystem's style of citing foundational works. However, the red team concedes that a referee would be unlikely to *flag* the absence of Bertrand 1873, whereas a referee would likely flag the absence of Sommerfeld.

**Verdict:** Bertrand 1873 is a good-practice addition but not a referee-flaggable omission. Priority is lower than Sommerfeld.

## Challenge 3: Should Goldstein be included instead of or alongside Bertrand?
**Attack:** A standard textbook reference for Bertrand's theorem and the q<3 stability criterion would serve readers better. Goldstein is the most widely used graduate mechanics text and covers both topics in detail.

**Defense:** The paper's derivations are self-contained and do not follow Goldstein's approach. Adding a textbook reference for results the paper derives independently is unusual in a short PLB-format letter. Carroll serves the textbook-anchor role for GR; adding Goldstein for classical mechanics would be parallel but not strictly necessary. If both Sommerfeld and Bertrand are added, the paper goes from 2 to 4 references, which is already adequate for a 5-page letter.

**Verdict:** Goldstein is a reasonable alternative to Bertrand but not clearly superior. The choice is a matter of editorial preference.

## Challenge 4: Could the Sommerfeld citation be wrong (priority dispute)?
**Attack:** Was the relativistic orbit equation really first derived by Sommerfeld? What about earlier work by e.g. Lorentz or Poincare on relativistic electron orbits?

**Defense:** The relativistic orbit equation for the Coulomb/Kepler problem (with the precessing-ellipse solution and the angular frequency omega = sqrt(1 - alpha^2/n^2)) is universally attributed to Sommerfeld 1916 in the physics literature. The Annalen der Physik paper "Zur Quantentheorie der Spektrallinien" is the standard citation. While elements of relativistic dynamics existed earlier (Abraham, Lorentz), the specific orbit equation for the 1/r^2 force is Sommerfeld's contribution. No serious priority dispute exists for this attribution.

**Verdict:** No issue. Sommerfeld 1916 is the correct citation.

## Overall assessment
- Sommerfeld 1916: ESSENTIAL addition. Referee-flaggable omission. No valid counterargument.
- Bertrand 1873: GOOD-PRACTICE addition. Not referee-flaggable, but consistent with paper style.
- All other candidates: correctly excluded.
