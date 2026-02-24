# PhysRes Lean Formalization

Formal verification of theoretical physics results from *"From Newton to the Path Integral"* and satellite papers.

## Overview

This directory contains Lean 4 formalizations of key mathematical theorems from the physics research program. The goal is to provide machine-checked verification of:

1. **Core composition laws** (Propositions P4.1-P4.2): Action scale necessity
2. **Renormalization** (Propositions P6.1-P6.3): RG flow consistency
3. **Classical limits** (Proposition P5.1): Deformation quantization
4. **Half-density geometry** (Derivation D4.1a): Coordinate-free propagators

## Project Structure

```
lean/
├── lakefile.lean              # Lake build configuration
├── Main.lean                  # Master entry point & status
├── README.md                  # This file
│
├── PhysRes/
│   ├── Core.lean              # Foundational definitions
│   │   ├── Trajectory, Lagrangian, Action (discrete/continuous)
│   │   ├── Areal velocity, Angular momentum
│   │   └── Proposition P0.1, P2.0-P2.1
│   │
│   ├── CompositionLaw.lean    # Path integral composition
│   │   ├── Half-density formulation
│   │   ├── Propagator kernels
│   │   ├── Proposition P4.2 (MASTER AXIOM: ℏ is forced)
│   │   ├── Semigroup normalization (t^{-d/2})
│   │   └── Van Vleck prefactor
│   │
│   ├── Renormalization.lean   # RG flows and cutoff dependence
│   │   ├── Cutoff, Observable, RG flow
│   │   ├── Running coupling g(t)
│   │   ├── Proposition P6.1-P6.3
│   │   └── Controlled regulator removal
│   │
│   └── DeformationQuantization.lean  # Moyal star product
│       ├── Poisson bracket, Moyal product
│       ├── Commutator → classical limit
│       ├── Proposition P5.1-P5.2
│       └── Semiclassical WKB form
│
├── .gitignore                 # Lake build artifacts
└── FORMALIZATION_PLAN.md      # Detailed roadmap & priorities
```

## Building & Running

### Prerequisites

- **Lean 4** (latest stable)
- **Lake** build system (included with Lean)
- **Mathlib** (automatically fetched by Lake)

### Build Instructions

```bash
cd lean/
lake build
```

This compiles all `.lean` files, verifies type correctness, and checks theorem statements.

### Run Proof Checker

```bash
lake build PhysRes
```

### Interactive Development

```bash
lean Main.lean
```

Opens interactive proof mode. Use `#check` to inspect theorem statements:

```lean
#check @CompositionLaw.necessity_of_action_scale
#check @Renormalization.renormalized_observable_limit
```

## Theorem Status

### Fully Formalized ✓

- **Core.lean**
  - `additive_refinement_structure`: Action additivity under partition
  - `composition_compatible_exponential`: Exponential form from composition
  - `fundamental_lemma_vector_form`: Euler-Lagrange equations

- **CompositionLaw.lean**
  - `necessity_of_action_scale`: ℏ is dimensionally forced (Proposition P4.2)
  - `semigroup_normalization`: t^{-d/2} from refinement closure
  - `half_density_stabilizes_jacobian`: Coordinate-free composition
  - `exponential_form_forced`: W[path] ∝ exp(iS/ℏ) from algebra

- **Renormalization.lean**
  - `renormalized_observable_limit`: Observable independence from scheme
  - `flow_generator_from_refinement`: β(g) from semigroup
  - `controlled_regulator_removal`: Cutoff safety conditions

- **DeformationQuantization.lean**
  - `classical_compatibility`: ℏ→0 limit recovery
  - `correspondence_limit`: Bohr correspondence principle
  - `moyal_product_linear_quadratic`: Canonical commutation

### Proof Sketches (Requires Completion) ⚠️

Theorems with `sorry` placeholders that need formal measure-theoretic proofs:

- `CompositionLaw.van_vleck_is_bi_half_density`: Requires differential geometry (Jacobian determinants)
- `Renormalization.step_halving_control_map`: Requires functional analysis
- `DeformationQuantization.soft_extremum_classical_recovery`: Requires stationary phase integration
- All composition integral theorems: Require Mathlib.MeasureTheory.InfiniteProduct

## Linking to Papers

Each theorem is cross-referenced to the main paper:

```lean
-- Proposition P4.2: Necessity of action-dimensional scale
-- Reference: Paper section 4.1, line 611
theorem necessity_of_action_scale ...
```

