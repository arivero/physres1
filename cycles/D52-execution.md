# D52 Execution: d/2 in non-integer dimensions

Date: 2026-02-14

## Summary
The d/2 normalization exponent extends to non-integer d via analytic continuation of the Gaussian integral formula. In dimensional regularization (d=4-2ε), the path-integral kernel composes correctly with (2-ε) normalization exponent. Fractal geometries are genuinely distinct: d/2 is replaced by d_s/2 (spectral dimension).

## Key findings

1. **Analytic continuation**: The formula ∫ d^d z exp(-az²) = (π/a)^{d/2} defines an analytic function of d. The composition law K ∘ K = K holds for any d by analyticity.

2. **Dimensional regularization**: At d=4-2ε, the kernel normalization is (m/2πℏt)^{2-ε}. This composes correctly. UV divergences appear as poles at ε=0 in LOOP integrals (not from composition failure).

3. **Fractal subtlety**: On a fractal with Hausdorff dimension d_H and spectral dimension d_s, the heat kernel K_t(x,y) ~ t^{-d_s/2} f(|x-y|/t^{1/d_w}) where d_w is the walk dimension. The normalization exponent is d_s/2, not d_H/2. This is consistent with the composition law (the heat kernel on fractals still satisfies the semigroup property), but with the "effective dimension" being the spectral dimension.

4. **Impact for the paper**: Open Question 1 in path-integral-normalization paper is resolved for dimensional regularization (YES, extends analytically). For fractals, the question is more nuanced (d_s/2 replaces d/2, consistent with the composition principle).

## Novelty assessment
**MINOR (clarification).** The analytic continuation is standard in QFT textbooks. The fractal subtlety (d_s vs d_H) is known in spectral geometry. But the connection between composition-forced normalization and spectral dimension is a nice framing.

## Spawned cycles
None. The result is self-contained.
