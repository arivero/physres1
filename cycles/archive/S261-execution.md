# S261 Execution: Capture conditions across Newton/SR/GR refinement hierarchy

## 1. Analysis of candidate observations

### Observation A: Three-level capture threshold ladder

| Level     | Capture / fall-to-center condition | Circular orbit structure |
|-----------|------------------------------------|--------------------------|
| Newton    | No capture for q=2; any L>0 gives bound orbits | All circular orbits stable; closed ellipses |
| SR        | L < K/c: fall to center (r->0) | All circular orbits stable; precessing ellipses with omega(L) |
| GR (Schw) | L < 2sqrt(3) M: no stable circular orbit; L < 4M: plunge inevitable for r < unstable circular orbit | Stable for r>6M; unstable band 3M<r<6M; photon sphere at 3M |

**Assessment:** The three-level ladder is already implicitly present in the paper.
Remark 4.3g gives the ratio ell_ISCO/ell_SR = 2sqrt(3). Section 3.1 gives the
SR threshold. The Newtonian case (L>0) is stated in Remark 3.1a. So the ladder
exists but is dispersed across four locations. A single summary statement would
consolidate it, but the paper already handles this well through the remark chain.

### Observation B: "Refinement creates capture" narrative

The cleanest single sentence is: **each refinement step creates a new capture
threshold that was absent at the previous level.** Newton has no capture for q=2.
SR introduces capture at L=K/c. GR raises the floor further to L=2sqrt(3)M for
stability (and creates an entirely new structure: the unstable orbit band).

However, "GR raises the floor" is imprecise. The SR threshold L>K/c = GM/c (in
gravitational units) is an *existence* threshold for bound orbits, while the GR
threshold L>2sqrt(3) M is a *stability* threshold. These are qualitatively
different: in GR, orbits with L_SR < L < L_ISCO exist but are unstable. So the
refinement story is: Newton (no threshold) -> SR (existence threshold) -> GR
(existence threshold + stability threshold + unstable band). This is already
captured by Remarks 4.3a-c.

### Observation C: Parameter-space enrichment

Newton: orbit determined by (E,L), always a conic (1 shape parameter: eccentricity).
SR: orbit determined by (E,L), shape is a precessing conic (2 shape parameters:
eccentricity + omega). GR: orbit determined by (E,L) for given M, with richer
topology (bound, plunge, scatter, zoom-whirl).

**Assessment:** This is a legitimate "refinement adds structure" observation, but
it conflates the number of conserved quantities (always 2: E,L) with the
complexity of the solution space. The number of free parameters does not change;
what changes is the topology of the allowed region in (E,L) space. This is a
less clean remark than it first appears.

### Observation D: Critical exponent shift as the unifying thread

Remark 3.1b already identifies the key mechanism: SR shifts q_crit from 3 to 2.
This is the root cause of the SR capture condition. GR then adds the -2ML^2/r^3
term which effectively pushes the behavior further. The critical exponent story
is already well-told in the paper.

## 2. Draft remark (most promotable: Observation B, condensed)

> **Remark 6.1 (Refinement creates angular-momentum floors).**
> The three levels of the refinement hierarchy impose progressively stronger
> angular-momentum requirements on the inverse-square problem. In Newtonian
> mechanics, any L>0 suffices for a stable bound orbit. SR introduces an
> existence floor: bound orbits require L > K/c (Section 3.1). GR raises this
> to a stability floor: stable circular orbits require L > 2sqrt(3) M
> (Remark 4.3b), a factor 2sqrt(3) above the SR threshold (Remark 4.3g).
> Each refinement step thus shrinks the region of (E,L) parameter space
> admitting stable bound orbits, while the Newtonian orbit structure is
> recovered as c -> infinity at each level.

## 3. Promotion assessment

**Verdict: NOT worth promoting at this time.** Reasons:

1. **Already covered.** The content of the draft remark is dispersed across
   Remarks 3.1a, 4.3a, 4.3b, and 4.3g. The paper already tells this story;
   a consolidating remark would be redundant.

2. **Outlook fit is poor.** The current Outlook (Section 6) points toward
   *future work directions* (field-mediated interactions, refinement-spine
   connection). A capture-threshold summary is backward-looking consolidation,
   not a forward-looking extension.

3. **Page budget.** The paper is at 280 lines / 5pp with ~35 lines of room
   before hitting the PLB 6pp boundary. Those lines are better spent on
   forward-looking content or genuinely new observations rather than
   consolidation.

4. **The parameter-count angle (Observation C) is not clean enough.** The
   number of conserved quantities stays at 2 throughout; what changes is
   solution-space topology. This could be developed into something interesting
   but needs more work than a quick S cycle warrants.

**Recommendation:** If future work develops the "refinement-compatibility spine"
mentioned in Outlook item 2, the capture-threshold ladder could serve as a
concrete illustration. But for now, the existing remark chain (3.1a -> 4.3a ->
4.3b -> 4.3g) already makes the point adequately.
