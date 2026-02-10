# Planck Areal Speed in a Newtonian Circular Orbit

Date: 2026-02-10  
Status: internal note (non-citable). Goal: answer the "Planck area per Planck time" circular-orbit question as a concrete algebraic witness.

## Question (interpreted)
"A particle orbits a mass \(M\) in a circular orbit under Newtonian gravity. The areal velocity is one Planck area per Planck time. What is the orbit radius?"

Interpret "one Planck area each Planck time" as
\[
\dot A=\frac{\ell_P^2}{t_P}.
\]

## Ingredients
Planck units (in 4D):
\[
\ell_P=\sqrt{\frac{\hbar G}{c^3}},\qquad
t_P=\sqrt{\frac{\hbar G}{c^5}}=\frac{\ell_P}{c}.
\]

Newtonian circular orbit relations:
\[
v^2=\frac{GM}{r},\qquad
\dot A=\frac12 r v.
\]

## Solve for \(r\)
Set \(\dot A=\ell_P^2/t_P\). Then \(v=2\ell_P^2/(t_P r)\).
Substitute into \(v^2=GM/r\):
\[
\left(\frac{2\ell_P^2}{t_P r}\right)^2=\frac{GM}{r}
\quad\Longrightarrow\quad
GM\,r=\frac{4\ell_P^4}{t_P^2}.
\]
Using \(t_P=\ell_P/c\), we get
\[
\frac{\ell_P^4}{t_P^2}=\ell_P^2c^2
=\left(\frac{\hbar G}{c^3}\right)c^2
=\frac{\hbar G}{c}.
\]
Therefore
\[
r=\frac{4}{GM}\frac{\hbar G}{c}
=\frac{4\hbar}{Mc}.
\]

So the radius is
\[
r=4\,\lambda_C(M),
\qquad
\lambda_C(M):=\frac{\hbar}{Mc}.
\]
Notably, \(G\) cancels out once the areal speed is fixed in Planck units.

## Consistency notes
The corresponding orbital speed is
\[
v=\sqrt{\frac{GM}{r}}
=\sqrt{\frac{GM}{4\hbar/(Mc)}}
=\frac{M}{2m_P}\,c,
\qquad m_P=\sqrt{\frac{\hbar c}{G}}.
\]
So the Newtonian assumption \(v\ll c\) requires \(M\ll 2m_P\).

The ratio to Schwarzschild radius \(r_s=2GM/c^2\) is
\[
\frac{r}{r_s}
=\frac{4\hbar/(Mc)}{2GM/c^2}
=2\left(\frac{m_P}{M}\right)^2,
\]
so for \(M\sim m_P\) the orbit sits only \(O(1)\) Schwarzschild radii out, i.e. relativistic corrections are expected.

## Possible promotion targets
- A short remark in `paper/main.md` Section 3 (area law) or a dependent note linking Planck areal speed to the Compton scale.
- A placement in `papers/planck-area/main.md` as a concrete "scale cancellation in 4D" witness (if it strengthens the hypothesis ladder).

