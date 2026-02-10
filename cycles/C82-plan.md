# C82 Plan: Anchor the String-Tension Scale Supplier with a Wilson-Loop Definition

## Goal
Strengthen `Remark E4a` in `papers/planck-area/main.md` by adding the standard Wilson-loop definition of the static potential and the area-law/string-tension identification, with an OA anchor (`[Greensite2003Confinement]`).

## Tasks
1. Extend `Remark E4a` with one sentence giving:
   - \(V(R)=-\lim_{T\to\infty}\frac{1}{T}\ln\langle W(R\times T)\rangle\),
   - area law \(\Rightarrow\) \(\sigma\) and \(V(R)\sim\sigma R\).
2. Stage and record diffstat:
   - `scripts/paper-diffstat.sh --cached`

## Acceptance Tests
- Still hypothesis-separated and does not assert confinement universally.
- Adds exactly one OA citation `[Greensite2003Confinement]`.
- `cycles/C82-execution.md` includes diffstat output.

