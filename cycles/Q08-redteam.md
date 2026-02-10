# Q08 Redteam: Remaining Risks After C44

## Risks
1. Readers may still overinterpret the calculus micro-model as a claim about physics rather than structure.
2. The repo now contains multiple “delta” notions (\(\delta\), \(\delta'\), \(\delta(f')\), contact kernels); confusion remains possible if we don’t keep the dictionaries tight.
3. The RG draft’s reference layer (e.g. 2D delta literature) still relies on pending/heuristic anchors in places.

## Mitigations / Follow-ups
1. Keep “toy model” qualifiers close to the micro-model and avoid rhetoric like “therefore renormalization is inevitable” without an explicit bridge.
2. Maintain a single “delta dictionary” pointer list (delta-objects + distribution blackboard notes already serve this role).
3. When the RG draft’s claims become load-bearing for `paper/main.md`, spawn a dedicated `B` cycle to anchor the key external statements with independent OA sources.

