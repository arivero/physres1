# B17 Execution: Anchor PENDING Newton-polygon sources + add Nauenberg 2018

Date: 2026-02-12

## Work performed

### Pourciau2003
- Searched web, Google Scholar, Semantic Scholar, PhilPapers, arXiv, author homepage (Bruce Pourciau, Lawrence University — retired 2021)
- DOI confirmed: `10.1007/s00407-002-0062-x`
- Publisher: Springer (*Archive for History of Exact Sciences*)
- ResearchGate listing exists but no confirmed free full text
- No arXiv, no institutional repository, no author page with PDFs
- **Result: stays PENDING** — paywalled, no OA route found

### Nauenberg1994SymplecticNewton
- Searched web, Google Scholar, UCSC Emeriti page, JSTOR
- DOI confirmed: `10.1007/BF01686278`
- Publisher: Springer (*Archive for History of Exact Sciences*)
- JSTOR listing exists but requires subscription
- No arXiv, no free author copy found for the 1994 paper specifically
- **Result: stays PENDING** — paywalled, no OA route found
- **Important finding**: The "symplectic Euler integrator" language in H1.2 matches Nauenberg's *2018* paper more closely than the 1994 paper. The 1994 paper uses "canonical/symplectic mapping" but not the modern numerical-analysis terminology.

### Nauenberg2018GraphicalMethod (NEW)
- Michael Nauenberg, "Newton's graphical method for central force orbits," *Am. J. Phys.* 86(10) (2018), 765–771
- DOI: `10.1119/1.5046424`
- arXiv: `1810.05264` (companion preprint: "Newton's graphical method as a canonical transformation")
- OA author copy: UCSC Emeriti page (`emeriti.ucsc.edu/files/newtongraphicmethodAJPSept22.pdf`)
- This paper explicitly identifies Newton's Proposition 1 as a first-order symplectic integrator, with discrete energy conservation and time-reversal invariance
- **Result: added to bibliography** with OA links

## Keys updated
- `[Pourciau2003]`: PENDING → PENDING (search exhausted; DOI confirmed)
- `[Nauenberg1994SymplecticNewton]`: PENDING → PENDING (search exhausted; see Nauenberg 2018 for better anchor)
- `[Nauenberg2018GraphicalMethod]`: NEW entry added with OA (arXiv + UCSC Emeriti)

## Artifacts produced
- `paper/bibliography.md`: updated (new entry #35, DOI audit #36, OA status #35, search notes for #32 and #34)

## Notes for promotion
- Future C cycle should update H1.2 citation to include `[Nauenberg2018GraphicalMethod]` alongside or instead of `[Nauenberg1994SymplecticNewton]`, since the 2018 paper is the one that explicitly uses "symplectic integrator" in the modern sense.
