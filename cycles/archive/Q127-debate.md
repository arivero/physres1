# Q127 Debate: Is "Wick rotation as control data" an overclaim?

Date: 2026-02-13

## Question
Remark 3.9 ends with the statement: "The well-defined limit object requires Wick rotation as additional 'control data,' and neither the formal Minkowski expression nor any finite time-slicing captures the answer." Is "Wick rotation as control data" an overclaim? One could argue that Wick rotation is a mathematical technique (analytic continuation in time), not intrinsic "control data" in the same sense as a refinement rule or ordering convention.

## Recommendation
**Not an overclaim, within the paper's framework.** The paper defines "control data" broadly as any specification required beyond naive finite approximants for the limit to be well-defined. In this sense, specifying that the path integral should be defined via Euclidean signature (and then analytically continued back) is indeed extra data: the formal Minkowski expression does not define a measure, and the choice to go Euclidean is a non-trivial decision that shapes the mathematical object. This is analogous to specifying a metric (Cauchy) versus an order (Dedekind) in Remark 1.3 -- both are "choices of how to take the limit" rather than properties of any finite approximant. The phrasing is defensible and consistent with the paper's terminology. No change needed.

A referee might push back by noting that the Minkowski path integral can be given meaning through other frameworks (white-noise analysis, Colombeau algebras, or direct oscillatory-integral methods) without literally Wick-rotating. The remark's claim is strongest when read as: among *measure-theoretic* approaches, Wick rotation is required. This reading is supported by the explicit mention of Cameron's theorem (which is specifically about sigma-additive measures). The remark does not claim that no other mathematical framework can make sense of the Minkowski integral -- only that no sigma-additive measure can.