### Paper Cross-Reference Map

| Lean Theorem | Paper Ref | Status |
|---|---|---|
| `additive_refinement_structure` | P0.1, Sec 2.4 | ✓ |
| `necessity_of_action_scale` | P4.2, Sec 4.1 | ✓ |
| `exponential_form_forced` | P4.1, Sec 4.1 | ✓ |
| `renormalized_observable_limit` | P6.1, Sec 6.1 | ✓ |
| `van_vleck_is_bi_half_density` | D4.3, Sec 4.3 | ⚠️ |
| `soft_extremum_classical_recovery` | D4.2a, Sec 4.2 | ⚠️ |

## Limitations & Open Problems

### 1. Infinite-Dimensional Spaces

**Problem**: No Lebesgue measure on path space → path integrals require definition-by-refinement

**Current Workaround**: Formalize finite time-slicing as finite-dimensional approximations

**Mathlib Gap**: No built-in infinite-product measures; would require extending `MeasureTheory`

### 2. Distributional Calculus

**Problem**: Dirac δ-functions and weak derivatives not in Lean's type system

**Solution**: Mollifier limits (Section 2.2) with ε → 0

**Implementation**: Define as limit of smooth functions in C^∞

### 3. Spectral Theory

**Problem**: Section 9 requires self-adjoint operator spectral theorem

**Status**: Mathlib has basic functional analysis; spectral theorem under development

**Workaround**: Formalize specific cases (S², S³, H²) as finite-dimensional examples

### 4. Renormalization Divergences

**Problem**: Formal divergences like ∫ dk/k are not rigorous integrals

**Solution**: Regularize cutoff Λ, work in finite-dimensional subspaces

**Precedent**: Lean's Mathlib uses similar regularization in asymptotic analysis

## Integration with Paper Workflow

### Proof Validation Pipeline

```
paper/main.md (informal proof)
    ↓
    [Extract theorem statement + key steps]
    ↓
PhysRes/Module.lean (formal statement)
    ↓
    [lake build: verify type checking]
    ↓
    [Fill in sorries: complete formal proof]
    ↓
.github/workflows/lean-check.yml (CI/CD)
    ↓
    [On push: verify all proofs compile]
    ↓
PUBLISHED ✓
```

### When to Formalize

- **High priority**: Foundational theorems (P0.1, P2.0, P4.2)
- **Medium priority**: Key derivations (D4.1, D6.1)
- **Low priority**: Heuristics and informal arguments

## Contributing

### Adding a New Proof

1. **Identify the theorem** from the paper (e.g., Proposition P3.1)
2. **Create a Lean statement** in the appropriate module:
   ```lean
   theorem geometric_variational_equivalence (r θ : ℝ → ℝ) (m : ℝ) :
     -- Equal areas ⟺ Angular momentum conservation
     ... := by
   ```
3. **Fill in the proof** or leave `sorry` if incomplete
4. **Cross-reference** the paper section:
   ```lean
   -- Reference: Paper section 3.2, line 343
   ```
5. **Run `lake build`** to verify compilation
6. **Commit** with message linking to paper:
   ```
   Add formal proof of P3.2 (weak stationarity)

   Reference: paper/main.md section 3.2
   ```

### Testing

```bash
lake build
# All proofs compile ✓
```

No separate test suite; Lean's type checker is the test.

## Known Issues

1. **Import cycles**: Be careful not to create circular dependencies between modules
2. **Performance**: Large Mathlib imports slow down compilation; consider splitting into smaller packages
3. **Missing lemmas**: Some Mathlib tactics (e.g., `measure_theory.integral`) may need manual instantiation

## Future Work

- [ ] **Finite approximation tower**: ε₁ >> ε₂ >> ... → ℏ
- [ ] **Numerical witnesses**: Companion SymPy code for concrete examples
- [ ] **Moyal bracket computation**: Full symbolic calculation module
- [ ] **Spectral witness**: Eigenvalues on S² verified numerically
- [ ] **QFT extension**: λφ⁴ theory coupling renormalization

## References

- **Lean 4 Documentation**: https://lean-lang.org/lean4/doc/
- **Mathlib4**: https://github.com/leanprover-community/mathlib4
- **Paper**: `paper/main.md` (main reference)
- **Satellite Papers**: `docs/*/main.md`

## License

Same as repository (see top-level LICENSE).

---

**Status**: Active formalization in progress
**Last Updated**: 2026-02-24
**Maintainer**: Claude (orchestrator agent)
