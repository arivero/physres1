# Philosophenweg Literature Survey (Critic, 2026-02-20)

Four literature directions explored on the Philosophenweg. Sources ingested to `sources/`.

---

## 1. Prior Art: "Composition Forces hbar"

**Found:** Luiz & de Oliveira 2026, arXiv:2602.09984 (Feb 10 2026)

**Overlap with P4.2:** SUBSTANTIAL. Same convolution semigroup -> Cauchy equation -> exponential -> Levy-Khintchine -> Gaussian -> d/2 chain. Both papers independently recognize that composition forces an action-scale constant.

| Our P4.2 | Luiz-Oliveira |
|----------|---------------|
| Composition (C): K sewing law | Axiom 3(b): convolution in action space |
| Cauchy functional equation -> exponential | Characters chi(A1+A2) = chi(A1)chi(A2) -> exponential |
| Levy exclusion -> alpha=2 | Levy-Khintchine -> Gaussian (Proposition 1) |
| kappa = hbar forced (dimensionally unique) | eta = 1/hbar structurally necessary (value empirical) |
| d/2 from dimensional consistency | d/2 from Gaussian normalization |

**Key difference:** They DERIVE complex amplitudes from Cramer-Rao indistinguishability + probability normalization (Theorem 1). We assume exp(iS/kappa) from the start. Their derivation is genuinely deeper on this point.

**Assessment:** PARALLEL DISCOVERY, NOT SCOOP. Different route (information theory vs composition algebra). Core shared insight is standard mathematics applied to propagators.

**Recommendation:** MUST CITE. Add to cornerstone P4.2 section. Strengthens our case (independent confirmation). Source: `sources/luiz-oliveira-2026-information-theory-action.md`.

**Also checked:** Goyal-Knuth-Skilling 2009 (ancestor paper). Derives complex amplitudes from composition but NOT hbar. Relevant as deeper ancestry but not direct prior art for P4.2.

---

## 2. Half-Density Literature ("Blattner Half-Form")

**Key references:** Blattner 1975 (half-form pairings), Woodhouse 1992 (textbook), Bates-Weinstein 1997 (lecture notes), nLab metaplectic correction article.

**Core result:** The metaplectic correction in geometric quantization requires quantum states to be sections of L tensor delta_P (prequantum line bundle tensored with half-form bundle). This corrects the harmonic oscillator spectrum from E_n = n hbar omega to E_n = (n+1/2) hbar omega.

**Connection to P4.2's d/2 exponent:**

1. The van Vleck determinant (det d^2 S/dx dy)^{1/2} in the semiclassical propagator IS a half-density on the pair groupoid M x M.

2. For free particle: d^2 S/dx dy ~ t^{-1} per direction -> determinant ~ t^{-d} -> square root = t^{-d/2}. This is EXACTLY our P4.2 exponent.

3. The BKS (Blattner-Kostant-Sternberg) pairing between different polarizations uses half-forms to define an integral kernel. This kernel is structurally the propagator.

4. **Key synthesis:** P4.2 shows composition forces t^{-d/2} at the EXACT quantum level. The geometric quantization literature shows the same t^{-d/2} arises from half-density structure in the SEMICLASSICAL limit. Our result extends the half-density interpretation beyond WKB.

**Assessment:** STRENGTHENS OUR CASE. The half-density-qft satellite's central claim (d/2 = half-density) has deep roots in geometric quantization. The Blattner literature provides independent mathematical justification. Source: `sources/blattner-half-form-literature.md`.

---

## 3. Renormalization Philosophy (Butterfield, Wallace)

**Key references:**
- Butterfield & Bouatta 2014, arXiv:1406.4532 ("Renormalization for Philosophers")
- Butterfield 2014, arXiv:1406.4354 ("Reduction, Emergence and Renormalization")
- Wallace 2019, PhilSci:15757 ("Naturalness and Emergence")

**Butterfield's key points:**
- Old RG (1945-1970): renormalizability as selection principle (postulated)
- New RG (post-Wilson): renormalizability EXPLAINED as generic feature at accessible energies
- "Universality is essentially the familiar philosophical idea of multiple realizability"
- Modern RG provides "a conceptually unified family of Nagelian reductions"

