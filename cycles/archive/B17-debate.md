# B17 Debate: Which Nauenberg paper should anchor H1.2?

Date: 2026-02-12

## Question
H1.2 says Newton's scheme "is precisely the symplectic Euler integrator" and cites `[Nauenberg1994SymplecticNewton]`. The 1994 paper discusses canonical/symplectic mappings but uses historical language. The 2018 paper explicitly uses "symplectic integrator" in the modern numerical-analysis sense. Which should be the primary anchor?

## Decision
Add `[Nauenberg2018GraphicalMethod]` as a new entry and recommend that a future C cycle update the citation in H1.2 to cite both papers (1994 for historical priority, 2018 for the explicit modern identification).

## Rationale
1. The 1994 paper has historical priority — it was first to identify Newton's impulse equations as a canonical/symplectic mapping.
2. The 2018 paper makes the connection to modern numerical analysis terminology explicit ("first-order symplectic integrator," "discrete energy conservation," "time-reversal invariance").
3. Citing both is the academically honest choice: historical priority to 1994, modern terminology to 2018.
4. The 2018 paper has OA access (arXiv + author copy), which strengthens the bibliography.
