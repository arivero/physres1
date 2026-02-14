# S283 Debate: Is the conjugation potential truly "universal" or does it depend on the scalarization choice?

Date: 2026-02-14

## Question
The derivation claims \(V(p) = \tfrac{1}{6}R\) is "universal" (all metrics, all \(D\)). But the half-density conjugation uses \(|g|^{1/4}\) as the reference half-density. If a different nowhere-vanishing half-density \(\mu^{1/2}\) were chosen, the conjugation potential would differ. In what sense is \(V = \tfrac{1}{6}R\) canonical?

## Working answer
The claim is universal *within the metric scalarization*: given a Riemannian metric \(g\), the choice \(|g|^{1/4}\) is the unique positive half-density determined by the metric alone (up to a constant). Any other choice \(\mu^{1/2} = f \cdot |g|^{1/4}\) produces a conjugation potential \(V' = V + \text{terms involving } f\), and the difference is a scalarization artifact. The statement "the metrically natural conjugation potential is \(\tfrac{1}{6}R\)" is universal: it holds for any metric, in any dimension, and is the unique result when the scalarization is determined by the metric. The Seeley-DeWitt coefficient \(a_1 = (\tfrac{1}{6}-\xi)R\) is independent of the scalarization choice entirely (it is a spectral invariant of \(P\)), so the split into \(V\) and \(\xi R\) is scalarization-dependent but their difference is invariant.

## Next check
Verify that the \(a_1\) coefficient is indeed scalarization-independent by checking that it equals the coefficient of \(t^1\) in the asymptotic trace, which is intrinsic. This is standard (Vassilevich2003, Eq. 4.1).
