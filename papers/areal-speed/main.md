---
title: "Planck Areal Speed and D=4 Compton-Scale Emergence"
author: "A. Rivero and A.I.Scaffold"
date: "2026"
abstract: |
  Extracted from the Planck Area note as a standalone thread for separate development.
---

# 5. A Gravitational Anchor: Minimal Areal Speed and the \(D=4\) Cancellation
Rivero’s “Planck areal speed” observation gives a concrete route by which Planck-scale discreteness reappears at Compton scales in inverse-square gravity [RiveroAreal] [RiveroSimple].

`Heuristic PA-H1.3 (Areal-speed selection).`
In \(3+1\) Newtonian gravity (inverse-square), imposing a discrete areal-speed/area-time condition at a Planck scale can yield characteristic radii proportional to a reduced Compton length, with Newton’s constant canceling when expressed in Planck units. This is a nontrivial indication that “a universal area scale” can be operationally meaningful at low energies in \(D=4\).

`Derivation PA-D1.5 (Inverse-square circular orbit + Planck areal speed \(\Rightarrow\) Compton radius).`
For a circular orbit under an inverse-square central force \(F(r)=K/r^2\) (with coupling \(K>0\)), the centripetal balance is
\(m v^2/r = K/r^2\).
The areal speed is
\(\dot A = \tfrac12 r v\),
so \(v = 2\dot A/r\). Substituting into the force balance gives

$$
m\left(\frac{2\dot A}{r}\right)^2=\frac{K}{r}
\quad\Longrightarrow\quad
r=\frac{4m\,\dot A^2}{K}.
$$

For Newtonian gravity between a source mass \(M\) and test mass \(m\), \(K=GMm\), hence

$$
r=\frac{4\dot A^2}{GM},
$$

independent of the test mass \(m\). If one now imposes \(\dot A = k\,\dot A_P\), where Rivero’s Planck areal speed is \(\dot A_P = cL_P\) [RiveroAreal], then using \(L_P^2 = G\hbar/c^3\) yields

$$
r
=\frac{4k^2(cL_P)^2}{GM}
=\frac{4k^2(G\hbar/c)}{GM}
=4k^2\,\frac{\hbar}{cM}.
$$

Thus \(r\) becomes a multiple of the reduced Compton length \(L_M=\hbar/(cM)\), with Newton’s constant canceled out. In particular, \(k=\tfrac12\) gives \(r=L_M\). This is the “Planck area per Planck time \(\Rightarrow\) Compton scale” cancellation highlighted in [RiveroAreal] and summarized in [RiveroSimple].

`Remark PA-D1.5a (Generic \(F=K/r^q\): only \(q=2\) yields linear Compton scaling; \(q\) links to dimension).`
For a power-law central force \(F(r)=K/r^q\) with \(K>0\), circular balance gives \(m v^2/r=K/r^q\), i.e. \(m v^2=K r^{1-q}\). Using the circular areal speed \(\dot A=\tfrac12 r v\) (so \(v=2\dot A/r\)) yields
\[
4m\dot A^2 = K\,r^{3-q}.
\]
Hence, for \(q\neq 3\),
\[
r=\left(\frac{4m\dot A^2}{K}\right)^{\frac{1}{3-q}},
\]
while for \(q=3\) the radius drops out and \(4m\dot A^2=K\).

In the gravitational specialization \(K=GMm\), the test mass cancels as before and
\[
r=\left(\frac{4\dot A^2}{GM}\right)^{\frac{1}{3-q}}.
\]
If one imposes \(\dot A=cL_P\) and uses the \(D=4\) identity \(L_P^2=G\hbar/c^3\), then
\[
r=\left(\frac{4\hbar}{cM}\right)^{\frac{1}{3-q}}.
\]
Thus the Planck-areal-speed substitution produces *linear* reduced-Compton scaling \(r\propto \hbar/(cM)\) only for \(q=2\) (inverse-square). For Newtonian long-range fields in \(n\) spatial dimensions, the Laplacian Green function gives \(\Phi(r)\propto r^{2-n}\) (for \(n>2\)), so \(F\sim|\nabla\Phi|\propto r^{1-n}\), i.e. \(q=n-1\) (with the \(n=2\) logarithmic exception) [Tanaka2021KernelQuadrature]. In this sense the \(q=2\) special case corresponds to \(n=3\) spatial dimensions (spacetime \(D=4\)).
Equivalently, substituting \(q=n-1\) into the mass scaling gives \(r\propto M^{-1/(4-n)}\) (for \(n\neq 4\)), so the linear Compton scaling (and the \(G\)-cancellation in the \(D=4\) identity \(L_P^2=G\hbar/c^3\)) is uniquely \(n=3\); the \(n=4\) case is the degenerate \(q=3\) condition where the radius drops out.

