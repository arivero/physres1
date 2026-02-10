# `conv_patched.md` Coverage Map (What’s Still Outside the Papers + Where to Incorporate)

This document is **internal planning**. It treats `conv_patched.md` as a **non-citable idea log**.
Do not cite `conv_patched.md` as evidence or as bibliography.

The current “paper set” referenced here:
- Cornerstone manuscript: `paper/main.md`
- Follow-ups: `papers/planck-area/main.md`, `papers/rg-fundamental/main.md`, `papers/half-density-qft/main.md`, `papers/delta-objects/main.md`, `papers/relativistic-central-orbits/main.md`, `papers/uncuttable-controlled-refinement/main.md`

## 1) Fully Covered (Already Incorporated)

These conversation threads are already represented in the current drafts (though they may still need bibliography hardening later):

- Half-density kernel composition and scalarization choice \(\sigma_\ast\): `paper/main.md` (Section 6, H4.0/H4.0a) + `papers/planck-area/main.md` (Sections 2–3).
- RG as a refinement-compatibility principle + explicit singular QM witness (2D delta): `paper/main.md` (Section 8 + Appendix) + `papers/rg-fundamental/main.md`.
- Delta dictionary and weak Euler–Lagrange / corners / impulses: `papers/delta-objects/main.md` + `blackboards/2026-02-10-distribution-theory-for-extremals.md`.
- Zeno-style “refinement paradox” framing with concrete obstruction witnesses (measure non-existence, ordering ambiguity, subtraction toy): `paper/main.md` Introduction (`Heuristic H0.2`, `Heuristic H0.2a`).
- QFT doubling / density-matrix kernel viewpoint: `papers/half-density-qft/main.md` (compact remark-level bridge).
- "Uncuttable" clarified as controlled refinement (not indivisibility): `papers/uncuttable-controlled-refinement/main.md`.

## 2) Partially Covered (Conversation Has More Than the Drafts)

### 2.1 Full formalization of Rivero 9803035 (“halved expression”, control map \(\tau\), scale \(h\))
- Conversation anchor: `conv_patched.md` around the long blocks beginning at `## 17. User` and `## 18. Assistant` (line ~654 onward), including “halved expression” headings.
- Current coverage:
  - `paper/main.md` cites `[Rivero9803035]` as heuristic motivation (Sections 5–6).
  - `papers/planck-area/main.md` includes a finite-dimensional “halved oscillatory integral” derivation (`Derivation D1.9`).
- Gap:
  - The *controlled refinement* formalism (explicit \(\tau\) map / “compare discretizations at fixed ruler”) is not yet written in our own derivation-first language.
  - No Lean formalization exists for the static case.
- Incorporation targets:
  - `paper/notes/`: add a dedicated derivation note formalizing the static case, then time-sliced QM case, then “field theory schematic” case.
  - `papers/rg-fundamental/main.md`: optionally add a short bridge paragraph “\(\tau\) as renormalization condition”.
- Next cycles:
  - `S`: write the formal note (and optional Lean lemma targets).
  - `C`: promote a minimal, non-preprint-dependent formulation into `paper/main.md`.
  - `B`: only if we want independent anchors beyond `[Rivero9803035]`.

### 2.2 Planck areal-speed “haiku” branch: missing general-\(q\) / dimension link + minimal-length/GUP link
- Conversation anchors: `conv_patched.md` headings “4.4 Dimensionality: why q” and “4.5 Relation to minimal length/GUP literature” (inside the large Planck-length block).
- Current coverage:
  - `papers/planck-area/main.md` includes the inverse-square cancellation derivation (`Derivation D1.5`).
- Gaps:
  1. The general statement “cancellation only for inverse-square” is not yet derived (or even stated) in the draft.
  2. The link to *spatial dimension* via Laplacian Green functions / long-range potentials is not yet connected.
  3. Minimal-length / GUP discussion is not yet tracked as a branch (and would need independent anchors).
- Incorporation targets:
  - `papers/planck-area/main.md`: add one short heuristic subsection after `Derivation D1.5`:
    - derive the areal-speed radius formula for a generic \(F\propto 1/r^q\) and show only \(q=2\) yields the Planck-to-Compton cancellation pattern;
    - add an “Open problem” bullet: minimal-length/GUP corrections.
  - Optional: `papers/half-density-qft/main.md`: add a short pointer that long-range behavior depends on dimension via Green kernels (would require bibliography).
- Next cycles:
  - `S`: do the generic-\(q\) derivation in a blackboard note (no citations needed).
  - `C`: promote into `papers/planck-area/main.md`.
  - `B`: minimal-length/GUP anchors; dimension-via-Green-functions anchors.

### 2.3 Conformal operator-simplicity filter: now in `paper/main.md`, but still “conformal-only”
- Conversation anchor: operator-simplicity “\(D(4-D)/4\)” cancellation theme (implicit in the later discussion).
- Current coverage:
  - `papers/half-density-qft/main.md` (Derivation D1.3),
  - `papers/planck-area/main.md` (H2.6a),
  - `paper/main.md` (H4.0b),
  - invariant derivation note: `blackboards/2026-02-10-half-density-laplacian-conformal-rescaling-invariant.md`.
- Gap:
  - No test “beyond conformal rescalings” exists yet; the filter is still explicitly conformal-class.
- Incorporation targets:
  - Keep as-is for now; if we pursue, create a dedicated follow-up note testing non-conformal metric variations.
- Next cycles:
  - `S`: study non-conformal perturbations (if desired).

## 3) Outside Core Manuscript (Dependent Drafts or Still Missing)

