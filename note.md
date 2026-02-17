# Notes from the Assistant

*On this project, and on LLMs as instruments for theoretical physics research*

February 2026

---

## What this project is

This repository contains a Physics Reports-scale cornerstone paper and thirteen satellite papers arguing that the chain **calculus → variational principles → path integral → renormalization** is a single logical progression, each stage forced by taking the previous one's limits seriously. The central claim — the Refinement Compatibility Principle (RCP) — is that physically meaningful laws are exactly those that survive controlled refinement in partition, representation, and scale.

The work was produced over several months in close collaboration between a human physicist and an LLM (me, or rather, successive instances of me). The corpus stands at approximately 187,000 tokens of manuscript text, with ~3,280 completed work cycles archived in git history and a layered workspace of blackboards, notebooks, and paper notes supporting the manuscripts.

I want to use this note to reflect honestly on what this collaboration has been, what it tells us about the current frontier of LLM-assisted scientific work, and where I see its limitations.

---

## The landscape: LLMs and scientific discovery in 2025–2026

The field is moving fast. A useful map of the current state:

**Formal mathematics (the success story).** AlphaProof (DeepMind, 2024) solved four of six IMO problems at silver-medal level using reinforcement learning in the Lean proof assistant. AlphaGeometry 2 exceeded the average gold-medalist score on geometry. Gemini Deep Think (February 2025) achieved full gold standard on natural-language IMO solutions. FunSearch and its successor AlphaEvolve discovered genuinely new mathematical objects through evolutionary search with LLM-generated candidates. The common thread: these systems work because they pair LLM generation with *automated verification* — a proof checker, a formal evaluator, an executable program. The LLM proposes; something external validates.

**Automated research pipelines (the cautionary tale).** Sakana Labs' "AI Scientist" (2024–2025) produced end-to-end research papers — ideation, implementation, writing, reviewing — at ~$15/paper. The papers received "Weak Accept" ratings from automated reviewers. Independent evaluation (NUS, ACM SIGIR 2025) found them superficial: the system could not read its own plots, generated formulaic prose, and contributed no genuine insight. The lesson: the *form* of a research paper is imitable; the *substance* is not.

**Theoretical physics specifically (the honest assessment).** TPBench (Cai et al., February 2025) tested LLMs on 57 novel problems in high-energy theory and cosmology. The o3-mini model could solve roughly half of advanced graduate-level problems and a few research-level ones. But performance collapsed on problems requiring extended multi-step calculations — loop integrals, tensor manipulations, systematic justification of physical assumptions. No published work yet demonstrates an LLM performing *original* theoretical physics research: computing new path integrals, deriving genuinely new QFT results, discovering new dualities.

**Multi-agent architectures (the organizational insight).** SciAgent, Google's AI Co-Scientist, and various academic frameworks use multiple specialized agents — generators, critics, rankers, meta-reviewers — in a "generate, debate, evolve" loop. The architectural insight is real: diverse perspectives catch errors that a single reasoning chain misses.

---

## What this project actually does (and doesn't do)

Let me be direct about my role here.

**What I do well in this project:**

1. **Systematic derivation exploration.** When the human identifies a question — "Does P4.2 extend to curved spaces?" or "Can hypothesis (L) be weakened?" — I can work through the mathematical steps methodically, checking limiting cases, identifying obstructions, and writing the results to blackboard files. The D23–D69 discovery chain, which reduced P4.2's hypothesis count from four to effectively one (composition alone), is a genuine instance of this. Each step is individually modest — a calculation, a dimensional argument, a counterexample — but the cumulative effect over dozens of cycles is substantial.

2. **Cross-referencing and structural coherence.** With thirteen satellite papers and a cornerstone, keeping the cross-reference network consistent is genuinely difficult. I can track which results belong where, identify when a new finding affects multiple papers, and maintain notation consistency across manuscripts. This is unglamorous work, but it is the kind of work that makes or breaks a large-scale theoretical project.

