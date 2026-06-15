# Robot / VLA Learning from Egocentric Human Video

## Goal
Use first-person human manipulation video to pretrain or supervise a
vision-language-action (VLA) policy, then transfer to a robot. The bet: human
egocentric video offers scene/task diversity that teleoperated robot data cannot.

## Start with
- [Xperience-10M](https://huggingface.co/datasets/ropedia-ai/xperience-10m) (multimodal human experience at scale).
- [EgoDex](https://arxiv.org/abs/2505.11709) (Apple Vision Pro dexterous manipulation).
- [OpenEgo](https://arxiv.org/abs/2509.05513) (unified manipulation over public ego datasets).
- [Ego-Exo4D](https://ego-exo4d-data.org/) (paired ego-exo for skill/transfer).

## Add if you need
- More human demonstrations: [EgoVerse](https://egoverse.ai/),
  [EgoLive](https://arxiv.org/abs/2604.23570),
  [World in Your Hands](https://arxiv.org/abs/2512.24310).
- Hand-trajectory / 3D targets: [EgoPAT3D](https://arxiv.org/abs/2403.05046),
  [EgoHandTrajPred / USST](https://actionlab-cv.github.io/EgoHandTrajPred).
- Tactile / contact: [EgoTouch / TouchAnything](https://jianyi2004.github.io/TouchAnything-Website/).
- Always-on collection at scale: [AoE](https://arxiv.org/abs/2602.23893).
- Robot-only corpora to fine-tune/eval on (adjacent, not egocentric):
  [Open X-Embodiment](https://robotics-transformer-x.github.io/),
  [MV-RoboBench](https://github.com/microsoft/MV-RoboBench).

## Benchmarks
Human→robot transfer is mostly evaluated on the target robot setup. Use the
Xperience-10M task suite for human-side evaluation; use Open X-Embodiment / RT-X
style suites or your own robot for the robot side. Report both.

## Baselines / tools
- [EgoVLA](https://rchalyang.github.io/EgoVLA/) (VLA from ego video + robot fine-tuning).
- [EgoEngine](https://egoengine.github.io/) (ego video → robot observation/action data).
- [EgoAERO](https://arxiv.org/abs/2606.08057) (single-demo dexterous learning).
- [HOMIE-toolkit](https://github.com/Ropedia/HOMIE-toolkit) (load Xperience-10M annotations).

## Minimum viable experiment
1. Pretrain a visual encoder / policy on one ego corpus (e.g., EgoDex or OpenEgo).
2. Fine-tune on a small robot dataset (or one embodiment of Open X-Embodiment).
3. Compare against the same policy trained from scratch / from robot data only.
4. Report success rate vs. amount of robot fine-tuning data.

## Common pitfalls
- Human↔robot embodiment gap (morphology, viewpoint, dynamics) — state your
  retargeting/inpainting choices explicitly.
- Wrist-camera vs. head-camera viewpoint mismatch between human and robot.
- Mixing robot-only data into an "egocentric" claim — keep `scope: adjacent`
  sources clearly labeled.
- Many ego-VLA datasets are `watch`; confirm the release path before depending on one.

## Reporting checklist
- [ ] Pretraining corpus, license, and scope (egocentric vs. adjacent).
- [ ] Retargeting / embodiment-gap handling described.
- [ ] Robot fine-tuning data size and embodiment.
- [ ] From-scratch and robot-only baselines.
- [ ] Success metric and number of trials/seeds.