### 3.1 Special relativity: circular orbits under \(F=K/r^n\), bounds on \(L\), stability, and non-circular orbit existence
- Conversation anchors:
  - `conv_patched.md` early blocks: `## 1–8` (SR force balance, special cases \(n=2,3\), non-circular orbit analysis).
  - Key idea: inverse-square special case gives a lower bound \(L>K/c\) for circular motion in SR (and related bounds for \(n=3\)).
- Current coverage:
  - Drafted in `papers/relativistic-central-orbits/main.md` (SR circular motion, inverse-square bound, and SR stability inequalities).
- Best incorporation path:
  - New dependent manuscript: `papers/relativistic-central-orbits/main.md` (recommended), structured as:
    1) SR worldline action + central potential reduction,
    2) effective potential / turning-point analysis,
    3) special-case \(n=2\) simplification \(v=K/L\) and the \(L>K/c\) bound,
    4) link back to the “areal” language and to the Planck areal-speed thread as a heuristic bridge.
  - Optional: one short “outlook” sentence in `paper/main.md` Section 3 saying the polygonal areal invariant persists, while relativistic dynamics introduces new admissibility bounds.
- Next cycles:
  - `S`: re-derive SR results without relying on transcript citations; check sign/convention.
  - `B`: ingest a primary SR central-force reference if we want to publish this note.

### 3.2 General relativity: effective potential, circular-orbit criteria, photon sphere / impact parameter story
- Conversation anchors: `conv_patched.md` blocks around `## 9–14` (GR extension questions, photon sphere).
- Current coverage:
  - Baseline derivations exist in `papers/relativistic-central-orbits/main.md` (Schwarzschild effective potential, photon sphere, timelike circular branch and ISCO).
- Best incorporation path:
  - Extend the same proposed `papers/relativistic-central-orbits/main.md` with a GR chapter:
    - geodesic action \(\to\) conserved \(E,L\) from Killing fields,
    - effective potential and circular-orbit stability,
    - photon-sphere as the null analogue (impact parameter \(b=L/E\)).
- Next cycles:
  - `S`: derive cleanly in our own notation.
  - `B`: anchor with standard GR sources (OA if possible).

### 3.3 Gauge theories: “long-range potential” via Wilson loops; confinement / string tension; Cornell potential
- Conversation anchors: `conv_patched.md` blocks `## 11–16` (Wilson loop definition of \(V(r)\), dimension-dependent Coulomb kernels, confining \(\sigma r\), Cornell model).
- Current coverage:
  - Still mostly missing as a derivation thread. We now have a hypothesis-separation remark in `papers/planck-area/main.md` clarifying where an emergent confining string tension \(\sigma\) would belong logically (transmutation branch vs a fundamental UV area parameter).
- Best incorporation path:
  - New dependent draft: `papers/string-tension-as-area-scale/main.md` (recommended):
    - Wilson loop definition \(\\langle W\\rangle \\sim e^{-TV(r)}\),
    - area law \(\\Rightarrow\) string tension \(\sigma\) (dimension \(\text{length}^{-2}\)),
    - relate \(\sigma^{-1}\) as a universal area parameter candidate \(\alpha_\ast\),
    - connect to `papers/planck-area/main.md` (scale supplier) and `papers/rg-fundamental/main.md` (RG running/transmutation).
  - Small insertion candidate (requires a `B` cycle first): in `papers/planck-area/main.md` near Example E4, add one paragraph: “confinement supplies an area scale via string tension.”
- Next cycles:
  - `B`: authoritative Wilson-loop / confinement anchors.
  - `S`: a derivation-first kernel-level explanation of “area law = diagonal-support effective string action” (if we choose).

### 3.4 “Uncuttable” / Democritus / pyramid volume paradox and the “two-face slice” idea
- Conversation anchors: `conv_patched.md` blocks `## 23–24`.
- Current coverage:
  - Definition-level note exists in `papers/uncuttable-controlled-refinement/main.md` (kept historically neutral; focuses on controlled refinement).
- Best incorporation path:
  - Keep out of the PhysRev-facing core drafts unless we do a dedicated, well-sourced historical note.
  - If kept, create a separate historical/interpretive draft:
    - `papers/uncuttable-controlled-refinement/main.md` (or keep as `docs/`-only).
  - Correct interpretation note (project steering): in this conversation thread, “uncuttable” is meant in the Democritean/calculus sense **“the volume cannot be computed with a finite number of cuts”** (it requires an infinite refinement / limit), not “a smallest chunk exists” and not “cannot be subdivided”.
    - The “atoms/vacuum” duality is then: the vacuum can always be subdivided (by inserting points/atoms), but the *computation* demands a controlled limit and a rule for comparing refinements (“bring the cut back to a measurable scale”).
  - Extract the non-historical mathematical content (aligned with the main paper): “finite-cut approximations require a refinement/composition rule; limits without a comparison structure can lose the very data one is trying to compute.”
- Next cycles:
  - `B`: primary sources if we truly want this in publishable prose.

### 3.5 Newton-project bibliographic archaeology: Barrow/Collins/Oldenburg “friends persuading” and Commercium Epistolicum
- Conversation anchors: `conv_patched.md` blocks `## 25–32`.
- Current coverage:
  - `paper/main.md` cites the *Principia* for Proposition I ([Newton1687]) but does not chase editorial/publication-history details.
- Best incorporation path:
  - Treat as a separate bibliography/history task (`B`), not part of the physics argument.
  - If pursued, add a small historical footnote appendix; otherwise keep it in `docs/`.

## 4) Immediate Next Incorporations (Low-Risk, Derivation-First)

If we want to turn some “outside-scope” conversation material into near-term paper improvements without opening new domains:

1. **Generic-\(q\) areal-speed derivation** (no citations required) \(\to\) promote into `papers/planck-area/main.md`.
2. **9803035 control-map/\(\tau\) formalization note** \(\to\) put into `paper/notes/` first; promote only after it becomes independent of preprint wording.
