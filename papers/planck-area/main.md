# Planck Area from Half-Density Normalization (Draft)

## Abstract
Half-densities are the natural “coordinate-free integrands” for composing kernels without choosing a background measure. But choosing a *universal* convention for turning half-density objects into dimensionless numerical amplitudes introduces a \(\text{length}^{d/2}\) scale. In \(d=4\), this is an *area*. This note sharpens the hypothesis ladder needed for the claim “half-density normalization selects a universal area scale”, and isolates a simple dimension-matching condition under which the Planck area appears without fractional powers of couplings. A gravitational anchor based on a minimal-areal-speed principle is recorded as a separate heuristic thread [RiveroAreal] [RiveroSimple].

Minimal claim (proved under stated hypotheses): half-density composition is intrinsic, but any scalar “amplitude function” representation requires extra scalarization structure, and if that scalar representative is demanded dimensionless then a \(\text{length}^{d/2}\) constant is unavoidable. Conjectural claim (additional universality hypotheses): the scalarization constant is fixed by universal couplings and becomes a universal area scale in \(D=4\).

## 1. Purpose and Status
This is a dependent follow-up to `paper/main.md`. It is not yet a finished paper; its goal is to isolate one technical point that is only implicit in the main manuscript:
the role of half-densities (and their scaling) in making composition laws coordinate-invariant *and* dimensionally well-defined.

Claims below are labeled as `Proposition` (math-precise under hypotheses) or `Heuristic` (programmatic bridge).

**Notation (dimensions).**
The half-density weight \(\text{length}^{d/2}\) uses the dimension of the manifold being integrated over in the composition law (the “composition variable” dimension). In nonrelativistic time-slicing this is typically spatial dimension; in covariant/field-theory settings it is spacetime dimension. In the gravity-only sieve (Derivation D1.3), read \(d\) as the spacetime dimension \(D\) if that avoids confusion: the “\(D=4\Rightarrow\) area” conclusion is about spacetime \(D=4\), not a claim that *spatial* \(d=4\) is privileged.

## 2. Half-Densities and Composition Kernels
Let \(M\) be a \(d\)-dimensional manifold. A (positive) density is a section of \(|\Lambda^d T^\ast M|\), and a half-density is a section of \(|\Lambda^d T^\ast M|^{1/2}\).

The key operational point is:
when a kernel is a half-density in its integration variable, composition of kernels does not depend on an arbitrary choice of coordinate measure.

`Heuristic H1.1 (Why half-densities).`
If \(K_1(x,y)\) and \(K_2(y,z)\) are chosen so that their product in the intermediate variable \(y\) is a density, then
\(\int_M K_1(x,y)K_2(y,z)\) is coordinate-invariant without fixing a preferred \(dy\).
This matches the structural role of kernel composition used in `paper/main.md` (Section 6).

