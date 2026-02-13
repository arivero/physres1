# 2D Delta Resolvent: Van Vleck vs Transmutation Scale Separation

Date: 2026-02-13
Thread: Half-densities / Planck-area (Open Problem #2)
Parent: S83

## 1. The 2D free resolvent as a bi-half-density

The free resolvent (Green function) for a particle of mass \(m\) in \(d=2\) satisfies
\[
(E - H_0)\,G_0(x,z;E) = \delta^{(2)}(x-z), \qquad H_0 = -\frac{\hbar^2}{2m}\nabla^2.
\]
For \(E < 0\) (bound-state region), setting \(\kappa = \sqrt{-2mE}/\hbar > 0\):
\[
G_0(x,z;E) = -\frac{m}{2\pi\hbar^2}\,K_0(\kappa|x-z|),
\]
where \(K_0\) is the modified Bessel function of the second kind.

**Dimensional analysis.** In \(\hbar = 1\) units, \([m] = \text{length}^{-2}\cdot\text{time}\) or, in \(\hbar = c = 1\), \([m] = \text{length}^{-1}\). Then \([m/\hbar^2] = \text{length}^{-2}\) (keeping \(\hbar\) explicit). Since \(K_0\) is dimensionless, \([G_0] = \text{length}^{-2}\).

**As a bi-half-density.** Write
\[
\mathbf{G}_0(x,z;E) = g_0(x,z;E)\,|dx|^{1/2}\,|dz|^{1/2},
\]
where \(g_0 = G_0\) as a scalar coefficient. Now \([|dx|^{1/2}] = \text{length}^{d/2} = \text{length}\) for \(d=2\). So
\[
[g_0] = [G_0] = \text{length}^{-2}, \qquad
[g_0\,|dx|^{1/2}\,|dz|^{1/2}] = \text{length}^{-2}\cdot\text{length}\cdot\text{length} = \text{length}^0 = \text{dimensionless}.
\]
This is correct: the bi-half-density resolvent is dimensionless (it maps half-densities to half-densities, which is a linear map with no intrinsic dimension).

**Van Vleck content.** The prefactor \(m/(2\pi\hbar^2)\) plays the role of the Van Vleck factor. Under coordinate changes \(x = x(x')\), the resolvent transforms as
\[
g_0'(x',z') = |\det(\partial x/\partial x')|^{1/2}\,|\det(\partial z/\partial z')|^{1/2}\,g_0(x(x'),z(z')),
\]
i.e., with half-density weight \(d/2 = 1\) at each endpoint. In Cartesian coordinates this is invisible (Jacobian = 1), but the dimensional structure \(\text{length}^{-2}\) (= \(\text{length}^{-d}\) for \(d = 2\)) is the footprint of the bi-half-density weight, exactly as in PA-D1.4a.

## 2. The T-matrix: pure scalarization scale

For the 2D delta interaction \(V(x) = g\,\delta^{(2)}(x)\), the Lippmann–Schwinger equation at the contact vertex is
\[
G(x,z;E) = G_0(x,z;E) + G_0(x,0;E)\,T(E)\,G_0(0,z;E),
\]
where the (scalar) T-matrix is [ManuelTarrach1994PertRenQM]:
\[
T(E) = \frac{2\pi\hbar^2}{m}\,\frac{1}{\ln(\kappa/\kappa_\ast) + i\pi/2},
\]
with \(\kappa_\ast\) the RG-invariant transmutation scale from PA-E5.

**Dimensional analysis.**
\[
[T] = [\hbar^2/m] = \text{length}^2 \quad (\text{in } \hbar = c = 1: \text{length}^2).
\]

**Key observation:** \(T(E)\) is a scalar (not a half-density). It carries dimension \(\text{length}^2 = \text{length}^d\) for \(d = 2\). This is exactly the dimension needed to make the product \(G_0 \cdot T \cdot G_0\) have the same dimension as \(G_0\):
\[
[G_0 \cdot T \cdot G_0] = \text{length}^{-2}\cdot\text{length}^2\cdot\text{length}^{-2} = \text{length}^{-2} = [G_0]. \quad\checkmark
\]

In the bi-half-density picture: the composition at the vertex pairs \(|dy|^{1/2}\) from \(G_0(x,y)\) with \(|dy|^{1/2}\) from \(G_0(y,z)\), producing \(|dy|\) (a density at \(y = 0\)). The T-matrix absorbs this density to produce a scalar amplitude. Thus **T acts as the scalarization map** at the vertex — it converts the half-density pairing into a number.

## 3. Where the scales live

| Component | Half-density weight | Dynamical scale | Role |
|-----------|-------------------|-----------------|------|
| \(G_0(x,0;E)\) | \(|dx|^{1/2}\) at \(x\); \(|dy|^{1/2}\) at vertex | None (free propagation) | Geometric: Van Vleck / half-density transport |
| \(T(E)\) | None (scalar) | \(\kappa_\ast\) (transmutation) | Dynamical: scalarization constant |
| \(G_0(0,z;E)\) | \(|dy|^{1/2}\) at vertex; \(|dz|^{1/2}\) at \(z\) | None (free propagation) | Geometric: Van Vleck / half-density transport |
| \(G_0 \cdot T \cdot G_0\) | \(|dx|^{1/2}\,|dz|^{1/2}\) (outer) | \(\kappa_\ast\) from \(T\) | Full: half-density at endpoints, scalarized at vertex |

The separation is clean:
- **Half-density weight** (geometric): carried by \(G_0\) at the endpoints. This is the Van Vleck / PA-D1.4 mechanism.
- **Transmutation scale** (dynamical): carried by \(T(E)\) at the vertex. This is the PA-H2.13 / PA-D1.6a mechanism.
- They are **structurally independent** and **multiply**: \(G_0\) provides the coordinate-invariant transport, \(T\) provides the dynamical amplitude.

## 4. Scalarization: how κ_* supplies the length^{d/2} constant

To extract a dimensionless scalar representative from the resolvent, we need a scalarization constant with dimension \(\text{length}^{d/2} = \text{length}\) (for \(d = 2\)).

The transmutation scale provides exactly this: \(\kappa_\ast^{-1}\) has dimension \(\text{length}^1 = \text{length}^{d/2}\).

Concretely, define:
\[
\sigma_\ast := \kappa_\ast^{1}\,|dx|^{1/2} = (\kappa_\ast^{-1})^{-1}\,|dx|^{1/2},
\]
so \(\sigma_\ast\) is a dimensionless half-density (since \([\kappa_\ast] = \text{length}^{-1}\) and \([|dx|^{1/2}] = \text{length}\)). Then the scalar representative of the full resolvent is:
\[
f(x,z;E) = \frac{g(x,z;E)}{\sigma_\ast(x)\,\sigma_\ast(z)} = \kappa_\ast^{-2}\,g(x,z;E),
\]
which has dimension \(\text{length}^2 \cdot \text{length}^{-2} = \text{dimensionless}\). \(\checkmark\)

The scalarization constant is \(\kappa_\ast^{-d/2} = \kappa_\ast^{-1}\), a single power of the transmutation length — not an analytic monomial in the bare coupling (consistent with PA-H2.13's prediction).

## 5. Connection to S82 (free propagator composition)

S82 showed that the free propagator's semigroup property requires the \(d/2\) exponent in the prefactor. Here, the same \(d/2\) exponent appears in the resolvent's dimension:
\[
[G_0] = \text{length}^{-d}, \qquad [T] = \text{length}^d, \qquad [G_0 T G_0] = \text{length}^{-d}.
\]

The new ingredient is the T-matrix: it supplies a *dynamical* scale (κ_*) that the free propagator does not have. The half-density structure is the same in both cases — it's the geometric backbone. The T-matrix sits "on top" of this backbone as a scalar amplitude at the interaction vertex.

This makes PA-E5b's abstract statement concrete: the Van Vleck factor (PA-H2.1) comes from free propagation between vertices, the scalarization constant (PA-H2.2–H2.4) comes from RG invariance at the vertex, and they combine multiplicatively because the Lippmann–Schwinger factorization separates them structurally.

## 6. Why this matters for Open Problem #2

Open Problem #2 asks: "Show how the area scale enters stationary-phase prefactors and how this interacts with RG scaling."

Answer (in the 2D delta witness):
1. The "area scale" (generalized to \(\text{length}^{d/2}\) scale) enters the stationary-phase / Van Vleck prefactor as the geometric half-density weight \(\text{length}^{-d/2}\) per endpoint — this is the same mechanism as S82/PA-D1.4a.
2. The RG interaction enters through the T-matrix, which contains the transmutation scale \(\kappa_\ast\). This scale is RG-invariant and has the correct dimension \(\text{length}^{d/2}\) to serve as the scalarization constant.
3. They interact by **multiplication** (Lippmann–Schwinger factorization), not by modification of each other. The Van Vleck weight does not run; the transmutation scale does not transform as a half-density. They are complementary structures.

For \(d = 4\): the same factorization should hold, with scalarization constant \(\Lambda_\ast^{-2} = \text{area}\).

## 7. Errata (Q77 correction)

**Dimensional error in Sections 1, 2, 4, 5:** The resolvent (energy-domain Green function) has \([G_0] = \text{length}^{-(d-1)}\) in \(\hbar = c = 1\) units, NOT \(\text{length}^{-d}\). The propagator (time-domain) has \([K] = \text{length}^{-d}\); the resolvent picks up an extra factor of \(\text{length}\) from the Fourier transform in time. Specifically:
- \(d = 2\): \([G_0] = \text{length}^{-1}\), \([T] = \text{length}^{1}\)
- The bi-half-density resolvent has dimension \(\text{length} = \text{energy}^{-1}\), not dimensionless
- The scalarization \(f = g_0 L_\ast^d\) has dimension \(\text{length}\), not dimensionless
- Scalarization to a dimensionless number additionally requires an energy factor (e.g., \(E \cdot f\))

The structural separation (Sections 2–3) and the claim that \(\kappa_\ast^{-1}\) supplies a \(\text{length}^{d/2}\) scale are **unaffected** by this correction: the half-density pairing mechanism at the vertex and the T-matrix's scalar character are transformation-law statements, not dimensional ones. The corrected manuscript remark PA-E5c avoids specific \([G_0]\) claims.
