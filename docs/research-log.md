# Research Log

Chronological lab notebook for this repo.
This file is **not** a citable source; it can mention `conv_patched.md` only as an idea generator.

> **Context-saving rule:** This file keeps only the ~10 most recent entries.
> Older entries are in `docs/research-log-archive.md` (~4220 lines, ~430 entries).
> **Never read the archive** unless you need a specific historical entry.
> When this file exceeds ~100 lines, move older entries to the archive.

## Template (Copy for New Entries)

### YYYY-MM-DD
- Focus:
- Question:
- Work:
- Result:
- Sources touched (keys + status changes):
- Next:

## 2026-02-14 (Workflow improvements: C-cycle productivity thresholds + archiving)
- Focus: Address low-productivity C-cycles and improve workflow efficiency
- Question: How to prevent C-cycles with <5 line edits? How to keep cycles/ directory clean?
- Work:
  - **Updated cycles/README.md**:
    * Added Rule 9: C-cycle minimum productivity threshold (≥10 net lines OR planned promotion OR critical fix)
    * Added Rule 10: Completed cycles must be archived via `git rm`
    * Guidance on batching minor fixes vs creating standalone cycles
    * Archiving workflow: complete cycle → commit work → git rm cycles/Cnn-*.md → commit archive
  - **Updated cycles/templates/Cxx-plan.md**:
    * Added "Productivity gate (REQUIRED CHECK)" section with 3-item checklist
    * Added "Planned edits" list with estimated diffstats
    * Prevents creation of low-productivity C-cycles at planning stage
  - **Updated cycles/templates/Cxx-execution.md**:
    * Added "Productivity check (Rule 9)" section after diffstat
    * Records gate status: PASS/MARGINAL/FAIL based on net lines
    * Requires explanation if FAIL (<5 net lines)
  - **Updated AGENTS.md**:
    * Renamed "Content Cycle Diffstat Requirement" → "Content Cycle Diffstat Requirement and Productivity Threshold"
    * Added minimum threshold guidance (≥10 lines)
    * Added batching rationale (amortize overhead, coherent changes)
- Result: Comprehensive workflow improvements to prevent micro-edit C-cycles and keep cycles/ directory clean via archiving. Templates now enforce productivity gates at planning and execution stages.
- Sources touched: cycles/README.md, cycles/templates/, AGENTS.md
- Next: Apply these rules going forward; archive completed Q186, Q187, C327 cycles

## 2026-02-14 (Q186+C327: Dirac Probes quality review + reference clarification)
- Focus: Quality review of dirac-probes paper for publication readiness
- Question: Is the Dirac probes satellite paper ready for P-cycle (publication track)?
- Work:
  - Q186: Comprehensive quality review of papers/dirac-probes-corners-impulses/main.md (256 lines, ~7pp)
    * Structural completeness: ✓ (6 sections, 3 theorems, worked model, outlook, references)
    * Mathematical rigor: ✓ (complete proofs, explicit hypotheses, no logical gaps)
    * Cross-reference network: ✓ (6 bibliography keys verified against paper/bibliography.md)
    * Guard checks: ✓ (no cycle IDs, no conv_patched, no TODOs)
    * Presentation quality: ✓ (clear abstract, logical flow, concise prose)
    * Length/scope: ✓ (PRD-length ~7pp, complements cornerstone Section 5)
  - C327: Fixed ambiguous forward reference in Remark 4.5c
    * Changed "companion refinement note (Remark 3.3 there)" → "uncuttable-refinement companion satellite (Remark 3.3: Trotter product formula)"
    * Located target: papers/uncuttable-controlled-refinement/main.md, Remark 3.3
- Result: PASS WITH MINOR REVISION. Paper is publication-ready after C327 fix. Verdict: ready for P-cycle.
- Sources touched: Dirac probes paper, uncuttable-refinement paper (cross-reference verification)
- Next: Continue productive work until 22:00

