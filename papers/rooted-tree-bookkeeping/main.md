---
layout: page
math: backslash
title: "Rooted Trees as Bookkeeping: The Butcher–RG Dictionary"
author: "A. Rivero and A.I.Scaffold"
date: "2026"
abstract: |
  Rooted trees index two recursive expansions: the B-series of one-step integrators (Butcher theory) and the counterterm recursion of perturbative renormalization (Connes–Kreimer). This note states the dictionary between them and labels each entry by the operation it uses. Composing two step maps is the convolution product of characters on the Connes–Kreimer Hopf algebra of rooted trees; replacing the vector field is the substitution law, which uses a different coproduct; the BPHZ counterterm is a twisted antipode in a character group. We tabulate every rooted tree through order four with its symmetry factor, tree factorial and exact-flow coefficient, expand two explicit-midpoint steps to third order, and work a nested logarithmic divergence in a toy model through the Bogoliubov subtraction. In that model the renormalized characters at two subtraction points compose by the same convolution that composes B-series. Entries without such a worked check are marked as analogies. This version corrects the exact-flow coefficient, the two-step midpoint expansion and several tree assignments of the circulated version; the erratum is listed in Section 8.

  This note connects to broader themes (composition compatibility, controlled refinement, RG as foundational) developed in a companion paper [Main].
---

# 1. Introduction

## 1.1 Motivation: Two Bookkeeping Problems

Consider two questions:

1. **Numerical integration:** How do we organize the Taylor expansion of a one-step method \(\Phi_h: y_n \mapsto y_{n+1}\) so that the composition of two steps can be compared, term by term, with the exact flow and with a single step of size \(2h\)?

2. **Perturbative renormalization:** How do we organize the divergent Feynman integrals in a loop expansion so that subdivergences are removed consistently, and so that results at two subtraction scales \(\mu_1,\mu_2\) are related by a definite rule?

Both expansions are indexed by rooted trees: directly for Runge–Kutta methods, and through the nesting structure of subdivergences for Feynman graphs. In both cases the bookkeeping is carried by the Connes–Kreimer Hopf algebra \(\mathcal H_{\mathrm{CK}}\) of rooted trees, and the relevant objects are characters (algebra homomorphisms \(\mathcal H_{\mathrm{CK}}\to\mathbb R\) or into a target algebra). Brouder identified the Butcher group with the character group of \(\mathcal H_{\mathrm{CK}}\) [Brouder2000].

This note is a **dictionary**: we state the correspondence explicitly, name the operation behind each entry, work examples on each side, and separate literal identities from analogies.

## 1.2 Scope

**In scope:**
- Butcher theory: B-series, rooted trees, symmetry factors, tree factorials, order conditions (Section 2).
- Explicit midpoint: elementary weights, two-step composition, substitution (Section 3).
- RG recursion: Bogoliubov subtraction on a nested toy-model divergence, one-loop running of the two-dimensional contact interaction (Section 4).
- Dictionary table with operation labels (Section 5).

**Out of scope:**
- The full Hopf algebra of Feynman graphs, overlapping divergences, and multi-loop QFT computations.
- Symplectic integrators and Ward identities (listed in the dictionary as an open analogy, without a worked example).

The correspondence studied here is algebraic and combinatorial. Physical interpretation of a tree node differs between the two settings (Section 5.3).

## 1.3 Relation to Companion Work

A companion paper [Main] develops the thesis that renormalization group (RG) flow is the **scale-compatibility condition** forced by composition when naive refinement limits diverge. The rooted-tree formalism is the algebraic machinery that makes this compatibility checkable order by order. This note isolates that machinery and records where it appears in numerical integration, where discretization errors replace divergences.

## 1.4 Reproducibility

All coefficients in Sections 2–4 are reproduced by `scripts/check_rooted_tree_coefficients.py` (Python 3 with exact rationals and SymPy; mpmath for the toy model). Julia and BSeries.jl [KetchesonRanocha2023] were unavailable in the environment where the checks were run. The script therefore reimplements the B-series operations (elementary weights, composition) in the BSeries.jl normalization (Section 2.2), checks them against independent Taylor expansions, and reproduces the values printed in the BSeries.jl documentation (Section 3.6). A run of the same table inside BSeries.jl itself remains to be done.

# 2. Rooted Trees and B-Series (Butcher Side)

## 2.1 Elementary Differentials