`Derivation D1.1 (Coordinate invariance of half-density pairing and composition).`
In a local chart \(y=(y^1,\ldots,y^d)\), write a half-density as \(\psi(y)=\varphi(y)\,|dy|^{1/2}\).
Under a change of variables \(y=y(y')\), one has \(|dy|^{1/2}=|\det(\partial y/\partial y')|^{1/2}|dy'|^{1/2}\), so the coefficient transforms as
\(\varphi'(y')=\varphi(y(y'))\,|\det(\partial y/\partial y')|^{1/2}\).

Hence the product of two half-densities is a density:
\(\psi_1\psi_2=(\varphi_1\varphi_2)\,|dy|\),
and its integral is chart-independent:
\(\int_M \psi_1\psi_2\) is well-defined without choosing a background measure beyond the density bundle itself.

Kernel composition is the same mechanism: if \(K_1(x,y)\) and \(K_2(y,z)\) are half-densities in \(y\), then \(K_1K_2\) is a density in \(y\) and \(\int_M K_1K_2\) is coordinate invariant.

## 3. Dimensional Analysis: Normalizing a Half-Density Requires a Scale
A density on \(M\) carries the units of \(\text{length}^d\) once physical units are assigned to coordinates. A half-density therefore carries units \(\text{length}^{d/2}\).

`Proposition P1.1 (No canonical “half-density = function” identification).`
There is no canonical identification of a half-density \(\psi\in|\Lambda^d T^\ast M|^{1/2}\) with an ordinary scalar function \(f\) on \(M\). Choosing such an identification is equivalent to choosing a nowhere-vanishing reference half-density \(\sigma_\ast\) (equivalently a positive density \(\rho_\ast=\sigma_\ast^2\)) and writing
\(\psi=f\,\sigma_\ast\).

`Derivation D1.2 (Dilation makes the \(\text{length}^{d/2}\) weight explicit).`
On \(\mathbb R^d\), consider a dilation \(y\mapsto y'=a y\) with \(a>0\).
Then \(|dy'|=a^d|dy|\), so \(|dy'|^{1/2}=a^{d/2}|dy|^{1/2}\).
Thus even in flat space, half-densities carry an inherent \(\text{length}^{d/2}\) scaling weight.

`Derivation D1.2a (Near-diagonal scaling forces the square-root Jacobian \(\varepsilon^{-d/2}\)).`
On \(M=\mathbb R^d\), introduce near-diagonal coordinates \(y=x+\varepsilon v\) with \(\varepsilon>0\). Then
\(dy=\varepsilon^d\,dv\), hence \(|dy|^{1/2}=\varepsilon^{d/2}|dv|^{1/2}\).
For a bi-half-density kernel written locally as
\[
K_\varepsilon(x,y)=k_\varepsilon(x,y)\,|dx|^{1/2}|dy|^{1/2},
\]
its pullback to \((x,v)\) variables becomes
\[
K_\varepsilon(x,x+\varepsilon v)
=\big(\varepsilon^{d/2}k_\varepsilon(x,x+\varepsilon v)\big)\,|dx|^{1/2}|dv|^{1/2}.
\]
Thus, any attempt to define a nontrivial “\(\varepsilon\to0\)” near-diagonal limit of kernels (the scaling step that tangent-groupoid quantization packages) inevitably produces an \(\varepsilon^{d/2}\) factor from the half-density Jacobian, and the corresponding scalar representative must be renormalized by \(\varepsilon^{-d/2}\) to stay finite. This is the same exponent as in the finite-dimensional “square-root delta” normalization: the half-density is the square root of the density Jacobian.

`Proposition P1.2 (Universal *dimensionless* amplitudes force a \(\text{length}^{d/2}\) constant).`
If one imposes the extra requirement that the scalar representative \(f\) in \(\psi=f\,\sigma_\ast\) be dimensionless in physical units, then the reference half-density \(\sigma_\ast\) must carry all of the \(\text{length}^{d/2}\) dimension. In particular, a *constant* (field-independent) choice of \(\sigma_\ast\) is equivalent to choosing a universal \(\text{length}^{d/2}\) scale.

In \(d=4\), this universal \(\text{length}^{d/2}\) scale is a universal *area* scale.

`Heuristic H1.2 (Reciprocity claim).`
Half-densities alone do not force a particular scale: the forced fact is that converting half-density objects into scalar numerical amplitudes requires extra structure (a reference half-density).
The “universal area scale” claim begins only after adding two further hypotheses:
1. the reference \(\sigma_\ast\) is taken to be *constant* (no dependence on background metric/fields), and
2. the constant is required to be fixed by universal constants/couplings of the theory.

Under these hypotheses, \(d=4\) is the unique dimension in which the needed \(\text{length}^{d/2}\) constant can be supplied by the gravitational coupling without fractional powers (Derivation D1.3).

`Derivation D1.3 (Gravity-only sieve: why \(d=4\) is singled out if only \(G_d\) is used).`
In \(d\) spacetime dimensions, the Einstein--Hilbert action
\(\frac{1}{16\pi G_d}\int d^d x\,\sqrt{|g|}\,R\)
shows that (in \(c=\hbar=1\) units) Newton’s constant has dimension
\([G_d]=\text{length}^{d-2}\).
Assume the only available dimensionful coupling used to build the universal normalization constant is \(G_d\) itself (no cosmological constant, no additional dimensionful scales), and impose H2.5 in the literal “no fractional powers of \(G_d\)” sense. Then the normalization constant has dimension \(\text{length}^{k(d-2)}\) for some integer \(k\). Matching \(\text{length}^{d/2}\) forces
\(\text{length}^{d/2}=\text{length}^{d-2}\),
which holds if and only if \(d=4\).
In that case \(G_4\) itself has dimension of area, and the corresponding area scale is the Planck area \(L_P^2\sim \hbar G_4/c^3\).

### 3.1 Hypotheses as Separate Knobs (What Is Forced vs Chosen)
The discussion above mixes three different kinds of statements:
1. **Geometric facts** (what half-densities are, how they compose, how they scale),
2. **Representational choices** (how one turns half-density objects into scalar numbers),
3. **Universality/selection principles** (what choices are allowed if we demand “background-free” and “built from couplings”).

To study these separately, it is useful to keep the hypotheses explicit.

`Hypothesis H2.1 (Half-density formulation).`
Quantum kernels are treated as bi-half-densities so that composition in intermediate variables is coordinate invariant (Section 2 and Derivation D1.4).

`Hypothesis H2.2 (Scalarization by a reference half-density).`
To interpret half-density amplitudes as scalar numerical functions, we pick a nowhere-vanishing reference half-density \(\sigma_\ast\) and write \(\psi=f\,\sigma_\ast\) (Proposition P1.1).

`Hypothesis H2.3 (Dimensionless scalar representative).`
The scalar representative \(f\) is required to be dimensionless in physical units (Proposition P1.2). This forces \(\sigma_\ast\) to carry the full \(\text{length}^{d/2}\) weight.

`Hypothesis H2.4 (Background-free constancy).`
The reference \(\sigma_\ast\) is taken to be constant/field-independent, rather than determined by background geometry (e.g. a Riemannian volume \(|g|^{1/4}|dx|^{1/2}\)) or by dynamical fields (e.g. a dilaton-like factor). This is the first point where a *universal constant* enters.

`Hypothesis H2.5 (Analyticity / no fractional powers of couplings).`
If the universal constant is required to be built from the theory’s couplings without fractional powers, then dimensional analysis becomes a *dimension sieve* rather than a tautology. This hypothesis has at least two distinct readings:
1. **Integrality (integer-exponent) reading:** the constant is a monomial in the available couplings with integer exponents (possibly allowing negative powers). Equivalently, dimension-matching becomes an integer (Diophantine) constraint on the exponents.
2. **Perturbative analyticity reading (stronger):** the constant admits a Taylor expansion around a specified weak-coupling limit, so only nonnegative integer powers appear.

To keep the branches explicit, we will refer to these as:
- `Hypothesis H2.5a (Integrality / monomial sieve).` The normalization constant is a monomial in admitted couplings with integer exponents.
- `Hypothesis H2.5b (Perturbative analyticity sieve).` The dependence is analytic at a specified weak-coupling point (hence forbids negative powers and other non-analytic dependence).

`Heuristic H2.5b1 (Analyticity for dimensionful couplings needs a reference scale).`
If a coupling \(g_i\) is dimensionful, “weak coupling” is only meaningful after choosing a reference scale \(\mu\) and forming a dimensionless parameter \(\hat g_i(\mu):=\mu^{-a_i}g_i\) (where \([g_i]=\text{length}^{a_i}\)). In that sense, perturbative analyticity is naturally analyticity in \(\hat g_i(\mu)\) near \(\hat g_i=0\).
Demanding at the same time that the scalarization constant be a \(\mu\)-independent universal constant pushes one back to either:
1. an engineering-dimension monomial in admitted dimensionful couplings with nonnegative integer exponents (the sieve branch), or
2. a non-analytic RG-invariant transmutation scale (outside H2.5b).

Separately, the RG “dimensional transmutation” mechanism (Heuristic H2.13 / Derivation D1.6a) supplies a scale *outside* both H2.5a and H2.5b: it is typically non-analytic in the coupling.

Derivation D1.3 is the simplest gravity-only instance under the integrality reading: “use \(G_d\) without fractional powers” singles out \(d=4\).

`Heuristic H2.6 (Where “special dimensions” can appear).`
Special dimensions do not come from half-densities alone (Hypothesis H2.1). They appear only after adding a selection principle like H2.4–H2.5: the requirement that the scalarization choice be universal, background-free, and coupling-built in a restricted (e.g. analytic) way.

### 3.2 What Changes When a Hypothesis Is Relaxed?
This subsection records the main “branches” that need separate study.

1. **Drop H2.3 (allow dimensionful \(f\)).**
   Then no universal \(\text{length}^{d/2}\) constant is forced; the dimensional weight can be carried by the scalar representative itself (as in the usual statement “wavefunctions have dimension \(\text{length}^{-d/2}\)”).
2. **Drop H2.4 (allow background geometry).**
   Then \(\sigma_\ast\) can be chosen from a metric (or other structure), and the “universal constant” is replaced by background-dependent normalization.
3. **Drop H2.5a/H2.5b (allow fractional powers or other non-analytic dependence).**
   Then in any \(d>2\) one can build a \(\text{length}^{d/2}\) constant from gravity via \(G_d^{\,d/(2(d-2))}\) (in \(c=\hbar=1\) units), so \(d=4\) is no longer singled out; instead, \(d=4\) is simply the unique case where the exponent is an integer.
4. **Change “which coupling supplies the scale”.**
   Using other dimensionful couplings (cosmological constant, string tension, gauge couplings in various dimensions, etc.) yields different “special-dimension” sieves. This is conceptually aligned with the observation that some dimensions are singled out by other structures (division algebras, special holonomy, supersymmetry), but those filters are separate from the half-density story and should not be conflated.
5. **Replace H2.5 by transmutation (RG as the scale supplier).**
   If one allows RG-invariant scales generated by compatibility (dimensional transmutation), then even dimensionless couplings can supply a physical length scale (Heuristic H2.13 / Derivation D1.6a). This branch does not “sieve dimensions” in the same way as H2.5a/H2.5b; it supplies a scale by non-analytic RG invariants rather than by monomials in couplings.

**Branch summary (keep the knobs separate).**
There are three distinct “scale supplier” mechanisms in play:
1. **Monomial sieve** (H2.5a/H2.5b): build the needed \(\text{length}^{d/2}\) constant from admitted couplings using restricted (e.g. analytic) dependence.
2. **Fractional/non-analytic coupling dependence:** allow fractional powers or other non-analytic dependence directly in couplings (dimensional analysis becomes permissive; the \(d=4\) sieve disappears).
3. **Dimensional transmutation:** generate a scale from RG compatibility (Derivation D1.6a / Example E5), which is typically non-analytic in naive coupling expansions.

### 3.3 Starting with H2.5a: Integrality as a Dimension Sieve
The point of H2.5a/H2.5b is not that dimensional analysis alone selects a unique scale (it does not), but that *restricting allowed functional dependence on couplings* can turn dimensional analysis into a selection principle.

`Derivation D1.6 (H2.5a: integer-exponent form of “no fractional powers”).`
Work in \(c=\hbar=1\) units for dimension counting. Let the available couplings \(\{g_i\}\) have length dimensions
\([g_i]=\text{length}^{a_i}\).
Under the integrality reading of H2.5, the universal normalization constant is a monomial
\(C=\prod_i g_i^{n_i}\)
with integers \(n_i\). Its length dimension is
\([C]=\text{length}^{\sum_i n_i a_i}\).
Requiring \([C]=\text{length}^{d/2}\) is therefore the integer-exponent (Diophantine) condition

$$
\sum_i n_i a_i=\frac{d}{2}.
$$

Existence (and non-uniqueness) of solutions depends on:
1. which couplings are admitted as “universal” inputs, and
2. whether one allows negative exponents (non-analytic at zero coupling) or insists on perturbative analyticity (nonnegative exponents).

`Heuristic H2.7 (Why H2.5 needs a “what counts as a coupling” rule).`
If one allows arbitrary redefinitions of couplings (e.g. adjoining a new symbol \(\tilde G = G_d^{1/(d-2)}\)), then “no fractional powers” becomes vacuous: the forbidden root has simply been renamed as an allowed coupling. H2.5 is meaningful only together with a prior criterion for admissible coupling dependence (e.g. perturbative analyticity around a distinguished limit such as \(G_d\to0\)).

`Example E1 (Gravity-only).`
With only \(G_d\) available, \(a_1=d-2\) and the condition becomes \(n(d-2)=d/2\). For integer \(d\ge 3\), this has a solution only at \(d=4\) with \(n=1\), reproducing Derivation D1.3.

`Example E2 (Gravity + cosmological constant).`
If one also allows the cosmological constant \(\Lambda_d\) with \([\Lambda_d]=\text{length}^{-2}\), then the condition becomes
\(n(d-2)-2m=d/2\) for integers \(n,m\).
A simple family of solutions exists for \(d\) divisible by \(4\): take \(n=1\) and \(m=d/4-1\), so

$$
C \sim G_d\,\Lambda_d^{\,d/4-1},
$$

has dimension \(\text{length}^{d/2}\).
Thus, even under H2.5, \(d=4\) is not automatically unique once additional dimensionful couplings are admitted; what is special about \(d=4\) in this family is that it is the only case with \(m=0\) (no need to involve \(\Lambda_d\)).

`Example E3 (Yang--Mills coupling as an alternative sieve).`
In \(d\) spacetime dimensions, the Yang--Mills action is typically written as
\(\frac{1}{4g_d^2}\int d^d x\,F_{\mu\nu}F^{\mu\nu}\),
so \([g_d^2]=\text{length}^{d-4}\) (equivalently \([g_d]=\text{length}^{(d-4)/2}\)).
If we (hypothetically) allow the half-density normalization constant to be a pure monomial in \(g_d\),
\(C\sim g_d^{\,p}\) with integer \(p\ge 0\),
then
\[
[C]=\text{length}^{p(d-4)/2}.
\]
Matching \([C]=\text{length}^{d/2}\) gives the integer-exponent condition
\[
p(d-4)=d
\quad\Longrightarrow\quad
d=\frac{4p}{p-1}=4+\frac{4}{p-1}.
\]
Thus integer solutions occur only when \(p-1\mid 4\), i.e. \(p\in\{2,3,5\}\), giving \(d\in\{8,6,5\}\) respectively.

In particular, in \(d=4\) the gauge coupling is dimensionless and cannot by itself supply the \(\text{length}^{d/2}\) factor needed for half-density scalarization; in that case the scale must come from another dimensionful coupling (e.g. gravity) or from a non-analytic mechanism (dimensional transmutation).

`Example E4 (String tension / \(\alpha'\) as a source of a universal area scale).`
In perturbative string theory a fundamental length scale \(l_s\) is built in from the start; equivalently one has a parameter \(\alpha'=l_s^2\) with dimension \(\text{length}^2\) (string tension \(T\sim 1/\alpha'\)).
If one allows the half-density normalization constant to be built from \(\alpha'\) alone as a monomial \(C\sim (\alpha')^n\) with integer \(n\), then
\[
[C]=\text{length}^{2n},
\]
and matching \([C]=\text{length}^{d/2}\) forces \(2n=d/2\), i.e. \(d=4n\).
So \(\alpha'\) provides a “background-free” source of scale but does not single out \(d=4\) on its own; it selects dimensions divisible by \(4\) under the strict integrality reading of H2.5.
In \(d=4\) it yields directly an area scale \(C\sim \alpha'\).

`Heuristic H2.12 (Link to gravity/Planck length in a UV completion).`
The gravity-only sieve (Derivation D1.3) uses \(G_d\) as the unique universal coupling supplying dimension. In a stringy UV completion, \(G_d\) is not independent: it is generated by the string sector and depends on \(\alpha'\) and a dimensionless coupling (e.g. the string coupling \(g_s\)), and in compactified settings also on compactification volumes. At the level of scaling, one expects
\[
G_d \propto g_s^2\,(\alpha')^{(d-2)/2}\times(\text{volume factors}),
\]
so the Planck length/area is *derived* from \(\alpha'\) and \(g_s\) rather than fundamental. In that framing the half-density “universal area scale” could naturally be \(\alpha'\) (or a simple function of it), while the Planck area is recovered as a consequence of how gravity emerges.

`Heuristic H2.8 (What H2.5 is really buying).`
The value of H2.5 is comparative:
it distinguishes dimensions in which the needed \(\text{length}^{d/2}\) factor can be supplied by *simple* coupling dependence (integer powers of the already-present couplings), versus dimensions in which any such factor requires either (i) introducing extra scales/couplings, (ii) taking fractional powers, or (iii) invoking non-analytic mechanisms (dimensional transmutation).

`Heuristic H2.13 (Dimensional transmutation as a scale-supplier).`
If one relaxes H2.5’s “analytic monomial in couplings” requirement, then even a theory with only *dimensionless* couplings can generate a physical length scale through RG invariance: a running coupling \(g(\mu)\) can be traded for an RG-invariant scale \(\kappa_\ast\) (or \(\Lambda\)), typically of the form
\(\kappa_\ast \sim \mu\,\exp(-\mathrm{const}/g(\mu)^2)\) or \(\kappa_\ast \sim \mu\,\exp(-\mathrm{const}/g(\mu))\).
In that branch, the half-density scalarization scale required by H2.4 can be supplied by \(\kappa_\ast^{-d/2}\) (or its square in \(d=4\) as an area scale), but the scale is no longer an analytic monomial in the couplings: it is emergent and non-perturbative in the naive coupling expansion.

`Heuristic H2.14 (Bookkeeping: what “\(d\)” means in \(\text{length}^{d/2}\)).`
The half-density weight \(\text{length}^{d/2}\) refers to the dimension of the manifold whose coordinates are integrated over in the composition law (the intermediate-variable space). In a nonrelativistic time-sliced kernel this is typically the *spatial* dimension, while for covariant/proper-time kernels one may compose over *spacetime* points. The dimension-sieve discussion using \(G_d\) treats \(d\) as the **spacetime** dimension, so any \(d=4\Rightarrow\) “area scale” conclusion should be read in that covariant sense unless stated otherwise.

`Derivation D1.6a (RG-invariant scale from a beta function).`
Let a (dimensionless) running coupling \(g(\mu)\) satisfy an RG equation
\(\mu\,dg/d\mu=\beta(g)\) with \(\beta(g)\neq 0\) in the range of interest.
Then the combination
\[
\Lambda_\ast
\equiv
\mu\exp\!\left(-\int^{g(\mu)} \frac{dg'}{\beta(g')}\right)
\]
is RG-invariant (independent of the subtraction scale \(\mu\)), up to a finite multiplicative constant corresponding to a choice of scheme/normalization of the integral.
In one-loop form \(\beta(g)=-b g^2+O(g^3)\), one obtains the familiar transmutation scale
\(\Lambda_\ast \sim \mu\,e^{-1/(b g(\mu))}\times(\text{scheme factor})\).

If H2.3–H2.4 demand a universal scalarization constant \(C\) with \([C]=\text{length}^{d/2}\), then any RG-invariant inverse length \(\Lambda_\ast\) supplies one by \(C\sim \Lambda_\ast^{-d/2}\). In particular, for \(d=4\) this produces a universal **area** scale \(C\sim \Lambda_\ast^{-2}\), without requiring the scale to be an analytic monomial in couplings (so this branch sits outside H2.5).

`Example E5 (2D delta: transmutation yields a length scale).`
In the \(2\)D delta interaction, the contact coupling is marginal and the renormalized theory is naturally parameterized by an RG-invariant inverse length \(\kappa_\ast\) rather than by the bare coupling. Concretely, one finds (up to conventions) a running coupling \(g_R(\mu)\) with beta function \(\beta(g_R)\propto g_R^2\), and the RG invariant
\[
\kappa_\ast^2
\equiv
\mu^2\exp\!\left(\frac{2\pi\hbar^2}{m}\frac{1}{g_R(\mu)}\right),
\]
so \(\kappa_\ast\) is independent of the subtraction scale \(\mu\) and sets a bound-state/scattering scale [ManuelTarrach1994PertRenQM]. This is a minimal witness that “a scale is forced by compatibility” can occur even without a dimensionful coupling, via renormalization rather than via analytic monomials.

### 3.4 Running H2.3: Is “Dimensionless \(f\)” Physics or Convention?
The half-density formalism (H2.1) gives a canonical pairing \(\int \bar\psi\,\psi\) that does not require choosing a background measure. But when we write \(\psi=f\,\sigma_\ast\) (H2.2), we are choosing a *representation* of the same object as a scalar function with respect to a chosen positive density \(\rho_\ast=\sigma_\ast^2\).

`Proposition P1.3 (Scalarization is a choice of measure, not new physics).`
Choosing a reference half-density \(\sigma_\ast\) identifies the canonical Hilbert space of \(L^2\) half-densities on \(M\) with the scalar Hilbert space \(L^2(M,\rho_\ast)\), where \(\rho_\ast=\sigma_\ast^2\). Different choices \(\sigma_\ast\) yield unitarily equivalent scalar representations.

`Derivation D1.7 (Change of reference half-density acts by multiplication).`
Let \(\sigma_1,\sigma_2\) be nowhere-vanishing half-densities on \(M\) and set \(r:=\sigma_2/\sigma_1\), a positive scalar function. Writing the same half-density state \(\psi\) as
\(\psi=f_1\,\sigma_1=f_2\,\sigma_2\)
gives \(f_2=r^{-1}f_1\). Moreover,
\[
\int_M \bar\psi\,\psi
=\int_M |f_1|^2\,\sigma_1^2
=\int_M |f_2|^2\,\sigma_2^2
=\int_M |f_2|^2\,r^2\,\sigma_1^2,
\]
so the two scalar pictures differ by a compensating change of measure and pointwise multiplication. In particular, if \(\sigma_2=c\,\sigma_1\) is a constant rescaling, then \(f_2=c^{-1}f_1\) is the familiar global wavefunction normalization freedom.

`Heuristic H2.9 (How H2.3 creates a scale).`
In the usual “scalar wavefunction” presentation on \(\mathbb R^d\), one implicitly chooses \(\sigma_\ast=|dx|^{1/2}\) and allows the scalar representative to carry dimension \(\text{length}^{-d/2}\) so that \(|\psi|^2\,d^dx\) is dimensionless probability.
Requiring instead that the scalar representative \(f\) be dimensionless (H2.3) shifts the \(\text{length}^{-d/2}\) factor into the reference half-density:
\[
\sigma_\ast \sim L_\ast^{-d/2}|dx|^{1/2},
\]
so “dimensionless \(f\)” is a convention unless the scale \(L_\ast^{d/2}\) is fixed by an additional universality principle (H2.4–H2.5).

### 3.5 Running H2.4: What Does “Background-Free Constancy” Mean?
From Derivation D1.7, changing the reference half-density \(\sigma_\ast\) by a positive function \(r(x)\) changes the scalar representative by \(f\mapsto r^{-1}f\) and changes the scalar measure by \(\rho_\ast\mapsto r^2\rho_\ast\). So the raw half-density formulation has a large “scalarization gauge freedom”.

`Heuristic H2.10 (Constancy = no extra background function).`
If we take “background-free” in the strong sense “no additional structure beyond the manifold and the theory’s couplings”, then allowing an arbitrary non-constant \(r(x)\) would amount to introducing a new background field/function by hand. In that strong sense, the only admissible changes are constant rescalings, and choosing \(\sigma_\ast\) becomes a choice of a single global scale (fixed or not fixed by couplings depending on H2.5).

`Derivation D1.8 (Three natural families of \(\sigma_\ast\) and what they mean).`
On a configuration space \(M\), the common ways to choose a reference half-density are:
1. **Flat/affine choice (when available):** on \(\mathbb R^d\) with its affine structure, translation invariance picks \(|dx|^{1/2}\) uniquely up to a constant factor. This is “constant” in the sense of being homogeneous under translations.
2. **Metric-derived choice:** given a Riemannian/Lorentzian metric \(g\), one can take
   \(\sigma_g := |g|^{1/4}|dx|^{1/2}\),
   so that \(\rho_g=\sigma_g^2=\sqrt{|g|}\,|dx|\) is the familiar invariant volume density. This makes the scalar representative \(f\) a genuine scalar field but makes the scalarization depend on background geometry.
3. **Field-derived (dilaton-like) choice:** given a scalar field \(\Phi\) (background or dynamical), one can take \(\sigma_{\Phi}:=e^{-\Phi}\sigma_g\). In the scalar picture this is a local rescaling of the measure, and it is the natural way to encode “local units” or Weyl factors.

H2.4 asserts that the theory supplies (or selects) a choice of type (1) with no \(x\)-dependent factor: a fixed reference \(\sigma_\ast\) whose only remaining ambiguity is an overall constant scale.

`Heuristic H2.11 (RG as scale dependence of scalarization).`
If refinement/coarse-graining forces an \(x\)-independent but scale-dependent choice \(\sigma_\ast(\mu)\) (equivalently a scale-dependent constant \(L_\ast(\mu)\)), then H2.4 is replaced by an RG statement: the scalarization convention becomes part of the renormalization scheme (a “wavefunction renormalization” for the scalar representative). In that case, a universal area/length scale can still appear, but typically as an RG invariant (dimensional transmutation scale) rather than as a fixed analytic monomial in couplings.

`Derivation D1.8a (Running scalarization \(\sigma_\ast(\mu)\) is a \(Z(\mu)\) factor on scalar representatives).`
Assume the intrinsic (half-density) state \(\psi\) is fixed, and consider two scalarizations related by a \(\mu\)-dependent *constant* rescaling,
\(\sigma_\ast(\mu)=c(\mu)\,\sigma_0\) with \(c(\mu)>0\).
Writing \(\psi=f(\mu)\,\sigma_\ast(\mu)\) gives \(f(\mu)=c(\mu)^{-1}f_0\), where \(f_0\) is the scalar representative in the \(\sigma_0\) convention.
Defining \(Z(\mu):=c(\mu)^2\), this becomes the familiar multiplicative form
\[
f(\mu)=Z(\mu)^{-1/2}\,f_0.
\]
So an \(x\)-independent running of scalarization is *formally equivalent* to a wavefunction renormalization factor on scalar representatives. This is bookkeeping: \(\sigma_\ast(\mu)\) is a convention/scheme choice; only RG-invariant combinations (e.g. transmutation scales) are candidates for physical statements.

`Heuristic H2.11a (Guardrail: geometric weight \(\neq\) anomalous dimension).`
The half-density square-root Jacobian is a geometric transformation law under coordinate changes; anomalous dimensions are RG scaling data in interacting theories. They should not be conflated: allowing \(\sigma_\ast(\mu)\) to run is a representation convenience, not a claim that geometry “produces” anomalous scaling.

## 4. Stationary Phase Produces Half-Density Prefactors (Short-Time Kernel)
The main manuscript uses stationary phase to explain why classical extremals dominate refinement limits. Here we add the complementary kernel-level fact:
stationary phase does not only pick the extremal; it also produces a determinant prefactor that transforms as a half-density, i.e. the object needed for coordinate-free kernel composition.

`Derivation D1.4 (Van Vleck prefactor is a bi-half-density).`
Let \(S_{\mathrm{cl}}(x,z;t)\) be the classical action as a function of endpoints and time, treated as a generating function. The standard short-time/stationary-phase approximation to the propagator has the form

$$
K(x,z;t)
\approx
\frac{1}{(2\pi i\hbar)^{d/2}}
\left|\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial x\,\partial z}\right)\right|^{1/2}
\exp\!\left(\frac{i}{\hbar}S_{\mathrm{cl}}(x,z;t)\right).
$$

Under a change of coordinates \(x=x(x')\), \(z=z(z')\), the mixed Hessian transforms by the chain rule, and its determinant acquires Jacobian factors:

$$
\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial x'\,\partial z'}\right)
=
\det\!\left(\frac{\partial x}{\partial x'}\right)
\det\!\left(\frac{\partial z}{\partial z'}\right)
\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial x\,\partial z}\right).
$$

Taking square roots shows that the prefactor transforms with
\(|\det(\partial x/\partial x')|^{1/2}|\det(\partial z/\partial z')|^{1/2}\), i.e. exactly as a half-density factor at each endpoint. Thus the stationary-phase prefactor is naturally interpreted as making \(K\) a half-density in each variable, so that kernel composition does not depend on a background measure choice.
This is the standard “Van Vleck type” semiclassical prefactor in the correspondence/semiclassical tradition [VanVleck1928Correspondence].

`Derivation D1.9 (Square-root delta normalization has half-density weight).`
In finite dimension, the “localize on critical points” distribution is \(\delta(\nabla f)\), supported on \(\mathrm{Crit}(f)\). A concrete way it appears is via a “halved” oscillatory integral with a normalization exponent fixed by dimension.

Let \(f:\mathbb R^N\to\mathbb R\) be smooth and define, for \(\varepsilon>0\),
\[
A_\varepsilon(O):=\varepsilon^{-N/2}\int_{\mathbb R^N} e^{\frac{i}{\varepsilon}f(x)}\,O(x)\,dx.
\]
Then
\[
|A_\varepsilon(O)|^2
=\varepsilon^{-N}\int\!\!\int e^{\frac{i}{\varepsilon}(f(x)-f(y))}\,O(x)\,\overline{O(y)}\,dx\,dy.
\]
Applying the near-diagonal scaling \(y=x+\varepsilon z\) (so \(dy=\varepsilon^Ndz\)) gives
\[
|A_\varepsilon(O)|^2
=\int\!\!\int e^{-\frac{i}{\varepsilon}(f(x+\varepsilon z)-f(x))}\,O(x)\,\overline{O(x+\varepsilon z)}\,dz\,dx.
\]
Formally letting \(\varepsilon\to 0\) yields
\[
|A_\varepsilon(O)|^2 \;\to\;\int\!\!\int e^{-i z\cdot \nabla f(x)}\,|O(x)|^2\,dz\,dx
=(2\pi)^N\int \delta(\nabla f(x))\,|O(x)|^2\,dx.
\]
The exponent \(N/2\) in the prefactor is exactly the half-density scaling: it cancels the Jacobian \(dy=\varepsilon^Ndz\) under near-diagonal rescaling, and it is the “square root” of the density normalization that produces \(\delta(\nabla f)\).

`Heuristic H1.4 (Where Planck area can enter, minimally).`
Derivation D1.3 isolates one minimal route by which a Planck-scale quantity can enter:
if the theory supplies a single universal coupling with dimension of length (Newton’s constant) and one demands that the half-density normalization constant be built from that coupling *without fractional powers*, then \(d=4\) is singled out and the resulting constant has the dimension of an area, naturally identified with the Planck area \(L_P^2\sim \hbar G_4/c^3\).

## 5. A Gravitational Anchor: Minimal Areal Speed and the \(D=4\) Cancellation
Rivero’s “Planck areal speed” observation gives a concrete route by which Planck-scale discreteness reappears at Compton scales in inverse-square gravity [RiveroAreal] [RiveroSimple].

`Heuristic H1.3 (Areal-speed selection).`
In \(3+1\) Newtonian gravity (inverse-square), imposing a discrete areal-speed/area-time condition at a Planck scale can yield characteristic radii proportional to a reduced Compton length, with Newton’s constant canceling when expressed in Planck units. This is a nontrivial indication that “a universal area scale” can be operationally meaningful at low energies in \(D=4\).

`Derivation D1.5 (Inverse-square circular orbit + Planck areal speed \(\Rightarrow\) Compton radius).`
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

## 6. Interface with the Main Paper
The main manuscript argues that:
1. classical dynamics are recovered from quantum composition by stationary-phase concentration, and
2. refinement across scales forces RG-style consistency conditions when naive limits diverge.

This draft adds a complementary ingredient: the kernel side is most naturally formulated in half-density language, and stationary phase produces the bi-half-density prefactor directly. A universal convention for turning those half-densities into scalar amplitudes then requires a \(\text{length}^{d/2}\) scale; in \(d=4\) this is an area scale.

## 7. Open Problems (Needed for a Real Paper)
1. Make the half-density normalization argument precise for a concrete groupoid or kernel model (tangent-groupoid or short-time propagator model).
2. Show how the area scale enters stationary-phase prefactors and how this interacts with RG scaling.
3. General-dimension analysis: clarify what replaces “area” in odd dimensions and whether a universal normalization is still defensible.
4. Identify minimal hypotheses under which “need of half-density scale \(\Rightarrow\) Planck area” is more than dimensional bookkeeping.
