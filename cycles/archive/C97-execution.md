# C97 Execution: Half-density QFT note — inline minimal support for kernel normalizations + tighten the D=4 conformal remark

Date: 2026-02-11

## Summary
- Made the note more standalone by inlining minimal support for the “canonical diagonal delta kernel” and its \(t^{-D/2}\) normalization witness (no companion-note dependence).
- Tightened the conformal expansion derivation and explicitly scoped the \(D=4\) cancellation as a worked simplification (not a dimension-selection claim).
- Rebuilt the TeX/PDF artifacts for the note.

## Work log
- Rephrased the abstract to remove “dependent follow-up” framing while keeping the scope and motivation unchanged.
- Replaced the remaining companion-note derivation pointer in Section 2 with a compact inline approximate-identity normalization witness for the \(\varepsilon^{-D/2}\) scaling.
- Expanded `Derivation D1.3` to explicitly display the conformal scalar Laplacian formula and added a clear scope disclaimer about the \(D=4\) cancellation.
- Regenerated TeX:
  - `pandoc -f markdown+tex_math_single_backslash -s papers/half-density-qft/main.md -o papers/half-density-qft/main.tex`
- Built PDF (pdflatex-safe-build skill):
  - `~/.codex/skills/pdflatex-safe-build/scripts/build_pdflatex_safe.sh papers/half-density-qft/main.tex /tmp/pdflatex-papers-half-density-qft-C97`
  - Copied `/tmp/pdflatex-papers-half-density-qft-C97/main.pdf` to `papers/half-density-qft/main.pdf`.

## Diffstat
```text
paper-diffstat (cached): TOTAL +25 -5 (1 files)
  +25 -5 papers/half-density-qft/main.md
```

## Guard checks (required before finalizing)
- No cycle IDs leaked into manuscript:
  - `rg -n 'C[0-9]{2}' papers/half-density-qft/main.md`
- Manuscript does not cite transcripts:
  - `rg -nF 'conv_patched' papers/half-density-qft/main.md`

## Outputs
- Manuscripts edited:
  - `papers/half-density-qft/main.md`
- PDFs rebuilt (tracked):
  - `papers/half-density-qft/main.pdf`

## Spawned cycles
- `Q54`: referee pass on this promotion wave (`C97`)