`Remark PA-D1.5b (SR continuation of the inverse-square witness: Compton branch \(\to\) Planck floor).`
Inside a mechanical special-relativistic model with an external inverse-square force (no GR field dynamics), one can keep the fixed coordinate-time areal speed \(\dot A_0=dA/dt\) and continue PA-D1.5 exactly.

For inverse-square forces, SR circular motion gives \(v=K/L\), while
\[
L=\gamma mrv=2\gamma m\dot A_0,
\qquad
\gamma=\frac{1}{\sqrt{1-v^2/c^2}}.
\]
Hence
\[
\gamma v=\frac{K}{2m\dot A_0},
\]
so
\[
v=\frac{\tfrac{K}{2m\dot A_0}}{\sqrt{1+\left(\tfrac{K}{2m\dot A_0c}\right)^2}},
\qquad
r=\frac{2\dot A_0}{v}
=\frac{4m\dot A_0^2}{K}\sqrt{1+\left(\frac{K}{2m\dot A_0c}\right)^2}.
\]

For gravity \(K=GMm\), \(m\) cancels:
\[
r(M,\dot A_0)
=\frac{4\dot A_0^2}{GM}\sqrt{1+\left(\frac{GM}{2\dot A_0c}\right)^2}.
\]
With \(\dot A_0=cL_P\), using \(L_P^2=\hbar G/c^3\) and \(M_P^2=\hbar c/G\),
\[
r(M)
=\frac{4\hbar}{Mc}\sqrt{1+\frac{M^2}{4M_P^2}}.
\]
Therefore \(M\ll M_P\) reproduces the PA-D1.5 Compton-like branch \(r\approx 4\hbar/(Mc)\), while \(M\gg M_P\) saturates at
\[
r\to 2L_P.
\]
So in this SR continuation, the inverse-square Planck-areal-speed witness is not destroyed; it is regularized into a bounded interpolation.

`Remark PA-D1.5c (Clock-choice sensitivity: fixed \(dA/dt\) vs fixed \(dA/d\tau\)).`
The \(2L_P\) high-mass saturation in PA-D1.5b is tied to fixing the coordinate-time areal speed \(\dot A_t=dA/dt\). If one instead fixes proper-time areal speed \(\dot A_\tau=dA/d\tau\) in the same inverse-square SR model, then
\[
r(M,\dot A_\tau)
=\frac{4\dot A_\tau^2}{GM}\sqrt{1-\left(\frac{GM}{2\dot A_\tau c}\right)^2},
\]
which is defined only for \(GM<2\dot A_\tau c\).
With \(\dot A_\tau=cL_P\),
\[
r(M)=\frac{4\hbar}{Mc}\sqrt{1-\frac{M^2}{4M_P^2}},
\]
so \(M\to2M_P^{-}\Rightarrow r\to0\), not \(2L_P\).
Therefore the low-mass Compton-like branch is robust, while the high-mass asymptotic is clock-convention dependent in this mechanical SR setting.

`Remark PA-D1.5d (Invariant-candidate reformulation via specific angular momentum).`
A clock-independent candidate in the same central-source setup is the specific angular momentum scalar
\[
\ell:=\frac1m\sqrt{\frac12\,L_{\mu\nu}L^{\mu\nu}},
\]
where \(L^{\mu\nu}\) is the source-rest-space projection of orbital \(J^{\mu\nu}\) (using source 4-velocity \(U^\mu\)). In the source rest frame this reduces to
\[
\ell=\gamma rv,\qquad
\dot A_t=\frac{\ell}{2\gamma},\qquad
\dot A_\tau=\frac{\ell}{2}.
\]
So fixing \(\ell\) selects the proper-time branch rather than the coordinate-time branch. For inverse-square gravity,
\[
r(M,\ell)=\frac{\ell^2}{GM}\sqrt{1-\left(\frac{GM}{\ell c}\right)^2},
\qquad
\ell>\frac{GM}{c},
\]
and \(\ell=2cL_P\) reproduces PA-D1.5c. This does not yet prove universality, but it provides a structurally covariant way to encode the postulate without choosing a clock variable directly.