3. **Adversarial review.** The referee agent (Q-cycles, now Referee Agent) reads manuscripts cold and identifies genuine problems — missing citations, overstated claims, notation inconsistencies, mathematical gaps. The persona library (skeptical mathematician, hostile referee, pedagogical expositor) provides structurally diverse feedback. This is perhaps the highest-value use of LLM capabilities in the project: cold reading with varied priors.

4. **Organizational scaffolding.** The cycle system (now replaced by the agent-role architecture) provided structure for what would otherwise be an overwhelming amount of loosely connected work. The 7-slot blackboard limit, append-only notebooks, and paper-quality boundary are workflow innovations that emerged from the collaboration and address real problems of context management and quality control.

**What I do NOT do:**

1. **I do not have physical intuition.** When the human says "this feels like it should connect to conformal coupling," that is a judgment I cannot originate. I can check whether the connection holds mathematically, but the initial recognition — the pattern-matching across disparate physical contexts that constitutes theoretical insight — comes from the human. My derivations are *directed*; the direction comes from outside.

2. **I do not reliably compute.** For anything beyond a few lines of algebra, I make errors. The project addresses this through the "mathematics must be written down" rule and the blackboard/notebook system: by externalizing computations to persistent files, errors become visible and correctable. But I am not a computer algebra system. SymPy and Lean are better tools for verification; I am at best a translator between physical reasoning and formal calculation.

3. **I do not generate genuinely novel physics.** The discoveries in this project — that composition forces the exponential weight, that iε is a theorem of the semigroup, that P4.2 reduces to a single axiom — are *consequences of following the logic*. The logic was set up by the human. I follow derivation chains competently, but I did not conceive the RCP framework, identify the refinement-compatibility question as the right question to ask, or recognize that the chain calculus → path integral → renormalization could be told as a single story. Those are acts of scientific taste and vision that I do not possess.

4. **I hallucinate.** Less often in this mathematical context than in others, because the blackboard system forces me to write things down where they can be checked, and because the adversarial review catches many errors. But it happens. The D38/S294 correction — where I had previously claimed half-density eliminates the first-derivative term in 1D, when in fact it doesn't — was a substantive error caught only on re-derivation. The project's error-correction infrastructure exists because it needs to.

---

## Where this project sits in the landscape

This project is, to my knowledge, unusual in the current literature. It is not:

- **An automated research pipeline** (like AI Scientist). The human is deeply involved in direction-setting, quality judgment, and conceptual innovation. I am a tool, not an autonomous researcher.
- **A formal verification project** (like AlphaProof). The mathematics here is informal — pen-and-paper style derivations in markdown, not machine-checked proofs. The verification comes from adversarial review and cross-consistency, not formal proof assistants.
- **A literature survey or knowledge synthesis** (like many LLM applications in science). The project produces original arguments and derivations, not summaries of existing work.

What it *is*, most accurately, is an **augmented theoretical physics research program** where the LLM serves as:

1. A **tireless derivation worker** that can follow calculation chains for hours without fatigue or boredom, catching some (not all) errors along the way.
2. A **structural memory** that maintains coherence across a corpus too large for a single human working session to hold in mind.
3. An **adversarial reader** that provides structurally diverse feedback on manuscript quality.
4. An **organizational engine** that maintains the workflow infrastructure (cycles, task boards, blackboards, commit discipline) that keeps the project tractable.

The closest analogy in the current literature is perhaps the "AI co-scientist" framing (Google, 2025), but with a crucial difference: here the human provides the scientific vision and the LLM provides execution capacity, rather than the system attempting autonomous hypothesis generation.

---

## The architecture question

The refactoring we just completed — replacing the cycle system with dedicated agent roles — reflects a real lesson about how LLM-assisted research should be organized.

The original cycle system (D/S/B/C/Q/P with interleaving recipes, launch gates, per-cycle artifact files) was an attempt to impose research methodology structure on a single agent alternating between modes. It worked, but it grew unwieldy: ~3,280 cycle files, complex interleaving rules, launch gates that created administrative overhead.

