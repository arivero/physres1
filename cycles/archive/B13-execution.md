# B13 Execution: Bibliography inspection — Newton's polygonal limit consistency

Date: 2026-02-12

## Work performed
Targeted web search for scholarly literature on the convergence of Newton's polygonal impulse scheme (Book I, Proposition I of the Principia) to a continuous central-force orbit.

## Key references found

### 1. Pourciau (2003) — critique of the limit argument
- Bruce Pourciau, "Newton's Argument for Proposition 1 of the Principia," *Archive for History of Exact Sciences* 57 (2003), 267–311.
- DOI: `10.1007/s00407-002-0062-x`
- **Key finding**: The persuasiveness of Newton's argument depends crucially on the "Impulse Assumption" — that every centripetal motion can be represented as a limit of polygonal impulse motions. Pourciau identifies two serious flaws: error accumulation and planarity problems. Gives three alternative proofs Newton "could have given."
- OA status: publisher (Springer), likely paywalled.

### 2. Nauenberg (1994) — symplectic structure of Newton's method
- Michael Nauenberg, "Newton's early computational method for dynamics," *Archive for History of Exact Sciences* 46 (1994), 221–252.
- DOI: `10.1007/BF01686278`
- **Key finding**: The impulse equations correspond to a canonical/symplectic mapping — they are exact solutions of a Hamiltonian with impulsive forces. Discusses convergence issues and adaptive time-stepping. Shows Newton's orbit construction for the Hooke problem was computationally accurate.
- OA status: publisher (Springer), likely paywalled.

### 3. Nauenberg (2003) — defence of Newton's limit via Lemma 3
- Michael Nauenberg, "Kepler's Area Law in the Principia: Filling in some details in Newton's proof of Prop. 1," *Historia Mathematica* 30 (2003), 441–456.
- arXiv: `math/0112048`
- DOI: `10.1016/S0315-0860(02)00027-7`
- **Key finding**: Newton's continuum limit argument IS justified by Lemma 3 (Section 1 of the Principia). The polygonal construction has a well-defined continuum limit parameterizing a continuous planar curve. Critics (including Pourciau) misunderstood Newton's limit by neglecting Lemma 3.
- OA status: **arXiv OA** (`math/0112048`).

### 4. Erlichson (2003) — passage to the limit
- Herman Erlichson, "Passage to the limit in Proposition I, Book I of Newton's Principia," *Historia Mathematica* 30 (2003).
- DOI: likely `10.1016/S0315-0860(02)00008-3` (same issue as Nauenberg).
- **Key finding**: The limit of the polygon is indeed the orbital arc, and Newton's approximation of continuous force by impulses passes correctly to the limit.
- OA status: publisher (Elsevier), likely paywalled.

### 5. Pourciau (2001) — Newton's notion of limit
- Bruce Pourciau, "Newton and the Notion of Limit," *Historia Mathematica* 28 (2001), 18–30.
- DOI: `10.1006/hmat.2000.2301`
- **Key finding**: Analysis of Newton's "ultimate ratio" concept and whether it constitutes a rigorous limit in the modern sense.
- OA status: publisher (Elsevier), likely paywalled.

### 6. Chandrasekhar (1995) — modern reworking
- S. Chandrasekhar, *Newton's Principia for the Common Reader* (Oxford University Press, 1995). ISBN `978-0-19-852675-9`.
- **Key finding**: Comprehensive modern reworking of ~150 propositions including Proposition I. However, noted by Pourciau and others as not deeply engaging with the convergence subtlety.
- OA status: Internet Archive has a borrowable copy.

### 7. Pourciau (2004) — two models of one-body motion
- Bruce Pourciau, "The Importance of Being Equivalent: Newton's Two Models of One-Body Motion," *Archive for History of Exact Sciences* 58 (2004), 283–321.
- DOI: `10.1007/s00407-004-0078-8`
- **Key finding**: Proposition 1 (impulse model) vs Proposition 6 (continuous force model) — the equivalence of these two descriptions has been controversial from the start.

## Assessment for manuscript

### Current state
The manuscript cites only `[Newton1687]` and treats the limit passage as unproblematic (P1.1: "whenever the limit exists in the standard differentiable sense"). This is technically correct but evasive — it doesn't engage with the scholarly debate about WHEN the limit exists.

### Gap analysis
1. **The Pourciau–Nauenberg debate is directly relevant.** The manuscript's Section 3 formalizes exactly the same impulse → continuous limit that is debated. The manuscript's P1.1 carefully hedges with "whenever the limit exists," but a reader familiar with the debate would want to know the manuscript is aware of it.
2. **Nauenberg's symplectic observation is structurally interesting.** The impulse equations being a symplectic map connects to the manuscript's later composition/half-density themes.
3. **Nauenberg (2003) on arXiv is the strongest candidate anchor.** It defends Newton's limit AND is OA.

### Recommended additions (for a future C cycle)
- Add `[Nauenberg2003KeplerArea]` as a bibliography entry (arXiv `math/0112048`). This anchors the claim that Newton's polygonal limit is well-defined (Lemma 3 justification).
- Optionally add `[Pourciau2003]` to acknowledge the scholarly debate.
- In Section 3.1 or 3.3, add a brief remark: "The convergence of this polygonal construction to a continuous orbit is non-trivial and depends on Newton's Lemma 3; see [Nauenberg2003KeplerArea] for a modern reconstruction and [Pourciau2003] for a critical analysis."
- Nauenberg's symplectic observation could be noted in passing in H1.1 (impulse-to-continuous interpretation).

## Notes for user
The full debate is extensive. A good chat prompt for deeper exploration:

> Review the scholarly debate on the mathematical rigor of Newton's Proposition I (Book I, Principia) — the polygonal impulse scheme converging to a continuous central-force orbit. Key participants: Pourciau (2003, Arch. Hist. Exact Sci. 57, 267–311, DOI 10.1007/s00407-002-0062-x); Nauenberg (1994, Arch. Hist. Exact Sci. 46, 221–252, DOI 10.1007/BF01686278; and 2003 arXiv math/0112048); Erlichson (2003, Hist. Math. 30); Chandrasekhar (1995, OUP). Core question: under what conditions on the force law does the polygonal path converge to a smooth ODE solution, and does Newton's original argument (Lemmas 2–3) constitute a rigorous proof? Also: the symplectic/canonical structure of the impulse map (Nauenberg 1994) and the Euler-method convergence theorem as modern analog.
