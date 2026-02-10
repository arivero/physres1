# Difference Quotients as “Counterterm Subtractions” and \u03b4' from Point Splitting

Date: 2026-02-10

This note makes precise (in a toy way) the slogan:

> “Even the derivative is a counterterm: \(f(x+\varepsilon)/\varepsilon - f(x)/\varepsilon\).”

The point is not that ordinary calculus *is* QFT renormalization, but that the *logic* of
“regulate \(\to\) subtract \(\to\) take a limit” is already present in the simplest limits we take.

## 1. Smooth functions: how the subtraction cancels the \(1/\varepsilon\) divergence

Start from Taylor:
\[
f(x+\varepsilon) = f(x) + \varepsilon f'(x) + O(\varepsilon^2).
\]

Divide by \(\varepsilon\):
\[
\frac{f(x+\varepsilon)}{\varepsilon}
= \frac{f(x)}{\varepsilon} + f'(x) + O(\varepsilon).
\]
So the regulated expression \(f(x+\varepsilon)/\varepsilon\) has a \(1/\varepsilon\) divergence. If we define
\[
D_\varepsilon f(x) := \frac{f(x+\varepsilon)}{\varepsilon},
\]
then a “counterterm subtraction” viewpoint is:
\[
\bigl(D_\varepsilon f\bigr)(x) - \frac{1}{\varepsilon} f(x)
= f'(x) + O(\varepsilon).
\]
Taking \(\varepsilon\to 0\) yields the derivative.

### Scheme dependence and a renormalization condition

If we instead subtract \(\frac{1}{\varepsilon} f(x) + z_0 f(x)\), then
\[
\left(\frac{f(x+\varepsilon)}{\varepsilon} - \left(\frac{1}{\varepsilon}+z_0\right)f(x)\right)
= f'(x) - z_0 f(x) + O(\varepsilon).
\]
So the finite part \(z_0\) is a (trivial) “scheme parameter”: the subtraction is not unique unless we fix a condition.

A canonical condition is the usual calculus axiom
\[
\frac{d}{dx}(1)=0,
\]
which corresponds here to demanding the renormalized operator annihilates constants. That forces \(z_0=0\).

This is a toy analogue of how renormalization conditions fix finite counterterms after the divergence has been removed.

## 2. Distributional version: \(\delta'\) as a point-splitting limit of shifted deltas

Let \(\delta\) be the Dirac delta and \(\varphi\) a test function. Recall the distributional derivative convention:
\[
\langle \delta', \varphi \rangle := - \langle \delta, \varphi' \rangle = -\varphi'(0).
\]

Consider the shifted delta \(\delta(x+\varepsilon)\). Its pairing is
\[
\langle \delta(\,\cdot+\varepsilon), \varphi \rangle = \varphi(-\varepsilon).
\]
Now form the difference quotient distribution
\[
D_\varepsilon := \frac{\delta(\,\cdot+\varepsilon)-\delta}{\varepsilon}.
\]
Pair with \(\varphi\):
\[
\langle D_\varepsilon, \varphi \rangle
= \frac{\varphi(-\varepsilon)-\varphi(0)}{\varepsilon}
\xrightarrow[\varepsilon\to 0]{} -\varphi'(0)
= \langle \delta', \varphi \rangle.
\]
Hence, in the sense of distributions,
\[
\frac{\delta(x+\varepsilon)-\delta(x)}{\varepsilon} \;\xrightarrow[\varepsilon\to 0]{}\; \delta'(x).
\]

### Dictionary: “value at zero” vs “derivative at zero”

- Evaluation at zero: \(f \mapsto f(0)\) corresponds to \(\delta\): \(\langle \delta, f\rangle = f(0)\).
- Derivative at zero: \(f \mapsto f'(0)\) corresponds to \(-\delta'\): \(\langle -\delta', f\rangle = f'(0)\).

So when we say “the delta that probes the derivative at the point”, the clean object is \(-\delta'\), not \(\delta\).

## 3. Do not conflate \(\delta'\) with \(\delta(f')\) (stationary-set localization)

There are (at least) two unrelated “deltas built from derivatives” that show up in this project:

1. \(\delta'(x)\): the *distributional derivative of \(\delta\) with respect to its argument*.
   - It is supported at the point \(x=0\) and probes \(\varphi'(0)\).

2. \(\delta(f'(x))\): a distribution that *localizes \(x\) to the stationary points of \(f\)*, i.e. to solutions of \(f'(x)=0\).
   - When \(f'\) has isolated simple zeros \(x_i\) with \(f''(x_i)\neq 0\), one has (heuristically, and rigorously under standard hypotheses)
     \[
     \delta(f'(x)) = \sum_i \frac{\delta(x-x_i)}{|f''(x_i)|}.
     \]

These have different support, different scaling, and different meaning. They should not be swapped.

## 4. Why this is a useful toy analogue for counterterms (point splitting)

In QFT, a typical renormalization maneuver is *point splitting*:
\[
\mathcal{O}(x)\mathcal{O}(x)\quad\leadsto\quad \mathcal{O}(x)\mathcal{O}(x+\varepsilon),
\]
followed by subtraction of a divergent local term (a counterterm) and then \(\varepsilon\to 0\).

The derivative example has the same skeleton:
- \(\varepsilon\) is a regulator / short-distance separation,
- the regulated expression contains divergent pieces \(\sim 1/\varepsilon\),
- one subtracts a local term (here proportional to \(f(x)\)),
- a finite operator remains (here \(f'(x)\)),
- a finite ambiguity remains unless a condition is imposed (e.g. “constants map to zero”).

The distributional example is even closer in spirit: the limit produces a new *contact distribution* \(\delta'\), in the same way that Ward identities and composite-operator renormalization generate contact terms involving derivatives of \(\delta\).

## 5. Minimal RG-style framing (optional intuition)

Treat \(\varepsilon\) as a short-distance cutoff. Consider a regulated operator of the form
\[
R_\varepsilon[f](x) := \frac{f(x+\varepsilon)}{\varepsilon} - Z(\varepsilon) f(x).
\]
Finiteness as \(\varepsilon\to 0\) forces
\[
Z(\varepsilon)=\frac{1}{\varepsilon}+z_0+O(\varepsilon),
\]
and then
\[
\lim_{\varepsilon\to 0} R_\varepsilon[f](x) = f'(x) - z_0 f(x).
\]
The parameter \(z_0\) is a finite “scheme” choice. The renormalization condition \(R[1]=0\) sets \(z_0=0\).

This is the simplest possible example of:
\[
\text{(regulated object)}\;-\;\text{(counterterm)}\;\xrightarrow[\varepsilon\to 0]{}\;\text{finite renormalized object}.
\]
