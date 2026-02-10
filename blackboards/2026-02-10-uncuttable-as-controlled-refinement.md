# "Uncuttable" as a Controlled-Refinement Notion (Not Indivisibility)

Date: 2026-02-10  
Cycle: `S46`

## Goal
Lock a precise project-internal meaning of "uncuttable" that matches the intended use:
not "cannot be subdivided", but "cannot be *computed* from a finite number of cuts without extra structure."

## Definition (project steering)
In this repo, **uncuttable** means:
> a quantity (e.g. volume, action, kernel composition limit) is not determined by any *finite* dissection/refinement alone; one must specify a **refinement limit rule** and a **comparison structure across refinements** to obtain a stable value.

Equivalently: the object is only defined as a controlled limit of refinement schemes, and naive "take the limit" language is incomplete without a control mechanism.

## Why this matters for the main program
The cornerstone paper's thesis is exactly that "physically meaningful laws are controlled limits of composable local refinements." The "uncuttable" story is an early geometric instance of the same meta-problem:
- finite approximations exist,
- but the value is a limit object,
- and the limit may be non-unique or undefined without additional compatibility axioms (composition stability, invariance, regularization).

This slots naturally next to the new Zeno-style motivation paragraph: the obstruction is not that the world has indivisible chunks, but that *limit control* is extra structure.

## Promotion Candidate
Create a separate dependent note (to keep history out of PhysRev-facing core):
- `papers/uncuttable-controlled-refinement/main.md`

Content:
1. one-paragraph definition of "uncuttable" as refinement complexity,
2. one toy model: Riemann-sum definition of an integral as the archetypal "uncuttable" computation,
3. one bridge sentence: refined composition in dynamics/QFT is the same kind of problem at higher complexity.
