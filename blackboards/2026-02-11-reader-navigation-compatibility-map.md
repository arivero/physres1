# Reader-Navigation Table for the Refinement-Compatibility Chain

Date: 2026-02-11  
Cycle: `S64`  
Status: blackboard note (non-citable).

Goal: draft a compact reader-navigation aid that maps the manuscript’s three compatibilities (partition/representation/scale) to (i) the operational symbols \(\mathcal C,\mathcal Q,\mathcal R\) used in the RCP statement and (ii) where each is treated in `paper/main.md`.

## 1) Three compatibilities (symbols, meaning, where to look)
The manuscript’s “Refinement Compatibility Principle” (RCP) organizes the Newton-to-path-integral chain into three distinct compatibilities:
- **Partition compatibility** (temporal composition/refinement): time-slice composition should preserve the same stationary (action-based) content under refinement.  
  Where: Sections 3–4 (area-law refinement; action/Noether bridge).
- **Representation compatibility** (ordering/discretization/quantization convention): alternative quantization conventions should share the same \(\hbar\to 0\) limit and differ only by controlled subleading terms.  
  Where: Sections 6–7 (ordering, discretization, deformation-quantization equivalences).
- **Scale compatibility** (coarse/fine comparison with parameter flow): predictions should remain stable under composed scale changes after renormalization/parameter running.  
  Where: Section 8 (RG semigroup consistency), plus the explicit 2D delta witness in Appendix 10.5.

The operational symbols used in the RCP compact form are:
- \(\mathcal C_t\): temporal composition/refinement operator.
- \(\mathcal Q_\hbar\): representation change operator (fixed classical-limit class).
- \(\mathcal R_\Lambda\): scale-change / renormalization operator.

## 2) Suggested insertion point (promotion target)
The navigation block below is designed to be inserted early (e.g. end of Section 2.5, just before the “Transition to Section 3”) so readers can orient the later chain. It also points to where the formal statement is collected (Appendix 10.3).

## Promotion candidate (copyable block)
> **Reader map: the three compatibilities used in this paper.**
> - **Partition compatibility** (\(\mathcal C_t\)): invariance under temporal refinement/composition (coarse ↔ fine time slicing). Where: Sections 3–4.
> - **Representation compatibility** (\(\mathcal Q_\hbar\)): invariance across quantization/ordering conventions within a fixed classical-limit class (agreement as \(\hbar\to 0\)). Where: Sections 6–7.
> - **Scale compatibility** (\(\mathcal R_\Lambda\)): invariance across coarse/fine scale comparison after parameter running (RG semigroup consistency). Where: Section 8 (and Appendix 10.5 for an explicit witness).
>
> Formal statement (RCP): Appendix 10.3.

