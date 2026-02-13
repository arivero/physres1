# S262 — Execution

## Findings

### 1. The orbit equation is identical to Sommerfeld's

The paper's Remark 3.2 gives the SR orbit equation for the inverse-square force
F = K/r^2 via the Binet substitution u = 1/r:

    d^2u/dphi^2 + omega^2 u = (mK/L^2) omega^2,
    omega^2 := 1 - K^2/(c^2 L^2).

For the Coulomb force, K = Ze^2 (Gaussian units) or K = Ze^2/(4 pi epsilon_0)
(SI). The angular momentum is L = p_theta. Substituting:

    omega^2 = 1 - Z^2 e^4 / (c^2 p_theta^2).

This is *exactly* the equation Sommerfeld derived and used in 1916 for the
relativistic hydrogen atom (confirmed via arXiv:2506.00408, "Old Quantum
Mechanics by Bohr and Sommerfeld from a Modern Perspective," and the review
article "From Sommerfeld to Dirac" in Il Nuovo Saggiatore). The orbit is a
precessing conic, u = (mK/L^2) + A cos(omega phi + phi_0), with apsidal
advance Delta_phi = 2pi/omega - 2pi per revolution.

### 2. omega appears naturally in the Sommerfeld fine structure formula

Sommerfeld applied the old quantum theory's Wilson-Sommerfeld quantization
conditions to the precessing orbits:

    (azimuthal)   integral p_theta d_theta = k hbar  (k = 1, 2, ...)
    (radial)      integral p_r dr = n_r hbar          (n_r = 0, 1, 2, ...)

The angular momentum quantization gives p_theta = k hbar. The fine structure
constant is alpha = e^2/(hbar c) (Gaussian), so e^2 = alpha hbar c. Then:

    K = Ze^2 = Z alpha hbar c,

    K^2/(c^2 L^2) = Z^2 alpha^2 hbar^2 c^2 / (c^2 k^2 hbar^2)
                   = Z^2 alpha^2 / k^2,

and therefore:

    omega^2 = 1 - Z^2 alpha^2 / k^2,
    omega = sqrt(1 - Z^2 alpha^2 / k^2).

This is exactly the factor that enters the Sommerfeld energy formula.

The Sommerfeld fine structure formula for the energy levels is:

    E_{n_r, k} = mc^2 (1 + (alpha Z)^2 / (n_r + sqrt(k^2 - alpha^2 Z^2))^2 )^{-1/2}

Since sqrt(k^2 - alpha^2 Z^2) = k * omega, this can be rewritten as:

    E_{n_r, k} = mc^2 / sqrt(1 + (alpha Z)^2 / (n_r + k omega)^2).

So the classical precession parameter omega of the paper enters the quantum
energy formula through the combination k*omega, which is the "effective angular
momentum quantum number" that replaces the integer k in the relativistic theory.

For Z = 1 (hydrogen) and k = 1 (the lowest angular momentum state):

    omega = sqrt(1 - alpha^2) ≈ 1 - alpha^2/2 ≈ 1 - 2.66 x 10^{-5}.

The departure from unity is tiny (~27 ppm), consistent with the small fine
structure splitting. For heavy atoms (large Z), the effect is much larger.

### 3. Historical note: the "Sommerfeld puzzle"

Remarkably, Sommerfeld's 1916 formula — derived from classical SR orbits plus
old quantum theory quantization — gives exactly the same energy levels as the
Dirac equation (1928), provided one identifies Sommerfeld's azimuthal quantum
number k with j + 1/2 (where j is the total angular momentum quantum number
including spin). In the Dirac theory:

    nu_Dirac = sqrt((j + 1/2)^2 - alpha^2 Z^2),

which matches k*omega when k = j + 1/2. This "Sommerfeld puzzle" — the
agreement between the wrong theory and the right one — has been discussed
extensively (arXiv:2401.07485, "The Sommerfeld Puzzle and Its Extensions").

The agreement is now understood as a consequence of the supersymmetric structure
of the Dirac-Coulomb problem: the Dirac equation has an additional conserved
quantity (the Johnson-Lippmann operator) that enforces the same spectral
degeneracy pattern that Sommerfeld obtained from his classical precession
parameter.

### 4. Assessment for the paper

The connection is genuine, historically significant, and mathematically clean.
The paper's omega^2 = 1 - K^2/(c^2 L^2) is literally the same parameter that
Sommerfeld quantized to obtain the first correct relativistic energy levels
for hydrogen, predating the Dirac equation by 12 years.

A 2-3 sentence remark would:
- Show that the orbit equation is not just a pedagogical exercise but the
  exact classical backbone of one of the earliest quantum-relativistic results.
- Connect to the fine structure constant, giving the paper a natural touchpoint
  with atomic physics.
- Respect the paper's existing structure (Remark 3.2 already derives the
  orbit equation; the new remark would follow it).

The remark fits naturally after Remark 3.2a (which discusses Bertrand's theorem
and orbit non-closure), as it gives the physical application of the same
precession parameter.

## Promotable?

YES. The connection is exact (not approximate), historically well-established,
and adds genuine physical content — linking the paper's purely classical/SR
derivation to the quantum fine structure of hydrogen. It requires only 2-3
sentences and one displayed equation (the quantized omega). It does not
duplicate existing content in the paper.

## Draft remark (if promotable)

    Remark 3.2b (Connection to Sommerfeld fine structure).
    For the Coulomb force K = Ze^2/(4 pi epsilon_0), the precession parameter
    omega^2 = 1 - K^2/(c^2 L^2) is precisely the quantity Sommerfeld (1916)
    used to derive the fine structure of hydrogen. Quantizing the angular
    momentum as L = k hbar (k = 1, 2, ...) gives omega = sqrt(1 - alpha^2 Z^2 / k^2),
    where alpha = e^2/(4 pi epsilon_0 hbar c) is the fine structure constant.
    The Sommerfeld energy formula E_{n_r, k} = mc^2 (1 + alpha^2 Z^2/(n_r + k omega)^2)^{-1/2}
    reproduces the exact Dirac hydrogen spectrum (with k -> j + 1/2), making the
    classical orbit equation of this section the backbone of one of the earliest
    quantum-relativistic results.

Note: the draft uses SI notation for K to match the paper's existing conventions.
The phrasing avoids overclaiming (says "backbone," not "derivation") and
provides a self-contained pointer to the Sommerfeld formula without requiring
the reader to look up references.
