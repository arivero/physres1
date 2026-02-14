# D57 Discovery: Composition failure as diagnostic (open systems, measurement, anomalies)

Date: 2026-02-14
Parent: D53 (composition = master axiom)

## Novelty target
If composition is the master axiom, what does its FAILURE diagnose?

## Three classes of composition failure

### 1. Open quantum systems (incomplete description)
When environment is traced out: K_sys_t ∘ K_sys_s ≠ K_sys_{t+s}
(Lindblad/GKSL dynamics, non-Markovian memory effects).

**Diagnosis**: composition failure signals hidden degrees of freedom.
The FULL system (system+environment) still composes: K_full_t ∘ K_full_s = K_full_{t+s}.
Composition failure = incomplete system boundary.

### 2. Measurement / wavefunction collapse
Projective measurement P_a breaks the semigroup:
K_t → P_a → K_s is NOT K_{t+s} composed with anything.

**Diagnosis**: measurement is a composition defect of the subsystem. In the
Everettian/decoherence picture, the full unitary evolution still composes;
the "collapse" is the subsystem's composition failure when the environment
is traced out. In the Copenhagen picture, measurement is genuinely
non-compositional — an irreducible break in the semigroup.

**RCP implication**: the measurement problem IS the question "is fundamental
composition exact or approximate?" If exact (Everett), no new physics needed.
If approximate (objective collapse), composition itself is modified at some scale.

### 3. Anomalies (topological obstruction)
A symmetry that fails to commute with composition (Fujikawa: chiral rotation
of the half-density measure). The composition law itself is intact; what fails
is a SYMMETRY's compatibility with it.

**Diagnosis**: anomalies are symmetry-composition conflicts, not composition
failures per se. The kernel still composes; the symmetry doesn't survive.

## Synthesis: composition failure taxonomy

| Type | What fails | What still composes | What it means |
|---|---|---|---|
| Open system | Subsystem kernel | Full system | Incomplete boundary |
| Measurement | Subsystem semigroup | Full system (if Everett) | Environment tracing |
| Anomaly | Symmetry + composition | Kernel alone | Topological obstruction |
| Renormalization | Naive ∞-product | Regularized product | A4 needed (scale control) |

## Verdict
**Composition failure always has a structural explanation.** It's never random
or ad hoc — it diagnoses either incompleteness (open systems), topological
obstruction (anomalies), or infinite-product assembly failure (renormalization).
This strengthens the "composition = master axiom" thesis: departures from
composition are informative, not arbitrary.

## Novelty assessment
**MINOR (taxonomy).** Individual cases are well-known. The unified taxonomy
through the composition lens is a modest organizational contribution.

## Spawned cycles
None. Could inform a future paragraph in the cornerstone conclusion (Section 10.4
or wherever the RCP outlook lives).