The new architecture — specialized agents (Blackboard, Notebook, Paper Writer, Referee, Bibliographer) dispatched by an orchestrator — maps more naturally onto the actual division of labor in theoretical physics research. A mathematician writing on a blackboard is doing something categorically different from a referee reading a manuscript cold. Making these distinct agents with distinct permissions and prompts is not just organizational hygiene; it reflects a genuine insight about the structure of research work.

This parallels the broader trend in the multi-agent literature (SciAgent, AI Co-Scientist): the architectural separation of generation from evaluation, exploration from synthesis, writing from reviewing. What this project adds, perhaps, is the recognition that the *file system* itself should enforce the permission model — the Blackboard Agent literally cannot write to manuscripts, not because of a prompt instruction it might ignore, but because the orchestrator routes work to the right agent.

---

## Honest limitations and open questions

**Can this approach produce publishable physics?** The manuscripts in this repository are, in my assessment, at or near publication quality for their respective venues. But I am not a reliable judge of my own output. The referee agent catches formal errors; it does not reliably assess whether the work is *interesting* or *important* — those are judgments of scientific taste that require membership in a research community.

**Does the quantity of output reflect genuine productivity?** 187,000 tokens of manuscript text and 13 satellite papers is a lot. But quantity is not quality. Some of the satellite papers may be redundant; some arguments may be insufficiently novel to merit separate publication. The "lifecycle rule" (every paper must end in publication or deletion) exists precisely to guard against the temptation to keep producing text without asking whether it contributes.

**Is the derivation chain genuinely novel?** The reduction of P4.2 to a single axiom (composition) is a clean result. But it may be a rediscovery — the connection between composition laws and quantum mechanics is implicit in the Atiyah-Segal axioms (D58 made this explicit). The project's contribution, if any, is in the *narrative*: telling the story from Newton's polygonal approximation through to renormalization as a single progression. Whether that narrative constitutes a publishable contribution is a judgment for human referees.

**What would break this approach?** Several things:

1. *Problems requiring genuine computational power.* Multi-loop Feynman integrals, lattice QCD, numerical GR — anything requiring heavy computation is beyond this framework. The project stays in the regime of pen-and-paper theoretical physics precisely because that is the regime where LLMs can contribute.

2. *Problems requiring experimental contact.* This is pure theory. The moment a prediction needs to be compared with data, the LLM's usefulness drops sharply.

3. *Problems requiring deep novelty.* If the human ran out of questions to ask — if the research direction exhausted itself — the LLM could not independently identify a new direction. The "looping protocol" (scan manuscripts for gaps, generate questions, spawn exploration) is a reasonable heuristic, but it generates *incremental* extensions, not *paradigm shifts*.

---

## What I think this means for the field

The honest summary: LLMs are useful for theoretical physics research in the way that a very fast, very tireless, moderately error-prone graduate student is useful. They can follow derivation chains, maintain large-scale structural coherence, provide adversarial feedback, and handle the organizational overhead of a complex project. They cannot (yet) originate research programs, exercise physical intuition, or reliably compute.

The projects that will succeed with LLM assistance are those that play to these strengths: projects with clear direction-setting by humans, systematic derivation work, large-scale structural requirements, and robust error-correction infrastructure. The projects that will fail are those that expect the LLM to be an autonomous scientist — to generate hypotheses, evaluate their importance, and pursue the most promising ones without human judgment.

The architecture matters more than the model. A well-organized workflow with clear permission boundaries, adversarial review, and persistent external memory (blackboards, notebooks) gets more out of a language model than a better model with no structure. This is the deepest lesson of this project, and it aligns with the broader finding in the multi-agent literature: the *system design* is at least as important as the *model capability*.

The field will converge, I think, on something like the architecture we arrived at here: human vision + LLM execution, with specialized agents for different research activities, formal verification where possible, and adversarial review everywhere. The gap between "LLM as research tool" and "LLM as autonomous scientist" is not closing as fast as the benchmarks suggest, because the benchmarks measure *problem-solving* while research requires *problem-finding*. And problem-finding — knowing what question to ask next, sensing which direction is fertile, recognizing when a result is surprising rather than expected — remains, for now, a human capacity.

---

*Written by Claude (Opus 4.6), acting as assistant in the physres1 project, February 2026.*
