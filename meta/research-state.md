# Research State (Auxiliary Common Memory)

This file is compact shared context for all agents across context resets.
It is **not** a session log, changelog, or history file. Git history serves that purpose.

**Anti-bloat rule (hard):** This file must stay under 150 lines. No session reports,
no "Season N Findings", no per-commit changelogs. When updating, REPLACE outdated
entries — do not append. Actionable items go to the kanban, not here.

---

## North Star (Current Paper)
- Manuscript: `paper/main.md` (publishable artifact).
- Thesis: physically meaningful laws are those that survive controlled refinement in partition/representation/scale (Section 10: Refinement Compatibility Principle, RCP).
- Structural spine: Newton polygonal refinement → action additivity/Noether → composition law → path integral → deformation quantization + renormalization as limit-control mechanisms.
- Long thinking goal: identify the precise **mathematical obstruction/ambiguity** in the naive Newtonian "refinement \(\to 0\)" limit that motivates retaining a finite deformation parameter (the role played by \(\hbar\)) as the minimal fix.

## Hard Guardrails
1. Do not put task IDs in rendered manuscript content.
2. Do not cite `conv_patched.md` (or any chat transcript) as a bibliography source.
3. Prefer OA sources first; otherwise mark `PENDING` and rely on lawful local PDFs for ingestion.
4. Treat preprints (including A. Rivero drafts) as guides; verify key claims independently.

## Novelty Guardrail (Anti-Herd)
1. **Derivation-first:** write claims as explicit lemmas before looking for supporting quotes.
2. **One computation per concept:** attach at least one toy model.
3. **Separate filters:** keep half-density/normalization distinct from SUSY/division-algebra filters.
4. **Literature as anchor, not driver.**
5. **Avoid known-land detours:** BV/BRST at most an outlook paragraph.

## Scheduling Policy
- Tasks live in the kanban. Actionable items belong there, not in this file.
- **Topic priority:** (1) Half-densities / Planck area, (2) Cornerstone coherence, (3) RG follow-up.
- **Balance rule:** alternate research/exploration, verification/computation, and promotion tasks.
- **Discovery priority:** discovery and study tasks have priority over manuscript promotion.

## Principle Evolution Log
- **v0** (initial): "Physically meaningful laws survive controlled refinement."
- **v1** (composition): The mechanism is a composition law.
- **v2** (action → Noether): Newton → action additivity → composition → path integral.
- **v3** (deformation): Naive limit obstructed; finite ℏ is the minimal fix.
- **v4** (RCP): Named "Refinement Compatibility Principle" — partition/representation/scale changes commute with predictions.

(Next version from genuine extension or correction.)

## Cornerstone Status
- **paper/main.md**: ~2000 lines, 35 references. Target: Physics Reports.
- **Vulnerability 1** (Appendix 10.6 rigor): substantially closed.
- **Vulnerability 2** (representation witness): substantially addressed (D9.1h S² + D9.1i S³ + D9.1k H² spectral comparisons; S³ uniqueness V_HD=const iff d=3; FOUR-AGENT on D9.1k; D9.1l unified formula; DeWitt ≠ half-density).
- **Vulnerability 3** (Appendix 10.1): CLOSED (D8.2a).
- **Vulnerability 4** (scale witness): CLOSED (D6.4 + D6.4a λφ⁴ benchmark).

## Publication Status

| Paper | Status | Location |
|-------|--------|----------|
| delta-objects | PUBLISHED | docs/ |
| dirac-probes | PUBLISHED | docs/ |
| relativistic-central-orbits | PUBLISHED | docs/ |
| half-density-qft | PUBLISHED | docs/ |
| rcp-foundations | PUBLISHED | docs/ |
| tangent-groupoid-bridge | PUBLISHED | docs/ |
| ordering-equivalence | PUBLISHED | docs/ |
| rooted-tree-bookkeeping | PUBLISHED | docs/ |
| rg-fundamental | Under R2 review | pub-track/sent/ |
| path-integral-normalization | Under R2 review | pub-track/sent/ |
| planck-area | Under R1 review | pub-track/sent/ |
| action-angle | Under R1 review | pub-track/sent/ |
| fermionic-mediators | DISCARDED (3/5 votes: critic+physicist+mathematician) | git history |
| uncuttable | DISCARDED (3/5 votes: critic+physicist+mathematician) | git history |

**All papers authored: A. Rivero and A.I.Scaffold.**

## Open Bibliography Gaps
- All items resolved. `Landsman1998` ACQUIRED: OA at <http://www.math.ru.nl/~landsman/1998book.pdf>, ingested `sources/landsman-1998-mathematical-topics.md`.

## Key Settled Questions (one-line tombstones — details in notebooks)
- Cauchy measurability for d/2: RESOLVED (notebooks/p42-hypothesis-reduction.md Part 4)
- Identity limit without Stone: RESOLVED for smooth V (RCP-R6.3)
- Unitarity c₀=i from Minkowski signature: RESOLVED (notebooks/p42-hypothesis-reduction.md Part 5)
- Scalarization gauge ≠ ordering ambiguity: RESOLVED (algebraically independent)
- Claim-label namespace collision: RESOLVED (paper-specific prefixes)
- Spectral dimension d_s=d/2: RESOLVED — requires L_P, NOT forced by composition (notebooks/p42-hypothesis-reduction.md Part 7)
- Resurgence + composition: RESOLVED — alien Leibniz rule forced, but κ=ℏ not independently derived (notebooks/resurgence-composition-bridge.md)
- Cobordism hypothesis + P9.1a: RESOLVED — TQFT uniqueness as Stage 4 analog (Remark P9.1a-Cob)
- CFT c/24 as Stage 3 analog: RESOLVED — Remark P9.1b in cornerstone
- Efimov/PSL(2,R): RESOLVED at Level 2 — Q1+Q2 confirmed, Q3 overclaim documented (notebooks/efimov-groupoid-sketch.md)
- Van Est Bridge B: Part (a) THEOREM, Part (b) THEOREM for 2D delta, CONJECTURE for general QFT
- Stokes factorization: RESOLVED — C_{n,m} = C_{1,0}^n · C_{0,1}^m for non-resonant sectors (notebooks/resurgence-composition-bridge.md §15)
- Genre mismatch (uncuttable, fermionic-mediators): DISCARDED (3/5 votes)
- V_HD constant iff d∈{1,3}: RESOLVED — for S^d and H^d, V_HD=-(d-1)R/(4d)+positional term; constant iff α(α-1)=0 where α=(d-1)/2. Only d=3 (non-trivial); THREE-AGENT (BB6).
- 4th D=4 coincidence: NOTED (BB2, physicist+mathematician TWO-AGENT) — V_HD on S^{D-1} constant iff D=4 spacetime (d=D-1=3); adds to d/2=2, spectral gap 1/4=-R/8, de Sitter spatial sections. OQ2: is there a single reason?
- DeWitt/conformal ≠ V_HD formula: CONFIRMED — V_HD const=(d-1)R/(4d) is distinct from ξ_c=(d-2)/(4(d-1)) for all d≥2 (BB6 §12, computationalist).
- **V_HD formula NOVEL**: -(d-1)R/(4d) has NO direct literature hit (critic lit search, BB2 3rd-agent). Remark D9.1l may be original. Flag for submission cover letter.
- **Ordering witness notebook**: S²+S³+H²+formula+D=4 promoted to stable notebook Part 7 (computationalist). All 7 BBs at 3+ agent consensus.
