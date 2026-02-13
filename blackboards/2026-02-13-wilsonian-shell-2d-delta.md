# Wilsonian Shell Integration for the 2D Delta Potential

Date: 2026-02-13
Thread: RG-fundamental (Section 5 complement)
Parent: S85

## 1. Setup and motivation

The rg-fundamental paper (Section 5.2) derives the beta function for the 2D contact interaction via a **renormalization-condition** approach: define \(g_R(\mu)\) by a subtraction, then impose \(\mu\)-independence of the \(T\)-matrix. The result is

\[
\beta(g_R) = \mu\frac{dg_R}{d\mu} = \frac{m}{\pi\hbar^2}\,g_R^2.
\]

Here we re-derive the same beta function via **Wilsonian shell integration**: explicitly integrate out a thin momentum shell, match to an effective coupling at the lower cutoff, and read off the flow. This makes the semigroup/composition structure (RG-P1.1) directly visible.

## 2. Shell integral

Start from the loop integral with sharp cutoff \(\Lambda\):

\[
I(E;\Lambda) = \int_{|q|<\Lambda} \frac{d^2q}{(2\pi)^2}\,\frac{1}{E - \frac{\hbar^2 q^2}{2m} + i0},
\qquad E = \frac{\hbar^2 k^2}{2m}.
\]

Split into a **shell** (\(\Lambda' < |q| < \Lambda\)) and a **low-momentum** (\(|q| < \Lambda'\)) piece:

\[
I(E;\Lambda) = I_{\rm shell}(E;\Lambda',\Lambda) + I(E;\Lambda').
\]

The shell integral, performing the angular integration in 2D (\(d^2q = 2\pi q\,dq\)):