`Remark PA-D1.5e (Why simple frame-free bivector invariants are insufficient here).`
One might try to avoid the source-velocity projection entirely and use only Lorentz invariants of
\[
M^{\mu\nu}=R^\mu p^\nu-R^\nu p^\mu,
\]
namely
\[
I_1=\frac12 M_{\mu\nu}M^{\mu\nu}=R^2p^2-(R\cdot p)^2,
\qquad
I_2=\frac12 M_{\mu\nu}{}^\star M^{\mu\nu}.
\]
But for the circular central branch (\(R\cdot p=0\), \(R^2=r^2\), \(p^2=-m^2c^2\)), this gives
\[
I_1=-m^2c^2r^2,
\]
independent of orbital speed, while \(I_2\) vanishes in the planar case. So these simple frame-free invariants do not encode the areal-rate branch parameter. In this setup, a timelike direction (e.g. source \(U^\mu\)) appears to be minimal extra structure for a useful covariant postulate.

`Remark PA-D1.5f (Minimal timelike-structure rule for this branch).`
For the present central-source inverse-square model, a practical “minimal structure” rule is:
1. use the source worldline 4-velocity \(U^\mu\) as the distinguished timelike direction (already part of the model input), and
2. formulate the postulate on
\[
\ell_{(U)}:=\frac1m\sqrt{\frac12\,M^{(U)}_{\mu\nu}M_{(U)}^{\mu\nu}},
\qquad
M^{(U)\mu\nu}=h(U)^\mu{}_\alpha h(U)^\nu{}_\beta M^{\alpha\beta},
\]
rather than directly on coordinate-time areal rate.
In the source rest frame this is equivalent to fixing \(\dot A_{\tau,U}=\ell_{(U)}/2\), while coordinate-time rates are derived via the corresponding lapse factor. This keeps the branch covariant-with-source and avoids introducing an additional arbitrary observer field \(u^\mu(x)\).

`Remark PA-D1.5g (Non-circular planar extension is kinematic).`
The \(\ell\)-based rule is not restricted to circular trajectories. For general planar motion with tangential component \(v_\perp=r\dot\phi\),
\[
\ell=\gamma r v_\perp=\gamma r^2\dot\phi,\qquad
\frac{dA}{dt}=\frac12 r^2\dot\phi=\frac{\ell}{2\gamma},\qquad
\frac{dA}{d\tau}=\frac{\ell}{2}.
\]
Thus “fix \(\ell\)” remains equivalent to fixing proper-time areal rate in the source frame even away from circular orbits; this part is kinematic and does not depend on the specific force law.

`Remark PA-D1.5h (Non-planar caution: vector area rate is fundamental).`
For general 3D motion the natural identity is vector-valued:
\[
\boldsymbol\ell=\frac1m(\mathbf r\times\mathbf p)=\gamma(\mathbf r\times\mathbf v),
\qquad
\frac{d\mathbf A}{d\tau}=\frac{\boldsymbol\ell}{2}.
\]
So the \(\ell\)-rule still survives kinematically, but scalar areal rates require a chosen normal \(\mathbf n\):
\[
\frac{dA_{\mathbf n}}{d\tau}=\frac{\boldsymbol\ell\cdot\mathbf n}{2}.
\]
In non-planar perturbations, interpreting a scalar “areal speed postulate” without specifying this projection is ambiguous; the projection choice is part of the model specification.

