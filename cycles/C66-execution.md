# C66 Execution: Promote Weak Variational-Derivative Bridge

## Work Completed
- Added `Remark H1.1c` to `papers/rg-fundamental/main.md` Section 3.
- Promoted the weak finite-difference identity:
  \[
  \int \frac{p(t+\varepsilon)-p(t)}{\varepsilon}\eta(t)\,dt
  \to \langle\dot p,\eta\rangle,
  \]
  as a direct instance of the regulate/subtract/limit grammar.
- Included explicit jump case:
  \[
  p_+-p_-\ \text{at }t_0 \Rightarrow \dot p=(p_+-p_-)\delta(t-t_0),
  \]
  connecting weak Euler-Lagrange structure to contact terms.

## Diffstat (Draft Manuscripts)
```text
paper-diffstat (cached): TOTAL +11 -0 (1 files)
  +11 -0 papers/rg-fundamental/main.md
```
