# C06 Execution

## Manuscript Deltas
1. Replaced the section-8 placeholder in `paper/main.md` with a complete "renormalization as controlled refinement" section.
2. Defined regulator/cutoff language and bare-versus-renormalized parameter roles (`Proposition P6.1`).
3. Derived an RG equation from cutoff-independence via the chain rule (`Derivation D6.1`).
4. Added a concrete logarithmic-divergence subtraction template yielding a beta function (`Derivation D6.2`).
5. Included a short rooted-tree refinement-control bridge from numerical analysis (`Heuristic H6.1`) and connected to Connes-Kreimer structural organization.
6. Added a counterterm-as-refinement-correction viewpoint via a regulated action template and a transition into `C07`.
7. Rerun pass: added explicit semigroup-generator statement for beta functions (`Proposition P6.2`).
8. Rerun pass: added closure/truncation caveat for finite-parameter RG systems (`Proposition P6.3`).
9. Rerun pass: clarified Butcher-group versus Wilsonian-semigroup roles in the refinement analogy.

## Equations Added
1. Cutoff-stable observable limit definition \(O_{\mathrm{phys}}=\lim_{\Lambda\to\infty}O_\Lambda(g_B(\Lambda))\).
2. Renormalization map \(g_R(\mu)=R_{\Lambda\to\mu}(g_B(\Lambda))\) and semigroup consistency \(R_{\Lambda\to\mu}=R_{\kappa\to\mu}\circ R_{\Lambda\to\kappa}\).
3. RG invariance equation \(\left(\partial_{\ln\Lambda}+\sum_a\beta_B^a\partial_{g_B^a}\right)O_\Lambda=0\).
4. Log-divergence template \(O_\Lambda=g_B+c g_B^2\ln(\Lambda/\mu)+\cdots\) and resulting \(\beta\)-function to leading order.
5. Regulated action template \(S_\Lambda[\phi]=\int d^d x\left(\frac{Z}{2}(\partial\phi)^2+\frac{m^2}{2}\phi^2+\frac{\lambda}{4!}\phi^4+\cdots\right)\).
6. Beta-generator definition \(\beta^a(g)=\left.\frac{d}{dt}W^a_{e^t\mu\to\mu}(g)\right|_{t=0}\).

## Sections Touched
1. `paper/main.md`.
2. `cycles/C06-plan.md`.
3. `cycles/C06-debate.md`.
4. `cycles/C06-redteam.md`.
5. `cycles/index.md`.

## Rationale
`C06` completes the paper's "controlled refinement" chain by showing that when refinement diverges, consistency under composed refinement must be restored by parameter flow (RG) and counterterm tuning, not by abandoning the refinement/composition framework.

## Acceptance Test Results
1. Section 8 replaced and coherent: passed.
2. Section 8 includes multiple equations and labeled derivations: passed.
3. RG consistency explicitly tied to composition/refinement themes: passed.
4. Transition to `C07` present: passed.
5. Rerun caveats (semigroup generator + truncation closure) present: passed.