`Remark PA-D1.5i (Observability criterion for projected areal-rate postulates).`
In perturbed-orbit settings, a projected areal-rate claim is empirically meaningful only after specifying:
1. projection normal \(\mathbf n\),
2. clock convention (\(t\)-based or \(\tau\)-based),
3. reconstruction map for \((\mathbf r,\mathbf v)\) in the source frame.
With those choices fixed, the observable is
\[
\dot A_{\mathbf n}(t)=\frac12\,\mathbf n\cdot(\mathbf r\times\mathbf v),
\qquad
\frac{dA_{\mathbf n}}{d\tau}=\frac12\,\mathbf n\cdot\boldsymbol\ell,
\]
and departures from constant projected areal rate are governed by projected torque
\[
\frac{d}{dt}\big(\mathbf n\cdot\boldsymbol\ell\big)
=\frac1m\,\mathbf n\cdot(\mathbf r\times\mathbf F).
\]
So the postulate becomes falsifiable precisely when projection, clock, and reconstruction are part of the model declaration.

`Remark PA-D1.5j (Minimal implementation pipeline).`
A compact data-to-test pipeline is:
1. reconstruct object state in observer frame from direction \(\hat{\mathbf n}(t)\), range \(\rho(t)\), and line-of-sight velocity \(\dot\rho(t)\):
\[
\mathbf r_{\rm obj}=\rho\hat{\mathbf n},\qquad
\mathbf v_{\rm obj}=\dot\rho\,\hat{\mathbf n}+\rho\,\dot{\hat{\mathbf n}},
\]
2. subtract source ephemeris to obtain source-frame relative state \((\mathbf r,\mathbf v)\),
3. evaluate
\[
\dot A_{\mathbf n}=\frac12\,\mathbf n\cdot(\mathbf r\times\mathbf v),\quad
\frac{dA_{\mathbf n}}{d\tau}=\frac12\,\mathbf n\cdot\boldsymbol\ell,
\]
and, if a force model is supplied, the projected-torque residual
\[
\mathcal T_{\mathbf n}:=
\frac{d}{dt}\big(\mathbf n\cdot\boldsymbol\ell\big)-\frac1m\,\mathbf n\cdot(\mathbf r\times\mathbf F).
\]
This keeps the postulate test tied to explicit reconstruction and uncertainty handling rather than to abstract kinematic statements alone.

`Remark PA-D1.5k (Minimal uncertainty scaffold).`
At first order, uncertainty in projected observables can be propagated by Jacobians:
\[
q:=\dot A_{\mathbf n}
\quad\Rightarrow\quad
\sigma_q^2\approx J_q\,\Sigma_x\,J_q^\top,
\]
for reconstructed state vector \(x\) and covariance \(\Sigma_x\), and
\[
\sigma_{\mathcal T}^2\approx J_{\mathcal T}\,\Sigma_z\,J_{\mathcal T}^\top
\]
for residual \(\mathcal T_{\mathbf n}\) with augmented state \(z\). This linear scaffold is a baseline; in strongly nonlinear regimes the same quantities should be cross-checked with nonlinear propagation (e.g. Monte Carlo) before interpretation.

`Remark PA-D1.5l (Practical nonlinear-validation trigger).`
A lightweight policy is to run a pilot nonlinear propagation check and compare against the linear \(\sigma\) estimate; if the discrepancy is at the few-percent level (or larger), treat linearized errors as insufficient and switch to nonlinear uncertainty propagation for reporting.

`Remark PA-D1.5m (Regime-dependent trigger calibration).`
The trigger in PA-D1.5l should be calibrated by uncertainty regime, not treated as universal. A practical diagnostic pair is
\[
\epsilon_{\rm nl}:=\frac{|\sigma_{\rm MC}-\sigma_{\rm lin}|}{\sigma_{\rm lin}},
\qquad
\chi:=\max\!\left(
\frac{\sqrt{\mathrm{tr}\,\Sigma_r}}{\|\mathbf r\|},
\frac{\sqrt{\mathrm{tr}\,\Sigma_v}}{\|\mathbf v\|}
\right),
\]
with \(\Sigma_r,\Sigma_v\) the position/velocity covariance blocks in the chosen reconstruction model. Pilot scans in correlated-noise families can then map \(\epsilon_{\rm nl}(\chi)\) for the instrument/model pair; the "few-percent" policy corresponds to selecting an operational \(\epsilon_{\rm nl}\) band after this calibration, rather than imposing a context-free constant.


# References

1. [Tanaka2021KernelQuadrature] Tanaka (2021), arXiv:2102.10887.
2. [RiveroSimple] Rivero (unpublished).
3. [RiveroAreal] Rivero, DOI 10.32388/Q7SKTZ.
