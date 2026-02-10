# Blackboard: Point Interaction as a Rank-One Bi-Half-Density Kernel (and Where RG Scales Can Enter)

Date: 2026-02-10

## Purpose
We already use the 2D delta potential as the cleanest explicit RG computation (`papers/rg-fundamental/main.md`), and we treat kernels as bi-half-densities in the half-density priority thread.

This note asks a unifying question:
what is the **coordinate-free kernel** of a point interaction, and how does its scaling clarify (i) the ubiquitous \(d/2\) exponent and (ii) where a physical length scale can enter when one scalarizes?

No bibliography claims are made; this is a study note.

## 1. Delta kernel as identity on half-densities (recap)
The identity operator on half-densities has Schwartz kernel
\[
K_{\mathrm{Id}}(x,y)=\delta^{(d)}(x-y)\,|dx|^{1/2}|dy|^{1/2}.
\]
This is canonical as a bi-half-density distribution; scalarization introduces noncanonical choices.

## 2. The point interaction as a rank-one kernel
In Dirac notation, a point interaction is naturally a rank-one operator
\[
V=g\,|0\rangle\langle 0|.
\]
In coordinate language, this corresponds to a bi-half-density kernel supported at \((0,0)\):
\[
K_V(x,y)=g\;\delta^{(d)}(x)\,\delta^{(d)}(y)\,|dx|^{1/2}|dy|^{1/2}.
\]
This gives one safe meaning of “\(\delta^{1/2}\)” language:
\(\delta^{(d)}(x)|dx|^{1/2}\) is a distributional half-density supported at a point, and \(V\) is the tensor product of two such point-supported half-densities.

## 3. Scaling of the point-supported half-density delta
Under a dilation \(x\mapsto x'=b x\) with \(b>0\),
\[
\delta^{(d)}(x)=b^{d}\,\delta^{(d)}(x'),
\qquad
|dx|^{1/2}=b^{-d/2}|dx'|^{1/2}.
\]
Therefore the point-supported half-density
\[
\delta^{(d)}(x)\,|dx|^{1/2}
\]
scales as \(b^{d/2}\) (equivalently, it carries the inverse-length \(d/2\) weight).
This is the same exponent that appears in:
1. near-diagonal scaling \(\varepsilon^{-d/2}\) for kernels, and
2. stationary-phase amplitudes \(1/\sqrt{|\det(\cdot)|}\) (half-density weights).

For the full rank-one kernel, the product of two such half-densities has weight \(b^{d}\), so any scalar coupling \(g\) attached to the kernel must carry the usual engineering dimension that makes the Hamiltonian term \(g\delta^{(d)}(x)\) have the dimension of energy. (This is consistent with \([g]=\text{length}^{d-2}\) in \(\hbar=c=1\) units.)

## 4. Where an RG-invariant scale can enter when scalarizing
Half-densities avoid choosing a reference measure. But if we insist on representing kernels by scalar distributions \(k(x,y)\) via a reference half-density \(\sigma_\ast\), then a universal length \(L_\ast\) is introduced by \(\sigma_\ast\sim L_\ast^{-d/2}|dx|^{1/2}\).

In a marginal case like the 2D point interaction, renormalization generates an RG-invariant inverse length \(\kappa_\ast\) (dimensional transmutation). This suggests a conditional identification:
if one adds a “background-free universality” requirement that the scalarization scale must be built from physical data, then \(\kappa_\ast^{-1}\) is a natural candidate for \(L_\ast\) in the point-interaction sector.

This is not a theorem (it is a choice of how to relate representational scales to physical scales), but it is a useful organizing perspective:
RG invariants are precisely the kind of objects that can supply the missing \(\text{length}^{d/2}\) constants required by scalarization.

## 5. Promotion candidates
1. **For `papers/rg-fundamental/main.md` (short):** add a 2–3 sentence remark that the point interaction is a rank-one kernel \(g|0\rangle\langle0|\) and that the canonical delta kernel lives naturally as a bi-half-density, clarifying what is “convention” (scalarization) vs “physics” (RG invariants).
2. **For `papers/planck-area/main.md` (short):** add a bridge remark: point-supported half-densities show the same \(d/2\) scaling exponent and make vivid why a scalarization scale is needed whenever one writes delta objects as scalars.
3. **For a new follow-up note (new paper candidate):** a short “Half-densities and point interactions” note that unifies: identity kernel, point interaction kernel, and the appearance of an RG scale in marginal dimensions as the only available length for scalarization.

