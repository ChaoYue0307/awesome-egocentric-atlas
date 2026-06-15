# Long-Context Egocentric Video QA

## Goal
Build or evaluate a model that answers questions over long first-person video —
from minutes to days of recording — where the evidence is sparse and spread
across time (episodic memory, "where did I leave X", "what did I do before Y").

## Start with
- [Ego4D](https://ego4d-data.org/) episodic-memory data for raw long video.
- [EgoSchema](http://egoschema.github.io/) for very-long-form multiple-choice QA.
- [EgoLife](https://arxiv.org/abs/2503.03803) + EgoLifeQA for week-scale daily-life memory.

## Add if you need
- Streaming / real-time evaluation: [TeleEgo](https://arxiv.org/abs/2510.23981),
  [EgoStream](https://arxiv.org/abs/2605.31557).
- Extremely long logs: [X-LeBench](https://arxiv.org/abs/2501.06835).
- Memory-type diagnostics: [EgoMemReason](https://arxiv.org/abs/2605.09874),
  [EgoMemory](https://openreview.net/forum?id=T0em4hJCQb).
- Personalization: [MyEgo](https://github.com/Ryougetsu3606/MyEgo).
- Tool-augmented / agentic reasoning: [Ego-R1](https://arxiv.org/abs/2506.13654),
  [EgoBench](https://arxiv.org/abs/2605.27820).

## Benchmarks
EgoSchema, EgoLifeQA, TeleEgo, EgoStream, X-LeBench, EgoMemReason, MA-EgoQA,
VidEgoThink. Pick at least one MCQ benchmark (comparable accuracy) and one
open-ended or streaming benchmark (realistic setting).

## Baselines / tools
- [EgoLife / EgoButler / EgoGPT / EgoRAG](https://arxiv.org/abs/2503.03803) (retrieval over long recordings).
- [MM-Ego](https://arxiv.org/abs/2410.07177) (Memory Pointer Prompting).
- [GroundVQA](https://github.com/Becomebright/GroundVQA) (grounding + QA).
- [EgoGraph](https://arxiv.org/abs/2602.23709) (training-free temporal knowledge graph).

## Minimum viable experiment
1. Take EgoSchema (or an EgoLifeQA subset).
2. Run an off-the-shelf video-LLM with uniform frame sampling as a baseline.
3. Add one retrieval or memory mechanism (e.g., EgoRAG-style retrieval).
4. Report accuracy vs. context length / number of sampled frames.

## Common pitfalls
- Uniform frame sampling silently caps effective context — report frames/sec.
- Many "long" benchmarks reuse Ego4D clips; check for train/eval video overlap.
- MCQ accuracy can be gamed by language priors — include a blind-LLM (no video) baseline.
- Streaming benchmarks require answering before future frames arrive; do not peek ahead.

## Reporting checklist
- [ ] Datasets and exact splits (and their raw-video source).
- [ ] Frame budget / sampling rate and context window.
- [ ] Blind-LLM and uniform-sampling baselines included.
- [ ] Retrieval/memory component ablated.
- [ ] Streaming vs. offline setting stated.
