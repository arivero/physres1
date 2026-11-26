# Heat-Flatness Rigidity of the Shifted Scalar Operator in Three Dimensions

## §1. Problem, operator and conventions

The constant-curvature examples elsewhere in this repository show that the scalar
operator

\[
P=-\Delta_g+\frac R6
\]

has vanishing positive-order heat coefficients on \(S^3\), on its smooth
quotients and on flat three-manifolds. Two questions were left open: whether
compact hyperbolic quotients share the property, and whether constant
sectional curvature is also *necessary*. This notebook answers both for every
smooth closed three-manifold and then separates local heat-flatness from
positivity of the spectrum.

**Hypotheses.** \((M^3,g)\) is \(C^\infty\), compact, connected and without
boundary. \(\Delta_g=\mathrm{div}_g\,\mathrm{grad}_g\), so \(-\Delta_g\ge0\).
Curvature signs are fixed by \(R=6k\) on a three-dimensional space form of
sectional curvature \(k\).

**Operator.** The theorem concerns the shifted operator \(P\) above, or its
unitarily equivalent half-density representative \(UPU^{-1}\) with
\(U=|g|^{1/4}\). Conjugation by \(U\) alone, \(U(-\Delta_g)U^{-1}\), is
isospectral to \(-\Delta_g\) and has \(a_1=R/6\); the manuscript records this in
Remark D9.1p. The flat-coefficient statement on \(S^3\) in Remark D9.1q refers
to \(-\Delta_{S^3}+R/6\), which is the operator \(P\) used here. All statements
below concern \(P\).

**Terminology.** \(R/6\) is the conformal coupling \(\xi=1/6\) of a scalar on
the four-dimensional ultrastatic spacetime \(\mathbb R\times M^3\). The
conformal Laplacian intrinsic to a three-manifold is \(-\Delta_g+R/8\). The
results here assume nothing about spacetime dimension and select no dimension.

**Indexing.** Define \(a_j(x;P)\) and \(A_j(P)\) by

\[
K_P(t;x,x)\sim(4\pi t)^{-3/2}\sum_{j\ge0}a_j(x;P)\,t^j,\qquad
A_j(P)=\int_M a_j(x;P)\,d\mathrm{vol}_g ,
\]

so that \(\mathrm{Tr}\,e^{-tP}\sim(4\pi t)^{-3/2}\sum_jA_j(P)t^j\) and
\(A_0=\mathrm{Vol}(M)\). The index \(j=2\) labels the coefficient of \(t^2\)
after the factor \((4\pi t)^{-3/2}\) is extracted. In Vassilevich's indexing
(hep-th/0306138) the same quantity is \(a_4(1,P)\), which also carries the
factor \((4\pi)^{-3/2}\).

**Heat-flat** means \(a_j(x;P)=0\) for every \(j\ge1\). The finite-\(t\) heat
kernel can still differ from the Euclidean one by exponentially small,
topology-dependent terms.

**Sign convention for \(E\).** Vassilevich writes a Laplace-type operator as
\(-(\Delta_g+E)\). For \(P\) this gives \(E=-R/6\). Some earlier repository
text uses the opposite sign and writes \(E=+R/6\) for the potential added to
\(-\Delta_g\); the two conventions describe the same operator \(P\).

## §2. The positive-square identity

For a scalar Laplace-type operator without bundle curvature, Vassilevich
Eqs. (4.27)–(4.28) give

\[
a_1=E+\frac R6,
\]
\[
a_2=\frac1{360}\Big(60\Delta E+60RE+180E^2+12\Delta R+5R^2
-2|\mathrm{Ric}|^2+2|\mathrm{Riem}|^2\Big).
\]

Substitute \(E=-R/6\):

- \(a_1=0\) identically.
- The \(R^2\) terms are \(60R(-R/6)+180R^2/36+5R^2=-10R^2+5R^2+5R^2=0\).
- The Laplacian terms are \(60\Delta(-R/6)+12\Delta R=2\Delta R\).

Hence, with no assumption on the curvature,

\[
a_2(x;P)=\frac{|\mathrm{Riem}|^2-|\mathrm{Ric}|^2+\Delta_gR}{180}.
\]

**Three-dimensional curvature identity.** In dimension three the Weyl tensor
vanishes identically, so the Riemann tensor is the Kulkarni–Nomizu product of
the Schouten tensor \(S=\mathrm{Ric}-\tfrac R4g\) with \(g\):

\[
R_{ijkl}=g_{ik}S_{jl}+g_{jl}S_{ik}-g_{il}S_{jk}-g_{jk}S_{il}.
\]