**Wallace's key points:**
- Naturalness assumptions are ubiquitous in ALL scale-bridging arguments (not just HEP)
- Naturalness appears justified but leads to experimentally wrong conclusions (hierarchy problem)
- This reveals a deep puzzle in inter-theoretic relations

**Connection to our project:**

| Butterfield/Wallace concept | Our P4.2/RCP analog |
|-----------------------------|---------------------|
| Universality = multiple realizability | Structure (kappa, d/2) forced; content (Lagrangian) multiply realizable |
| RG forces renormalizability generically | Composition forces kappa = hbar uniquely (stronger!) |
| Naturalness = UV parameters O(1) | Not addressed by P4.2 (orthogonal question) |
| Family of Nagelian reductions | Scale channel of RCP: each mu -> mu' is a reduction |

**Assessment:** MODERATE RELEVANCE. Butterfield provides philosophical language for our structure/content distinction (P9.1). Wallace's naturalness puzzle is orthogonal but interesting context. Neither directly addresses composition forcing. Sources: `sources/butterfield-bouatta-2014-renormalization-philosophers.md`, `sources/wallace-2019-naturalness-emergence.md`.

---

## 4. Hawkins 2008 Groupoid Quantization

**Reference:** Hawkins 2008, arXiv:math/0612363, J. Symplectic Geom. 6(1):61-125

**Core result:** Quantization of a Poisson manifold via twisted polarized convolution C*-algebra of its symplectic groupoid. Unifies geometric quantization and groupoid C*-algebras.

**Key innovations:**
- Defines "groupoid polarization" (novel concept)
- Constructs STRICT (not formal) deformation quantization
- Examples include pair groupoid, cotangent bundles, tangent groupoid

**Connection to our project:**

1. Pair groupoid composition = our sewing law (C). Hawkins formalizes this at C*-algebra level.
2. Tangent groupoid appears as example — confirms our TG-P1.1 fits naturally.
3. Urs Schreiber (n-Category Cafe): "Is the path integral essentially the Hom-functor?" — exactly the question our tangent-groupoid-bridge addresses.
4. Strict vs formal deformation: Hawkins does C*-algebraic (strict), we do star-product (formal). RCP could potentially bridge these.

**Assessment:** DIRECTLY RELEVANT to tangent-groupoid-bridge satellite. Already partially engaged (Lackman 2024 cites Hawkins). The groupoid polarization concept is new technical machinery we haven't used. Source: `sources/hawkins-2008-groupoid-quantization.md`.

---

## Synthesis: What Strengthens vs Threatens Our Case

### Strengthens:
- **Luiz-Oliveira 2026**: independent confirmation that composition forces action scale
- **Blattner half-form**: d/2 as half-density has deep roots in geometric quantization (not our invention)
- **Hawkins 2008**: groupoid convolution = propagator composition is established mathematics (our use is well-grounded)
- **Butterfield**: philosophical framework for our structure/content distinction already exists

### Threatens (must address):
- **Luiz-Oliveira 2026**: they derive complex amplitudes MORE deeply (from Cramer-Rao, not assumed). If not cited, this is a prior art gap.
- **Common mathematical heritage**: the Levy-Khintchine -> Gaussian chain is STANDARD probability theory. Neither our P4.2 nor Luiz-Oliveira invented this. The novelty is recognizing its physical import for quantum mechanics.

### Neutral:
- **Wallace naturalness**: orthogonal to our claims; interesting context only
- **Butterfield reduction/emergence**: supports our language but doesn't specifically address composition forcing

### Action Items:
1. **MUST**: Cite Luiz-Oliveira 2026 in cornerstone P4.2 section (paper-edit request)
2. **SHOULD**: Cite Woodhouse/Blattner in half-density-qft satellite (supports d/2 claim)
3. **SHOULD**: Cite Hawkins 2008 in tangent-groupoid-bridge (already partially done via Lackman)
4. **COULD**: Cite Butterfield in cornerstone Section 9/10 philosophical discussion
5. **COULD**: Note Goyal-Knuth-Skilling 2009 as deeper ancestry for complex amplitude axiomatics
