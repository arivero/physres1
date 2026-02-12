# Does the p=1 gauge-field preference have an independent half-density origin?

Date: 2026-02-12
Cycle: S81
Question: H4.0c states D = 2(p+1) for p-form gauge coupling marginality. At D=4, this selects p=1. Does the half-density framework independently prefer 1-forms?

## Two mechanisms selecting D=4 for gauge fields

### Mechanism A: Scalar half-density filter (H4.0b / HD-D1.3)
- The half-density conjugated Laplacian $\widetilde\Delta = |g|^{1/4} \Delta_g |g|^{-1/4}$ contains a term $D(4-D)/4 \cdot (\partial\sigma)^2$ in a conformal metric $g = e^{2\sigma}\bar{g}$.
- This vanishes at D=4.
- The filter is **form-degree-independent**: it operates on the scalar Laplacian. A scalar field (0-form) lives in the argument, but the coefficient D(4-D)/4 does not involve p.
- Origin: the half-density weight $D/2$ enters as the exponent in $|g|^{D\sigma/2}$, and the quadratic self-interaction of this exponential produces the coefficient.

### Mechanism B: Middle-form conformal invariance (H4.0c)
- The Hodge star $*_g$ maps $k$-forms to $(D-k)$-forms. It is conformally invariant on $k$-forms only when $k = D/2$ (middle-degree).
- Maxwell's source-free equations $dF = 0$, $d*F = 0$ for a (p+1)-form field strength $F = dA$ are conformally invariant when $p+1 = D/2$, i.e., $D = 2(p+1)$.
- For p=1: $D = 2(1+1) = 4$.
- This is a **form-degree-dependent** condition: it depends on p through the Hodge-star weight.

## Does the half-density framework select p?

**No, not directly.**

The scalar half-density filter (Mechanism A) selects D=4 without reference to any form degree. It applies to the scalar kinetic operator. A p-form field's kinetic operator (the Hodge Laplacian $\Delta_p = d\delta + \delta d$) is a different operator, and its conformal transformation law involves both D and p.

The p-form conformal invariance (Mechanism B) is not a half-density statement — it comes from the conformal weight of the Hodge star, which depends on the form degree p through the formula $*_g = e^{(D-2k)\sigma} *_{\bar{g}}$ for k-forms.

These are distinct mechanisms:
- **Mechanism A** selects $D=4$ from the volume half-density weight $D/2$.
- **Mechanism B** selects $D = 2(p+1)$ from the Hodge-star conformal weight $D - 2(p+1)$.

## The structural coincidence at (D=4, p=1)

At D=4, the half-density weight is $D/2 = 2$. The middle-form condition gives $p+1 = D/2 = 2$, hence $p=1$.

The coincidence is:
$$\text{half-density weight} = D/2 = 2 = p+1 = \text{field-strength form degree}$$

Both mechanisms point to the number 2:
- The half-density weight "area" at D=4 is $D/2 = 2$ (selects D=4 from the sieve).
- The middle-form degree at D=4 is $D/2 = 2$ (selects p=1 for conformal invariance).

But the **route** to the number 2 is different:
- Mechanism A: 2 = D/2 where D=4 is forced by the quadratic-gradient cancellation.
- Mechanism B: 2 = D/2 where D/2 is the middle-form degree, and this is the unique degree where the Hodge star is conformally invariant.

## Could a p-form half-density conjugation produce a p-dependent cancellation?

For a p-form with scalar components $A_{\mu_1...\mu_p}$, the "half-density conjugation" of each component is still by $|g|^{1/4}$. But the kinetic operator (Hodge Laplacian) acts on the full p-form and involves metric contractions that introduce p-dependent terms in the conformal expansion.

The Hodge Laplacian $\Delta_p$ under conformal rescaling $g \to e^{2\sigma} g$ decomposes via the Weitzenböck identity $\Delta_p = \nabla^*\nabla + \text{(curvature terms)}$. The conformal transformation of the connection Laplacian $\nabla^*\nabla$ on p-forms produces additional first-order and zeroth-order terms with p-dependent coefficients. Specifically, the conformal weight of a p-form component involves both D/2 (from the half-density) and p (from the index structure), and the effective "quadratic gradient" coefficient becomes a function of both D and p.

In this generalized setting, the cancellation condition for the leading conformal-potential term shifts from $D(4-D)/4 = 0$ (scalar case, p=0) to a condition of the form $f(D, p) = 0$ where $f$ encodes both the volume half-density weight and the form-degree conformal weight. The natural zero of this generalized coefficient is at $D = 2(p+1)$ — which is exactly Mechanism B.

**Key insight:** Mechanism B *can* be interpreted as a "generalized half-density conjugation" for p-form kinetic operators, but it requires conjugation not just by the volume half-density $|g|^{1/4}$ but by the appropriate conformal weight for p-forms. In this broader sense, the p=1 selection *does* have a half-density-adjacent origin, but it's the **form-degree conformal weight** rather than the **volume half-density weight** that does the work.

## Verdict

1. The volume half-density filter (H4.0b) is **p-independent**: it selects D=4 regardless of form degree.
2. The gauge-coupling marginality / conformal invariance (H4.0c) is **p-dependent**: it selects D = 2(p+1).
3. The two agree at (D=4, p=1) because the half-density weight D/2 and the middle-form degree p+1 are both 2.
4. The p=1 selection is **not** independently forced by the volume half-density. It requires an additional input: either (a) the RG marginality condition, or (b) the middle-form conformal weight condition.
5. In a generalized "conformal-weight conjugation" for p-forms, the p=1 selection can be seen as a form-degree analogue of the scalar half-density cancellation. But this generalization goes beyond the volume half-density framework as currently stated in H4.0b.

## Connection to H4.0c

H4.0c already correctly states the situation: "the half-density version is universal (independent of matter content), while the RG version is coupling-specific (tied to the form degree of the gauge connection via D = 2(p+1) for a p-form field; p=1 gives D=4)." The present analysis confirms this characterization.

The additional structural insight: the numerical coincidence of the half-density weight and the middle-form degree at D=4 ($D/2 = 2 = p+1$) could be highlighted as a "triple resonance" — the number 2 is simultaneously the half-density area weight, the field-strength form degree, and the exponent in the gravity coupling $G_4 \sim \text{length}^2$. All three roles of "2" trace back to $D/2$ at $D=4$.

## Relation to RCP legs

- Volume half-density filter (H4.0b): sits on the **representation leg** of RCP (scalarization/ordering).
- Gauge marginality / middle-form filter (H4.0c): straddles **scale leg** (RG marginality) and **representation leg** (form-degree conformal weight).
- The p=1 selection is genuinely RG/scale-side data, not purely representation-side.

This confirms the deferred DX04 item's implicit hypothesis: the p=1 preference does NOT have a purely independent half-density (volume) origin. It has a conformal-weight origin that is structurally analogous but not identical to the volume half-density mechanism.
