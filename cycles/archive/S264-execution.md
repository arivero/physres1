# S264 — Execution

## Evaluation

### a) Sommerfeld 1916 — relativistic hydrogen / fine structure
**Reference:** A. Sommerfeld, "Zur Quantentheorie der Spektrallinien," Annalen der Physik 51 (1916), 1-94, 125-167.

**Relevance to paper:** HIGH. Sommerfeld's 1916 treatment is the historical origin of the SR relativistic orbit equation that the paper uses in Remark 3.2. Sommerfeld derived the precessing-ellipse orbit for an electron in a Coulomb field under SR kinematics, obtaining the same omega^2 = 1 - K^2/(c^2 L^2) precession parameter that Section 3 presents. The v=K/L identity for inverse-square circular orbits and the resulting L>K/c bound are implicit in Sommerfeld's analysis (he applied them to the hydrogen atom with K = Ze^2). The famous Sommerfeld fine-structure formula alpha = e^2/(hbar c) emerges precisely from quantizing the angular momentum in this SR orbit problem — the ratio K/L = v becomes K/(n_phi hbar) = v, and the bound L>K/c becomes n_phi > Z*alpha, i.e., the fine-structure constant as a dimensionless orbital velocity.

**Referee expectation:** A referee seeing SR precession of the inverse-square orbit, especially the omega^2 = 1 - (K/cL)^2 formula, would likely expect a citation to Sommerfeld as the historical originator. This is one of the most well-known results in 20th-century theoretical physics.

**Verdict:** STRONGLY RECOMMENDED. The paper's core SR orbit equation is Sommerfeld's equation. Not citing Sommerfeld is a significant omission that any competent referee would flag.

### b) Goldstein, Poole & Safko — Classical Mechanics (3rd ed., 2002)
**Reference:** H. Goldstein, C. Poole, J. Safko, *Classical Mechanics*, 3rd ed. (Addison-Wesley, 2002).

**Relevance to paper:** MODERATE. Goldstein Ch. 3 covers central-force orbits, Bertrand's theorem, orbit stability, and apsidal precession. Ch. 7 (in the 3rd edition) includes a section on SR Lagrangian mechanics with relativistic orbit equations. The textbook provides the standard derivation of the Newtonian stability criterion q<3 that the paper generalizes to SR. However, the paper does not actually follow Goldstein's treatment — it derives everything from first principles.

**Referee expectation:** A referee might expect Goldstein as a standard textbook reference for Bertrand's theorem and the q<3 stability criterion, but this is a "nice to have" rather than essential. The paper's derivations are self-contained.

**Verdict:** POSSIBLE but not essential. If only 1-2 references are added, Goldstein is lower priority than Sommerfeld. It could be useful as a baseline textbook reference for the Newtonian stability criterion, but the paper already cites Boscaggin et al. for the SR Kepler problem and Carroll for GR baseline.

### c) Weinberg 1972 — Gravitation and Cosmology
**Reference:** S. Weinberg, *Gravitation and Cosmology: Principles and Applications of the General Theory of Relativity* (Wiley, 1972).

**Relevance to paper:** LOW-MODERATE. Weinberg's text does cover both SR kinematics and Schwarzschild geodesics, including the perihelion precession calculation. However, the paper already has Carroll for GR baseline and Boscaggin et al. for the SR orbit equation. Weinberg would be redundant for the purposes of this 5-page PLB-format paper.

**Referee expectation:** A referee would not be surprised by the absence of Weinberg, given that Carroll (widely cited, freely available on arXiv) already serves as the GR baseline.

**Verdict:** NOT RECOMMENDED. Adds no unique content that isn't already covered by the existing references.

### d) Wald 1984 — General Relativity
**Reference:** R. M. Wald, *General Relativity* (University of Chicago Press, 1984).

**Relevance to paper:** LOW. Wald is already in the repo's bibliography.md (entry #38) for conformal coupling / QFT on curved spacetimes in the cornerstone paper, but it is not cited in the relativistic orbits satellite. The Schwarzschild geodesic treatment in Wald is mathematically rigorous but not distinctive compared to Carroll's treatment. The paper already cites Carroll for all GR baseline material.

