# Action–Angle Indeterminacy Witness in Central Potentials (Fourier on the Circle)

Date: 2026-02-10  
Cycle: `S62`  
Status: blackboard note (non-citable).

Goal: produce a single explicit witness of the “sharp actions \(\Rightarrow\) delocalized conjugate angles” slogan for central potentials, without entering the subtleties of a self-adjoint angle operator.

## 1) The canonical azimuthal pair
In spherical coordinates, the azimuthal angle \(\phi\) is periodic, \(\phi\sim\phi+2\pi\). The generator of rotations about the \(z\)-axis is
\[
L_z=-i\hbar\,\frac{\partial}{\partial\phi}.
\]
So the conjugate “action” variable for \(\phi\) is \(L_z\).

## 2) \(L_z\) eigenstates have uniform \(\phi\) distribution
Eigenfunctions of \(L_z\) on the circle satisfy
\[
L_z\,e^{im\phi} = \hbar m\,e^{im\phi},
\qquad m\in\mathbb Z.
\]
In a central potential, separation of variables yields wavefunctions of the form
\[
\psi(r,\theta,\phi)=R(r)\,\Theta(\theta)\,e^{im\phi},
\]
so the probability density is
\[
|\psi(r,\theta,\phi)|^2 = |R(r)|^2\,|\Theta(\theta)|^2,
\]
independent of \(\phi\). Therefore, in an \(L_z\) eigenstate the azimuthal angle is uniformly distributed.

This is the cleanest “angle indeterminacy” statement one can make in a referee-safe way.

## 3) Localization in \(\phi\) forces superposition in \(m\) (Fourier tradeoff)
Any square-integrable periodic function admits a Fourier series
\[
f(\phi)=\sum_{m\in\mathbb Z} c_m e^{im\phi}.
\]
If \(f(\phi)\) is localized in angle (a narrow peak), then many Fourier modes are needed; conversely, if only one mode \(m\) is present then \(|f(\phi)|^2\) is constant.

So:
- sharp \(m\) (sharp \(L_z\)) \(\Rightarrow\) delocalized \(\phi\),
- sharp \(\phi\) \(\Rightarrow\) broad distribution in \(m\) (broad \(L_z\)).

This is the number–phase theme in a mechanical setting.

## 4) Interpretation for orbit pictures
This witness supports a common interpretive guardrail for central-force “orbit” intuition:
single stationary eigenstates are not localized classical orbits; localized orbit-phase/orientation pictures arise from coherent superpositions (packets), consistent with stationary-phase semiclassical recovery.

## Promotion candidate
In a central potential, the azimuthal coordinate \(\phi\) is periodic and the rotation generator is \(L_z=-i\hbar\,\partial_\phi\). An \(L_z\) eigenstate has \(\phi\)-dependence \(e^{im\phi}\), hence \(|\psi|^2\) is independent of \(\phi\): the azimuthal angle is uniformly distributed. Conversely, any state localized in \(\phi\) requires a superposition of many \(m\) modes (Fourier on the circle), so sharpening \(\phi\) necessarily broadens the \(L_z\) distribution. This is the minimal “sharp action \(\Rightarrow\) delocalized conjugate angle” witness for central potentials, aligned with the semiclassical message that classical orbit pictures correspond to packets/superpositions rather than single stationary eigenstates.

