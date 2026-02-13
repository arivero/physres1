# S15 Execution: Difference Quotients, Subtractions, and \u03b4'

## Work Completed
- Wrote a self-contained blackboard note making precise the “derivative as counterterm subtraction” toy model and its distributional companion:
  - `blackboards/2026-02-10-difference-quotients-counterterms-and-delta-prime.md`

## Key Result (Toy Analogy)
For smooth \(f\),
\[
\frac{f(x+\varepsilon)}{\varepsilon}-\frac{f(x)}{\varepsilon}
= f'(x) + O(\varepsilon),
\]

and if we treat the subtraction as a “counterterm”,
\[
\frac{f(x+\varepsilon)}{\varepsilon} - \left(\frac{1}{\varepsilon}+z_0\right)f(x)
\xrightarrow[\varepsilon\to 0]{} f'(x)-z_0 f(x),
\]
so a finite ambiguity remains unless fixed by a renormalization condition (e.g. \(D(1)=0\Rightarrow z_0=0\)).

## Key Result (Distributional)
\[
\frac{\delta(x+\varepsilon)-\delta(x)}{\varepsilon}\xrightarrow[\varepsilon\to 0]{}\delta'(x)
\quad\text{(in distributions)},
\]
with the sign fixed by \(\langle\delta',\varphi\rangle=-\varphi'(0)\).

## Notes
- This gives a clean, low-cost toy model for the logic “regulate \(\to\) subtract \(\to\) limit”, useful for framing RG as a definitional compatibility condition.
- The blackboard note explicitly distinguishes \(\delta'\) from stationary-set deltas \(\delta(f')\) to avoid a recurring conflation risk.

## Follow-ups (Spawn Candidates)
- `C`: add a short “derivative as renormalization toy model” paragraph to `papers/rg-fundamental/main.md` (likely in the early motivation section), and/or a short dictionary paragraph in `papers/delta-objects/main.md`.
