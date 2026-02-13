# S61 Execution: EFT Contact Matching Witness (Constant Amplitude ↔ Delta Potential)

Date: 2026-02-10

## Work performed
- Derived the coordinate-space form of leading and next-to-leading contact interactions from the momentum-space amplitude expansion by Fourier transform.
- Recorded how this supports the Theme L message: “potential talk” for fermion-mediated effects is most cleanly phrased as EFT/contact (diagonal-support) data rather than classical Yukawa-style sourcing.

## Artifacts produced
- `blackboards/2026-02-10-fermionic-mediators-contact-eft-to-qm-match.md`

## Result
- We have a bounded, referee-safe matching witness:
  - constant amplitude \(\Rightarrow\) \(\delta(\mathbf r)\) potential,
  - \(q^2\) term \(\Rightarrow\) \(-\nabla^2\delta(\mathbf r)\) contact correction,
  - higher polynomials \(\Rightarrow\) higher derivatives of the diagonal delta.

## Promotion candidate (copyable block)
In \(d=3\) spatial dimensions, the low-energy two-body amplitude can be expanded as a polynomial in momentum transfer \(q\), \(\mathcal A(q)=C_0+C_2 q^2+\cdots\). The inverse Fourier transform identifies the corresponding coordinate-space interaction as a distribution supported at the origin: \(C_0\) gives a \(\delta(\mathbf r)\) contact term, and \(q^2\) gives a \(-\nabla^2\delta(\mathbf r)\) correction (up to overall Born-convention factors). Thus, if a would-be mediator effect reduces to local operators at low resolution, its “potential” is naturally point-supported/boundary-condition data rather than a long-range Yukawa-type function.

## Spawned cycles (planned)
- `B09`: add an OA anchor for the Grassmann-source obstruction (fermionic generating functional).
- `C87`: create a new dependent note and promote the witness above into manuscript prose.