\[
I_{\rm shell}(E;\Lambda',\Lambda)
= \frac{1}{2\pi}\int_{\Lambda'}^{\Lambda} \frac{q\,dq}{E - \frac{\hbar^2 q^2}{2m}}.
\]

Substituting \(u = q^2\):

\[
I_{\rm shell}
= \frac{1}{4\pi}\int_{\Lambda'^2}^{\Lambda^2} \frac{du}{\frac{\hbar^2 k^2}{2m} - \frac{\hbar^2 u}{2m}}
= -\frac{m}{2\pi\hbar^2}\int_{\Lambda'^2}^{\Lambda^2} \frac{du}{u - k^2}
= -\frac{m}{2\pi\hbar^2}\ln\!\left(\frac{\Lambda^2 - k^2}{\Lambda'^2 - k^2}\right).
\]

This is **exact** (no UV approximation).

**At threshold** (\(k = 0\)):

\[
I_{\rm shell}(0;\Lambda',\Lambda)
= -\frac{m}{2\pi\hbar^2}\ln\!\left(\frac{\Lambda^2}{\Lambda'^2}\right)
= -\frac{m}{\pi\hbar^2}\ln\!\left(\frac{\Lambda}{\Lambda'}\right).
\]

This is exact and independent of energy, which is the key simplification for a marginal coupling.

**SymPy verification.** Confirmed: exact integral gives \(\frac{m}{2\pi\hbar^2}[\ln(\Lambda'^2 - k^2) - \ln(\Lambda^2 - k^2)]\); series expansion around \(k = 0\) yields \(-\frac{m}{\pi\hbar^2}\ln(\Lambda/\Lambda') + O(k^2)\).

## 3. Effective coupling at the lower cutoff

The \(T\)-matrix reads

\[
T(E;\Lambda) = \frac{1}{g_B(\Lambda)^{-1} - I(E;\Lambda)}
= \frac{1}{g_B(\Lambda)^{-1} - I_{\rm shell} - I(E;\Lambda')}.
\]

Define the **Wilsonian effective coupling** \(g_{\rm eff}(\Lambda')\) by requiring the same functional form at the lower cutoff:

\[
T(E;\Lambda') \equiv \frac{1}{g_{\rm eff}(\Lambda')^{-1} - I(E;\Lambda')}.
\]

Matching at threshold (both expressions must give the same \(T(0)\)):

\[
\frac{1}{g_{\rm eff}(\Lambda')} = \frac{1}{g_B(\Lambda)} - I_{\rm shell}(0;\Lambda',\Lambda)
= \frac{1}{g_B(\Lambda)} + \frac{m}{\pi\hbar^2}\ln\!\left(\frac{\Lambda}{\Lambda'}\right).
\]

**This is the Wilsonian RG map** \(W_{\Lambda\to\Lambda'}\):

\[
W_{\Lambda\to\Lambda'}: \quad \frac{1}{g} \;\longmapsto\; \frac{1}{g} + \frac{m}{\pi\hbar^2}\ln\!\left(\frac{\Lambda}{\Lambda'}\right).
\]

## 4. Semigroup property

For three scales \(\Lambda > \Lambda_1 > \Lambda_2\):

\[
W_{\Lambda_1\to\Lambda_2} \circ W_{\Lambda\to\Lambda_1}: \quad
\frac{1}{g} \;\longmapsto\; \frac{1}{g} + \frac{m}{\pi\hbar^2}\ln\!\left(\frac{\Lambda}{\Lambda_1}\right) + \frac{m}{\pi\hbar^2}\ln\!\left(\frac{\Lambda_1}{\Lambda_2}\right)
= \frac{1}{g} + \frac{m}{\pi\hbar^2}\ln\!\left(\frac{\Lambda}{\Lambda_2}\right)
= W_{\Lambda\to\Lambda_2}\!\left(\frac{1}{g}\right).
\]

So

\[
W_{\Lambda_1\to\Lambda_2} \circ W_{\Lambda\to\Lambda_1} = W_{\Lambda\to\Lambda_2},
\]

which is exactly the semigroup composition of RG-P1.1.

**SymPy verification.** Confirmed: \(\ln(\Lambda/\Lambda_1) + \ln(\Lambda_1/\Lambda_2) - \ln(\Lambda/\Lambda_2) = 0\).

## 5. Wilsonian beta function

Set \(\Lambda' = \Lambda\,e^{-\delta\ell}\) with infinitesimal \(\delta\ell > 0\). Then

\[
\frac{1}{g_{\rm eff}(\Lambda')} = \frac{1}{g_B(\Lambda)} + \frac{m}{\pi\hbar^2}\,\delta\ell,
\]

so

\[
\frac{d}{d\ell}\left(\frac{1}{g_{\rm eff}}\right) = \frac{m}{\pi\hbar^2}.
\]

Since \(\Lambda' = \Lambda\,e^{-\ell}\), we have \(d/d\ell = -\Lambda'\,d/d\Lambda'\), giving

\[
\Lambda'\frac{d}{d\Lambda'}\left(\frac{1}{g_{\rm eff}}\right) = -\frac{m}{\pi\hbar^2}.
\]

Converting to a beta function (\(d(1/g)/d\Lambda' = -(1/g^2)\,dg/d\Lambda'\)):

\[
\boxed{\beta(g) \equiv \Lambda'\frac{dg}{d\Lambda'} = \frac{m}{\pi\hbar^2}\,g^2.}
\]

This **matches** the perturbative result from Section 5.2 exactly.

## 6. Comparison: Wilsonian vs renormalization-condition approaches

| Feature | Section 5.2 (renormalization condition) | This note (Wilsonian shell) |
|---------|---------------------------------------|---------------------------|
| Starting point | Define \(g_R(\mu)\) by subtraction condition | Integrate out momentum shell \(\Lambda' < |q| < \Lambda\) |
| Scale parameter | Arbitrary \(\mu\) (subtraction point) | Physical cutoff \(\Lambda'\) (modes above are integrated out) |
| Beta function | Demand \(\mu\)-independence of \(T\) | Differentiate the matching condition |
| Semigroup | Implicit (integrated RG flow) | **Explicit** (two shell integrations compose) |
| Information loss | Not visible | Visible: UV shell modes are discarded, many \((g_B, \Lambda)\) map to the same \((g_{\rm eff}, \Lambda')\) |

The key value of the Wilsonian derivation: it makes **RG-P1.1** (semigroup composition) a visible, checkable identity rather than an algebraic consequence.

## 7. Connection to the Section 6 (coarse-graining) framework

In Section 6 (Gaussian coarse-graining / Schur complement), the effective parameter changes by integrating out "UV" variables. Here the same structure appears:

- "UV variables" = momentum shell modes \(\Lambda' < |q| < \Lambda\)
- "Schur complement" = the shift \(1/g \mapsto 1/g + I_{\rm shell}\)
- "Non-invertibility" (RG-H1.7) = many bare couplings \(g_B(\Lambda)\) for different \(\Lambda\) give the same effective \(g_{\rm eff}(\Lambda')\), as long as \(1/g_B(\Lambda) + (m/\pi\hbar^2)\ln\Lambda\) is the same.

The non-invertibility is precisely what forces dimensional transmutation: the single RG-invariant combination

\[
\kappa_*^2 = \Lambda^2 \exp\!\left(\frac{2\pi\hbar^2}{m}\,\frac{1}{g_B(\Lambda)}\right)
\]

encodes the full physical content. Different \((g_B, \Lambda)\) pairs with the same \(\kappa_*\) are physically indistinguishable.

## 8. Why the shell integral is exact at threshold

A pleasant feature of the marginal (2D) case: the threshold (\(k = 0\)) shell integral is **exact** — no UV approximation is needed. This is because the integrand at \(k = 0\) is \(q/(- \hbar^2 q^2/(2m)) = -(2m/\hbar^2)/q\), giving \(\int dq/q = \ln(q)\) which has no subleading terms. The \(O(k^2/\Lambda^2)\) corrections only affect the energy-dependent (finite) part, not the running.

In contrast, in 3D the power divergence means the shell integral at threshold picks up an \(O(\Lambda - \Lambda')\) term (the famous linear divergence), which is scheme-dependent and not logarithmic. This explains why logarithmic running is specific to marginal couplings.

## 9. Discovery flag

**No.** The Wilsonian derivation confirms the existing Section 5.2 result and makes the semigroup structure explicit. No new physics or unexpected mathematical structure found. The computation is a complement to the existing perturbative derivation, fulfilling the paper's stated outlook.
