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
