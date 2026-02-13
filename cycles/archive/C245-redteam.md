# C245 — Red Team

## Failure mode 1: Page creep
218 → 233 lines. Should still be ~4pp compiled.

## Failure mode 2: Binet equation not derived
The remark cites BoscagginDambrosioFeltrin2020 rather than
deriving the Binet equation from scratch. A referee might want
to see the steps.

**Mitigation**: The cited paper contains the full derivation.
The remark is a result statement, not a derivation, which is
appropriate for a brief satellite paper.

## Failure mode 3: Semi-latus rectum used without full proof
The claim "L² = GMm²a(1−e²) from the semi-latus rectum of the
precessing conic" is stated without proof.

**Mitigation**: This is a geometric property of conics (any
equation d²u/dφ² + ω²u = const gives a conic in the ωφ
variable). The justification is self-contained.