## 2026-02-14 (C326-C327: Path-Integral Normalization satellite paper)
- Focus: Create comprehensive treatment of d/2 exponent in path-integral normalization
- Question: Why is the (m/2πℏt)^{d/2} prefactor forced, not conventional? How does it connect across different physical contexts?
- Work:
  - D48: Scoped satellite paper structure (7 sections, 6-9pp target, 4 manifestations)
  - S302: Drafted Sections 1-3 (introduction, free-particle composition, dimensional analysis)
  - C326-C327: Created complete paper `papers/path-integral-normalization/main.md` (432 lines, 9pp)
    * Section 1: Introduction — d/2 as composition compatibility datum, 4 manifestations, half-density connection
    * Section 2: Free-particle kernel — explicit d=1 composition (PN-D1.1), alternative exponent failure (PN-D1.2)
    * Section 3: Dimensional analysis — P4.2 connection, Proposition PN-P1.1
    * Section 4: Van Vleck determinant — curved space, DeWitt-Morette law (PN-D4.1), metric-independence (PN-P4.1)
    * Section 5: Heat kernel — Wick rotation, diffusion equation (PN-D5.1), composition law
    * Section 6: Renormalization thresholds — Green function divergence (PN-D6.1), d<2/d=2/d>2 hierarchy (PN-P6.1)
    * Section 7: Conclusion — RCP 3-channel connection, broader implications, open questions
  - Updated papers/README.md: added paper #8-9, updated cross-references, corpus metrics (12→13 satellites)
  - Updated docs/research-state.md: publication readiness section, satellite count (corrected from initial error)
  - Added cross-references in 5 papers: cornerstone, rg-fundamental, rcp-foundations, planck-area, half-density-qft
- Result: Complete satellite paper proving d/2 exponent forced by composition semigroup + dimensional homogeneity. Three independent arguments converge (composition closure, dimensional consistency, half-density transformation). Connects partition/scale/geometric channels. 4+ explicit derivations, 3 propositions, 7 complete sections.
- Sources touched: Cornerstone Section 4 (path integral), D26/S283 (heat kernel), D30/S287 (curved space), RG-fundamental Section 5.2 (2D delta threshold)
- Next: Continue work on other satellites or cornerstone; archive D48, S302, C326 after commit

## 2026-02-14 (Template refresh: blackboards/notebooks conventions)
- Updated cycle templates to make it explicit that math/derivations live in `blackboards/<0-6>.md` (optionally promoted to `notebooks/`), and that `D`/`S` are physics-only (no editorial drafting).
- Patched `cycles/templates/Dxx-{plan,execution}.md` to require S-witnesses with a named blackboard slot.
- Updated `cycles/templates/README.md` numbering note to allow 2+ digits (match `cycles/index.md` prefix style).
- Ignored macOS `.DS_Store` files via `.gitignore`.

## 2026-02-14 (C313+Q185: Multi-manuscript promotion wave)
- **Diagnosis**: Project analysis identified promotion gaps despite major discovery day:
  1. Planck-area Open Problem #3 still marked as "odd-d witness still open" despite blackboard 0 / notebook providing explicit d=3 witness.
  2. Cornerstone Section 7 (P5.2) lacked physical observability anchor — formal statement only.
  3. RG-fundamental paper lacked connection to P4.2's ℏ-necessity result.
  4. Section 9.3/9.4 still contained pre-correction language about "eliminating connection term."
- **C313 executed** across 3 manuscripts:
  - Cornerstone: Added Remark P5.2a (deformation equivalence is physical), Package B/C status updates, Section 9.3 item 5 and 9.4 item 2 corrections.
  - Planck-area: Closed Open Problem #3 with d=3 scattering-length witness.
  - RG-fundamental: Added Remark RG-H1.9 (horizontal/vertical composition connecting P4.2 to RG).
- **Q185**: PASS on all changes. Verified energy-shift formula, cross-references, scope claims.
- Net: paper/main.md +29/-9, papers/planck-area/main.md +1/-1, papers/rg-fundamental/main.md +6/-1. Guard checks CLEAN.

## 2026-02-14 (C312: P4.2 hypothesis reduction + extensions promotion wave)
- **Diagnosis**: Found that C304-C311 cycle files existed with plans and logs but C309 (hypothesis reduction) had NOT been executed in the manuscript. All other C304-C308, C310-C311 edits were already in manuscripts from prior session.
- **C312 executed**: Promoted the day's crown discoveries into `paper/main.md`:
  - P4.2c: exponential weight uniqueness theorem (D29/S288). Functional equation forces Gaussian.
  - P4.2d: Levy-Khintchine obstruction (D39/S295). Dimensional analysis forces alpha=2. Hypothesis count 4->3.
  - P4.2e: extensions to curved (D30/S287), interacting (D36/S293), Lorentzian (D34+D37). iepsilon is theorem of composition.
  - P4.2f: kappa universality across sectors (D32/S286). Transitivity of interaction forces single kappa=hbar.
  - D9.1a CORRECTION: replaced incorrect "eliminates first-derivative" claim with four-layer stratification (D35/S290 + D38/S294). Both Weyl and HD share connection term; differ only at O(hbar^2) scalar.
  - Contributions list: added item 4 (P4.2 necessity theorem) to introduction's "what is new here" section.
- Net: paper/main.md +20/-4 lines. Guard checks CLEAN.
- All 7 blackboard slots now promoted (to notebooks + manuscripts). Slots marked as promoted in README.
- Updated research-state.md, cycles/index.md.
