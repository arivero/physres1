# Non-planar kinematics: \(\boldsymbol\ell\) and area vector

Goal: extend the S31/S32 rule beyond planar motion and identify what remains invariantly meaningful.

## 3D kinematic identities
For any trajectory \(\mathbf r(t)\), \(\mathbf v=d\mathbf r/dt\), \(\mathbf p=\gamma m\mathbf v\):
\[
\boldsymbol\ell:=\frac1m(\mathbf r\times\mathbf p)=\gamma(\mathbf r\times\mathbf v).
\]

Define instantaneous area-rate vector:
\[
\frac{d\mathbf A}{dt}:=\frac12(\mathbf r\times\mathbf v).
\]
Then
\[
\frac{d\mathbf A}{d\tau}
\;=\;
\gamma\frac{d\mathbf A}{dt}
\;=\;
\frac{\boldsymbol\ell}{2}.
\]

So the core relation survives in full 3D:
\[
\boxed{\;\frac{d\mathbf A}{d\tau}=\frac{\boldsymbol\ell}{2}\;}
\]
as a kinematic identity.

## Scalar areal rate requires a normal
In non-planar motion there is no single fixed orbital plane. A scalar rate needs a chosen unit normal \(\mathbf n\):
\[
\frac{dA_{\mathbf n}}{d\tau}
:=
\mathbf n\cdot\frac{d\mathbf A}{d\tau}
=
\frac{\boldsymbol\ell\cdot\mathbf n}{2}.
\]
Hence scalar postulates are projection-dependent unless planarity is guaranteed.

## Dynamics caveat
The identity above is kinematic; conservation is dynamical:
\[
\frac{d\boldsymbol\ell}{d\tau}
=
\frac1m\,\mathbf r\times\mathbf F_{(\tau)}.
\]
For purely central forces \(\mathbf r\times\mathbf F=0\), \(\boldsymbol\ell\) is conserved and motion stays planar. Under perturbations, \(\boldsymbol\ell\) can precess or change magnitude.

## Practical branch conclusion
For the current paper thread:
- Planar central branch: scalar formulas are fine.
- Non-planar perturbations: use vector/bivector form as fundamental; scalar areal rates are derived projections.

