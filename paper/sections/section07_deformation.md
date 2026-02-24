# 7. Deformation Quantization Bridge

## 7.1 From Path Weights to Product Deformation

The path integral produces a kernel $K(x,y,t)$ encoding quantum amplitudes.
To connect to the operator-mechanics formulation (Hilbert space, $[\hat p,\hat q]=-i\hbar$),
we use the *deformation quantization* perspective:

- The space of observables is $C^\infty(\mathbb{R}^{2d})$ (classical phase-space functions).
- Quantization replaces the pointwise product $f\cdot g$ by the *Moyal product* $f\star_\hbar g$.
- As $\hbar\to 0$, $f\star_\hbar g \to f\cdot g$ (classical limit).
- The Moyal commutator $[f,g]_\star/i\hbar \to \{f,g\}_\text{Poisson}$ as $\hbar\to 0$.

## 7.2 P5.1: Classical Compatibility

**Proposition P5.1.**  Let $f,g\in C^\infty(\mathbb{R}^2)$.  The truncated Moyal product
$$f\star_\hbar g = f\cdot g + \tfrac{\hbar}{2}\{f,g\} + O(\hbar^2)$$
satisfies:
1. $f\star_\hbar g \to f\cdot g$ pointwise as $\hbar\to 0$.
2. $(f\star_\hbar g - g\star_\hbar f)/\hbar \to \{f,g\}_\text{Poisson}$ as $\hbar\to 0$.

Lean: `P5_1_classical_compatibility` -- proved. The corrected formulation uses
`moyalCommutator / hbar` with the proper limit to `poissonBracket`.

## 7.3 D5.1a: Canonical Commutation Relation

**Derivation D5.1a.**  For $p(z) = z_1$ and $q(z) = z_2$ on phase space $\mathbb{R}^2$:
$$[p,q]_{\star_\hbar} = p\star_\hbar q - q\star_\hbar p = \hbar.$$

This is the phase-space form of the canonical commutation relation $[\hat p,\hat q]=-i\hbar$
(the imaginary unit $i$ appears when we pass to operators via the Weyl quantization map).

Lean: `D5_1a_moyal_canonical_commutation` -- proved by `ring`.
The complex operator form `D5_1a_canonical_commutation_complex` states
$i[q,p]_\star = -\hbar$ and is also proved.

## 7.4 D5.1b: Cubic Witness for $O(\hbar^3)$ Commutator Corrections

**Derivation D5.1b.**  For $f = q^3$ and $g = p$:
$$[q^3, p]_{\star_\hbar} = \hbar\cdot 3q^2 + \hbar^3\cdot(-q/4) + O(\hbar^5).$$

The Moyal *product* has $O(\hbar^2)$ corrections; the *commutator* has corrections
at odd powers only, so the leading correction is $O(\hbar^3)$. This $\hbar^3$ term
proves the Moyal commutator is not determined by the Poisson bracket alone.

**Lean note.** The Lean formalization `D5_1b_cubic_witness` uses `moyalProduct1`
(first-order truncation) which cannot capture the $\hbar^3$ term. The sorry
reflects a modeling gap, not just a proof gap: a higher-order Moyal definition
is needed.

## 7.5 P5.2: All Orderings Are Equivalent

**Proposition P5.2** (Kontsevich gauge equivalence).  Any two star products
$\star_1,\star_2$ on $\mathbb{R}^{2d}$ with the same classical limit are
gauge-equivalent: there exists a formal power series map $T_\hbar$ (starting with
the identity at $\hbar=0$) such that
$$f\star_1 g = T_\hbar^{-1}(T_\hbar(f)\star_2 T_\hbar(g)).$$

The Lean formalization `P5_2_star_product_equivalence` carries `sorry`; its
hypotheses (arbitrary associative operations with the right classical limit)
are weaker than Kontsevich's full conditions (formal power series of
bidifferential operators on a Poisson manifold).

## 7.6 Classical Limit of Ehrenfest's Theorem (D5.1)

**Derivation D5.1.**  Ehrenfest's theorem states
$d\langle A\rangle/dt = \langle[A,H]_\star\rangle/(i\hbar)$. In the classical
limit $\hbar\to 0$, the Moyal commutator reduces to the Poisson bracket:
$$\frac{[A,H]_\star}{i\hbar} \;\xrightarrow{\hbar\to 0}\; \{A,H\}_\text{Poisson}.$$

Lean: `D5_1_ehrenfest_to_poisson` proves this classical limit (mathematically
the same statement as P5.1(ii)).  Status: proved.

## 7.7 Ordering Stratification

Four layers of ordering effects, in increasing subtlety:

| Layer | Effect | Order in $\hbar$ |
|-------|--------|-----------------|
| 1 | Classical action $S[q]$ | $\hbar^0$ -- ordering-independent |
| 2 | Operator symbol | $\hbar^1$ -- first ordering shift |
| 3 | Moyal correction | $\hbar^2$ in product, $\hbar^3$ in commutator |
| 4 | Domain/boundary | Non-perturbative -- self-adjoint extensions |

Layer 4 (self-adjoint extensions) is treated in Section 9 (D9.1f).

## 7.8 Lean Formalization Status

| Claim | Lean theorem | Status |
|-------|-------------|--------|
| P5.1 classical limit | `P5_1_classical_compatibility` | proved |
| D5.1a $[p,q]_\star = \hbar$ | `D5_1a_moyal_canonical_commutation` | proved |
| D5.1a complex form | `D5_1a_canonical_commutation_complex` | proved |
| D5.1b cubic witness | `D5_1b_cubic_witness` | sorry |
| P5.2 gauge equivalence | `P5_2_star_product_equivalence` | sorry |
| D5.1 Ehrenfest theorem | `D5_1_ehrenfest_to_poisson` | proved |
