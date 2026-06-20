# Taxonomy

This page explains the labels used to filter the catalog. The machine-readable
source is [`data/taxonomy.yml`](../data/taxonomy.yml); the validator uses it to
flag any task/modality token in [`data/resources.yml`](../data/resources.yml)
that is not yet in the controlled vocabulary (a warning, never a failure).

The catalog deliberately keeps fine-grained `tasks:` and `modalities:` tokens on
each resource. The taxonomy groups those tokens into a smaller set of **families**
so you can filter by a broad theme without memorizing every tag.

## How to filter

- **By status** — `open`, `request`, `benchmark`, `partial`, `watch`. See
  [status_policy.md](status_policy.md) for what each one means and how it is decided.
- **By kind** — `dataset`, `benchmark`, `model`, `toolkit`, `survey`, `challenge`,
  `collection`.
- **By scope** — `egocentric` (default) or `adjacent` (related but not first-person).
- **By task family or modality family** — the groups below.

Example (Ruby, no dependencies):

```ruby
require "yaml"
resources = YAML.load_file("data/resources.yml")["resources"]
# all open hand-object datasets
resources.select { |r| r["status"] == "open" && Array(r["tasks"]).include?("hand-object") }
```

## Task families

Each family lists the canonical theme; the full alias list lives in
`data/taxonomy.yml` under `task_families`.

| Family | Covers (examples) |
|---|---|
| `foundation-and-representation` | foundation-video, representation-learning, pretraining |
| `video-language` | video-language, captioning, retrieval, scene-text |
| `question-answering` | qa, vqa, egocentric-vqa, egomcq |
| `memory-and-long-context` | episodic-memory, long-context-qa, streaming-memory |
| `reasoning-intent-planning` | intent, planning, causal-reasoning, theory-of-mind, forecasting |
| `action-and-procedure` | action-recognition, anticipation, procedure/event-learning, mistake-detection |
| `hand-object-interaction` | hand-object, contact-understanding, bimanual-manipulation |
| `pose-and-body` | 3d-human-pose, body-pose, mesh-recovery, motion |
| `tracking` | object-tracking, long-term-object-tracking, re-detection |
| `detection-segmentation` | object-detection, object-discovery, segmentation, gesture-recognition |
| `three-d-and-scene` | 3d-reconstruction, scene-understanding, depth, novel-view-synthesis |
| `generation-and-world-models` | video-generation, world-modeling |
| `grounding-localization` | natural-language-query, temporal-grounding, referring-expression, FOV/person localization |
| `robotics-and-vla` | vla, manipulation, imitation-learning, cross-embodiment-transfer |
| `audio-and-social` | audio-visual, sound-understanding, social, theory-of-mind |
| `assistance-and-agents` | interactive-assistance, tool-using-agents, instructional-dialogue |
| `ar-sensing-navigation` | gaze, attention, imu, slam/navigation, sensor-fusion |
| `skills-and-quality` | skill-assessment, proficiency, action-quality |
| `evaluation-and-tooling` | benchmark, evaluation, tooling, multi-view, cross-view |

## Modality families

| Family | Covers (examples) |
|---|---|
| `visual` | rgb, egocentric-video, fisheye/stereo/multiview video, photostreams, event streams, synthetic renders |
| `depth` | depth, rgb-d, stereo-depth |
| `audio-language` | audio, speech, text, narrations, language instructions |
| `gaze-motion` | gaze, eye-tracking, imu, head pose, trajectory |
| `pose-mocap` | hand/body/camera/object pose, mocap, 6DoF |
| `hand-object-geometry` | contact, hand/object masks, object meshes, articulated objects |
| `scene-3d` | point clouds, scene scans, digital twins, calibration |
| `device-and-labels` | aria/quest/hololens formats, rlds, action labels, annotations |

## Alias consolidation

Common synonyms are merged onto one family so filtering stays robust. For example:

- `long-context-qa`, `episodic-memory`, and `memory-reasoning` all live under
  `memory-and-long-context`.
- `nlq`, `natural-language-query`, and `temporal-grounding` live under
  `grounding-localization`.
- `vla`, `manipulation`, and `imitation-learning` live under `robotics-and-vla`.

When you add a resource, reuse existing tokens where possible. If you introduce a
new token, the validator will warn until it is added to `data/taxonomy.yml` — add
it to the closest family in the same PR.