Let \(f: \mathbb{R}^n \to \mathbb{R}^n\) be a smooth vector field and \(y' = f(y)\) the ODE. A one-step method approximates the flow \(\varphi_h(y_0)\) (the exact solution at time \(t_0+h\)) by a map \(\Phi_h(y_0)\) built from finitely many evaluations of \(f\).

The Taylor expansion of \(\varphi_h(y_0)\) involves **elementary differentials** indexed by rooted trees. Define recursively:

- \(F(\bullet)(y) = f(y)\) for the single-node tree.
- \(F([t_1, \ldots, t_m])(y) = f^{(m)}(y) \bigl( F(t_1)(y), \ldots, F(t_m)(y) \bigr)\) for a root with subtrees \(t_1, \ldots, t_m\).

Here \(f^{(m)}\) is the \(m\)-th Fréchet derivative of \(f\). For example \(F([\bullet]) = f'f\), \(F([\bullet,\bullet]) = f''(f,f)\), \(F([[\bullet]]) = f'f'f\).

## 2.2 Symmetry Factor, Tree Factorial and the Two Normalizations

For a tree \(\tau\) with \(|\tau|\) nodes:

- The **symmetry factor** \(\sigma(\tau)\) is the order of the automorphism group of \(\tau\). Recursively \(\sigma(\bullet)=1\) and, for \(\tau=[t_1^{m_1},\ldots,t_k^{m_k}]\) with distinct \(t_i\) of multiplicities \(m_i\), \(\sigma(\tau)=\prod_i m_i!\,\sigma(t_i)^{m_i}\).
- The **tree factorial** (Butcher's density) is \(\gamma(\bullet)=1\), \(\gamma([t_1,\ldots,t_m])=|\tau|\prod_i\gamma(t_i)\).

The integer \(\alpha(\tau)=|\tau|!/(\sigma(\tau)\gamma(\tau))\) counts monotone labellings of \(\tau\); summed over trees of order \(n\) it gives \((n-1)!\).

Two normalizations of a B-series are in use, and they differ by where \(\sigma\) sits.

**Raw basis.** Write a series as
\[
y_0 + \sum_{\tau} h^{|\tau|}\, c(\tau)\, F(\tau)(y_0),
\]
so that \(c(\tau)\) is the coefficient that multiplies the elementary differential in the Taylor expansion.

**Normalized basis** (Hairer–Lubich–Wanner [HairerLubichWanner2006, §III.1], and BSeries.jl):
\[
B(a;h,y_0) = y_0 + \sum_{\tau} \frac{h^{|\tau|}}{\sigma(\tau)}\, a(\tau)\, F(\tau)(y_0),
\qquad c(\tau)=\frac{a(\tau)}{\sigma(\tau)} .
\]

The exact flow has
\[
\boxed{\;a_{\mathrm{exact}}(\tau)=\frac{1}{\gamma(\tau)},\qquad
c_{\mathrm{exact}}(\tau)=\frac{1}{\sigma(\tau)\,\gamma(\tau)}\; .}
\]

The two bases agree on chains, where \(\sigma=1\) and \(\gamma=|\tau|!\). A chain therefore cannot distinguish \(1/(\sigma\gamma)\) from the formula \(1/(\sigma|\tau|!)\) of the circulated version; the three-node bush and the four-node tree \([\bullet,[\bullet]]\) can.

## 2.3 Table Through Order Four

Level sequences list node depths in depth-first order (root \(=1\)), with subtrees ordered so that the sequence is lexicographically maximal; this is the canonical form printed by RootedTrees.jl (for example \([\bullet,[\bullet]]\mapsto[1,2,3,2]\)).

| Tree | Level sequence | \(\lvert\tau\rvert\) | \(\sigma\) | \(\gamma\) | \(a_{\mathrm{exact}}=1/\gamma\) | \(c_{\mathrm{exact}}=1/(\sigma\gamma)\) | Circulated formula \(1/(\sigma\lvert\tau\rvert!)\) |
|---|---|---|---|---|---|---|---|
| \(\bullet\) | [1] | 1 | 1 | 1 | 1 | 1 | 1 |
| \([\bullet]\) | [1,2] | 2 | 1 | 2 | 1/2 | 1/2 | 1/2 |
| \([\bullet,\bullet]\) | [1,2,2] | 3 | 2 | 3 | 1/3 | **1/6** | 1/12 |
| \([[\bullet]]\) | [1,2,3] | 3 | 1 | 6 | 1/6 | 1/6 | 1/6 |
| \([\bullet,\bullet,\bullet]\) | [1,2,2,2] | 4 | 6 | 4 | 1/4 | 1/24 | 1/144 |
| \([\bullet,[\bullet]]\) | [1,2,3,2] | 4 | 1 | 8 | 1/8 | **1/8** | 1/24 |
| \([[\bullet,\bullet]]\) | [1,2,3,3] | 4 | 2 | 12 | 1/12 | 1/24 | 1/48 |
| \([[[\bullet]]]\) | [1,2,3,4] | 4 | 1 | 24 | 1/24 | 1/24 | 1/24 |

Every \(c_{\mathrm{exact}}\) entry was also extracted independently from the Taylor series of the exact flow of a polynomial vector field on \(\mathbb R^2\), by solving for the coefficient of each elementary differential at several base points in exact arithmetic.

## 2.4 Order Conditions

A Runge–Kutta method with tableau \((A,b)\) has the normalized coefficients \(a(\tau)=\Phi(\tau)\), the **elementary weight**: \(\Phi(\bullet)=\sum_ib_i\), \(\Phi([\bullet])=\sum_i b_ic_i\), \(\Phi([\bullet,\bullet])=\sum_ib_ic_i^2\), \(\Phi([[\bullet]])=\sum_{i,j}b_ia_{ij}c_j\), and so on, with \(c_i=\sum_ja_{ij}\). The method has order \(p\) if and only if
\[
\Phi(\tau)=\frac{1}{\gamma(\tau)}\quad\text{for all } |\tau|\le p,
\]
equivalently \(c(\tau)=1/(\sigma(\tau)\gamma(\tau))\) in the raw basis. These **Butcher order conditions** are polynomial equations on \((A,b)\).

## 2.5 Two Operations: Composition and Substitution

**Composition** of step maps. If \(B(a)\) is applied first and \(B(b)\) second, then \(B(b;h,B(a;h,y))=B(a\cdot b;h,y)\) with [HairerLubichWanner2006, Sect. III.1]
\[
(a\cdot b)(\tau)=\sum_{s\in \mathrm{OST}(\tau)} b(s)\,a(\tau\setminus s),
\]
where \(s\) runs over the root-containing subtrees of a fixed labelled representative of \(\tau\) (including the empty one and \(\tau\) itself), \(\tau\setminus s\) is the forest of remaining components, \(a\) is extended multiplicatively to forests, and \(a(\emptyset)=b(\emptyset)=1\). Equivalently, \(a\cdot b\) is the convolution \((a\otimes b)\circ\Delta_{\mathrm{CK}}\) of characters, with the admissible-cut coproduct
\[
\Delta_{\mathrm{CK}}(\tau)=\tau\otimes1+1\otimes\tau+\sum_{\text{admissible cuts }c}P^c(\tau)\otimes R^c(\tau),
\]
where \(P^c\) is the pruned forest and \(R^c\) the trunk containing the root. Composition is therefore **character convolution** in the Butcher group. The exact flow is a one-parameter subgroup: \(e_h\cdot e_{h'}=e_{h+h'}\) with \(e_h(\tau)=h^{|\tau|}/\gamma(\tau)\) (checked through order four).

**Substitution** of vector fields. Replacing \(f\) in a B-series by another B-series vector field (as in modified equations and backward error analysis) is the substitution law of Chartier, Hairer and Vilmart [ChartierHairerVilmart2010]. It uses the extraction–contraction coproduct on trees, which is a different coproduct, and it interacts with \(\Delta_{\mathrm{CK}}\) as described by Calaque, Ebrahimi-Fard and Manchon [CalaqueEbrahimiFardManchon2011]. Section 3.5 gives an explicit substitution example.

**BSeries.jl convention.** BSeries.jl stores the normalized coefficient \(a(\tau)\). Its documentation states: "When writing out the Taylor expansion, the B-series coefficients must be divided by the `symmetry` of the corresponding rooted tree." Accordingly `bseries(ExactSolution...)` returns \(1/\gamma(\tau)\), `bseries` of a Runge–Kutta method returns the elementary weights \(\Phi(\tau)\), `renormalize` divides every coefficient by \(\sigma(\tau)\) and so returns the raw basis, and `compose(b1, b2, ...)` composes the step maps with `b1` applied first. The package also provides substitution and modified equations [KetchesonRanocha2023]; those functions were not cross-checked here. Section 3.6 compares the script with printed BSeries.jl output.

# 3. Worked Example: Explicit Midpoint (Order 2)

## 3.1 Method Definition

The **explicit midpoint rule** is:
\[
\begin{aligned}
k_1 &= f(y_n), \\
k_2 &= f\!\left(y_n + \tfrac{h}{2} k_1\right), \\
y_{n+1} &= y_n + h \, k_2,
\end{aligned}
\]
with Butcher tableau
\[
\begin{array}{c|cc}
0 & 0 & 0 \\
1/2 & 1/2 & 0 \\
\hline
& 0 & 1
\end{array}
\]

## 3.2 B-Series Coefficients

Taylor expansion of \(f(y+\tfrac h2 f)\) gives
\[
\Phi_h(y_0)=y_0+hf+\frac{h^2}{2}f'f+\frac{h^3}{8}f''(f,f)+\frac{h^4}{48}f'''(f,f,f)+O(h^5).
\]
No term with \(f'f'f\) or any other tree containing a chain of length three appears, because \(k_2\) is evaluated at a point that depends only on \(k_1=f(y_n)\).

| Tree | Normalized \(a(\tau)=\Phi(\tau)\) | Raw \(c(\tau)\) | Exact raw \(1/(\sigma\gamma)\) |
|---|---|---|---|
| \(\bullet\) | 1 | 1 | 1 |
| \([\bullet]\) | 1/2 | 1/2 | 1/2 |
| \([\bullet,\bullet]\) | 1/4 | 1/8 | 1/6 |
| \([[\bullet]]\) | 0 | 0 | 1/6 |

The order-two conditions \(\Phi(\bullet)=1\), \(\Phi([\bullet])=1/2\) hold. At order three, \(\Phi([\bullet,\bullet])=1/4\neq1/3\) and \(\Phi([[\bullet]])=0\neq1/6\); in the raw basis the local errors are \(1/8-1/6=-1/24\) on \(f''(f,f)\) and \(-1/6\) on \(f'f'f\). The method has order exactly two.

## 3.3 Composition Test

Compose two midpoint steps, \(y_2=\Phi_h(\Phi_h(y_0))\). With \(y_1=y_0+hf+\tfrac{h^2}2f'f+\tfrac{h^3}8f''(f,f)+O(h^4)\), expand \(f(y_1+\tfrac h2f(y_1))\) about \(y_0\) and collect terms:
\[
\Phi_h(\Phi_h(y_0))=y_0+2hf+2h^2f'f+h^3\Bigl[f'f'f+\tfrac54f''(f,f)\Bigr]+O(h^4).
\]
A single step of size \(2h\) gives
\[
\Phi_{2h}(y_0)=y_0+2hf+2h^2f'f+h^3f''(f,f)+O(h^4),
\]
so
\[
\boxed{\;\Phi_h\circ\Phi_h-\Phi_{2h}=h^3\Bigl[f'f'f+\tfrac14f''(f,f)\Bigr]+O(h^4).\;}
\]
The two expansions agree through \(h^2\), as they must for an order-two method, since both agree with the exact flow \(\varphi_{2h}\) to that order. The cubic difference has raw coefficient 1 on the chain \([[\bullet]]\) and \(1/4\) on the bush \([\bullet,\bullet]\).

**Composition sum, tree by tree.** For \(\tau=[\bullet]\) the root-containing subtrees are \(\emptyset\), \(\{\text{root}\}\) and \(\tau\), giving
\[
(a\cdot a)([\bullet])=a([\bullet])+a(\bullet)a(\bullet)+a([\bullet])=\tfrac12+1+\tfrac12=2 .
\]
For the bush \([\bullet,\bullet]\) the subtrees are \(\emptyset\) (term \(a(\tau)=\tfrac14\)), the root alone (term \(a(\bullet)\,a(\bullet)^2=1\)), the root with one leaf, twice (terms \(a([\bullet])\,a(\bullet)=\tfrac12\) each), and \(\tau\) (term \(\tfrac14\)). The sum is \(5/2\), raw \(5/4\). For the chain \([[\bullet]]\) the sum is \(0+\tfrac12+\tfrac12+0=1\).

**Controls.**
- *Linear field* \(f(y)=y\): \(\Phi_h(y)=(1+h+\tfrac{h^2}2)y\) and \((1+h+\tfrac{h^2}2)^2=1+2h+2h^2+h^3+\tfrac{h^4}4\). The \(h^2\) coefficient 2 matches \(2h^2f'f\); the \(h^3\) coefficient 1 matches \(f'f'f=y\) with \(f''=0\). A linear field cannot see the bush.
- *Branching field* \(f(y)=y^2\) (scalar): \(f'f'f=4y^4\) and \(f''(f,f)=2y^4\), so the prediction is \(h^3\cdot\tfrac92y^4\). Direct expansion of \(\Phi_h(\Phi_h(y))-\Phi_{2h}(y)\) with \(\Phi_h(y)=y+h(y+\tfrac h2y^2)^2\) gives the same \(\tfrac92y^4h^3\).
- *Generic field on \(\mathbb R^2\)*: the raw coefficients of \(\Phi_h\), \(\Phi_h\circ\Phi_h\) and \(\Phi_h\circ\Phi_h-\Phi_{2h}\) were extracted from Taylor series in exact arithmetic for all eight trees through order four, and agree with the composition formula of Section 2.5.

## 3.4 Order-Four Composition Table

| Tree | \(a(\tau)\) | \((a\cdot a)(\tau)\) | \(2^{\lvert\tau\rvert}a(\tau)\) | Raw \(\Phi_h\circ\Phi_h-\Phi_{2h}\) |
|---|---|---|---|---|
| \(\bullet\) | 1 | 2 | 2 | 0 |
| \([\bullet]\) | 1/2 | 2 | 2 | 0 |
| \([\bullet,\bullet]\) | 1/4 | 5/2 | 2 | 1/4 |
| \([[\bullet]]\) | 0 | 1 | 0 | 1 |
| \([\bullet,\bullet,\bullet]\) | 1/8 | 7/2 | 2 | 1/4 |
| \([\bullet,[\bullet]]\) | 0 | 3/2 | 0 | 3/2 |
| \([[\bullet,\bullet]]\) | 0 | 3/4 | 0 | 3/8 |
| \([[[\bullet]]]\) | 0 | 1/4 | 0 | 1/4 |

## 3.5 Substitution: The Modified Equation

Backward error analysis asks for a modified vector field \(\tilde f_h=f+hf_2+h^2f_3+\dots\) whose exact flow reproduces \(\Phi_h\). This replaces the vector field inside the exact-flow B-series and so uses substitution. For explicit midpoint, comparing the exact flow of \(\tilde f_h\) with Section 3.2 gives
\[
\tilde f_h=f+h^2\Bigl[-\tfrac1{24}f''(f,f)-\tfrac16f'f'f\Bigr]+O(h^3),
\]
with \(f_2=0\) because the method has order two. The coefficients equal the raw local errors of Section 3.2. The script confirms them by Taylor expansion on the \(\mathbb R^2\) test field.

## 3.6 Cross-Check Against BSeries.jl Output

The BSeries.jl documentation (built 4 August 2026 with Julia 1.12.6 from source commit `8a48581`, RootedTrees.jl v2.25.4; tutorials "B-series basics" and "Composing B-series" and the API reference) prints several series in level-sequence form. The script reproduces each of them exactly:

| Printed BSeries.jl output | Script reproduction |
|---|---|
| `bseries(ExactSolution{Rational{Int}}(), 5)`, 17 nonempty trees, e.g. `[1, 2, 2] => 1//3`, `[1, 2, 3, 2] => 1//8` | \(1/\gamma(\tau)\) for all 17 trees, canonical level sequences identical |
| `renormalize` of the exact series, e.g. `[1, 2, 2] => 1//6`, `[1, 2, 3, 3] => 1//24`, `[1, 2, 2, 2] => 1//24` | \(1/(\sigma\gamma)\) |
| classical RK4, `bseries(A, b, c, 5)`, e.g. `[1, 2, 3, 4, 5] => 0`, `[1, 2, 3, 2, 2] => 5//48` | elementary weights through order 5 |
| `compose(series_rk, series_rk, normalize_stepsize = true)` for RK4, order-5 values such as `[1, 2, 3, 3, 2] => 17//256`, `[1, 2, 2, 2, 2] => 77//384` | composition law of Section 2.5 with step \(h/2\) |
| Richardson combination of the above, order-5 values equal to \(1/\gamma\) | same |
| `compose(series_b, series_a, series_c, normalize_stepsize = true)` (Butcher's effective-order example), exact through order 5 | exact through order 5 with `series_b` applied first; the reversed order fails |

The generic two-stage family \(A=\bigl(\begin{smallmatrix}0&0\\1/(2\alpha)&0\end{smallmatrix}\bigr)\), \(b=(1-\alpha,\alpha)\) appears in the documentation as a Taylor expansion with the term \(\tfrac{h^3}{8\alpha}f''(f,f)\). Explicit midpoint is \(\alpha=1\), which gives the raw coefficient \(1/8\) of Section 3.2. The documentation does not print the midpoint composition itself; Sections 3.3–3.4 rest on the script's convolution, which reproduces the printed RK4 composition, and on the independent Taylor extraction.

# 4. RG Counterterm Recursion

## 4.1 Divergent Loop Integrals

In perturbative QFT, a one-loop diagram for a scalar \(\phi^4\) theory contributes a mass correction
\[
\delta m^2 \sim \int \frac{d^4 k}{(2\pi)^4} \, \frac{1}{k^2 - m^2 + i\varepsilon},
\]
which diverges (quadratically with a momentum cutoff \(\Lambda\), or as a pole in dimensional regularization) and is removed by a counterterm. A one-loop graph has no divergent proper subgraph. In the Connes–Kreimer tree picture it corresponds to the single-node tree \(\bullet\).

## 4.2 Bogoliubov Recursion

At two loops a graph \(\Gamma\) may contain a divergent proper subgraph \(\gamma\). Bogoliubov's recursion, in the Connes–Kreimer form [Connes1999], defines the counterterm \(S_R\) and the renormalized value \(R\) of a Feynman-rule character \(\phi\) by
\[
\bar R(\Gamma)=\phi(\Gamma)+\sum_{\gamma}S_R(\gamma)\,\phi(\Gamma/\gamma),\qquad
S_R(\Gamma)=-T\bigl[\bar R(\Gamma)\bigr],\qquad
R(\Gamma)=\bar R(\Gamma)+S_R(\Gamma),
\]
where the sum runs over nonempty products \(\gamma\) of disjoint divergent proper subgraphs, \(\Gamma/\gamma\) is the cograph obtained by contracting each component of \(\gamma\) to a vertex, and \(T\) is the subtraction operator of the scheme. In Hopf-algebra language \(S_R\) is the twisted antipode and \(R=S_R\star\phi\) is a convolution of characters [Connes1999, EbrahimiFardKreimer2005]. Solving the recursion gives Zimmermann's forest formula.

## 4.3 Tree Indexing

When the divergent subgraphs of \(\Gamma\) are nested or disjoint (no overlapping divergences), the inclusion poset of the subdivergences is a rooted tree: each divergent subgraph is a node, and its maximal divergent subgraphs are its children. Under this map, the subgraph–cograph coproduct of graphs becomes \(\Delta_{\mathrm{CK}}\): the pruned forest \(P^c\) lists the extracted subdivergences and the trunk \(R^c\) is the cograph. Overlapping divergences are resolved into sums of trees [Connes1999, Kreimer1999].

- One-loop graph, no subdivergence: \(\bullet\).
- Two-loop graph with one nested one-loop subdivergence: \([\bullet]\), with \(\Delta_{\mathrm{CK}}([\bullet])=[\bullet]\otimes1+1\otimes[\bullet]+\bullet\otimes\bullet\). The term \(\bullet\otimes\bullet\) is the pair (subdivergence \(\gamma\), cograph \(\Gamma/\gamma\)).
- Graph with two disjoint subdivergences inside an outer divergence: \([\bullet,\bullet]\). The forests are \(\emptyset\), \(\{\gamma_1\}\), \(\{\gamma_2\}\), \(\{\gamma_1,\gamma_2\}\), matching the cut terms \(2\,\bullet\otimes[\bullet]+\bullet\bullet\otimes\bullet\).
- Graph with a chain \(\gamma_1\subset\gamma_2\subset\Gamma\): \([[\bullet]]\).

## 4.4 Worked Example: A Nested Divergence in a Toy Model

To exhibit a divergent subgraph, its contraction and its subtraction on numbers, use a toy model of iterated logarithmic integrals indexed by rooted trees. Feynman rules with cutoff \(\Lambda\) and external scale \(c>0\):
\[
\phi_\Lambda(\bullet)(c)=\int_0^\Lambda\frac{dy}{y+c}=\ln\frac{\Lambda+c}{c},\qquad
\phi_\Lambda([t_1,\ldots,t_m])(c)=\int_0^\Lambda\frac{dy}{y+c}\prod_i\phi_\Lambda(t_i)(y).
\]
Each node is a logarithmically divergent integration. Take the subtraction \(T_\mu\) that evaluates at \(c=\mu\) (a momentum-subtraction scheme).

**The nested tree \([\bullet]\).** The divergent subgraph is the inner node \(\gamma=\bullet\); contracting it leaves the cograph \(\Gamma/\gamma=\bullet\). The recursion of Section 4.2 gives
\[
S_R(\bullet)=-\phi_\Lambda(\bullet)(\mu),
\]
\[
\bar R([\bullet])(c)=\phi_\Lambda([\bullet])(c)+S_R(\bullet)\,\phi_\Lambda(\bullet)(c),
\]
\[
S_R([\bullet])=-\bigl[\phi_\Lambda([\bullet])(\mu)+S_R(\bullet)\,\phi_\Lambda(\bullet)(\mu)\bigr],
\qquad R([\bullet])(c)=\bar R([\bullet])(c)+S_R([\bullet]).
\]
The bare value grows as \(\tfrac12\ln^2\Lambda\). The renormalized value converges. At \(\mu=1\), \(c=7\):

| \(\Lambda\) | \(\phi_\Lambda([\bullet])(c)\) | \(R([\bullet])(c)\) |
|---|---|---|
| \(10^4\) | 28.847858 | 1.88341942 |
| \(10^6\) | 72.911021 | 1.89312925 |
| \(10^8\) | 138.17643 | 1.89328106 |
| \(\infty\) | — | \(\tfrac12\ln^2(\mu/c)=1.89328315\) |

**Renormalized characters.** With \(\ell=\ln(\mu/c)\), the \(\Lambda\to\infty\) limits are polynomials in \(\ell\):
\[
R(\bullet)=\ell,\quad R([\bullet])=\frac{\ell^2}{2},\quad
R([\bullet,\bullet])=\frac{\ell^3}{3}+\frac{\pi^2}{3}\ell,\quad
R([[\bullet]])=\frac{\ell^3}{6}+\frac{\pi^2}{6}\ell .
\]
The derivation uses \(R([t_1,\ldots,t_m])(c)=\int_0^\infty\bigl[\tfrac1{y+c}-\tfrac1{y+\mu}\bigr]\prod_iR(t_i)(y)\,dy\), whose \(\ell\)-derivative reduces to the moments \(\int_0^\infty\ln^k u\,(1+u)^{-2}du=1,0,\pi^2/3\) for \(k=0,1,2\). The leading logarithms are \(\ell^{|\tau|}/\gamma(\tau)\), the exact-flow coefficients of Section 2.2 with \(h\) replaced by \(\ell\).

**The shared operation.** Write \(\phi_\ell(\tau)\) for these characters. Through order three,
\[
\phi_{\ell_1+\ell_2}=\phi_{\ell_1}\star\phi_{\ell_2},
\]
with \(\star\) the convolution of Section 2.5. Since \(\ln(\mu/c)=\ln(\mu/\mu')+\ln(\mu'/c)\), changing the subtraction point composes renormalized characters by the same product that composes B-series. This is the RG of the toy model in the Connes–Kreimer sense, and on this example the identification of "RG scale change" with "composition in the Butcher group" is a verified identity.

## 4.5 Worked Example: 2D Delta Interaction (One-Loop)

The two-dimensional contact interaction gives a one-loop running coupling with the same additive structure.

**Setup.** Consider
\[
H = -\frac{\hbar^2}{2m}\Delta + g\,\delta^{(2)}(x) \quad \text{on } \mathbb{R}^2 .
\]
The loop integrals diverge logarithmically [Jackiw1991].

**Divergent loop integral.** With a momentum cutoff \(|q| < \Lambda\),
\[
I(E;\Lambda) = \int_{|q|<\Lambda} \frac{d^2q}{(2\pi)^2} \, \frac{1}{E - \frac{\hbar^2 q^2}{2m} + i0} = -\frac{m}{2\pi\hbar^2} \ln\!\left(\frac{\Lambda^2}{k^2}\right) - i\,\frac{m}{2\hbar^2} + o(1),
\]
where \(E = \hbar^2 k^2 / (2m)\).

**Counterterm.** The bubble chain sums to \(1/T=1/g_B-I\). Define
\[
\frac{1}{g_R(\mu)} \equiv \frac{1}{g_B(\Lambda)} + \frac{m}{2\pi\hbar^2} \ln\!\left(\frac{\Lambda^2}{\mu^2}\right),
\]
so that
\[
T(E) = \left[\frac{1}{g_R(\mu)} + \frac{m}{2\pi\hbar^2} \ln\!\left(\frac{\mu^2}{k^2}\right) + i\,\frac{m}{2\hbar^2}\right]^{-1}
\]
is cutoff independent.

**Running and composition.** Independence of \(\mu\) gives
\[
\mu \frac{d}{d\mu}\left(\frac{1}{g_R}\right) = -\frac{m}{\pi\hbar^2}, \qquad \beta(g_R) = \mu \frac{d g_R}{d\mu} = \frac{m}{\pi\hbar^2} \, g_R^2,
\]
and \(1/g_R(\mu_2)=1/g_R(\mu_1)+\tfrac{m}{\pi\hbar^2}\ln(\mu_1/\mu_2)\). Scale changes compose additively in \(\ln\mu\), a one-parameter group, as in Section 4.4.

**Dimensional transmutation.** A bound state at \(E=-\hbar^2\kappa^2/(2m)\) is a pole of \(T\), at \(1/g_R(\mu)+(m/2\pi\hbar^2)\ln(\mu^2/\kappa^2)=0\). The RG-invariant scale is
\[
\kappa_*^2 \equiv \mu^2 \exp\!\left(\frac{2\pi\hbar^2}{m} \frac{1}{g_R(\mu)}\right),\qquad \frac{d\kappa_*}{d\mu}=0 .
\]

**Relation to the Butcher side.** Every graph in the bubble chain is a product of one-loop bubbles without nested subdivergences, so the tree content is trivial (powers of \(\bullet\)). The parallels with numerical integration listed in Section 5 for this example (subtraction scale versus step size, scheme freedom versus choice of tableau) are analogies. The literal tree-level identity is the one of Section 4.4.

# 5. The Butcher–RG Dictionary

## 5.1 Structural Comparison Table

Status: **identity** (same algebraic operation, checked here or proved in the cited literature), **analogy** (structural resemblance without a shared operation), **open** (no worked example).

| Butcher side | RG side | Operation | Status |
|---|---|---|---|
| B-series coefficients \(a:\mathcal T\to\mathbb R\) | Feynman-rule character \(\phi\) on trees / graphs | Characters of \(\mathcal H_{\mathrm{CK}}\) | Identity [Brouder2000, Connes1999] |
| Rooted trees \(\tau\) | Nesting trees of subdivergences | Inclusion poset of subdivergences (Section 4.3) | Identity for nested/disjoint divergences; overlapping ones need sums of trees |
| Composition \(\Phi_h\circ\Psi_h\) | Change of subtraction point \(\mu\to\mu'\) | Character convolution via \(\Delta_{\mathrm{CK}}\) (admissible cuts) | Identity, verified in the toy model (Section 4.4) |
| Exact flow \(e_h(\tau)=h^{\lvert\tau\rvert}/\gamma(\tau)\) | Leading logs \(\ell^{\lvert\tau\rvert}/\gamma(\tau)\) | One-parameter subgroups | Identity at leading-log level in the toy model; subleading terms (\(\pi^2\)) differ |
| Modified equation, vector-field replacement | — | Substitution law (extraction–contraction coproduct) | Butcher-side operation; RG counterpart open |
| Inverse method \(\Phi_h^{-1}\) | Counterterm \(S_R\) | Antipode (untwisted) vs twisted antipode \(S_R=-T[\dots]\) | Analogy: \(S_R\) involves the scheme projector \(T\) |
| Order conditions \(\Phi(\tau)=1/\gamma(\tau)\) | Renormalization conditions (fixing \(T\)) | Equations on a character vs choice of projector | Analogy |
| Butcher group (all characters invertible) | Wilsonian coarse-graining | Group vs semigroup | Different objects; the Connes–Kreimer RG is a one-parameter group |
| Collocation nodes, tableau choice | Subtraction scheme choice | Choice of character / of \(T\) | Analogy |
| Symplectic RK | Ward identities | Constraints preserved under composition | Open |
| Richardson extrapolation | Callan–Symanzik equation | Consistency across scales | Open |

## 5.2 Where the Correspondence Is an Identity

1. **Hopf algebra and characters.** B-series coefficients and Feynman-rule values are characters of the same Hopf algebra \(\mathcal H_{\mathrm{CK}}\) (for graphs, after the tree decomposition of Section 4.3). The admissible-cut coproduct, the symmetry factors and the tree factorials are the same objects on both sides.
2. **Composition.** Composing step maps and changing the subtraction point are the same convolution product. Section 4.4 checks this explicitly through order three in a model with nested divergences.

## 5.3 Where the Correspondence Is an Analogy

1. **Group versus semigroup.** Every B-series character is invertible, and \(\Phi_h^{-1}\) is again a B-series. The Connes–Kreimer RG is a one-parameter group of characters; Wilsonian integration of high-momentum modes is a semigroup and lives on a different space.
2. **Physical meaning of a node.** In Butcher theory a node is an evaluation of a derivative of the vector field. In renormalization it is a divergent loop integration.
3. **Error versus divergence.** Discretization errors are finite and \(O(h^{p+1})\); UV divergences are removed by subtraction with a scheme projector \(T\). The twisted antipode \(S_R\) has no counterpart on the Butcher side without such a projector.

# 6. Outlook

## 6.1 Extensions Not Covered Here

1. **Symplectic integrators and Ward identities.** Symplectic RK methods preserve the symplectic form; Ward identities constrain counterterms in gauge theories. Both are constraints preserved under composition, but no shared algebraic operation has been exhibited here.
2. **Substitution on the RG side.** The substitution law has a natural candidate counterpart in the insertion of counterterm vertices, but no worked identification is given here.
3. **A two-loop QFT example.** The toy model of Section 4.4 has the combinatorics of nested logarithmic divergences without the momentum structure of a field theory. A two-loop \(\phi^4\) calculation would test the dictionary on genuine Feynman graphs.
4. **Stochastic RK and stochastic quantization.** Whether the rooted-tree dictionary extends to stochastic B-series is an open question.

## 6.2 Hopf Coproduct: Explicit Formulas

The coproduct \(\Delta_{\mathrm{CK}}\) acts on the commutative algebra of forests. An **admissible cut** is a set of edges containing at most one edge on every path from the root to a leaf. Removing the cut edges leaves the trunk \(R^c\) (the component containing the root) and the pruned forest \(P^c\) (all other components).

**Order 1:**
\[
\Delta(\bullet) = \bullet \otimes 1 + 1 \otimes \bullet .
\]

**Order 2:**
\[
\Delta([\bullet]) = [\bullet] \otimes 1 + 1 \otimes [\bullet] + \bullet \otimes \bullet .
\]
The term \(\bullet\otimes\bullet\) is the cut of the single edge. In a composition it contributes \(a(\bullet)b(\bullet)\) to \((a\cdot b)([\bullet])\) (Section 3.3).

**Order 3:**
\[
\Delta([\bullet,\bullet]) = [\bullet,\bullet] \otimes 1 + 1 \otimes [\bullet,\bullet] + 2\,\bullet \otimes [\bullet] + \bullet\bullet \otimes \bullet,
\]
where \(2\,\bullet\otimes[\bullet]\) comes from cutting either leaf edge and \(\bullet\bullet\otimes\bullet\) from cutting both. The forest \(\bullet\bullet\) is a product in \(\mathcal H_{\mathrm{CK}}\).
\[
\Delta([[\bullet]]) = [[\bullet]] \otimes 1 + 1 \otimes [[\bullet]] + [\bullet] \otimes \bullet + \bullet \otimes [\bullet].
\]
Cutting the upper edge (root to middle node) prunes the subtree \([\bullet]\) and leaves the root \(\bullet\) as trunk; cutting the lower edge prunes the leaf and leaves the trunk \([\bullet]\).

**Coalgebra axioms.** \(\Delta_{\mathrm{CK}}\) is coassociative and counital. Coassociativity is the algebraic form of associativity of composition, \((\Phi_h\circ\Phi_h)\circ\Phi_h=\Phi_h\circ(\Phi_h\circ\Phi_h)\).

**Antipode.** The antipode is defined recursively by
\[
S(\tau) = -\tau - \sum_{c} S\bigl(P^c(\tau)\bigr)\, R^c(\tau),
\]
the sum running over nontrivial admissible cuts. For \([\bullet]\):
\[
S([\bullet]) = -[\bullet] - S(\bullet)\,\bullet = -[\bullet] + \bullet\bullet .
\]
The BPHZ counterterm is the twisted version of this recursion, \(S_R(\tau)=-T\bigl[\phi(\tau)+\sum_cS_R(P^c)\phi(R^c)\bigr]\) (Section 4.2), and the toy-model computation of Section 4.4 is this recursion evaluated with \(T=T_\mu\).

## 6.3 Relation to Composition Compatibility

The companion paper [Main] argues that **RG is the scale-compatibility condition** forced by composition when naive limits diverge. In the rooted-tree language, composition of transformations is convolution of characters, and compatibility across scales is the one-parameter group law of Section 4.4. The present note supplies the explicit coefficient checks for this statement at low orders.

# 7. Conclusion

Butcher theory and Connes–Kreimer renormalization use the same Hopf algebra of rooted trees, and their characters compose by the same convolution product. With the coefficients in the normalization of Section 2.2, the exact flow has \(a(\tau)=1/\gamma(\tau)\) and raw coefficient \(1/(\sigma(\tau)\gamma(\tau))\); two explicit-midpoint steps differ from one double step by \(h^3[f'f'f+\tfrac14f''(f,f)]\); and in a toy model with nested logarithmic divergences, the Bogoliubov recursion produces renormalized characters that obey the group law \(\phi_{\ell_1+\ell_2}=\phi_{\ell_1}\star\phi_{\ell_2}\). These three statements are checked in exact or high-precision arithmetic by the accompanying script.

The remaining dictionary entries (order conditions versus renormalization conditions, symplecticity versus Ward identities, Richardson extrapolation versus Callan–Symanzik) are analogies or open questions, and Section 5.1 marks them as such. Substitution of vector fields, the operation behind modified equations, has no identified counterpart on the RG side.

# 8. Erratum Relative to the Circulated Version

The circulated version (archived as `pub-track/sent/rooted-tree-bookkeeping/main.md`) contains the following errors, corrected above. The correction is recorded in the repository's anomaly register ([`meta/anomalies.md`](https://github.com/arivero/physres1/blob/agent-roles/meta/anomalies.md), entry "Rooted-tree note: exact-flow coefficient and midpoint composition corrected"), and the coefficients are reproduced by [`scripts/check_rooted_tree_coefficients.py`](https://github.com/arivero/physres1/blob/agent-roles/scripts/check_rooted_tree_coefficients.py).

1. **Exact-flow coefficient** (§§2.2–2.3 there). The coefficient of \(F(\tau)\) in the exact flow was written \(1/(\sigma(\tau)|\tau|!)\). The correct raw coefficient is \(1/(\sigma(\tau)\gamma(\tau))\), equivalently \(1/\gamma(\tau)\) in the normalized basis. The formulas agree on chains and differ at the bush \([\bullet,\bullet]\) (\(1/6\) against the formula's \(1/12\)) and at \([\bullet,[\bullet]]\) (\(1/8\) against \(1/24\)). The midpoint order-three values printed there (\(1/8\), \(0\) against \(1/6\), \(1/6\)) are correct raw values and contradict the displayed formula.
2. **Density formula** (§3.5 there). The statement \(\gamma(\tau)=|\tau|!/\sigma(\tau)\) is incorrect; \(|\tau|!/(\sigma\gamma)\) is the labelling count \(\alpha(\tau)\).
3. **Two-step midpoint expansion** (§3.3 there). The \(h^2\) term of \(\Phi_h(\Phi_h(y_0))\) is \(2h^2f'f\); the circulated text wrote \(2h^2\cdot\tfrac12f'f\). The cubic term \(h^3[f'f'f+\tfrac54f''(f,f)]\) and the difference \(h^3[f'f'f+\tfrac14f''(f,f)]\) were missing.
4. **Tree of the one-loop graph** (§4.3 there). A one-loop graph corresponds to \(\bullet\); the tree \([\bullet]\) is a two-loop graph with a nested subdivergence.
5. **BPHZ formula** (§4.2 there). The recursion is replaced by the standard Bogoliubov form with \(\bar R\), \(S_R=-T[\bar R]\) and \(R=\bar R+S_R\).
6. **Order-condition entry in the dictionary table.** "\(\sum a(\tau)\gamma(\tau)=1/r!\)" is replaced by \(\Phi(\tau)=1/\gamma(\tau)\).
7. **Composition described as grafting** (§§2.4, 3.3 there). Composition of B-series uses the admissible-cut coproduct (pruning). Grafting operations belong to the dual (Grossman–Larson) side, and replacing the vector field uses substitution.
8. **Coproduct of \([[\bullet]]\)** (§6.2 there). The description of the term \([\bullet]\otimes\bullet\) had trunk and pruned part interchanged.
9. **Dictionary status.** Entries previously described as identical or literal without a worked check are now labelled analogy or open; the composition entry is supported by the toy-model calculation of Section 4.4.

# 9. References

1. [Butcher2016] John C. Butcher, *Numerical Methods for Ordinary Differential Equations*, 3rd ed., Wiley, 2016. ISBN `978-1-119-12150-3`.

2. [HairerLubichWanner2006] Ernst Hairer, Christian Lubich, and Gerhard Wanner, *Geometric Numerical Integration: Structure-Preserving Algorithms for Ordinary Differential Equations*, 2nd ed., Springer, 2006. DOI `10.1007/3-540-30666-8`. (B-series normalization and composition, Sect. III.1; backward error analysis, Ch. IX.)

3. [Connes1999] Alain Connes and Dirk Kreimer, "Hopf Algebras, Renormalization and Noncommutative Geometry," *Comm. Math. Phys.* 199 (1998), 203–242. arXiv:`hep-th/9808042`. DOI `10.1007/s002200050499`.

4. [Kreimer1999] Dirk Kreimer, "On the Hopf algebra structure of perturbative quantum field theories," *Adv. Theor. Math. Phys.* 2 (1998), 303–334. arXiv:`q-alg/9707029`.

5. [Main] Companion paper, "Refinement Compatibility and the Structural Necessity of Renormalization" (in preparation).

6. [Brouder2000] Christian Brouder, "Runge-Kutta methods and renormalization," *European Physical Journal C* 12 (2000), 521–534. arXiv:`hep-th/9904014`. DOI `10.1007/s100529900235`. (Identification of the Butcher group with the Connes–Kreimer character group.)

7. [Jackiw1991] R. Jackiw, "Delta function potentials in two- and three-dimensional quantum mechanics," in *M.A.B. Beg Memorial Volume*, eds. A. Ali and P. Hoodbhoy (World Scientific, 1991), 25–42.

8. [ChartierHairerVilmart2010] Philippe Chartier, Ernst Hairer, and Gilles Vilmart, "Algebraic structures of B-series," *Found. Comput. Math.* 10 (2010), 407–427. DOI `10.1007/s10208-010-9065-1`. (DOI as quoted in the BSeries.jl documentation; volume and pages not verified against the publisher page.)

9. [CalaqueEbrahimiFardManchon2011] Damien Calaque, Kurusch Ebrahimi-Fard, and Dominique Manchon, "Two interacting Hopf algebras of trees: a Hopf-algebraic approach to composition and substitution of B-series," *Adv. Appl. Math.* 47 (2011), 282–308. arXiv:`0806.2238`. DOI `10.1016/j.aam.2009.08.003`.

10. [EbrahimiFardKreimer2005] Kurusch Ebrahimi-Fard and Dirk Kreimer, "The Hopf algebra approach to Feynman diagram calculations," *J. Phys. A* 38 (2005), R385–R406. arXiv:`hep-th/0510202`. DOI `10.1088/0305-4470/38/50/R01`.

11. [KetchesonRanocha2023] David I. Ketcheson and Hendrik Ranocha, "Computing with B-series," *ACM Trans. Math. Softw.* 49(2) (2023), volume and issue as in the BSeries.jl citation file; article number not verified. arXiv:`2111.11680`. DOI `10.1145/3573384`. Software: BSeries.jl, https://github.com/ranocha/BSeries.jl.
