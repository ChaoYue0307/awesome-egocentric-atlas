# Evaluation Guide

Match the benchmark's information access and scoring protocol to the capability
being claimed. Accuracy on an offline multiple-choice clip task does not measure
online assistance, long-term memory, or closed-loop robot success.

## Choose the task

| Capability | Starting points | Comparison boundary |
| :--- | :--- | :--- |
| Clip-level semantic understanding | [EgoSchema](https://egoschema.github.io/), [EgoExo-Next](https://huggingface.co/datasets/yutongli2024/EgoExo-Next) | Match clip selection, frame sampling, answer options, and access to ego/exo views. |
| Streaming and proactive memory | [ProactEgoMem](https://proactegomem.github.io/), [APM-Bench](https://huggingface.co/datasets/Jianguo-Huang11/APM-Bench), [NextMe-800 / NextAct](https://huggingface.co/datasets/mmm8383/NextMe-800) | Record memory writes, history length, tool calls, latency and allowed visual evidence. Some packages are gated or incomplete. |
| Causal and spatial reasoning | [EMBER-Bench](https://github.com/ZHAOAlexGoat/EMBER-Bench), [Ego-SpaCR](https://github.com/joeliang0520/SAPCR-MEM), [TempCloze](https://huggingface.co/datasets/CedPei/TempCloze) | Separate next-action prediction, causal explanation, object grounding and temporal ordering. |
| Wearable safety and intervention | [STOU](https://onedayoneyeah.github.io/safety-for-whom/), [EgoWearBench](https://huggingface.co/datasets/facebook/wearable-ai), [EgoArgus](https://github.com/NYCU-NLP-Lab/EgoArgus) | Score harm understanding separately from refusal and intervention timing; confirm access and reuse rights first. |
| Localization and sensor fusion | [SlugTrails](https://github.com/Head-inthe-Cloud/SlugTrails), [Project Aria datasets](https://www.projectaria.com/datasets/) | State coordinate systems, map availability, alignment procedure and tracking failures. |
| World-model prediction | [PWM-Bench](https://huggingface.co/datasets/AIGeeksGroup/PWM-Bench), [Ropedia W0](https://github.com/Ropedia/ropedia-w0) | Match conditioning, horizon, seed count and customization budget. Video fidelity is not robot task success. |

These are task-oriented starting points, not a ranking or a claim that every
listed evaluator is released. Check the per-resource notes in the
[October guide](updates/2026-10-29.md) and the primary repository.

## Prevent leakage

1. **Split at the source level.** Keep clips, overlapping time windows, camera
   views and derived captions from one recording together. Check subject, home,
   scene, task and source-video overlap between training and evaluation.
2. **Respect causal access.** A streaming model must not see future frames,
   full-video summaries or future-aware captions. Log evidence available at each
   query and reset memory at the protocol's defined boundary.
3. **Separate adaptation from evaluation.** Disclose demonstrations, retrieval
   corpora, prompt tuning and test-time updates. Do not train on evaluation
   annotations simply because they are downloadable. ProactEgoMem explicitly
   prohibits training on its benchmark data, including development items.
4. **Match the inference budget.** Fix frame/audio sampling, resolution, context
   length, retrieval budget and tool access. Report API/model versions and both
   accuracy and cost/latency when comparing memory or agent systems.
5. **Control judging.** Version the evaluator and prompts. For model-based judges,
   record the judge version, sampling parameters and invalid-answer handling;
   human-check a stratified sample of disagreements.

## Count the right thing

Dataset rows, questions, frames, clips, hours and unique participants are not
interchangeable. Multi-camera hours should not be silently counted as independent
human experience. Derived annotations do not add new recording hours.

Examples from the October 2026 release checks:

- **STOU:** the paper describes 2,902 queries, while the documented gated release
  contains 1,952 instances. State which release was evaluated.
- **Ego-SpaCR:** the annotation package has 3,218 questions; the official evaluation
  protocol uses the 3,100 `official_eval` questions.
- **EgoExo-Next:** the benchmark has 2,503 questions. Its larger image-table row
  count is not the question count.
- **EgoWearBench:** the card lists 700 samples for each of three tasks. That does
  not establish 2,100 unique source videos.
- **Eidon Tracker POV:** video and IMU repositories describe paired streams from
  the same corpus, not additive hours of new experience.

## Minimum report

Record the dataset revision and checksums, source-video dependencies, split IDs,
number of valid/failed cases, preprocessing, model and checkpoint versions,
prompt, seed, inference budget, evaluator revision, and metric aggregation.
Include per-task results and uncertainty at an appropriate independent unit
(such as recording or participant), rather than treating correlated frames as
independent samples. Publish failure cases and distinguish missing media,
invalid labels, refusals and model errors.

For closed-loop robot claims, also report embodiments, environments, task
definitions, trial counts, resets, intervention rules and success adjudication.
An offline world-model score or retargeted trajectory fit does not replace that
evaluation. See the [robot/VLA recipe](recipes/robot-vla-from-ego-video.md).
