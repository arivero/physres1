# Van Vleck prefactor × transmutation scale in 2D delta

Date: 2026-02-12
Cycle: S78
Question: How does the transmutation scale κ* interact with the Van Vleck half-density prefactor in the 2D delta model?

## Setup

### Free kernel (d = 2)
The free propagator on ℝ² is:

$$K_0(x,z;t) = \frac{m}{2\pi i\hbar t} \exp\left(\frac{im|x-z|^2}{2\hbar t}\right).$$

The prefactor $m/(2\pi i\hbar t) = (2\pi i\hbar t/m)^{-d/2}$ with $d = 2$ is the Van Vleck determinant for a free particle:

$$\det\left(-\frac{\partial^2 S_{\rm cl}}{\partial x\,\partial z}\right) = \left(\frac{m}{t}\right)^d,$$

since $S_{\rm cl} = m|x-z|^2/(2t)$. This prefactor carries the half-density weight at each endpoint (PA-D1.4).

### Interacting kernel (Dirac-supported interaction)
The full resolvent (Green function at energy E) for H = -(ℏ²/2m)Δ + g δ²(x) is given by the Lippmann–Schwinger series, which sums to:

$$G(x,z;E) = G_0(x,z;E) + G_0(x,0;E) \cdot T(E) \cdot G_0(0,z;E),$$

where T(E) is the scalar T-matrix from Section 10.5 (D11.1):

$$T(E) = \left[\frac{1}{g_R(\mu)} + \frac{m}{2\pi\hbar^2}\ln\frac{\mu^2}{k^2} + \frac{im}{2\hbar^2}\right]^{-1}.$$

## Key structural observation

**The correction factorizes**: the interaction correction to the kernel is a product of three factors:

1. $G_0(x,0;E)$: free propagator from endpoint $x$ to the interaction point. Carries half-density weight in $x$.
2. $T(E)$: scalar amplitude at the interaction vertex. Contains all the RG/transmutation information (κ*).
3. $G_0(0,z;E)$: free propagator from the interaction point to endpoint $z$. Carries half-density weight in $z$.

Each $G_0$ factor transforms as a half-density in its endpoint variable. The T-matrix is a *scalar* (it lives at a single point — the origin — and carries no coordinate-transformation weight).

## Where the transmutation scale lives

The T-matrix can be rewritten using the RG-invariant scale κ*:

$$T(E) = \frac{2\pi\hbar^2}{m} \left[\ln\frac{\kappa_*^2}{k^2} + i\pi\right]^{-1},$$

where $\kappa_*^2 = \mu^2 \exp\left(\frac{2\pi\hbar^2}{m g_R(\mu)}\right)$ is the transmutation scale (P11.1).

So κ* enters the scalar amplitude at the vertex, NOT the half-density transformation law.

**Structural separation**:
- **Half-density weight**: geometric — comes from the free propagator's coordinate transformation law (Van Vleck determinant). Present in both the free and interacting kernels.
- **Transmutation scale**: dynamical — comes from RG-invariant coupling at the interaction vertex. Enters only the scalar amplitude factor.

They are **structurally independent** but combine multiplicatively in the full kernel.

## Scalarization interface

To turn the full kernel into a dimensionless scalar representative (PA-H2.3), we need a reference half-density $\sigma_* = L_*^{-d/2}|dx|^{1/2}$.

In the free theory: the Van Vleck prefactor provides the half-density weight but does not fix $L_*$ — it depends on $t$ and $m/\hbar$, which are not universal constants of the right dimension.

In the interacting theory: the transmutation scale κ*^{-1} has dimension length^1 = length^{d/2} for d = 2. It is the unique RG-invariant scale of the theory. As a scalarization constant, $L_* = \kappa_*^{-1}$ would make the vertex amplitude $T(E)$ dimensionally consistent with a dimensionless scalar representative.

## Conclusion

The Van Vleck prefactor and the transmutation scale are *complementary*, not competing:
1. **Van Vleck** carries the half-density *transformation law* (how the kernel changes under coordinate changes).
2. **Transmutation** provides the half-density *scalarization constant* (how to turn the kernel into a dimensionless number).

In the language of the hypothesis ladder:
- PA-H2.1 (half-density formulation): implemented by the Van Vleck prefactor in the free/interacting kernel.
- PA-H2.2–H2.3 (scalarization to dimensionless representatives): requires $L_*$ with dimension length^{d/2}.
- PA-H2.4 (background-free constancy): κ*^{-1} is field-independent, depending only on the theory's coupling.
- PA-H2.5 vs transmutation branch: κ*^{-1} is non-analytic in the coupling (outside PA-H2.5), placing this in the transmutation branch (PA-H2.13).

This shows **exactly where in the kernel the transmutation scale acts**: it is the scalarization constant for the vertex amplitude, while the Van Vleck determinant handles the geometric half-density weight of propagation between vertices. The two roles are structurally independent and combine multiplicatively.

## Implication for open problem #2 (Planck-area draft, Section 7)

Open problem #2 asks: "Show how the area scale enters stationary-phase prefactors and how this interacts with RG scaling."

Answer for the 2D delta witness: the Van Vleck/stationary-phase prefactor provides the *geometric* half-density weight of the kernel, while the transmutation scale provides the *dynamical* scalarization constant. They are independent factors in the kernel. In d = 2 the transmutation scale is a length (matching the half-density weight); in d = 4 it would be an area.

This does not yet close the open problem in general (it is specific to the 2D delta witness), but it gives a concrete mechanism for how the two ingredients combine.