For any symmetric \(h\) in dimension \(n\), \(|h\owedge g|^2=4(n-2)|h|^2+4(\mathrm{tr}\,h)^2\).
At \(n=3\), \(\mathrm{tr}\,S=R/4\) and \(|S|^2=|\mathrm{Ric}|^2-\tfrac{5}{16}R^2\), so

\[
|\mathrm{Riem}|^2=4|S|^2+4(\mathrm{tr}S)^2=4|\mathrm{Ric}|^2-R^2 .
\]

Write \(\mathrm{Ric}_0=\mathrm{Ric}-\tfrac R3g\), so
\(|\mathrm{Ric}|^2=|\mathrm{Ric}_0|^2+R^2/3\). Then
\(|\mathrm{Riem}|^2-|\mathrm{Ric}|^2=3|\mathrm{Ric}|^2-R^2=3|\mathrm{Ric}_0|^2\), and

\[
\boxed{\;a_2(x;P)=\frac{|\mathrm{Ric}_0|^2}{60}+\frac{\Delta_gR}{180}\;}
\]

pointwise. The term \(\Delta_gR/180\) is retained until integration; the
pointwise density can change sign where \(\Delta_gR<0\). On a closed manifold
\(\int_M\Delta_gR\,d\mathrm{vol}_g=0\), so

\[
\boxed{\;A_2(P)=\frac1{60}\int_M|\mathrm{Ric}_0|^2\,d\mathrm{vol}_g\;\ge0.\;}
\]

The derivation allows variable scalar curvature, any sign of \(R\), and any
coordinates.

## §3. Rigidity: \(A_2(P)=0\) forces constant sectional curvature

Assume \(A_2(P)=0\). The integrand is continuous and nonnegative, so
\(\mathrm{Ric}_0\equiv0\), that is \(\mathrm{Ric}=\tfrac R3g\) on \(M\). At this
point \(R\) is still an arbitrary smooth function.