**Referee expectation:** A referee would accept Carroll as sufficient for the Schwarzschild effective-potential derivations presented here.

**Verdict:** NOT RECOMMENDED. Carroll already serves the GR anchor role adequately.

### e) Bertrand 1873 — original Bertrand's theorem
**Reference:** J. Bertrand, "Theoreme relatif au mouvement d'un point attire vers un centre fixe," Comptes Rendus de l'Academie des Sciences 77 (1873), 849-853.

**Relevance to paper:** MODERATE-HIGH. Remark 3.2a explicitly discusses Bertrand's theorem and how SR breaks its closure property. Citing the original Bertrand 1873 paper would be appropriate for historical completeness. However, Bertrand's theorem is so universally known that many papers simply state it without citation (or cite a textbook like Goldstein).

**Referee expectation:** Some referees would expect a citation here, particularly for a PLB-style letter that explicitly names the theorem and discusses its modification under SR. Others would consider it common knowledge. Given the paper's style of citing foundational sources (Newton, Berkeley in the cornerstone), citing Bertrand would be consistent.

**Verdict:** RECOMMENDED as a secondary addition. Not as critical as Sommerfeld, but appropriate given that the paper explicitly discusses the theorem by name and analyzes its SR violation. A clean 1-page historical paper that adds minimal citation burden.

### f) Sommerfeld 1916 / Kramers — old quantum theory orbit quantization
**Reference:** Various old quantum theory sources (Sommerfeld 1916 quantization rules, Kramers, Bohr-Sommerfeld model).

**Relevance to paper:** LOW. The paper is purely classical/relativistic mechanics. It does not discuss quantization of orbits, Bohr-Sommerfeld conditions, or fine structure as a quantum effect. While the underlying math is closely related (the same omega parameter controls both the classical precession and the quantum fine-structure splitting), the paper deliberately stays at the classical SR/GR level. Adding old quantum theory references would open a scope not addressed in the text.

**Referee expectation:** No referee would expect old quantum theory references in a paper that stays purely classical.

**Verdict:** NOT RECOMMENDED. Out of scope for this paper's classical/mechanical focus.

## Recommended additions

### 1. Sommerfeld 1916 (STRONGLY RECOMMENDED)
**Why:** The paper's central SR result — the orbit equation with omega^2 = 1 - K^2/(c^2 L^2), the precessing-ellipse solution, and the L>K/c bound — was first derived by Sommerfeld in 1916 for the relativistic hydrogen atom. This is one of the most celebrated results in early 20th-century physics, and omitting it would be the single most obvious gap to any referee. The citation also naturally contextualizes the "1/6 of GR precession" comparison (Remark 3.2), since Sommerfeld was aware that his SR precession fell short of the observed Mercury advance, which provided historical motivation for GR.

**Suggested citation key:** [Sommerfeld1916]
**Suggested placement:** Remark 3.2 (orbit equation / precession), possibly also Section 3 (v=K/L identity).

### 2. Bertrand 1873 (RECOMMENDED, secondary)
**Why:** Remark 3.2a explicitly names and discusses Bertrand's theorem. Citing the original 1873 paper is a clean, minimal addition that anchors the theorem to its source. This is consistent with the paper's style of citing foundational works.

**Suggested citation key:** [Bertrand1873]
**Suggested placement:** Remark 3.2a.

## Promotable?
YES — a B cycle is needed to:
1. Pin down the exact Sommerfeld 1916 reference (the paper appeared in two parts in Annalen der Physik, vol. 51; identify the specific pages and whether an OA digitization exists).
2. Pin down Bertrand 1873 (Comptes Rendus vol. 77, pp. 849-853; BnF Gallica likely has OA scans).
3. Add both to paper/bibliography.md with proper citation keys and OA status.
4. A subsequent C cycle would add the citations to the satellite manuscript text.
