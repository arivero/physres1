# S300 Study: Draft Section 4 Expansion (Rooted Trees)

Date: 2026-02-14

## Scope
Draft 3 new subsections for `papers/rg-fundamental/main.md` Section 4:
- 4.2: Midpoint RK2 composition test
- 4.3: Hopf coproduct structure
- 4.4: Higher-order preview

Target: ~90 lines total

---

## 4.2 Midpoint RK2: Explicit Composition Test

`Derivation RG-D1.0b (Midpoint method: two half-steps equal one step at leading order).`
The implicit midpoint method is the one-step map
\[
M_h(y) := y + h\,f\!\left(y + \frac{h}{2}f\!\left(M_h(y)\right)\right),
\]
which is second-order accurate. For a checkable composition test, consider instead the *explicit* midpoint rule (order-2 Runge–Kutta):
\[
M_h^{\mathrm{expl}}(y) = y + h\,f\!\left(y + \frac{h}{2}f(y)\right).
\]
Expanding the inner evaluation to second order:
\[
f\!\left(y+\frac{h}{2}f(y)\right)
= f(y) + \frac{h}{2}f'(y)[f(y)] + \frac{h^2}{8}f''(y)[f(y),f(y)] + O(h^3),
\]
so
\[
M_h^{\mathrm{expl}}(y)
= y + h f(y) + \frac{h^2}{2}f'(y)[f(y)] + O(h^3).
\]

Now compose two half-steps:
\[
M_{h/2}^{\mathrm{expl}} \circ M_{h/2}^{\mathrm{expl}}(y)
= y + h f(y) + \frac{h^2}{2}f'(y)[f(y)] + O(h^3).
\]
The leading correction is the same in both cases, confirming the order-2 structure.

`Remark RG-D1.0c (Rooted-tree formula: \(\tau_1\otimes\tau_1 = 2\tau_2\)).`
In B-series language, the elementary differential for the order-2 tree \(\tau_2 = [\bullet]\) is \(F(\tau_2) = f'(y)[f(y)]\), and its coefficient in \(M_h^{\mathrm{expl}}\) is \(\frac{1}{2}\). The composition formula for one-vertex trees is \(\tau_1 \otimes \tau_1 = 2\tau_2\), meaning that composing two "tree \(\tau_1\)" (order-1 Euler) steps produces twice the order-2 tree coefficient. This is the same algebraic identity verified in the rooted-tree paper (Section 3), and it holds universally for any autonomous ODE, independent of the specific \(f\).

---

## 4.3 Hopf Coproduct: Explicit Formulas for Low-Order Trees

The Connes–Kreimer Hopf algebra organizes renormalization counterterms via a coproduct \(\Delta\) that encodes admissible cuts of rooted trees. For a tree \(\tau\), an admissible cut removes a connected subtree containing the root, leaving a (possibly empty) forest of subtrees. The coproduct is
\[
\Delta(\tau) = \tau \otimes 1 + 1 \otimes \tau + \sum_{\text{cuts}} (\text{pruned forest}) \otimes (\text{cut tree}),
\]
where the sum runs over all proper admissible cuts.

`Derivation RG-D1.8 (Coproduct for trees of order 1, 2, 3).`

**Order-1 tree:** \(\tau_1 = \bullet\) (single vertex).
\[
\Delta(\bullet) = \bullet \otimes 1 + 1 \otimes \bullet.
\]
No proper cuts, so this is the primitive case.

**Order-2 tree:** \(\tau_2 = [\bullet]\) (root with one child).
\[
\Delta([\bullet]) = [\bullet] \otimes 1 + 1 \otimes [\bullet] + \bullet \otimes \bullet.
\]
The admissible cut separates the root from the child, yielding \(\bullet \otimes \bullet\).

**Order-3 chain tree:** \(\tau_3 = [[\bullet]]\) (root with one child, which has one child).
\[
\Delta([[\bullet]])
= [[\bullet]] \otimes 1 + 1 \otimes [[\bullet]]
+ [\bullet] \otimes \bullet
+ \bullet \otimes [\bullet].
\]
Two admissible cuts: remove the bottom vertex (leaving \([\bullet]\)) or remove both grandchild and child as a connected subtree (leaving \(\bullet\)).

**Order-3 branch tree:** \(\tau_3' = [\bullet,\bullet]\) (root with two children).
\[
\Delta([\bullet,\bullet])
= [\bullet,\bullet] \otimes 1 + 1 \otimes [\bullet,\bullet]
+ \bullet \otimes [\bullet]
+ \bullet \otimes [\bullet]
+ \bullet^2 \otimes \bullet,
\]
where the two middle terms correspond to cutting one child at a time, and \(\bullet^2 \otimes \bullet\) corresponds to cutting both children simultaneously (forest of two \(\bullet\) trees on the left, root \(\bullet\) on the right).

`Heuristic RG-H1.13 (Coproduct encodes counterterm recursion).`
The coproduct structure is the combinatorial skeleton of the Bogoliubov forest formula: to compute the counterterm for a diagram \(\Gamma\), one subtracts the counterterms of all proper subdivergences and then renormalizes the remainder. The terms \((\text{forest}) \otimes (\text{cut tree})\) in \(\Delta(\Gamma)\) encode exactly this recursion: the left factor is the subdivergence structure already renormalized, the right factor is the remaining graph.

---

## 4.4 Higher-Order Methods and Tree Proliferation

The number of rooted trees grows rapidly with order. For autonomous ODEs:
- Order 1: 1 tree (\(\tau_1\))
- Order 2: 1 tree (\(\tau_2\))
- Order 3: 2 trees (\(\tau_3\), \(\tau_3'\))
- Order 4: 4 trees
- Order 5: 9 trees
- Order 6: 20 trees

`Heuristic RG-H1.14 (Compositional complexity forces rooted-tree bookkeeping).`
The classical fourth-order Runge–Kutta method (RK4) achieves fourth-order accuracy with four stages (four \(f\)-evaluations per step). The B-series representation of RK4 must account for all four order-4 trees, and the composition formula \(\Phi_h^{(M_1)} \circ \Phi_h^{(M_2)}\) for two RK methods involves summing over all trees with coefficients determined by the tensor product of the individual method coefficients. This combinatorial explosion is the price of composition: tracking "two steps vs one step" discrepancies requires tree-level bookkeeping once methods go beyond first order.

For a complete worked example of the rooted-tree formalism applied to both Runge–Kutta composition and renormalization-group recursion (including the explicit midpoint RK2 test and the Hopf coproduct for trees up to order 3), see the companion satellite paper [RootedTreeBookkeeping].

---

## Line count
- 4.2: ~35 lines
- 4.3: ~45 lines
- 4.4: ~15 lines
Total: ~95 lines

## Next cycle
C321: Insert drafted content into `papers/rg-fundamental/main.md` after existing Section 4.1