The contracted Bianchi identity \(\nabla^iR_{ij}=\tfrac12\nabla_jR\) applied to
\(\mathrm{Ric}=\tfrac R3g\) gives \(\tfrac13\nabla_jR=\tfrac12\nabla_jR\), so
\(dR=0\). Since \(M\) is connected, \(R\) is constant. (This is the
three-dimensional case of Schur's lemma for Einstein metrics.)

With \(\mathrm{Ric}=\tfrac R3g\) the Schouten tensor is
\(S=\tfrac R{12}g\), and the Kulkarni–Nomizu formula of §2 gives

\[
R_{ijkl}=\frac R6\big(g_{ik}g_{jl}-g_{il}g_{jk}\big).
\]

Thus \(g\) has constant sectional curvature \(k=R/6\).

If every \(A_j(P)\) with \(j\ge1\) vanishes, then in particular \(A_2(P)=0\),
and the same conclusion follows. The integrated all-orders hypothesis is
therefore already sufficient.

## §4. The converse on each curvature branch

On a space form of sectional curvature \(k\), \(R/6=k\) is constant and

\[
e^{-tP}=e^{-kt}\,e^{t\Delta_g}.
\]

**Hyperbolic branch, \(k=-a^{-2}\).** On \(H^3_a\), with geodesic distance
\(r\), the heat kernel of \(\Delta\) is

\[
K_{-\Delta}(t;r)=(4\pi t)^{-3/2}\,e^{-t/a^2-r^2/(4t)}\,\frac{r/a}{\sinh(r/a)},
\]

the scaled form of Debiard–Gaveau, *Canad. J. Math.* 39 (1987), Eq. (7.20).
The factor \(e^{-kt}=e^{+t/a^2}\) cancels the exponential \(e^{-t/a^2}\)
exactly, and at coincidence \(r\to0\),

\[
K_P(t;x,x)=(4\pi t)^{-3/2}\qquad\text{for all }t>0 .
\]

All \(a_j(x;P)\) with \(j\ge1\) vanish on \(H^3_a\). Independently, at \(a=1\)
the radial Laplacian is \(\partial_r^2+2\coth r\,\partial_r\); if
\(v=(4\pi t)^{-3/2}e^{-r^2/4t}\) solves the Euclidean heat equation, the
function \(u=e^{-t}(r/\sinh r)\,v\) solves \(\partial_tu=\Delta_Hu\) and has
Gaussian short-distance normalisation, which reproduces the kernel. Scaling
restores \(a\).

**Flat branch, \(k=0\).** \(P=-\Delta\) and the Euclidean kernel has only
\(a_0=1\).

**Spherical branch, \(k=a^{-2}\).** On \(S^3_a\) the eigenvalues of
\(-\Delta\) are \(l(l+2)/a^2\) with multiplicity \((l+1)^2\). Adding
\(1/a^2\) gives eigenvalues \(n^2/a^2\) with multiplicity \(n^2\),
\(n=l+1\ge1\). With \(\tau=t/a^2\),

\[
\mathrm{Tr}\,e^{-tP}=\sum_{n\ge1}n^2e^{-\tau n^2}
=\frac12\sum_{n\in\mathbb Z}n^2e^{-\tau n^2}
=-\frac12\frac{d}{d\tau}\Big[\sqrt{\frac\pi\tau}\sum_{q\in\mathbb Z}e^{-\pi^2q^2/\tau}\Big].
\]

The \(q=0\) term is \(\sqrt\pi/(4\tau^{3/2})=\mathrm{Vol}(S^3_a)/(4\pi t)^{3/2}\),
since \(\mathrm{Vol}(S^3_a)=2\pi^2a^3\). Every \(q\ne0\) term is
\(O(\tau^{-5/2}e^{-\pi^2/\tau})\). Homogeneity makes the diagonal kernel
constant, so \(a_j(x;P)=0\) for every \(j\ge1\).

**Descent to compact quotients.** Every compact space form is
\(\Gamma\backslash\widetilde M\), with \(\widetilde M\in\{S^3_a,\mathbb R^3,H^3_a\}\)
and \(\Gamma\) a discrete group of isometries acting freely. The
densities \(a_j(x;P)\) are universal polynomials in the jets of the metric at
\(x\), so a local isometry preserves them. Concretely, the quotient kernel is
\(\sum_{\gamma\in\Gamma}K_{\widetilde M}(t;\tilde x,\gamma\tilde x)\); the
identity term gives the cover's coefficients and every other term is
\(O(e^{-d(\tilde x,\gamma\tilde x)^2/(4t)})\) with
\(d(\tilde x,\gamma\tilde x)\) bounded below by twice the injectivity radius
of the quotient. All
compact space forms are therefore heat-flat for \(P\). The hyperbolic case
uses the explicit kernel and requires no continuation of a spherical Bernoulli
formula.

**Theorem.** For a smooth closed connected Riemannian three-manifold,

\[
\boxed{A_2(P)=0\iff g\ \text{has constant sectional curvature}\iff
a_j(x;P)=0\ \text{for all}\ j\ge1\ \text{and all}\ x.}
\]

The ingredients (Gilkey–Vassilevich coefficients, vanishing Weyl tensor in
three dimensions, Schur's lemma, explicit space-form kernels) are standard.
The repository's earlier treatment had the forward direction under a
constant-curvature hypothesis; the positive-square identity supplies the
converse and the hyperbolic case.

## §5. Local heat-flatness and spectral positivity are separate conditions

On a closed connected manifold, the constant function is the ground state of
\(-\Delta_g\) with eigenvalue \(0\). On a space form \(R/6=k\) is constant, so

\[
\boxed{\lambda_{\min}(P)=k.}
\]

| Space-form branch | \(a_{j\ge1}(x;P)\) | \(\lambda_{\min}(P)\) | Ultrastatic massless scalar |
|---|---|---|---|
| Spherical, \(k>0\) (e.g. \(S^3\), \(\mathbb{RP}^3\), lens spaces) | all zero | \(k>0\) | strictly positive spatial operator |
| Flat, \(k=0\) (e.g. \(T^3\)) | all zero | \(0\) | constant zero mode |
| Compact hyperbolic, \(k<0\) | all zero | \(k<0\) | exponentially growing constant mode |

For \(\partial_t^2\phi+c^2P\phi=0\) the constant mode obeys
\(\ddot\phi=-c^2k\,\phi\); on the hyperbolic branch it grows as
\(e^{c\sqrt{-k}\,t}\). Cancellation of every positive-order local heat
coefficient therefore leaves the infrared stability of the vacuum undecided.
Within the stated model,

\[
\text{heat-flatness of }P\ \text{and}\ P>0\iff M\ \text{is a spherical space form}.
\]

Strict positivity selects the whole class of spherical space forms
\(S^3/\Gamma\), with \(S^3\) as one member. For a spherical quotient the
constant function is \(\Gamma\)-invariant, so \(\lambda_{\min}(P)=1/a^2\)
persists.

**Spherical quotient example, \(\mathbb{RP}^3=S^3_a/\{\pm1\}\).** Antipodal
invariance keeps the harmonic polynomials of even degree \(l\), so the spectrum
of \(P\) is \(n^2/a^2\) with \(n\) odd and multiplicity \(n^2\). Poisson
summation gives

\[
\mathrm{Tr}\,e^{-tP}=\frac{\mathrm{Vol}(S^3_a)/2}{(4\pi t)^{3/2}}
+O\!\big(\tau^{-5/2}e^{-\pi^2/(4\tau)}\big).
\]

The local coefficients coincide with those of \(S^3\); the remainder now
decays as \(e^{-(\pi a)^2/(4t)}\), set by the closed geodesic of length
\(\pi a\). Different spherical quotients are thus distinguished by global
spectral data and exponentially small heat-trace terms. Local heat-flatness
determines the local geometry and, with positivity, the curvature branch. The
topology inside the branch and the finite vacuum energy require other
observables. The interpretation applies to an ultrastatic spacetime
\(\mathbb R\times M^3\) and makes no claim about time-dependent de Sitter
vacua.

## §6. Toy model with Ricci anisotropy: \(S^2_a\times S^1_b\)

Take the product of a round sphere of radius \(a\) with a circle of
circumference \(2\pi b\). The Ricci eigenvalues are \((a^{-2},a^{-2},0)\), so
\(R=2/a^2\) is constant while

\[
|\mathrm{Ric}_0|^2=\frac{2}{3a^4},\qquad \mathrm{Vol}=8\pi^2a^2b .
\]

The identity of §2 predicts

\[
a_2(x;P)=\frac{1}{90a^4},\qquad A_2(P)=\frac{4\pi^2b}{45a^2}>0 .
\]

**Independent spectral route.** The heat trace of \(-\Delta\) on the unit
\(S^2\) is \(\sum_l(2l+1)e^{-tl(l+1)}=t^{-1}\big(1+\tfrac t3+\tfrac{t^2}{15}+\tfrac{4t^3}{315}+\dots\big)\),
so the local coefficients of \(S^2_a\) are \(1,\ \tfrac1{3a^2},\ \tfrac1{15a^4}\).
The circle contributes only \(a_0\). The shift \(R/6=1/(3a^2)\) multiplies by
\(e^{-t/(3a^2)}=1-\tfrac t{3a^2}+\tfrac{t^2}{18a^4}-\dots\). The \(t^2\)
coefficient of the product is

\[
\frac1{15a^4}-\frac1{9a^4}+\frac1{18a^4}=\frac{6-10+5}{90a^4}=\frac1{90a^4},
\]

in agreement with the curvature formula. Constant scalar curvature therefore
leaves \(A_2(P)>0\); the obstruction measures the Ricci anisotropy, and it is
coordinate-independent.

## §7. Verification and scope

The script `scripts/check_heat_flatness_3d.py` (Python, SymPy and mpmath)
checks:

1. On an explicit non-diagonal metric with non-constant scalar curvature, at
   two rational points and in exact arithmetic, \(|\mathrm{Riem}|^2=4|\mathrm{Ric}|^2-R^2\)
   and the equality of Vassilevich's \(a_2\) at \(E=-R/6\) with
   \(|\mathrm{Ric}_0|^2/60+\Delta R/180\).
2. The \(H^3\) kernel ansatz solves the radial heat equation, and
   \(e^{t}K(t;x,x)=(4\pi t)^{-3/2}\) exactly.
3. The \(S^3\) and \(\mathbb{RP}^3\) heat traces of \(P\) at
   \(\tau=0.5,0.2,0.1\): the remainders after the volume term are below
   \(10\pi^2\tau^{-5/2}e^{-\pi^2/\tau}\) and
   \(10\pi^2\tau^{-5/2}e^{-\pi^2/(4\tau)}\) respectively (at \(\tau=0.1\):
   \(-7.3\times10^{-40}\) and \(1.3\times10^{-8}\)).
4. The first four \(S^2\) coefficients \(1,1/3,1/15,4/315\) from a fit to the
   eigenvalue sum, and \(a_2(P)=1/(90a^4)\), \(A_2=4\pi^2b/(45a^2)\) on
   \(S^2\times S^1\).

**Scope.** The rigidity statement is proved for the scalar operator
\(-\Delta_g+R/6\) on smooth closed connected three-manifolds. Other
dimensions, manifolds with boundary, orbifolds, nontrivial gauge or bundle
curvature, arbitrary potentials and other curvature couplings (including the
three-dimensional conformal value \(R/8\)) each need a separate calculation.
Local heat-flatness determines neither the global topology within a branch, nor
a spacetime dimension, nor the finite vacuum energy.
