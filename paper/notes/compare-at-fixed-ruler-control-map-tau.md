# Compare-at-Fixed-Ruler Lemma for the Control Map \(\tau\)

Status: internal note (non-citable). Goal: restate `Derivation D6.0` in regulator-independent language.

The key idea is that "renormalization" can be defined without mentioning a cutoff at all:
it is the existence of a *control map* on parameters induced by the operation
"refine the description, then compare at a fixed ruler."

## 1. Setup: a ruler, a family, and a comparison operator
Let \(h>0\) denote a *ruler* (resolution parameter): \(h\) is what we hold fixed when we compare predictions.

For each \(h\), let \(A_{h,\theta}\) denote a prediction functional (or amplitude, or kernel) written in a chosen family indexed by parameters \(\theta\in\Theta\).

Let \(b>1\) be a refinement factor. Assume we have a canonical way to *compare* a prediction written at ruler \(h/b\) back at ruler \(h\):
an operator
\[
\mathcal C_{b,h}:\{A_{h/b,\theta}\}\to \{\text{objects at ruler }h\}.
\]

Examples of \(\mathcal C_{b,h}\):
- ODE time-stepping: "two half-steps compared at the same net step" (\(\Phi_{h/2}\circ \Phi_{h/2}\)).
- Kernel composition: integrate out intermediate variables to express a fine-step kernel at a coarser time step.
- Coarse observables: push a fine description through a fixed coarse observable map (a "readout rule").

## 2. Definition (closure) and the induced control map \(\tau_b\)
The family \(\{A_{h,\theta}\}\) is *closed under refinement-comparison* at factor \(b\) if there exists a map
\[
\tau_b:\Theta\to\Theta
\]
such that for all \(\theta\),
\[
\mathcal C_{b,h}\!\left(A_{h/b,\theta}\right) = A_{h,\tau_b(\theta)},
\]
either exactly or up to a tolerated error class (e.g. \(O(h^p)\), or "irrelevant operators" in an EFT truncation).

Interpretation:
- \(\tau_b\) is not "an extra convention"; it is the parameter update required for the chosen family to survive refinement.
- If no \(\tau_b\) exists within \(\Theta\), refinement-comparison produces terms outside the chosen family: the family must be enlarged (effective operators / counterterms).

This is the regulator-free content of the RG semigroup viewpoint: the *meaning* of the continuum theory is the existence of a stable target under iterated refinement-comparison.

## 3. Semigroup property (composition of comparisons)
If comparison is consistent under composed refinement, i.e.
\[
\mathcal C_{bc,h} = \mathcal C_{b,h}\circ \mathcal C_{c,h/b},
\]
then the induced control maps satisfy
\[
\tau_{bc} = \tau_b\circ \tau_c.
\]

In continuous form (take \(b=e^t\) and differentiate at \(t=0\)) this yields a flow equation
\(\frac{d}{dt}\theta(t)=\beta(\theta(t))\), i.e. the usual beta-function picture, now read as the infinitesimal version of "closure under refinement-comparison."

## 4. Scheme dependence (what changes and what is invariant)
The map \(\tau_b\) depends on:
1. the chosen family \(\{A_{h,\theta}\}\) (a truncation/ansatz), and
2. the comparison rule \(\mathcal C_{b,h}\).

Changing parameter coordinates \(\theta\mapsto \varphi(\theta)\) conjugates \(\tau_b\) accordingly.
What is expected to be invariant across reasonable schemes are structural features such as:
- existence and stability of fixed points,
- universal critical exponents / scaling dimensions,
- and RG-invariant combinations used as "physical scales."

## 5. Worked witness: step-halving induces \(\tau_2\) in a one-parameter family
In `paper/notes/control-map-tau-step-halving.md` we consider a one-parameter family of one-step ODE methods
\[
\Phi_h^{(a)}(y)=y+h f(y)+a\,h^2 f'(y)f(y)+O(h^3)
\]
and define comparison at fixed net step \(h\) by step-halving:
\[
\mathcal C_{2,h}(\Phi_h):=\Phi_{h/2}\circ \Phi_{h/2}.
\]
Within the same family this induces
\[
\tau_2(a)=\frac{a}{2}+\frac{1}{4},
\qquad
a_\ast=\frac{1}{2}.
\]
This is a minimal explicit model of the abstract closure condition above.

## Promotion target
In `paper/main.md`, `Derivation D6.0` can be tightened by:
- naming \(h\) explicitly as the "ruler" used for comparison,
- making the closure equation read as \(\mathcal C_{b,h}(A_{h/b,\theta})=A_{h,\tau_b(\theta)}\),
- and citing the step-halving witness (`Derivation D6.2a`) as the concrete example of \(\tau_b\) being *induced* by refinement-comparison.

