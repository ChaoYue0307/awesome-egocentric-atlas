<p align="center">
  <img src="assets/awesome-egocentric-atlas-cover.png" alt="Awesome Egocentric Atlas cover" width="100%">
</p>

<h1 align="center">Awesome Egocentric Atlas</h1>

<p align="center">
  <img src="assets/awesome-egocentric-logo.png" alt="Awesome Egocentric Atlas logo" width="118">
</p>

<p align="center">
  <strong>A curated map of first-person AI — datasets, benchmarks, models, and tools.</strong>
</p>

<!-- LANG-BAR:START -->
<p align="center">
  <a href="README.md"><b>English</b></a> ·
  <a href="README.zh.md">中文</a> ·
  <a href="README.es.md">Español</a> ·
  <a href="README.fr.md">Français</a> ·
  <a href="README.de.md">Deutsch</a> ·
  <a href="README.ja.md">日本語</a> ·
  <a href="README.ko.md">한국어</a> ·
  <a href="README.pt.md">Português</a> ·
  <a href="CONTRIBUTING.md">Help translate</a> ·
  <a href="https://chaoyue0307.github.io/awesome-egocentric-atlas/">Landing page</a> ·
  <a href="https://huggingface.co/datasets/cy0307/awesome-egocentric-atlas">Hugging Face mirror</a>
</p>
<!-- LANG-BAR:END -->

<p align="center">
  <a href="https://github.com/sindresorhus/awesome"><img alt="awesome" src="https://awesome.re/badge-flat2.svg"></a>
  <a href="https://github.com/ChaoYue0307/awesome-egocentric-atlas/actions/workflows/validate.yml"><img alt="validate" src="https://github.com/ChaoYue0307/awesome-egocentric-atlas/actions/workflows/validate.yml/badge.svg"></a>
  <a href="https://chaoyue0307.github.io/awesome-egocentric-atlas/"><img alt="project site" src="https://img.shields.io/badge/site-GitHub%20Pages-067882"></a>
  <a href="https://huggingface.co/datasets/cy0307/awesome-egocentric-atlas"><img alt="Hugging Face mirror" src="https://img.shields.io/badge/Hugging%20Face-mirror-ffcc4d"></a>
  <a href="data/resources.yml"><img alt="resources" src="https://img.shields.io/badge/resources-456-0097A7"></a>
  <a href="README.md#dataset-atlas"><img alt="datasets" src="https://img.shields.io/badge/datasets-vision%20%7C%20robotics%20%7C%20memory-344054"></a>
  <a href="README.md#models-tools-and-baselines"><img alt="models and tools" src="https://img.shields.io/badge/models-and%20tools-F5A623"></a>
  <a href="LICENSE"><img alt="license" src="https://img.shields.io/badge/license-MIT-667085"></a>
  <a href="CONTRIBUTING.md"><img alt="PRs welcome" src="https://img.shields.io/badge/PRs-welcome-22A06B"></a>
</p>

**Awesome Egocentric Atlas** maps the egocentric (first-person) AI landscape — datasets, benchmarks, models, and tools spanning egocentric vision, embodied AI and robotics, vision-language-action, world models, long-context memory, AR/VR, and hand-object interaction. Every entry shows its public-access status, so you can tell at a glance what you can download today and what is still just a paper.

**Updated:** 2026-06-20.
**Scope:** the main atlas is **human or animal first-person capture** from head, glasses, headset, body, wrist, handheld, or synchronized ego-exo rigs (where the ego view is central). Related but non-egocentric resources — robot-only datasets, multi-view robotic benchmarks, autonomous-driving 4D data, and general long-video reasoning — are listed separately under [Adjacent and Related Resources](#adjacent-and-related-resources) rather than in the main tables.

<p align="center">
  <img src="assets/awesome-egocentric-atlas-map.png" alt="Awesome Egocentric Atlas system map" width="100%">
</p>

## Contents

- [How to Use This Atlas](#how-to-use-this-atlas)
- [At a Glance](#at-a-glance)
- [Milestones](#milestones)
- [Start Here](#start-here)
- [Landscape Snapshot](#landscape-snapshot)
- [Creator and Release Notes](#creator-and-release-notes)
- [Status Legend](#status-legend)
- [Fast Task Map](#fast-task-map)
- [Recipes and Reference](#recipes-and-reference)
- [Dataset Atlas](#dataset-atlas)
- [Benchmarks and Derived Annotations](#benchmarks-and-derived-annotations)
- [Models, Tools, and Baselines](#models-tools-and-baselines)
- [Adjacent and Related Resources](#adjacent-and-related-resources)
- [Surveys, Papers, and Context](#surveys-papers-and-context)
- [Workshops and Challenges](#workshops-and-challenges)
- [Watchlist](#watchlist)
- [Inclusion Rules](#inclusion-rules)
- [Contributing](#contributing)
- [Cite This Atlas](#cite-this-atlas)

## How to Use This Atlas

Use the first two tables to orient yourself, then jump into the detailed atlas section that matches your task. Each entry is deliberately short: name, release date (year-month, from the first public/arXiv posting where known), venue (conference/journal where published, or `arXiv`/source for preprints), scale/signal, best use, and public status. For filtering by task, modality, status, or date, use the catalog in [`data/resources.yml`](data/resources.yml), where every entry carries a `released` field; label meanings and filter groups are explained in [docs/taxonomy.md](docs/taxonomy.md). Task-oriented [research recipes](#recipes-and-reference) walk you from goal to experiment.

Prefer a browsable view? The [interactive site](https://chaoyue0307.github.io/awesome-egocentric-atlas/) lets you filter the catalog by task, status, and date in eight languages, and the same catalog is mirrored as a dataset on [Hugging Face](https://huggingface.co/datasets/cy0307/awesome-egocentric-atlas).

<p align="center">
  <img src="assets/awesome-egocentric-reader-route.png" alt="Awesome Egocentric Atlas reader route" width="100%">
</p>

## At a Glance

| Signal | What it means for readers |
| :--- | :--- |
| 456 egocentric resources | 125 datasets, 81 benchmarks, 226 models, and 23 toolkits, plus a Project Aria collection hub — across vision, robotics, memory, and AR. Four related non-egocentric resources are listed separately. |
| 6 research lanes | Foundation video, procedure/action, hands and 3D, memory/reasoning, robotics/VLA, and AR/wearable sensing. |
| 5 access states | `open`, `request`, `benchmark`, `partial`, and `watch` keep availability visible before you plan experiments. |
| Machine-checked catalog | [`data/resources.yml`](data/resources.yml) mirrors the README with type, year, status, URL, tasks, and provenance — and CI validates it on every change. |
| Reader-first tables | Each entry is short enough to scan, then links out to the official page, paper, code, or dataset portal. |

<p align="center">
  <img src="assets/awesome-egocentric-timeline.png" alt="Egocentric resources by era" width="100%">
</p>

## Milestones

The landmark works that shaped egocentric AI — a fast on-ramp from the field's origins to its current frontier. Generated from entries tagged `milestone:` in [`data/resources.yml`](data/resources.yml).

<p align="center">
  <img src="assets/awesome-egocentric-milestones.png" alt="Illustrated milestone timeline for representative egocentric AI works" width="100%">
</p>

<!-- MILESTONES:START (generated by build_artifacts.rb — do not edit by hand) -->

<!-- MILESTONES:END -->

## Start Here

| Reader | Best first move | Then go deeper |
| :--- | :--- | :--- |
| New to egocentric vision | Read Ego4D, EPIC-KITCHENS-100, Ego-Exo4D, and EgoSchema first. | Add EgoClip/EgoVLP for video-language, VISOR for masks, and HOT3D/HOI4D for 3D hand-object work. |
| Building a benchmark table | Start from the `open` and `benchmark` entries, then inspect `request` licenses. | Use the YAML catalog to filter by task and modality. |
| Building an assistant or agent | Start with Ego4D, Xperience-10M, EgoLife, TeleEgo, EgoSchema, MyEgo, EgoIntrospect, EgoBench, UCS-Bench, and Ego2Web. | Track Ego-R1, X-LeBench, EgoMemReason, StreamMemBench, ReFocus, EgoCoT-Bench, EgoBlind, EgoSound, and NoRA for reasoning diagnostics. |
| Building a robot/VLA system | Start with Xperience-10M, EgoDex, EgoVerse, Ego-Exo4D, HoloAssist, HOI4D, HOT3D, Assembly101, OpenEgo, UMI, FastUMI-100K, EgoPAT3D, HUG, and WiYH. | Add Dobb-E, FastUMI, MV-UMI, UMIGen, YUBI, Hoi!, EgoVLA, EgoEngine, HumanEgo, EgoGuide, Ego-Pi, EgoAERO, H2O, ARCTIC, HOMIE-toolkit, Xperience task baselines, and EgoHandTrajPred for policy/action supervision. For robot-only corpora see [Adjacent and Related](#adjacent-and-related-resources). |
| Studying hands, objects, and 3D | Start with HOT3D, HOI4D, H2O, ARCTIC, FPHA, EgoHOS, EgoBody, GIMO, EgoHumans, EgoTactile, and UnrealEgo. | Add EgoTracks/TREK-150 for tracking, EgoForce for monocular 3D hand pose, and EgoEMG/EgoEVHands/EgoPressDiff for emerging sensors and contact. |

## Landscape Snapshot

<p align="center">
  <img src="assets/awesome-egocentric-task-matrix.png" alt="Egocentric AI task matrix" width="100%">
</p>

| Lane | What to compare | Canonical anchors |
| :--- | :--- | :--- |
| Foundation video | scale, license, modalities, benchmark maturity | Xperience-10M, Ego4D, Ego-Exo4D, EPIC-KITCHENS-100, EgoClip |
| Procedure and action | action granularity, mistakes, anticipation, gaze | EPIC-KITCHENS, Assembly101, MECCANO, EgoProceL, HoloAssist |
| Hand-object and 3D | hands, objects, contact, pose, meshes, scene geometry | HOT3D, HOI4D, H2O, ARCTIC, FPHA, EgoHOS |
| Memory and reasoning | clip length, grounding, QA type, streaming constraints | EgoSchema, EgoLife, TeleEgo, MyEgo, X-LeBench, EgoMemReason, UCS-Bench, StreamMemBench, EgoSound, Ego-R1 |
| Robotics and VLA | action labels, hand trajectories, robot transfer, task diversity | Xperience-10M, EgoDex, EgoVerse, OpenEgo, UMI, FastUMI-100K, YUBI, EgoPAT3D, HUG, WiYH, EgoVLA |
| AR/wearable sensing | gaze, IMU, SLAM, audio, physiological signals | Project Aria, ADT, AEA, Nymeria, PROSE, EgoIntrospect, EasyCom |

> **Origins.** Egocentric vision grew out of wearable computing: [Steve Mann](http://wearcam.org/) pioneered continuous first-person ("sousveillance") cameras through the 1980s–90s and is widely credited with opening up the field, and Microsoft's SenseCam (2006) popularized lifelogging capture. The modern computer-vision wave began at the first IEEE Workshop on Egocentric Vision (CVPR 2009), where Spriggs, De La Torre, and Hebert introduced egocentric activity recognition on the [CMU-MMAC](http://kitchen.cs.cmu.edu/) database (2009) — the earliest dataset in this atlas — followed by the foundational GTEA (2011) and ADL (2012) datasets that launched first-person activity and object research.

## Creator and Release Notes

| Resource | Created / stewarded by | Release channel and access note |
| :--- | :--- | :--- |
| [Xperience-10M](https://huggingface.co/datasets/ropedia-ai/xperience-10m) | Ropedia | Released under `ropedia-ai` on Hugging Face. Full dataset uses controlled non-commercial access; the [sample](https://huggingface.co/datasets/ropedia-ai/xperience-10m-sample) is open, [HOMIE-toolkit](https://github.com/Ropedia/HOMIE-toolkit) loads/visualizes annotations, and [Xperience task baselines](https://huggingface.co/cy0307/ropedia-xperience-10m-task-baselines) provide a public evaluation artifact. |
| [Ego4D](https://ego4d-data.org/) | Meta AI / Facebook AI with an international academic consortium | Official data portal with license-gated downloads and benchmark tasks. |
| [Ego-Exo4D](https://ego-exo4d-data.org/) | Meta and academic partners across the Ego-Exo4D consortium | Official data portal with application/download tooling for synchronized ego-exo data. |
| [EPIC-KITCHENS](https://epic-kitchens.github.io/) | University of Bristol-centered EPIC-KITCHENS team | Official challenge/dataset portal with public annotations and benchmark splits. |
| [Project Aria datasets](https://www.projectaria.com/datasets/) | Meta / Project Aria | Official Project Aria dataset portal and tooling for AR-glasses sensor data. |

## Status Legend

| Status | Meaning |
| :---: | :--- |
| `open` | Public download, public annotations, public code, or application-based access is clearly documented. |
| `request` | Public project exists, but dataset access requires license, form, approval, or institutional agreement. |
| `benchmark` | Mainly a benchmark, challenge, labels, or evaluation over existing videos. |
| `partial` | Some assets are public, but full raw data, license, or long-term availability is unclear. |
| `watch` | Recent or important resource whose release state still needs verification. |

For how each status is decided, see [docs/status_policy.md](docs/status_policy.md).

<p align="center">
  <img src="assets/awesome-egocentric-access-funnel.png" alt="Egocentric resources by access state" width="100%">
</p>

## Fast Task Map

| Research goal | Strong starting points |
| :--- | :--- |
| General egocentric foundation data | [Xperience-10M](https://huggingface.co/datasets/ropedia-ai/xperience-10m), [Ego4D](https://ego4d-data.org/), [Ego-Exo4D](https://ego-exo4d-data.org/), [EPIC-KITCHENS-100](https://epic-kitchens.github.io/), [EgoClip](https://github.com/showlab/EgoVLP) |
| Ego-exo and skill learning | [Ego-Exo4D](https://ego-exo4d-data.org/), [EgoExoLearn](https://github.com/OpenGVLab/EgoExoLearn), [Assembly101](https://assembly-101.github.io/), [Look and Tell](https://arxiv.org/abs/2510.22672) |
| Robot manipulation / VLA | [Xperience-10M](https://huggingface.co/datasets/ropedia-ai/xperience-10m), [EgoDex](https://arxiv.org/abs/2505.11709), [EgoVerse](https://egoverse.ai/), [OpenEgo](https://arxiv.org/abs/2509.05513), [UMI](https://umi-gripper.github.io/), [FastUMI-100K](https://huggingface.co/datasets/IPEC-COMMUNITY/FastUMI_100k_lerobot), [YUBI](https://arxiv.org/abs/2606.10244), [HUG](https://grasping.io/), [EgoVLA](https://rchalyang.github.io/EgoVLA/), [EgoEngine](https://egoengine.github.io/), [HumanEgo](https://humanego-ai.github.io) |
| Long-context QA and memory | [EgoSchema](http://egoschema.github.io/), [EgoLife](https://arxiv.org/abs/2503.03803), [EgoMemReason](https://arxiv.org/abs/2605.09874), [UCS-Bench](https://github.com/cocowy1/UCS-Bench), [StreamMemBench](https://arxiv.org/abs/2606.14571), [Ego-EXTRA](https://fpv-iplab.github.io/Ego-EXTRA/), [EgoStream](https://arxiv.org/abs/2605.31557), [EgoBench](https://arxiv.org/abs/2605.27820) |
| Hand-object and 3D HOI | [HOT3D](https://facebookresearch.github.io/hot3d/), [HOI4D](https://hoi4d.github.io/), [EgoHOS](https://github.com/owenzlz/EgoHOS), [FPHA](https://guiggh.github.io/publications/first-person-hands/), [HUG](https://grasping.io/), [EgoTactile](https://egotactile.github.io/), [EgoForce](https://dfki-av.github.io/EgoForce), [EgoEMG](https://arxiv.org/abs/2605.05712) |
| Audio, speech, and social interaction | [Ego4D AV tasks](https://ego4d-data.org/), [EasyCom](https://arxiv.org/abs/2107.04174), [EgoCom / audio-visual correspondence](http://vision.cs.utexas.edu/projects/ego_av_corr/), [AV-CONV](https://vjwq.github.io/AV-CONV/) |
| AR glasses and scene understanding | [Project Aria Datasets](https://www.projectaria.com/datasets/), [Aria Digital Twin](https://www.projectaria.com/datasets/adt/), [AEA](https://www.projectaria.com/datasets/aea/), [Nymeria](https://www.projectaria.com/datasets/nymeria/), [DTC](https://www.projectaria.com/datasets/dtc/) |

## Recipes and Reference

Task-oriented starting points and the references that keep the catalog usable.

**Research recipes** — each gives a goal, what to start with, what to add, benchmarks, baselines, a minimum viable experiment, common pitfalls, and a reporting checklist:

- [Long-context egocentric video QA](docs/recipes/long-context-egocentric-qa.md)
- [Robot / VLA from egocentric human video](docs/recipes/robot-vla-from-ego-video.md)
- [Hand-object 3D HOI](docs/recipes/hand-object-3d-hoi.md)
- [AR-glasses and wearable sensing](docs/recipes/ar-glasses-sensing.md)
- [Audio and social egocentric understanding](docs/recipes/audio-social-egocentric.md)

**Reference**

- [Taxonomy](docs/taxonomy.md) — task/modality families and how to filter the catalog.
- [Access Matrix](docs/access_matrix.md) — data, code, license, and leaderboard per key resource.
- [Status Policy](docs/status_policy.md) — how `open`/`request`/`benchmark`/`partial`/`watch` are decided.
- [Resource Schema](docs/resource_schema.md) — every field in `data/resources.yml`.
- [Maintenance](docs/maintenance.md) — the add → verify → validate workflow.

## Dataset Atlas

### Foundational and Large-Scale Ego Video

Broad, large-scale first-person corpora that most egocentric pipelines pretrain or benchmark on.

| Resource | Released | Venue | Scale / signal | Best for | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [EgoCS-400K](https://arxiv.org/abs/2606.18180) | 2026-06 | arXiv | 400K+ first-person Counter-Strike gameplay videos (10K hours, 13 maps) with aligned actions, player state, camera motion, and game events | Action-conditioned interactive world models from first-person gameplay | watch |
| [Ego-1K](https://huggingface.co/datasets/facebook/ego-1k) | 2026-03 | CVPR 2026 | Nearly 1,000 synchronized multiview egocentric videos from a custom 12-camera plus VR-headset rig | Dynamic 3D/4D scene understanding and novel view synthesis from ego rigs | open |
| [EgoCrowds / CrowdEraser](https://arxiv.org/abs/2603.29036) | 2026-03 | arXiv | Semi-synthetic paired crowded/empty clips from real egocentric walking-tour video; CrowdEraser diffusion removes crowds for humanless walkthroughs | First-person walking-tour video editing and environment modeling | watch |
| [Xperience-10M](https://huggingface.co/datasets/ropedia-ai/xperience-10m) | 2026-03 | Hugging Face | Ropedia release on Hugging Face; 10M experiences, 10K hours, six video streams, audio, stereo depth, camera pose, hand/body mocap, IMU, hierarchical language, ~1 PB total | Embodied AI, world models, robot learning from human experience, sensor fusion, 3D/4D understanding | request |
| [Xperience-10M Sample](https://huggingface.co/datasets/ropedia-ai/xperience-10m-sample) | 2026-03 | Hugging Face | Public sample episode for Xperience-10M with six rows on Hugging Face and `cc-by-nc-4.0` terms | Loader testing, demos, task-suite prototyping, annotation inspection | open |
| [Look and Tell](https://arxiv.org/abs/2510.22672) | 2025-10 | NeurIPS 2025 Workshop | 25 participants, Project Aria plus stationary cameras, gaze/speech/video, 3D reconstructions | Referential communication across ego and exo viewpoints | watch |
| [EgoBlind](https://arxiv.org/abs/2503.08221) | 2025-03 | NeurIPS 2025 D&B | 1,392 first-person videos from blind and visually impaired users, 5,311 questions posed or verified by blind users | Assistive egocentric VideoQA for blind users | watch |
| [HD-EPIC](https://arxiv.org/abs/2502.04144) | 2025-02 | CVPR 2025 | 41 hours, 9 kitchens, dense fine-grained labels, 3D fixture annotations, audio events, VQA | Detailed kitchen understanding, VQA, 3D-aware ego reasoning, audio-event recognition | open |
| [EgoVid-5M](https://egovid.github.io/) | 2024-11 | NeurIPS 2025 | 5M curated egocentric clips at 1080p with fine-grained kinematic and high-level text action annotations (NeurIPS 2025) | Egocentric video generation and action-conditioned world models | open |
| [Ego-Exo4D](https://ego-exo4d-data.org/) | 2023-11 | CVPR 2024 | 1,286 hours, 740 participants, synchronized first- and third-person views, audio, gaze, IMU, 3D point clouds, language commentary | Skilled activity, ego-exo transfer, cross-view translation, pose, proficiency, robotics | request |
| [HoloAssist](https://holoassist.github.io/) | 2023-09 | ICCV 2023 | 166 hours, 350 instructor-performer pairs, 7 synchronized streams from mixed-reality headsets | Interactive assistance, mistake detection, intervention prediction, procedural collaboration | open |
| [EgoObjects](https://github.com/facebookresearch/EgoObjects) | 2023-09 | ICCV 2023 | Pilot release with 9K+ videos, 250 participants, 50+ countries, 650K annotations, 368 categories | Category and instance-level egocentric object understanding, continual object detection | open |
| [Assembly101](https://assembly-101.github.io/) | 2022-03 | CVPR 2022 | 4,321 videos, 8 static plus 4 egocentric views, 100K coarse and 1M fine action segments, 18M 3D hand poses | Procedural action, anticipation, mistake detection, cross-view transfer | open |
| [Ego4D](https://ego4d-data.org/) | 2021-10 | CVPR 2022 | 3,670+ hours from 900+ camera wearers, multiple countries, video/audio/gaze/stereo/3D/narrations depending on subset | Long-form ego video, episodic memory, social, hand-object, forecasting, audio-visual tasks | request |
| [EasyCom](https://arxiv.org/abs/2107.04174) | 2021-07 | arXiv | AR glasses egocentric multi-channel audio and wide-FOV RGB for noisy conversations | Speech enhancement, source localization, conversation assistance | open |
| [EPIC-KITCHENS-100](https://epic-kitchens.github.io/) | 2020-06 | IJCV 2022 | 100 hours, 20M frames, 90K actions, 45 kitchens, narrations and dense action labels | Kitchen action recognition, anticipation, action detection, retrieval | open |
| [EgoCom / Ego audio-visual correspondence](http://vision.cs.utexas.edu/projects/ego_av_corr/) | 2023-07 | arXiv | Egocentric video with spatial audio for conversation and audio-visual correspondence tasks | Active speaker detection, spatial audio denoising, conversational graph reasoning | open |
| [From Third Person to First Person](https://arxiv.org/abs/1812.00104) | 2018-12 | CVPR 2019 | Ego/exo video synthesis and retrieval datasets plus baselines for bridging third-person social video to first-person views | Cross-view synthesis, retrieval, and ego-exo transfer | watch |
| [EPIC-KITCHENS](https://epic-kitchens.github.io/) | 2018-04 | ECCV 2018 | 55 hours / 11.5M frames from 32 kitchens with narrations, 39.6K action segments, and object boxes | Original large-scale kitchen action recognition and anticipation benchmark | open |

### Robotics, Manipulation, and VLA

Egocentric human-manipulation and wrist-camera data aimed at vision-language-action models and human-to-robot transfer.

| Resource | Released | Venue | Scale / signal | Best for | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [YUBI](https://arxiv.org/abs/2606.10244) | 2026-06 | arXiv | Reported 8,434 hours, 1.20M episodes, and 119 tasks from a finger-aligned UMI-style bimanual interface | Scalable bimanual dexterous data collection | watch |
| [EgoEngine](https://egoengine.github.io/) | 2026-06 | arXiv | Converts egocentric human manipulation videos into high-fidelity robot observation videos and executable robot action trajectories | Human-to-robot data generation, dexterous imitation | watch |
| [EgoAERO](https://arxiv.org/abs/2606.08057) | 2026-06 | arXiv | Asset-free conversion from a single egocentric RGB-D demonstration; introduces EgoDex-R in the paper | Single-demo dexterous robot learning | watch |
| [1M-HUGs / HUG](https://grasping.io/) | 2026-06 | arXiv | 1M frames / 27.8 hours of smart-glasses human grasps over 6,707 object instances, plus HUG-Bench with 90 unseen objects | Human grasp modeling and zero-shot robot grasping | open |
| [EgoVerse](https://egoverse.ai/) | 2026-04 | arXiv | 1,362 hours, 80K episodes, 1,965 tasks, 240 scenes, 2,087 demonstrators | Human demonstration scaling for robot learning and VLA | watch |
| [EgoLive](https://arxiv.org/abs/2604.23570) | 2026-04 | arXiv | Large-scale real-world task-oriented egocentric routines for robot manipulation | Home service, retail, and real-world work-task manipulation | watch |
| [HRDexDB](https://arxiv.org/abs/2604.14944) | 2026-04 | arXiv | 1.4K human/robot grasping trials, tactile, multiview video, egocentric video streams | Cross-domain dexterous grasp learning | watch |
| [AoE: Always-on Egocentric](https://arxiv.org/abs/2602.23893) | 2026-02 | arXiv | Always-on egocentric human-video collection pipeline and corpus for embodied AI | Scaling human-video data for robot learning | watch |
| [EgoScale](https://arxiv.org/abs/2602.16710) | 2026-02 | arXiv | 20,854 hours of action-labeled egocentric human video with a human-to-robot two-stage transfer recipe and a log-linear data-scaling law | Scaling dexterous manipulation from human video | watch |
| [World in Your Hands / WiYH](https://arxiv.org/abs/2512.24310) | 2025-12 | arXiv | Reported 1,000-hour egocentric manipulation ecosystem with multiview/depth/hand/wrist signals | VLA, manipulation representation learning | watch |
| [Hoi!](https://arxiv.org/abs/2512.04884) | 2025-12 | arXiv | 3,048 force-grounded articulated-manipulation sequences over human, wrist-camera, UMI, and Hoi-gripper embodiments | Force/contact-grounded cross-view manipulation | watch |
| [UMIGen](https://arxiv.org/abs/2511.09302) | 2025-11 | arXiv | Cloud-UMI plus visibility-aware egocentric point-cloud generation | 3D-aware cross-embodiment imitation learning | watch |
| [FastUMI-100K](https://huggingface.co/datasets/IPEC-COMMUNITY/FastUMI_100k_lerobot) | 2025-10 | arXiv | 100K+ UMI-style trajectories across 54 tasks in LeRobot format with multi-view wrist fisheye images | Large-scale UMI-style robot policy training | open |
| [OpenEgo](https://arxiv.org/abs/2509.05513) | 2025-09 | arXiv | 1,107 hours unified across six public egocentric datasets, 290 manipulation tasks, hand-pose/action primitives | Standardized dexterous manipulation pretraining and evaluation | watch |
| [MV-UMI](https://arxiv.org/abs/2509.18757) | 2025-09 | arXiv | Multi-view UMI adds third-person context to wrist egocentric observations | Broad-scene context for cross-embodiment manipulation | watch |
| [InterVLA](https://arxiv.org/abs/2508.04681) | 2025-08 | ICCV 2025 | 11.4 hours and 1.2M frames with 2 ego and 5 exo views, human/object motions, and verbal commands | Vision-language-action and motion estimation | watch |
| [EgoDex](https://arxiv.org/abs/2505.11709) | 2025-05 | ICLR 2026 | 829 hours of Apple Vision Pro egocentric video, 194 tabletop tasks, 3D hand/finger tracking | Dexterous manipulation, imitation learning, human-to-robot hand trajectory prediction | watch |
| [EgoVLA](https://rchalyang.github.io/EgoVLA/) | 2025-07 | project page | VLA training from egocentric human videos plus robot fine-tuning | Human-video-to-robot policy transfer | watch |
| [FastUMI](https://arxiv.org/abs/2409.19499) | 2024-09 | arXiv | UMI redesign reporting 10K+ real-world trajectories across 22 everyday tasks | Faster hardware-independent UMI-style collection | watch |
| [EgoPAT3D / EgoPAT3Dv2](https://arxiv.org/abs/2403.05046) | 2024-03 | ICRA 2024 | 1M+ RGB-D/IMU frames in the original task; v2 expands egocentric 3D action-target prediction | Human-robot interaction, 3D target anticipation, manipulation safety | open |
| [Universal Manipulation Interface / UMI](https://umi-gripper.github.io/) | 2024-02 | RSS 2024 | Hand-held GoPro gripper interface and policy stack for in-the-wild robot teaching | Wrist-view robot-free demonstrations and cross-embodiment policy transfer | open |
| [Dobb-E / HoNY](https://dobb-e.com/) | 2023-11 | arXiv | 13 hours, 22 homes, 5,620 trajectories, and 1.5M RGB-D frames collected with an iPhone-based Stick | Household robot learning from handheld in-home demonstrations | partial |

### Hands, Objects, Pose, Tracking, and 3D

Fine-grained hand, object, contact, and 3D-pose datasets, including emerging event-camera and EMG sensing.

| Resource | Released | Venue | Scale / signal | Best for | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [HT-Bench / HandTouch](https://arxiv.org/abs/2606.19161) | 2026-06 | arXiv | 10M RGB frames and 7.8M tactile frames across 226 dexterous full-hand tasks | Vision-tactile representation learning for dexterous manipulation | watch |
| [Hand-4DGS](https://jeongminb.github.io/hand-4dgs/) | 2026-06 | arXiv | Feed-forward 4D hand reconstruction from egocentric video with 3D Gaussian Splatting, evaluated on H2O and ARCTIC | Fast egocentric 4D hand reconstruction | watch |
| [A multimodal RGB/events FPV hand dataset](https://arxiv.org/abs/2606.10790) | 2026-06 | arXiv | Synthetic event-based first-person hand detection from EgoHands plus v2e | Event/RGB hand detection benchmarking | watch |
| [DexGloveHOI](https://arxiv.org/abs/2605.21714) | 2026-05 | arXiv | 100K+ synchronized egocentric vision and on-glove IMU samples with marker-based mocap 3D hand-pose ground truth across dexterous daily manipulation | Vision-IMU fusion for 3D hand tracking | watch |
| [EgoEMG](https://arxiv.org/abs/2605.05712) | 2026-05 | arXiv | 41 participants, bilateral EMG, IMU, RGB, external RGB-D, mocap hand labels | EMG plus egocentric vision hand pose estimation | watch |
| [EgoTouch / TouchAnything](https://jianyi2004.github.io/TouchAnything-Website/) | 2026-05 | arXiv | 302 tasks, 4,530 episodes with egocentric + dual wrist cameras, bimanual 3D hand pose, and dense tactile pressure maps | Tactile estimation and contact modeling from egocentric video | watch |
| [TouchMoment](https://arxiv.org/abs/2604.12343) | 2026-04 | CVPR 2026 Findings | 4,021 egocentric videos, 8,456 annotated hand-object contact moments | Precise contact moment detection | watch |
| [EgoFun3D](https://arxiv.org/abs/2604.11038) | 2026-04 | arXiv | 271 egocentric videos with 3D geometry, part segmentation, articulation and function-template annotations | Interactive 3D object modeling from ego video | watch |
| [SHOW3D](https://arxiv.org/abs/2603.28760) | 2026-03 | CVPR 2026 | In-the-wild 3D hand-object interactions from a back-mounted multi-camera rig synced to a worn VR headset, with multi-view 3D shape/pose and text | In-the-wild 3D hand-object reconstruction | watch |
| [EgoXtreme](https://arxiv.org/abs/2603.25135) | 2026-03 | CVPR 2026 | Smart-glasses egocentric 6D object-pose dataset across industrial, sports, and rescue scenes with extreme motion blur, dynamic lighting, and occlusion | Robust 6D object pose under extreme egocentric conditions | watch |
| [FEEL](https://arxiv.org/abs/2603.15847) | 2026-03 | arXiv | About 3M force-synchronized egocentric frames from kitchen manipulation with custom piezoresistive gloves | Contact-rich physical action and hand-object understanding | watch |
| [Eva-3M / EvaPose](https://arxiv.org/abs/2602.23618) | 2026-02 | CVPR 2026 | 3.0M+ egocentric HPE frames, including 435K keypoint-visibility labels, plus visibility-aware pose estimation | Visibility-aware egocentric human pose | watch |
| [WristPP](https://zhenqis123.github.io/WristPP/) | 2026-02 | CHI 2026 submission | Wrist-worn wide-FOV RGB system with a 133K-frame pose-pressure dataset from 20 subjects | Mobile hand pose and pressure interaction | watch |
| [OpenTouch](https://opentouch-tactile.github.io/) | 2025-12 | arXiv | 5.1 hours of synchronized egocentric video-touch-pose data, 2,900 curated clips, text annotations, and retrieval/classification benchmarks | Full-hand tactile grounding for real-world interaction | watch |
| [Egocentric HOI Detection](https://arxiv.org/abs/2506.14189) | 2025-06 | arXiv | New benchmark and method for detecting hand-object interactions in egocentric video | Egocentric hand-object interaction detection | open |
| [EgoBrain](https://arxiv.org/abs/2506.01353) | 2025-06 | arXiv | Synchronized EEG and egocentric video for human action understanding | Brain-signal plus first-person action understanding | watch |
| [EventEgoHands](https://arxiv.org/abs/2505.19169) | 2025-05 | ICIP 2025 | Event-based egocentric 3D hand mesh reconstruction benchmark over N-HOT3D | Low-light and motion-blur hand reconstruction | watch |
| [EgoPressure](https://yiming-zhao.github.io/EgoPressure/) | 2024-09 | CVPR 2025 | 5.0 hours, 21 participants, a moving egocentric camera plus 7 stationary RGB-D cameras, hand pose meshes, and fine-grained per-contact touch pressure (CVPR 2025) | Hand pressure and pose from egocentric vision | open |
| [HOT3D](https://facebookresearch.github.io/hot3d/) | 2024-06 | CVPR 2025 | 833+ minutes, 3.7M+ images, Aria and Quest 3, gaze, point clouds, 3D hand/object/camera poses | 3D hand-object tracking for AR/VR manipulation | open |
| [UnrealEgo2 / UnrealEgo-RW](https://arxiv.org/abs/2401.00889) | 2024-01 | arXiv | Expanded stereo egocentric pose datasets from synthetic and real-world capture | Stereo egocentric human pose estimation | watch |
| [EgoEVHands](https://github.com/ZJUWang01/EgoEV-HandPose) | 2026-05 | arXiv | Stereo event-camera egocentric hand dataset with 5,419 sequences and 3D/2D keypoints | Event-based bimanual hand pose and gesture recognition | watch |
| [POV-Surgery](https://batfacewayne.github.io/POV_Surgery_io/) | 2023-07 | MICCAI 2023 | Egocentric surgical video for hand and tool pose estimation during operating-room activities | Surgical hand-tool pose and interaction understanding | open |
| [EgoHumans](https://arxiv.org/abs/2305.16487) | 2023-05 | ICCV 2023 | 125K+ egocentric images for in-the-wild multi-human tracking, 2D/3D pose, and mesh recovery | Egocentric multi-human perception and tracking | partial |
| [EgoTracks](https://arxiv.org/abs/2301.03213) | 2023-01 | NeurIPS 2023 | Long-term egocentric visual object tracking annotations from Ego4D | Tracking, re-detection, embodied object persistence | open |
| [EgoGTA / EgoPW-Scene](https://arxiv.org/abs/2212.11684) | 2022-12 | arXiv | Synthetic EgoGTA plus EgoPW-based in-the-wild scene-aware pose data | Scene-aware egocentric 3D human pose estimation | partial |
| [EgoHOS](https://github.com/owenzlz/EgoHOS) | 2022-08 | ECCV 2022 | 11,243 egocentric images with detailed hand/object/contact segmentation | Hand-object segmentation and contact-aware foreground modeling | open |
| [UnrealEgo](https://4dqv.mpi-inf.mpg.de/UnrealEgo/) | 2022-08 | ECCV 2022 | Synthetic stereo eyeglass egocentric dataset with 3D human pose | Robust egocentric 3D human motion capture | open |
| [Ego2HandsPose](https://arxiv.org/abs/2206.04927) | 2022-06 | arXiv | Extension of Ego2Hands with 3D global hand pose annotations | Two-hand RGB 3D pose in global coordinates | open |
| [ARCTIC](https://arctic.is.tue.mpg.de/) | 2022-04 | CVPR 2023 | 2.1M frames with bimanual hand/object meshes, articulated objects, and contact | Dexterous bimanual manipulation, contact, reconstruction | request |
| [GIMO](https://github.com/y-zheng18/GIMO) | 2022-04 | ECCV 2022 | Ego-centric views, gaze, scene scans, and high-quality body pose sequences | Gaze-informed human motion prediction in scene context | open |
| [HOI4D](https://hoi4d.github.io/) | 2022-03 | CVPR 2022 | 2.4M RGB-D egocentric frames, 4,000+ sequences, 800 objects, 16 categories, 610 rooms | 4D human-object interaction, segmentation, object pose tracking, action segmentation | open |
| [EgoBody](https://sanweiliti.github.io/egobody/egobody.html) | 2021-12 | ECCV 2022 | HoloLens2 egocentric RGB/depth/eye/head/hand data with 3D body pose and shape | Egocentric human pose, shape, motion, social interaction | open |
| [H2O: Two Hands and Objects](https://arxiv.org/abs/2104.11181) | 2021-04 | ICCV 2021 | Synchronized multi-view RGB-D, two-hand 3D pose, 6D object pose, object meshes, camera poses | First-person two-hand interaction recognition and pose-aware HOI | open |
| [TREK-150](https://machinelearning.uniud.it/datasets/trek150/) | 2021-08 | project page | 150 egocentric tracking sequences derived from EPIC-KITCHENS | Single-object tracking in egocentric video | open |
| [Ego2Hands](https://arxiv.org/abs/2011.07252) | 2020-11 | arXiv | Large-scale composited RGB egocentric two-hand segmentation/detection | Robust unconstrained hand segmentation | open |
| [xR-EgoPose](https://github.com/facebookresearch/xR-EgoPose) | 2019-07 | GitHub | Synthetic egocentric body pose data for XR headset viewpoints | 3D human pose from head-mounted cameras | open |
| [EgoYouTubeHands / HandOverFace](https://arxiv.org/abs/1803.03317) | 2018-03 | CVPR 2018 | In-the-wild egocentric hand-segmentation study built around EgoYouTubeHands, HandOverFace, EGTEA, and EgoHands-style supervision | Hand detection and segmentation beyond lab capture | watch |
| [FPHA / First-Person Hand Action](https://guiggh.github.io/publications/first-person-hands/) | 2017-04 | CVPR 2018 | 100K+ RGB-D frames, 45 action classes, 26 objects, 3D hand/object poses | 3D hand pose and first-person hand action recognition | open |
| [EgoGesture](https://ieeexplore.ieee.org/document/8299578/) | 2017 | IEEE TMM 2018 | 24K+ gesture samples, 3M RGB-D frames, 50 subjects, 83 static and dynamic gestures across six scenes | First-person gesture recognition for wearable interaction | open |
| [EgoHands](http://vision.soic.indiana.edu/projects/egohands/) | 2015-12 | ICCV 2015 | 48 Google Glass videos, 4,800 annotated hand images | Hand detection and segmentation | open |
| [BEOID](https://dimadamen.github.io/BEOID/) | 2014-09 | BMVC 2014 | Gaze-tracked egocentric video of 8 users interacting with objects across 6 everyday locations (kitchen, workspace, printer, corridor, gym) | Discovering task-relevant objects and interaction modes | open |

### Daily Life, Memory, Assistance, and QA

Long-horizon daily-life capture and the question-answering benchmarks that probe memory, reasoning, and assistance.

| Resource | Released | Venue | Scale / signal | Best for | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [VL-MemKnG / WalkieKnowledgeT+](https://arxiv.org/abs/2606.17183) | 2026-06 | arXiv | Hybrid spatio-temporal knowledge graph plus segment memory for QA over long egocentric navigation trajectories | Navigation memory, long-horizon evidence retrieval, spatial QA | watch |
| [V-RAGBench / CARVE](https://arxiv.org/abs/2606.13141) | 2026-06 | arXiv | Query, evidence-chunk, answer triplets for decoupled retrieval/generation evaluation in long egocentric video RAG | Retrieval-augmented long-video QA | watch |
| [Causal-Plan-1M](https://arxiv.org/abs/2606.01810) | 2026-06 | arXiv | Reported million-scale corpus of explicit causal reasoning traces over egocentric videos | Causal and planning-oriented ego reasoning | watch |
| [NoRA](https://arxiv.org/abs/2606.04806) | 2026-06 | arXiv | 1,420 first-person video clips for normative action reasoning with fact-reason-action support graphs | Grounded reasonableness and safety-oriented action generation | watch |
| [Pause and Think](https://arxiv.org/abs/2606.00616) | 2026-06 | arXiv | Reasoning-centric training data and benchmark for video-grounded assistive action suggestions | Scene-grounded assistance, planning, and temporal consistency | watch |
| [SuperMemory-VQA](https://arxiv.org/abs/2606.00825) | 2026-06 | arXiv | 52.9 hours of AI-glasses activity with RGB, audio, gaze, IMU, SLAM, and 4,853 human-verified QA pairs across object/location/intent/scene memory | Long-horizon memory for AR assistants | watch |
| [EgoMemReason](https://arxiv.org/abs/2605.09874) | 2026-05 | arXiv | 500 questions over week-long egocentric video with entity, event, and behavior memory types | Memory-driven reasoning across sparse evidence over hours or days | watch |
| [EgoBench](https://arxiv.org/abs/2605.27820) | 2026-05 | arXiv | 1,045 egocentric-video-grounded interactive tasks with tools and simulated users | Tool-using multimodal agents with dynamic interaction | watch |
| [EgoIntrospect](https://ego-introspect.github.io/) | 2026-05 | arXiv | 180 hours from 60 subjects with synchronized video, audio, gaze, motion, physiological signals | Internal-state reasoning, affect, intent, cognitive memory for wearable assistants | watch |
| [EgoExoMem](https://arxiv.org/abs/2605.18734) | 2026-05 | arXiv | 2.6K MCQs across synchronized ego-exo videos | Cross-view memory reasoning | watch |
| [EgoCoT-Bench](https://dstardust.github.io/EgoCoT/) | 2026-05 | arXiv | 3,172 verifiable QA pairs over 351 videos with operation-centric rationale annotations | Grounded chain-of-thought and evidence consistency | open |
| [EgoStream](https://arxiv.org/abs/2605.31557) | 2026-05 | arXiv | 2,250 questions across seven memory dimensions with Answer Validity Windows, expanded to 8,528 recall-conditioned evaluations over streams up to 45.3 hours | Diagnosing streaming episodic memory | watch |
| [MyEgo](https://github.com/Ryougetsu3606/MyEgo) | 2026-04 | CVPR 2026 | 541 long videos and 5K personalized questions about the camera wearer, belongings, activities, and past | Personalized ego-grounding and long-range memory QA | open |
| [EgoEsportsQA](https://arxiv.org/abs/2604.12320) | 2026-04 | arXiv | 1,745 QA pairs from professional first-person shooter matches across three games | High-speed first-person perception and tactical reasoning in virtual environments | watch |
| [EgoEverything](https://arxiv.org/abs/2604.08342) | 2026-04 | arXiv | 5,000+ MCQ pairs over 100+ hours, with gaze-attention-inspired question generation for AR | Human-behavior-inspired long-context egocentric understanding | watch |
| [EgoTL](https://arxiv.org/abs/2604.09535) | 2026-04 | arXiv | Think-aloud (say-before-act) egocentric capture with word-level spoken reasoning and metric-scale spatial annotations over 100+ household tasks | Long-horizon reasoning for VLMs and world models | watch |
| [MA-EgoQA](https://ma-egoqa.github.io/) | 2026-03 | arXiv | 1.7K questions over multiple long-horizon egocentric streams | Multi-agent egocentric memory reasoning | open |
| [Ego2Web](https://arxiv.org/abs/2603.22529) | 2026-03 | CVPR 2026 | Egocentric videos paired with web tasks requiring physical-scene understanding and online execution | Web agents grounded in first-person physical context | watch |
| [Egocentric Co-Pilot](https://arxiv.org/abs/2603.01104) | 2026-03 | WWW 2026 | Web-native smart-glasses agent framework with temporal reasoning, context compression, speech/gaze intent, and streaming WebRTC/WebSocket pipelines | Assistive always-on egocentric web agents | watch |
| [Gesture-Based Egocentric Video QA](https://arxiv.org/abs/2603.12533) | 2026-03 | CVPR 2026 | Egocentric video QA grounded in the camera wearer's pointing and deictic gestures | Gesture-grounded referential QA | watch |
| [EgoIntent](https://arxiv.org/abs/2603.12147) | 2026-03 | arXiv | 3,014 steps over 15 daily-life scenarios for local intent (What), global intent (Why), and next-step plan (Next) | Step-level intent and anticipatory assistance | watch |
| [SAW-Bench](https://arxiv.org/abs/2602.16682) | 2026-02 | arXiv | 786 Ray-Ban Meta smart-glasses videos and 2,071 QA pairs for observer-centric situated awareness | First-person situated spatial reasoning | watch |
| [EgoGraph](https://arxiv.org/abs/2602.23709) | 2026-02 | arXiv | Dynamic temporal knowledge graph framework evaluated on EgoLifeQA and EgoR1-bench | Training-free ultra-long egocentric video memory | watch |
| [EgoSound](https://arxiv.org/abs/2602.14122) | 2026-02 | CVPR 2026 | 7,315 validated QA pairs across 900 Ego4D/EgoBlind videos | Sound perception, spatial localization, causal audio-visual reasoning | watch |
| [SuperGlasses](https://arxiv.org/abs/2602.22683) | 2026-02 | CVPR 2026 Findings | Evaluates VLMs as intelligent agents for AI smart glasses across realistic wearable assistant tasks | Smart-glasses agent evaluation | watch |
| [Gazeify Then Voiceify](https://arxiv.org/abs/2601.19281) | 2026-01 | arXiv | Displayless smart-glasses object referencing via gaze selection, mask generation, voice descriptions, and conversational correction | Gaze-plus-voice physical object grounding | watch |
| [Wearable Product Localization](https://arxiv.org/abs/2601.12486) | 2026-01 | arXiv | Wearable assistive shopping system combining detection, VLM guidance, spatialized sonification, and corrective feedback | Product search and navigation for blind or low-vision users | watch |
| [Egocentric Clinical Intent](https://arxiv.org/abs/2601.06750) | 2026-01 | arXiv | Benchmark for egocentric clinical intent understanding by medical multimodal LLMs over first-person clinical procedure video | Clinical intent reasoning for medical assistants | watch |
| [WearVox](https://arxiv.org/abs/2601.02391) | 2026-01 | arXiv | Egocentric multichannel voice-assistant benchmark for spoken interaction grounded in first-person audio-visual context | Wearable voice-assistant evaluation | watch |
| [EgoMemory](https://openreview.net/forum?id=T0em4hJCQb) | 2025-09 | OpenReview | 165,795 user-specific object annotations over 245 videos from 45 participants | Memory-augmented personalized retrieval | watch |
| [Ego-EXTRA](https://fpv-iplab.github.io/Ego-EXTRA/) | 2025-12 | arXiv | 50 hours of expert-trainee procedural assistance dialogue, 15K+ VQA pairs | Egocentric video-language assistants and expert feedback | open |
| [WearVQA](https://arxiv.org/abs/2511.22154) | 2025-11 | NeurIPS 2025 | 2,520 image-question-answer triplets across 7 domains and 10 task types under occluded/low-light/blurry wearable capture (NeurIPS 2025) | Smart-glasses VQA under real wearable conditions | watch |
| [TeleEgo](https://arxiv.org/abs/2510.23981) | 2025-10 | arXiv | Streaming omni-modal benchmark with 3,291 QA items across memory, understanding, and cross-memory reasoning | Real-time egocentric AI assistant evaluation | watch |
| [EgoNight](https://insait-institute.github.io/EgoNight/) | 2025-10 | ICLR 2026 | EgoNight-VQA (3,658 QA / 90 videos / 12 types) plus day-night retrieval and depth, with day-night aligned video | Nighttime / low-light egocentric robustness | open |
| [HowToDIV](https://arxiv.org/abs/2508.11192) | 2025-08 | arXiv | 507 conversations, 6,636 QA pairs, 24 hours of egocentric instructional task-assistance video clips | Instructional dialogue and procedural video reasoning | watch |
| [EgoTrigger / HME-QA](https://arxiv.org/abs/2508.01915) | 2025-08 | ISMAR 2025 / TVCG | Audio-driven smart-glasses capture strategy plus 340 first-person HME-QA pairs from full-length Ego4D videos | Energy-efficient memory assistance and audio-triggered capture | watch |
| [EASG-Bench](https://github.com/fpv-iplab/EASG-bench) | 2025-06 | ICCV 2025 Workshop | Egocentric action-scene-graph-based video QA benchmark | Scene graph, temporal order, and relation-aware QA | open |
| [Ego-R1](https://arxiv.org/abs/2506.13654) | 2025-06 | arXiv | Ego-CoTT-25K, Ego-QA-4.4K, and Ego-R1 Bench for tool-augmented ultra-long egocentric QA | Chain-of-tool-thought reasoning over days/week-long videos | watch |
| [ExAct](https://arxiv.org/abs/2506.06277) | 2025-06 | arXiv | Video-language benchmark for expert action analysis and feedback over skilled activity | Expert feedback and skill assessment | open |
| [EgoLife](https://arxiv.org/abs/2503.03803) | 2025-03 | CVPR 2025 | 300 hours from six participants over one week with Meta Aria, third-person references, and EgoLifeQA | Long-term daily-life memory, personalized assistants, ultra-long QA | partial |
| [EgoToM](https://arxiv.org/abs/2503.22152) | 2025-03 | arXiv | Theory-of-mind QA over Ego4D-style egocentric videos | Goals, beliefs, and next-action reasoning for camera wearers | watch |
| [X-LeBench](https://arxiv.org/abs/2501.06835) | 2025-01 | arXiv | 432 simulated life logs over Ego4D-like footage, spanning 23 minutes to 16.4 hours | Extremely long egocentric video understanding | watch |
| [EgoSelf](https://abie-e.github.io/egoself_project/) | 2026-04 | arXiv | Personalized egocentric assistant framework with graph memory | Personalization from long-term egocentric interaction memory | watch |
| [EgoCross](https://github.com/MyUniverse0726/EgoCross) | 2025-08 | arXiv | About 1,000 QA pairs over surgery, industry, extreme sports, and animal-perspective clips | Cross-domain egocentric QA generalization | watch |
| [EgoTextVQA](https://openaccess.thecvf.com/content/CVPR2025/papers/Zhou_EgoTextVQA_Towards_Egocentric_Scene-Text_Aware_Video_Question_Answering_CVPR_2025_paper.pdf) | 2025-06 | CVPR 2025 | Egocentric scene-text-aware video QA across housekeeping and driving scenes (CVPR 2025) | Reading and reasoning over first-person scene text | open |
| [VidEgoThink](https://arxiv.org/abs/2410.11623) | 2024-10 | ICLR 2025 | Ego4D-based benchmark for video QA, hierarchy planning, visual grounding, and reward modeling | Embodied egocentric video understanding | benchmark |
| [EgoThink](https://arxiv.org/abs/2311.15596) | 2023-11 | CVPR 2024 | First-person VQA benchmark covering six capability groups and twelve dimensions | First-person perspective reasoning for VLMs | benchmark |
| [EgoSchema](http://egoschema.github.io/) | 2023-08 | NeurIPS 2023 | 5K+ curated multiple-choice QA pairs over 250+ hours from Ego4D clips | Very long-form video-language understanding | benchmark |
| [EgoTaskQA](https://arxiv.org/abs/2210.03929) | 2022-10 | NeurIPS 2022 | Diagnostic QA benchmark for task dependencies, effects, intents, beliefs, and counterfactuals in ego video | Task-step reasoning and procedural QA | benchmark |
| [AssistQ](https://showlab.github.io/assistq/) | 2022-03 | ECCV 2022 | 531 question-answer samples from 100 newly filmed instructional videos | Assistance-oriented video QA and affordance-centric task completion | open |
| [MMAC Captions](https://arxiv.org/abs/2109.02955) | 2021-09 | ACM MM 2021 | Sensor-augmented egocentric-video captioning data around CMU-MMAC-style multimodal activity streams | Video captioning with RGB, audio, IMU, and text | watch |
| [EgoVQA](https://openaccess.thecvf.com/content_ICCVW_2019/html/EPIC/Fan_EgoVQA_-_An_Egocentric_Video_Question_Answering_Benchmark_Dataset_ICCVW_2019_paper.html) | 2019-10 | ICCV 2019 | 600+ QA pairs over egocentric videos; an early first-person VideoQA benchmark | Classic egocentric VideoQA | open |
| [First-Person Stories](https://arxiv.org/abs/1707.07863) | 2017-07 | ICIAP 2017 Workshop | 45K+ egocentric photo-stream images labeled for lifestyle patterns such as eating, socializing, and sedentary behavior | Lifelogging and daily-life behavior analysis | watch |

### Action, Procedure, Lifelogging, and Classic FPV

Procedural and activity datasets, from modern industrial assembly to the classic first-person-vision benchmarks that started the field.

| Resource | Released | Venue | Scale / signal | Best for | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [EgoMAGIC](https://arxiv.org/abs/2604.22036) | 2026-04 | arXiv | 3,355 egocentric field-medicine videos over 50 tasks from a head-mounted stereo camera with audio; 1.95M labels, 124 objects, action-detection challenge (Zenodo) | Field-medicine perception, action and object detection | open |
| [IMPACT](https://arxiv.org/abs/2604.10409) | 2026-04 | arXiv | Ego-exo RGB-D industrial assembly dataset with bimanual, state, and anomaly annotations | Industrial assembly, procedural state tracking, anomaly recovery | watch |
| [ENIGMA-360](https://arxiv.org/abs/2603.09741) | 2026-03 | arXiv | Ego-exo dataset for human behavior understanding in industrial scenarios with 360-degree and egocentric capture | Industrial ego-exo behavior understanding | watch |
| [PEDESTRIAN](https://arxiv.org/abs/2512.19190) | 2025-12 | arXiv | 340 first-person pavement videos covering 29 urban sidewalk obstacle types, with deep-learning detection baselines | Pedestrian-safety obstacle detection from first-person video | watch |
| [IndEgo](https://huggingface.co/datasets/FraunhoferIPK/IndEgo) | 2025-11 | NeurIPS 2025 | ~197h egocentric (plus ~97h exocentric) industrial collaborative work over assembly, logistics, inspection, and repair; gaze, narration, sound, motion, hand pose, point clouds | Industrial egocentric assistants and procedure understanding | open |
| [EgoEMS](https://arxiv.org/abs/2511.09894) | 2025-11 | AAAI 2026 | High-fidelity multimodal egocentric data for cognitive assistance in emergency medical services, capturing time-critical team actions | Real-time medical procedural assistance | watch |
| [LSC-ADL](https://arxiv.org/abs/2504.02060) | 2025-04 | arXiv | ADL annotations over lifelogging data generated with clustering plus human review | Activity-aware lifelog retrieval | open |
| [EgoMe](https://arxiv.org/abs/2501.19061) | 2025-01 | arXiv | Real-world following-me dataset pairing exocentric demonstrations with egocentric imitation across everyday tasks | Egocentric imitation and cross-view following | watch |
| [EgoExo-Fitness](https://github.com/iSEE-Laboratory/EgoExo-Fitness) | 2024-06 | ECCV 2024 | Synchronized ego and exo fitness videos with keypoint verification, execution comments, and quality scores (ECCV 2024) | Ego-exo full-body action quality and skill assessment | open |
| [EgoExoLearn](https://github.com/OpenGVLab/EgoExoLearn) | 2024-03 | CVPR 2024 | 120 hours of egocentric plus demonstration videos with gaze and annotations | Bridging asynchronous ego and exo procedural activity | open |
| [EgoSurgery](https://github.com/Fujiry0/EgoSurgery) | 2025-03 | arXiv | EgoSurgery-Phase (surgical phase recognition) and EgoSurgery-HTS (pixel-wise hand-tool segmentation of 14 tools) from egocentric open-surgery video (MICCAI 2024) | Surgical phase, hand, and tool understanding | open |
| [CaptainCook4D](https://arxiv.org/abs/2312.14556) | 2023-12 | NeurIPS 2024 D&B | Procedural-activity dataset for understanding execution errors, later reused in multimodal temporal-action-segmentation work | Procedural errors and mistake-aware activity understanding | watch |
| [IndustReal](https://arxiv.org/abs/2310.17323) | 2023-10 | WACV 2024 | Industrial-like egocentric procedure-step recognition dataset with execution errors | Industrial procedure recognition and error handling | watch |
| [EGOFALLS](https://arxiv.org/abs/2309.04579) | 2023-09 | arXiv | Visual-audio egocentric dataset and benchmark for fall detection | Wearable fall detection and safety monitoring | watch |
| [WEAR](https://mariusbock.github.io/wear/) | 2023-04 | IMWUT 2024 | 22 participants, 18 outdoor workouts, synchronized egocentric video and 3D acceleration across 11 locations (IMWUT 2024) | Vision-plus-inertial outdoor activity recognition | open |
| [Visual Experience Dataset / VEDB](http://tamaraberg.com/visualexperience/) | 2024-02 | arXiv | 240+ hours egocentric video with gaze/head tracking in classic literature | Lifelogging, attention modeling, visual experience statistics | partial |
| [EgoProceL](https://sid2697.github.io/egoprocel/) | 2022-07 | ECCV 2022 | 62 hours, 130 subjects, 16 procedural tasks | Key-step localization and procedure learning from ego videos | open |
| [FT-HID](https://github.com/ENDLICHERE/FT-HID) | 2022-09 | GitHub | 90K+ RGB-D first- and third-person human interaction samples from 109 subjects | FPV/TPV aligned human interaction analysis | open |
| [KrishnaCam / OAK](https://oakdata.github.io/) | 2021-08 | ICCV 2021 | Long-running Google Glass daily-life stream; OAK adds 17.5 hours of object annotations | Continual object detection, summarization, personal visual memory | partial |
| [Home Action Genome / HOMAGE](https://homeactiongenome.org/) | 2021-05 | CVPR 2021 | 27 participants, synchronized ego and third-person views, 12 sensor types, hierarchical activity/action labels | Compositional multi-view home activity understanding | open |
| [MECCANO](https://iplab.dmi.unict.it/MECCANO/) | 2020-10 | WACV 2021 | Industrial-like motorbike model assembly with RGB/depth/gaze variants | EHOI, active object detection, anticipation, industrial procedures | open |
| [EgoK360](https://egok360.github.io/) | 2020-10 | ICIP 2020 | First-person 360-degree activity videos | 360-degree egocentric activity recognition | partial |
| [LEMMA](https://arxiv.org/abs/2007.15781) | 2020-07 | ECCV 2020 | Multi-view multi-agent multi-task daily activities across 14 kitchens/living rooms with dense atomic-action and HOI labels (ECCV 2020) | Multi-agent compositional activity understanding | open |
| [EGO-CH](https://arxiv.org/abs/2002.00899) | 2020-02 | Pattern Recognition Letters 2020 | 27+ hours, 70 subjects, two cultural sites, 26 environments, 200+ points of interest | Cultural heritage visitor behavior, localization, retrieval, preference prediction | partial |
| [Charades-Ego](https://prior.allenai.org/projects/charades) | 2018-04 | CVPR 2018 | 68.8 hours paired first-person and third-person videos, 68K+ activity instances | Ego-exo domain transfer, action recognition, localization, captioning | open |
| [GTEA](https://cbs.ic.gatech.edu/fpv/) | 2018 | project page | Early first-person cooking/activity dataset | Classic ego action recognition and object interaction | open |
| [GTEA Gaze / EGTEA Gaze+](https://cbs.ic.gatech.edu/fpv/) | 2018 | project page | Meal-prep egocentric videos with gaze and action annotations | Gaze-aware action recognition and hand-object attention | open |
| [Ego2Top](https://arxiv.org/abs/1607.06986) | 2016-07 | ECCV 2016 | 50 top-view videos, 188 egocentric videos, 166K frames, and 100K body detections | Matching camera wearers across egocentric and overhead views | watch |
| [Ego-Engagement](https://arxiv.org/abs/1604.00906) | 2016-04 | arXiv | Egocentric video dataset and model for whether the wearer is engaged with people or objects | Engagement, attention, and object/person interaction cues | watch |
| [Wrist-mounted ADL](https://arxiv.org/abs/1511.06783) | 2015-11 | CVPR 2016 | Synchronized head and wrist wearable-camera daily activities | Comparing head- versus wrist-mounted first-person views | open |
| [Ego-Object Discovery / EDUB](https://arxiv.org/abs/1504.01639) | 2015-04 | arXiv | 4,912 egocentric daily-life photo-stream images from four users for unsupervised object discovery | Lifelog object discovery and detection | open |
| [HUJI EgoSeg](https://www.vision.huji.ac.il/egoseg/) | 2014-06 | project page | Long egocentric videos for temporal segmentation | Egocentric event segmentation | partial |
| [DogCentric](https://robotics.ait.kyushu-u.ac.jp/dog-centric-activity-dataset/) | 2014 | project page | Dog-mounted first-person activity videos | Animal egocentric activity recognition | open |
| [JPL First-Person Interaction](https://ieeexplore.ieee.org/document/6909626) | 2013 | IEEE | First-person videos of people interacting with a humanoid observer | Human interaction recognition from first person | partial |
| [First-Person Social Interactions](http://ai.stanford.edu/~alireza/publication/CVPR12.pdf) | 2012-06 | CVPR 2012 | Day-long head-mounted video of 8 subjects at a theme park, annotated for social interactions, roles, attention, and turn-taking | First egocentric social-interaction dataset | open |
| [ADL Dataset](https://www.csc.kth.se/cvap/actions/) | 2012-06 | project page | Unscripted daily activity recordings with activity/object/hand annotations in classic literature | Daily living action recognition and object interaction | partial |
| [UT Ego](http://vision.cs.utexas.edu/projects/egocentric/) | 2012-06 | project page | Long daily egocentric videos in classic summarization work | Temporal segmentation and summarization | partial |
| [CMU-MMAC](http://kitchen.cs.cmu.edu/) | 2009-06 | CMU tech report 2009 | Multimodal kitchen-activity database: head-mounted egocentric video plus body IMUs, motion capture, and audio for 43 subjects cooking 5 recipes | One of the first egocentric activity datasets | open |

### Project Aria, AR/VR, and 3D Scene Resources

AR-glasses and headset data with gaze, SLAM, and digital-twin annotations for scene-level perception.

| Resource | Released | Venue | Scale / signal | Best for | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [EPIC Efficient Egocentric Perception](https://arxiv.org/abs/2606.15859) | 2026-06 | arXiv | Smart-AR-glasses perception framework using gaze, pose, and inertial signals to reduce high-resolution egocentric memory and energy cost | Efficient always-on AR perception | watch |
| [EgoTraj](https://github.com/yehiahmad/EgoTraj) | 2026-05 | arXiv | 75 Meta Quest Pro navigation sequences with RGB, head pose, gaze, scene labels | Egocentric human trajectory prediction and assistive navigation | open |
| [ARGaze](https://arxiv.org/abs/2602.05132) | 2026-02 | arXiv | Autoregressive transformer for causal online gaze estimation from first-person video and bounded recent gaze context | Streaming gaze estimation for AR/wearables | watch |
| [EgoCampus](https://arxiv.org/abs/2512.07668) | 2025-12 | arXiv | Egocentric pedestrian eye-gaze dataset and model over campus walking routes with synchronized first-person video and gaze | Pedestrian gaze and trajectory prediction | watch |
| [LookOut / Aria Navigation Dataset](https://arxiv.org/abs/2508.14466) | 2025-08 | arXiv | 4 hours of Project Aria real-world navigation recordings for future 6D head-pose trajectory prediction | Humanoid and assistive egocentric navigation | watch |
| [Aria STDR](https://arxiv.org/abs/2507.16330) | 2025-07 | arXiv | Project Aria egocentric scene-text dataset studying lighting, distance, resolution, and gaze-guided OCR | Scene text recognition under wearable capture | watch |
| [Reading in the Wild](https://www.projectaria.com/datasets/reading-in-the-wild/) | 2025-05 | NeurIPS 2025 | 100 hours of Project Aria reading/non-reading video with RGB, gaze, head pose, and reading-type labels | Reading recognition for always-on smart glasses | watch |
| [Digital Twin Catalog / DTC](https://www.projectaria.com/datasets/dtc/) | 2025-04 | CVPR 2025 | 2,000 scanned objects with DSLR and egocentric AR-glasses image sequences | Digital-twin object reconstruction and evaluation | open |
| [HEADS-UP](https://arxiv.org/abs/2409.20324) | 2024-09 | arXiv | Head-mounted egocentric dataset for pedestrian trajectory prediction and collision-risk assessment in blind-assistance systems | Trajectory prediction for blind assistance | watch |
| [Nymeria](https://www.projectaria.com/datasets/nymeria/) | 2024-06 | ECCV 2024 | 300 hours, 264 participants, 50 locations, Aria, motion, language, observer view | Egocentric motion, language grounding, body tracking, daily activity | open |
| [Aria Everyday Activities / AEA](https://www.projectaria.com/datasets/aea/) | 2024-02 | arXiv | 143 daily activity sequences across five indoor locations with trajectories, point clouds, gaze, speech | Everyday AR perception, scene reconstruction, prompted segmentation | open |
| [SANPO](https://arxiv.org/abs/2309.12172) | 2023-09 | WACV 2025 | Scene understanding, accessibility, and human navigation data for egocentric navigation and spatial assistance | Navigation and assistive scene understanding | watch |
| [Aria Digital Twin / ADT](https://www.projectaria.com/datasets/adt/) | 2023-06 | arXiv | 200 real-world activity sequences, raw Aria streams, 6DoF poses, object poses, depth, segmentation, synthetic renderings | Egocentric 3D machine perception and digital-twin evaluation | open |
| [Project Aria Datasets](https://www.projectaria.com/datasets/) | 2023-08 | arXiv | Official portal for Aria-based datasets and tooling | AR glasses, wearable sensing, scene reconstruction, gaze, SLAM | open |

## Benchmarks and Derived Annotations

Evaluation suites and label sets built on top of the raw datasets above.

| Benchmark | Released | Venue | Built on | Tasks | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [VEGA / VEGA-Bench](https://arxiv.org/abs/2606.18426) | 2026-06 | arXiv | In-the-wild egocentric navigation video with monocular geometry | 250K scenes and about 5M navigation goals for obstacle-aware VLA evaluation | watch |
| [UCS-Bench / DirectMe](https://github.com/cocowy1/UCS-Bench) | 2026-06 | ICML 2026 | 170+ hours of egocentric observations | 8.1K+ timestamped questions for continual spatial intelligence and streaming spatial memory | open |
| [StreamMemBench](https://arxiv.org/abs/2606.14571) | 2026-06 | arXiv | EgoLife egocentric streams | Initial/follow-up task sequences testing evidence recall, feedback incorporation, and future assistance | watch |
| [V-RAGBench / CARVE](https://arxiv.org/abs/2606.13141) | 2026-06 | arXiv | Long egocentric video chunks | Decoupled retrieval and generation evaluation for VideoRAG over evidence chunks | watch |
| [VL-MemKnG / WalkieKnowledgeT+](https://arxiv.org/abs/2606.17183) | 2026-06 | arXiv | Long egocentric navigation trajectories | Temporally distributed spatial-memory QA with hybrid graph and segment retrieval | watch |
| [Plan, Watch, Recover / EgoProactive](https://arxiv.org/abs/2606.04970) | 2026-06 | arXiv | EgoProactive plus Pro2Bench over five established benchmarks | Proactive procedural assistance, out-of-plan detection, and recovery guidance | watch |
| [EgoBench](https://arxiv.org/abs/2605.27820) | 2026-05 | arXiv | Egocentric video tasks | Interactive multimodal tool-using agents | watch |
| [Beyond Motion Primitives](https://arxiv.org/abs/2605.27464) | 2026-05 | arXiv | Ego4D | Head-mounted IMU benchmark for behavioral activity recognition on smart glasses | watch |
| [Ego-METAS](https://maria-sanvil.github.io/Ego-METAS-website/) | 2026-05 | arXiv | EgoExo4D, CMU-MMAC, CaptainCook4D | Online multimodal, energy-aware temporal action segmentation across RGB, audio, gaze, IMU, and monochrome streams | watch |
| [EgoProx](https://arxiv.org/abs/2605.24456) | 2026-05 | CVPR 2026 | Egocentric 3D proximity QA | Intention, exploration, exploitation, and chain-of-actions spatial reasoning for MLLMs | watch |
| [BARISTA](https://arxiv.org/abs/2605.12074) | 2026-05 | arXiv | 185 coffee-preparation videos | Scene graphs, masks, tracks, boxes, hand-object interactions, activities, and process-step reasoning | watch |
| [TAVIS](https://arxiv.org/abs/2605.07943) | 2026-05 | arXiv | IsaacLab active-vision imitation tasks | Headcam vs fixed-cam evaluation, wrist/head active vision, and anticipatory-gaze metric | watch |
| [MM-Conv](https://arxiv.org/abs/2605.21796) | 2026-05 | arXiv | 6.7 hours of egocentric VR interaction | Referential communication with speech, motion, gaze, and 3D scenes | watch |
| [EgoExoMem](https://arxiv.org/abs/2605.18734) | 2026-05 | arXiv | Synchronized ego-exo videos | Cross-view memory QA | watch |
| [EgoMemReason](https://arxiv.org/abs/2605.09874) | 2026-05 | arXiv | Week-long egocentric video | Entity, event, and behavior memory reasoning | watch |
| [Ego2World](https://arxiv.org/abs/2605.13335) | 2026-05 | arXiv | HD-EPIC | Executable symbolic worlds from egocentric cooking video for belief-state planning | watch |
| [EgoPoint-Bench](https://arxiv.org/abs/2604.21461) | 2026-04 | ACL 2026 | Simulated and real egocentric pointing samples | 11K+ QA items for referential reasoning and pointing-grounded object disambiguation | watch |
| [ReFocus / EM-QnF](https://nsubedi11.github.io/refocus) | 2026-04 | CVPR 2026 | Egocentric episodic-memory NLQ with user feedback | Interactive feedback refinement for ambiguous memory queries | watch |
| [EgoEsportsQA](https://arxiv.org/abs/2604.12320) | 2026-04 | arXiv | First-person esports video | Fast virtual first-person perception and reasoning | watch |
| [Audio Hallucination in Egocentric Video](https://arxiv.org/abs/2604.23860) | 2026-04 | ICASSP 2026 | Egocentric audio-visual video | 300 videos / 1,000 sound-focused questions probing audio hallucination in AV-LLMs | watch |
| [EXPLORE-Bench](https://arxiv.org/abs/2603.09731) | 2026-03 | arXiv | Real first-person videos | Egocentric long-horizon scene-state prediction and reasoning | watch |
| [MA-EgoQA](https://ma-egoqa.github.io/) | 2026-03 | arXiv | Multi-agent egocentric streams | Social, task coordination, theory-of-mind, temporal, environment QA | open |
| [EgoAVU](https://github.com/facebookresearch/EgoAVU) | 2026-02 | CVPR 2026 | Egocentric audio-visual narrations | EgoAVU-Instruct (3M QAs) and EgoAVU-Bench (3K QAs) for audio-visual understanding (CVPR 2026 highlight) | open |
| [SAW-Bench](https://arxiv.org/abs/2602.16682) | 2026-02 | arXiv | Ray-Ban Meta smart-glasses video | Observer-centric situated awareness and physically grounded spatial reasoning | watch |
| [Ego4OOD](https://arxiv.org/abs/2601.17056) | 2026-01 | arXiv | Egocentric video action recognition | Covariate-shift benchmark for egocentric domain generalization | watch |
| [Sanpo-D](https://arxiv.org/abs/2601.18100) | 2026-01 | arXiv | Sanpo egocentric navigation video | Spatial-conditioned reasoning over long first-person videos with fine-grained spatial re-annotation | watch |
| [Ropedia Xperience-10M Task Suite](https://huggingface.co/spaces/cy0307/ropedia-xperience-10m-task-suite) | 2026-03 | Hugging Face | Xperience-10M Sample | 12 embodied-AI task contracts, sample baselines, and evaluation protocol | open |
| [EgoExo-Con](https://arxiv.org/abs/2510.26113) | 2025-10 | arXiv | Synchronized ego-exo videos | View-invariant temporal verification and grounding; introduces View-GRPO | watch |
| [LaMAria](https://lamaria.ethz.ch) | 2025-09 | ICCV 2025 | Glasses-like wearable capture | City-scale egocentric visual-inertial SLAM with centimeter ground truth | open |
| [EgoIllusion](https://arxiv.org/abs/2508.12687) | 2025-08 | arXiv | Egocentric video | Hallucination benchmark probing fabricated objects, actions, and sounds in multimodal models | watch |
| [EgoExoBench](https://arxiv.org/abs/2507.18342) | 2025-07 | arXiv | Public ego-exo video datasets | 7,300+ QA pairs over semantic alignment, viewpoint association, and temporal reasoning | watch |
| [EASG-Bench](https://github.com/fpv-iplab/EASG-bench) | 2025-06 | ICCV 2025 Workshop | Egocentric action scene graphs | Relation and temporal QA | open |
| [HD-EPIC VQA Challenge](https://arxiv.org/abs/2502.04144) | 2025-02 | CVPR 2025 | HD-EPIC | Recipe, ingredient, nutrition, fine-grained action, 3D perception, object motion, gaze | benchmark |
| [EgoCross](https://github.com/MyUniverse0726/EgoCross) | 2025-08 | arXiv | Cross-domain ego clips | Surgery, industry, extreme sports, animal-perspective QA | watch |
| [EgoHOIBench / EgoNCE++](https://github.com/xuboshen/EgoNCEpp) | 2024-05 | ICLR 2025 | Multiple egocentric HOI sources | Open-vocabulary hand-object interaction understanding | open |
| [EgoPlan-Bench](https://github.com/ChenYi99/EgoPlan) | 2023-12 | arXiv | Egocentric planning tasks | Multimodal LLM planning over human-level egocentric scenarios | open |
| [Egocentric Pedestrian Trajectory Benchmark](https://arxiv.org/abs/2310.10424) | 2023-10 | arXiv | Egocentric pedestrian video | Trajectory prediction with scale- and motion-aware evaluation | watch |
| [RefEgo](https://github.com/shuheikurita/RefEgo) | 2023-08 | ICCV 2023 | Ego4D | 12K+ clips / 41 hours for first-person referring-expression comprehension and referred-object tracking | open |
| [EgoSchema](http://egoschema.github.io/) | 2023-08 | NeurIPS 2023 | Ego4D | Very-long-form multiple-choice video QA | open |
| [Fine-Grained Affordance Annotation](https://arxiv.org/abs/2302.03292) | 2023-02 | WACV 2023 | Egocentric HOI videos | Fine-grained affordance labels for hand-object interaction | watch |
| [Ego-Exo4D Benchmarks](https://ego-exo4d-data.org/) | 2023-11 | project page | Ego-Exo4D | Fine-grained activity, proficiency, cross-view translation, 3D pose, object correspondence | benchmark |
| [EPIC-Sounds](https://epic-kitchens.github.io/epic-sounds/) | 2023-02 | ICASSP 2023 | EPIC-KITCHENS | Audio event recognition in egocentric kitchen video | open |
| [EPIC-Fields](https://epic-kitchens.github.io/epic-fields/) | 2023-06 | NeurIPS 2023 | EPIC-KITCHENS | 3D fields and scene-level spatial reasoning over kitchen video | open |
| [EgoClip / EgoMCQ](https://github.com/showlab/EgoVLP) | 2022-06 | NeurIPS 2022 | Ego4D | 3.8M clip-text pairs and MCQ development benchmark for egocentric VLP | open |
| [VISOR](https://epic-kitchens.github.io/VISOR/) | 2022-09 | NeurIPS 2022 | EPIC-KITCHENS | Manual and dense masks, hand/object segmentation, active object relations | open |
| [AssistSR](https://arxiv.org/abs/2111.15050) | 2021-11 | arXiv | Instructional daily-item video segments | Task-oriented question-driven video segment retrieval for personal assistants | watch |
| [Ego4D Benchmarks](https://ego4d-data.org/) | 2021-10 | project page | Ego4D | Natural Language Query, Moment Query, episodic memory, state change, long-term anticipation, social/audio, hand-object | benchmark |
| [TREK-150](https://machinelearning.uniud.it/datasets/trek150/) | 2021-08 | project page | EPIC-KITCHENS | Egocentric single-object tracking | open |
| [EPIC-KITCHENS Challenges](https://epic-kitchens.github.io/) | 2018-04 | project page | EPIC-KITCHENS / EPIC-KITCHENS-100 | Recognition, detection, anticipation, retrieval, domain adaptation | benchmark |

## Models, Tools, and Baselines

Open models, baselines, and loaders you can build on directly.

### Egocentric Foundation Models and Assistants

| Resource | Released | Venue | What it contributes | Link |
| :--- | :---: | :---: | :--- | :---: |
| UNIEGO | 2026-06 | arXiv | Unified egocentric encoder distilled from nine teachers spanning ego-exo views, RGB, depth, skeleton, and foundation-model representations | [Paper](https://arxiv.org/abs/2606.20559) |
| ActiveMimic | 2026-06 | arXiv | Egocentric human-video pretraining with active-perception signals for manipulation and VLA transfer | [Paper](https://arxiv.org/abs/2606.06194) |
| Continual Child-View Learning | 2026-06 | arXiv | Chronological multimodal learning from a child's egocentric video and speech stream | [Paper](https://arxiv.org/abs/2606.05115) |
| Objects Before Words | 2026-06 | arXiv | Object-first language grounding from child-view egocentric video | [Paper](https://arxiv.org/abs/2606.12985) |
| Watch Remember Reason | 2026-06 | arXiv | Human-view long-video understanding framework for MLLM watching, memory, and reasoning | [Paper](https://arxiv.org/abs/2606.07433) |
| PhysBrain | 2025-12 | arXiv | Uses human egocentric data to bridge vision-language models toward physical intelligence and embodied control | [Paper](https://arxiv.org/abs/2512.16793) |
| EgoM2P | 2025-06 | ICCV 2025 | Egocentric multimodal multitask pretraining over RGB, depth, gaze, and camera pose | [Paper](https://arxiv.org/abs/2506.07886) |
| Exo2Ego / Ego-ExoClip | 2025-03 | AAAI 2026 | Transfers exocentric MLLM knowledge into egocentric video understanding with 1.1M synchronized ego-exo clip-text pairs and EgoIT instruction tuning | [Paper](https://arxiv.org/abs/2503.09143) |
| GazeLLM | 2025-03 | Augmented Humans 2025 | Uses gaze-focused first-person regions to reduce MLLM video processing while preserving task comprehension | [Paper](https://arxiv.org/abs/2504.00221) |
| EgoHOD | 2025-03 | ICLR 2025 | Fine-grained hand-object-dynamics pretraining for egocentric representations (ICLR 2025) | [GitHub](https://github.com/InternRobotics/EgoHOD) |
| Vinci | 2024-12 | IMWUT 2025 | Real-time, always-on egocentric assistant with historical-context QA, planning, and visual demos | [GitHub](https://github.com/OpenGVLab/vinci) |
| EgoVideo | 2024-06 | CVPR 2024 | Egocentric video foundation model with slow-fast adaptation; multi-track Ego4D / EPIC challenge winner | [GitHub](https://github.com/OpenGVLab/EgoVideo) |
| AlanaVLM | 2024-06 | arXiv | Embodied-AI foundation model for egocentric video understanding | [Paper](https://arxiv.org/abs/2406.13807) |
| EgoDistill | 2023-01 | tech report | Distills heavy egocentric clip features into efficient models using head-motion signals | [Project](https://vision.cs.utexas.edu/projects/egodistill/) |
| EgoT2 / Egocentric Video Task Translation | 2022-12 | CVPR 2023 Highlight | Task-translation framework that transfers supervision between egocentric video tasks | [Project](https://vision.cs.utexas.edu/projects/egot2/) |

### Video-Language and Long-Video Models

| Resource | Released | Venue | What it contributes | Link |
| :--- | :---: | :---: | :--- | :---: |
| Temporal Action Graphs for Ego VLMs | 2026-06 | arXiv | Converts egocentric videos into narratives and temporal action graphs for in-context action recognition with open-weight VLMs | [Paper](https://arxiv.org/abs/2606.15417) |
| ReRe Cross-View Revisiting | 2026-06 | ICML 2026 | Training-free spatial reasoning that revisits egocentric conclusions through synthesized complementary novel-view videos | [Project](https://zhenjiemao.github.io/ReRe/) |
| CASTLE KG Retrieval | 2026-06 | CVPR 2026 EgoVis | Agentic long-context video understanding with video knowledge graphs and hierarchical retrieval for the CASTLE challenge | [Paper](https://arxiv.org/abs/2606.01933) |
| AnchorWorld | 2026-06 | arXiv | Embodied egocentric world simulation with view-based evolution customization | [Paper](https://arxiv.org/abs/2606.07326) |
| Understanding-Enhanced Ego Mistake Detection | 2026-06 | arXiv | Small/large-model collaboration for detecting incorrect procedural actions in egocentric video | [Paper](https://arxiv.org/abs/2606.02120) |
| CASTLE2026 Team WDL | 2026-05 | CVPR 2026 EgoVis | Evidence-aware multimodal reasoning pipeline for long-form CASTLE egocentric QA | [Paper](https://arxiv.org/abs/2606.00712) |
| CuriosAI CASTLE | 2026-05 | CVPR 2026 EgoVis | Search-verify-answer CASTLE challenge pipeline using timelines, transcripts, and VLM captions | [Paper](https://arxiv.org/abs/2605.27800) |
| MARS CASTLE | 2026-05 | CVPR 2026 EgoVis | Multimodal agentic reasoning with source selection for CASTLE challenge QA | [Paper](https://arxiv.org/abs/2605.18176) |
| OSGNet + MLLM Reranking | 2026-05 | CVPR 2026 EgoVis | Champion Ego4D Episodic Memory Challenge solution for NLQ and GoalStep using MLLM reranking over OSGNet candidates | [GitHub](https://github.com/iLearn-Lab/CVPR25-OSGNet) |
| OmniEgo-R2 | 2026-05 | CVPR 2026 EgoVis | Routed reasoning framework for EgoCross; second place in both Source-Limited and Open-Source tracks | [GitHub](https://github.com/Lee-zixu/OmniEgo-R2) |
| Reflective Dialogue EgoCross | 2026-05 | CVPR 2026 EgoVis | Inference-time Teacher/Solver reflective dialogue for EgoCross support-set adaptation without fine-tuning | [Paper](https://arxiv.org/abs/2605.27885) |
| EgoCross Domain-Wise Inference | 2026-05 | CVPR 2026 EgoVis | Nearly training-free source-limited inference strategy for EgoCross domain shift | [Paper](https://arxiv.org/abs/2606.00829) |
| HD-EPIC Semantic-Visual Evidence | 2026-05 | CVPR 2026 EgoVis | HD-EPIC VQA challenge solution separating semantic and visual evidence | [Paper](https://arxiv.org/abs/2605.29402) |
| HiERO-StepG | 2026-05 | CVPR 2026 EgoVis | Hierarchical activity-understanding solution for the Ego4D Step Grounding Challenge | [Paper](https://arxiv.org/abs/2605.31227) |
| TempRet | 2026-05 | CVPR 2026 EgoVis | Temporal enhancement and reranking for EPIC-KITCHENS-100 multi-instance retrieval | [Paper](https://arxiv.org/abs/2605.24470) |
| Trajectory-Conditioned Egocentric Prediction | 2026-05 | arXiv | Future ego-view prediction conditioned on camera trajectory to disambiguate action outcomes | [Paper](https://arxiv.org/abs/2605.20388) |
| EgoSim | 2026-04 | arXiv | Closed-loop egocentric world simulator with 3D grounding and dynamic state updates for multi-stage interaction generation | [Paper](https://arxiv.org/abs/2604.01001) |
| EgoMotion | 2026-04 | arXiv | Hierarchical reasoning + diffusion for egocentric vision-language motion generation | [Paper](https://arxiv.org/abs/2604.19105) |
| Ego-InBetween | 2026-04 | arXiv | Generates object state transitions in ego-centric videos from action instructions | [Paper](https://arxiv.org/abs/2604.17749) |
| Syn2Seq Exo-to-Ego | 2026-04 | arXiv | Sequential exo-to-ego video generation from synchronized third-person views and camera poses | [Paper](https://arxiv.org/abs/2604.13793) |
| UniversalVTG | 2026-04 | arXiv | Lightweight cross-dataset foundation model for video temporal grounding | [Paper](https://arxiv.org/abs/2604.08522) |
| V-Nutri | 2026-04 | arXiv | Dish-level nutrition estimation from egocentric cooking videos | [Paper](https://arxiv.org/abs/2604.11913) |
| LOME | 2026-03 | arXiv | Action-conditioned egocentric world model generating photorealistic human-object interactions from image, text, and per-frame actions | [Paper](https://arxiv.org/abs/2603.27449) |
| Temporal-Aware Ego VLM | 2026-03 | arXiv | Training scheme that incentivizes temporal awareness in egocentric video-understanding models | [Paper](https://arxiv.org/abs/2603.27184) |
| EgoForge | 2026-03 | arXiv | Goal-directed egocentric world simulator that rolls out first-person video from a single image and a high-level instruction | [Paper](https://arxiv.org/abs/2603.20169) |
| EgoReasoner | 2026-03 | arXiv | Task-adaptive structured thinking for egocentric 4D spatial and object reasoning | [Paper](https://arxiv.org/abs/2603.06561) |
| Gaze-Regularized VLMs | 2026-03 | arXiv | Gaze-conditioned VLM training for ego-centric behavior understanding | [Paper](https://arxiv.org/abs/2603.23190) |
| Recurrent Reasoning VLM | 2026-03 | arXiv | Recurrent VLM reasoning for long-horizon embodied task-progress estimation | [Paper](https://arxiv.org/abs/2603.17312) |
| Ropedia Xperience-10M Task Baselines | 2026-03 | Hugging Face | Public Xperience-10M sample task definitions, baselines, metrics, and scale-up evaluation notes | [Hugging Face](https://huggingface.co/cy0307/ropedia-xperience-10m-task-baselines) |
| EgoMAS | 2026-03 | arXiv | Shared-memory baseline for multi-agent egocentric video QA | [Project](https://ma-egoqa.github.io/) |
| DreamDojo | 2026-02 | ICML 2026 | Generalist robot world model pretrained on 44K hours of egocentric human video with continuous latent actions, distilled to real time | [GitHub](https://github.com/NVIDIA/DreamDojo) |
| Hand2World | 2026-02 | arXiv | Autoregressive egocentric world model generating first-person interaction video from free-space hand gestures | [Paper](https://arxiv.org/abs/2602.09600) |
| Edge Episodic Memory QA | 2026-02 | arXiv | On-device dual-thread MLLM for real-time egocentric episodic-memory QA (QAEgo4D-Closed) on the edge | [Paper](https://arxiv.org/abs/2602.22455) |
| EgoGraph | 2026-02 | arXiv | Training-free temporal knowledge graph for ultra-long egocentric video understanding | [Paper](https://arxiv.org/abs/2602.23709) |
| EGAgent | 2026-01 | arXiv | Entity-scene-graph agent for very-long egocentric video understanding over all-day wearable streams | [GitHub](https://github.com/facebookresearch/egagent) |
| Walk through Paintings | 2026-01 | arXiv | Egocentric world models from internet priors that generate first-person scene walkthroughs | [Paper](https://arxiv.org/abs/2601.15284) |
| Event-VStream | 2026-01 | arXiv | Event-driven long-video stream understanding for real-time video-language systems | [Paper](https://arxiv.org/abs/2601.15655) |
| HD-EPIC VQA T-CoT | 2026-01 | arXiv | HD-EPIC VQA solution with temporal chain-of-thought prompting and Qwen2.5-VL adaptation | [Paper](https://arxiv.org/abs/2601.10228) |
| Robust Egocentric Visual Attention | 2026-01 | arXiv | Language-guided scene-context model for egocentric visual attention prediction | [Paper](https://arxiv.org/abs/2601.01818) |
| EgoControl | 2025-11 | arXiv | Pose-controllable egocentric video diffusion conditioned on sequences of 3D full-body poses | [Paper](https://arxiv.org/abs/2511.18173) |
| DMC3 Ego VideoQA | 2025-10 | arXiv | Counterfactual contrastive construction for egocentric VideoQA across event descriptions and hand-object interaction cues | [Paper](https://arxiv.org/abs/2510.20285) |
| EgoThinker | 2025-10 | NeurIPS 2025 | Egocentric reasoning model with spatio-temporal chain-of-thought and RL fine-tuning | [Paper](https://arxiv.org/abs/2510.23569) |
| Ego-PM | 2025-08 | arXiv | Egocentric predictive model that jointly forecasts future actions and video frames conditioned on hand trajectories | [Paper](https://arxiv.org/abs/2508.19852) |
| EgoWorld | 2025-06 | ICLR 2026 | Reconstructs egocentric views from exocentric point clouds, 3D hand poses, and text for cross-view world generation | [Project](https://redorangeyellowy.github.io/EgoWorld/) |
| EgoVLM | 2025-06 | arXiv | GRPO-style policy optimization for egocentric video reasoning | [Paper](https://arxiv.org/abs/2506.03097) |
| Ego-R1 | 2025-06 | arXiv | Chain-of-tool-thought framework and training data for ultra-long egocentric video QA | [Paper](https://arxiv.org/abs/2506.13654) |
| HiERO | 2025-05 | arXiv | Weakly supervised hierarchical activity-thread representations for EgoMCQ, EgoNLQ, and procedure learning | [Paper](https://arxiv.org/abs/2505.12911) |
| OSGNet | 2025-05 | CVPR 2025 | Object-shot enhanced grounding for egocentric temporal grounding / moment queries (CVPR 2025) | [GitHub](https://github.com/Yisen-Feng/OSGNet) |
| EgoExo-Gen | 2025-04 | ICLR 2025 | Predicts future ego-centric video from exocentric video, first ego frame, text instructions, and hand-object masks | [Paper](https://arxiv.org/abs/2504.11732) |
| EgoDTM | 2025-03 | arXiv | Depth- and text-aware egocentric VLP for 3D-aware representations | [GitHub](https://github.com/xuboshen/EgoDTM) |
| EgoLife / EgoButler / EgoGPT / EgoRAG | 2025-03 | arXiv | Omni-modal egocentric assistant system with retrieval over long life recordings | [Paper](https://arxiv.org/abs/2503.03803) |
| EgoAgent | 2025-02 | arXiv | Joint predictive agent model for perception, future-state prediction, and action in egocentric worlds | [Paper](https://arxiv.org/abs/2502.05857) |
| Embodied VideoAgent | 2024-12 | arXiv | Builds persistent 3D scene memory from egocentric video plus depth/pose sensors for dynamic scene reasoning and planning | [Project](https://embodied-videoagent.github.io/) |
| MM-Ego | 2024-10 | ICLR 2025 | Egocentric multimodal LLM with Memory Pointer Prompting and a 7M-sample egocentric QA data engine (EgoMemoria benchmark) | [Paper](https://arxiv.org/abs/2410.07177) |
| AMEGO | 2024-09 | ECCV 2024 | Active-memory representation from a single long egocentric video for fast multi-query answering (ECCV 2024) | [Project](https://gabrielegoletto.github.io/AMEGO/) |
| EgoNCE++ | 2024-05 | ICLR 2025 | Open-vocabulary HOI benchmark and asymmetric contrastive objective | [GitHub](https://github.com/xuboshen/EgoNCEpp) |
| SoundingActions | 2024-04 | CVPR 2024 | Self-supervised audio-language-vision embedding that learns how actions sound from narrated egocentric videos | [Project](https://vision.cs.utexas.edu/projects/soundingactions) |
| EgoInstructor | 2024-01 | CVPR 2024 | Retrieval-augmented egocentric captioning via cross-view retrieval of third-person clips (CVPR 2024) | [Project](https://jazzcharles.github.io/Egoinstructor/) |
| GroundVQA | 2023-12 | CVPR 2024 | Unified temporal grounding and open/closed QA for long egocentric videos | [GitHub](https://github.com/Becomebright/GroundVQA) |
| LifelongMemory | 2023-12 | arXiv | LLM-based long-form egocentric memory system for answering queries over a camera wearer's past | [Paper](https://arxiv.org/abs/2312.05269) |
| LEGO | 2023-12 | arXiv | Visual-instruction-tuned egocentric action-frame generation | [Paper](https://arxiv.org/abs/2312.03849) |
| Action Scene Graphs | 2023-12 | arXiv | Temporally evolving action scene graphs for long-form egocentric video understanding | [Paper](https://arxiv.org/abs/2312.03391) |
| LEAP | 2023-11 | arXiv | LLM generation of egocentric action programs with sub-actions, preconditions, postconditions, and object references | [Paper](https://arxiv.org/abs/2312.00055) |
| PALM | 2023-11 | arXiv | Predicts future actions through language models for long-term action anticipation | [Paper](https://arxiv.org/abs/2311.17944) |
| Exo2EgoDVC | 2023-11 | WACV 2025 | Dense video captioning for egocentric procedural activities using web instructional videos | [Project](https://tkhkaeio.github.io/projects/25-egodvc/) |
| Encode-Store-Retrieve | 2023-08 | arXiv | Language-encoded egocentric memory pipeline for storing and retrieving human-perception events | [Paper](https://arxiv.org/abs/2308.05822) |
| EgoVLPv2 | 2023-07 | ICCV 2023 | Egocentric video-language pretraining with fusion in the backbone | [Project](https://shramanpramanick.github.io/EgoVLPv2/) |
| GroundNLQ | 2023-06 | CVPR 2023 | Two-stage multi-scale grounding for Ego4D Natural Language Queries; CVPR 2023 NLQ champion | [GitHub](https://github.com/houzhijian/GroundNLQ) |
| MINOTAUR | 2023-02 | arXiv | Unified video grounding model for multimodal queries over Ego4D-style grounding tasks | [Paper](https://arxiv.org/abs/2302.08063) |
| NaQ | 2023-01 | CVPR 2023 | Uses narrations as implicit queries to supervise episodic-memory retrieval in long egocentric video | [Paper](https://arxiv.org/abs/2301.00746) |
| LaViLa | 2022-12 | CVPR 2023 | Learns video-language representations from Ego4D narrations and LLM-generated narrations | [Paper](https://arxiv.org/abs/2212.04501) |
| EgoVLP / EgoNCE | 2022-06 | NeurIPS 2022 | EgoClip, EgoNCE objective, EgoMCQ, and transfer to Ego4D/EPIC/Charades-Ego tasks | [GitHub](https://github.com/showlab/EgoVLP) |
| EgoEnv | 2022 | project page | Environment-aware representation learning from egocentric video | [Project](https://vision.cs.utexas.edu/projects/ego-env/) |

### Action, Tracking, Pose, and HOI Baselines

| Resource | Released | Venue | What it contributes | Link |
| :--- | :---: | :---: | :--- | :---: |
| HumanScale | 2026-06 | arXiv | Shows filtered, labeled egocentric human video can outperform teleoperated real-robot data for embodied pretraining | [Paper](https://arxiv.org/abs/2606.20521) |
| Do as I Do | 2026-06 | arXiv | Retargets human hand-object interactions from in-the-wild monocular video into executable dexterous robot trajectories | [Paper](https://arxiv.org/abs/2606.19333) |
| Motion-Focused Latent Action VLA | 2026-06 | IROS 2026 | Extracts motion-focused latent actions from unlabeled human EgoVideos for cross-embodiment VLA pretraining and adaptation | [Paper](https://arxiv.org/abs/2606.18955) |
| EgoPriMo | 2026-06 | arXiv | Egocentric motion prior for interactive humanoid control from human demonstrations | [Paper](https://arxiv.org/abs/2606.08495) |
| EgoPhys | 2026-06 | arXiv | Learns deformable-object physics digital twins from egocentric RGB interaction video for robot planning | [Project](https://hjhyunjinkim.github.io/EgoPhys) |
| EDITH | 2026-06 | arXiv | Streams first-person view, gaze, and speech from smart glasses into hierarchical robot policies for natural HRI | [Project](https://project-edith.github.io) |
| Divide Deliberate Decide | 2026-06 | arXiv | Local zero-shot multi-agent VLM framework for fine-grained egocentric action recognition | [Paper](https://arxiv.org/abs/2606.17627) |
| Ego-Nav Co-training | 2026-06 | arXiv | Converts egocentric walking videos into robot-action datasets and co-trains a VLA with robot demos for mobile navigation | [Paper](https://arxiv.org/abs/2606.01951) |
| EgoGuide | 2026-06 | arXiv | Synchronized wrist/head egocentric demonstration collection with online guidance and a gated egocentric residual policy | [Project](https://silicx.github.io/EgoGuide) |
| Ego-Pi | 2026-06 | arXiv | VLA fine-tuning study across egocentric human and robot data using pi0.5 and dexterous five-finger embodiments | [Project](https://egopipaper.github.io/) |
| EgoTactile | 2026-06 | ICML 2026 spotlight | Egocentric video to full-hand grasp-pressure benchmark and diffusion/baseline models for everyday-object interactions | [Project](https://egotactile.github.io/) |
| EgoPressDiff | 2026-06 | ICASSP 2026 | Conditional video diffusion for UV-domain egocentric hand-pressure maps using pose, mesh, and depth conditioning | [Project](https://egopressdiff.github.io/) |
| Hand Trajectory Fusion for Ego NLQ | 2026-06 | CVPR 2026 EgoVis | Hand-trajectory encoder and cross-attention fusion for Ego4D Natural Language Query grounding | [Paper](https://arxiv.org/abs/2606.02962) |
| PROSE | 2026-06 | arXiv | Training-free RGB-only egocentric scene registration using VLM-derived object-level 3D scene graphs | [Project](https://rckola.github.io/prose/) |
| ACE-Ego-0 | 2026-06 | arXiv | Unifies egocentric human video with robot/sim data via reliability-aware weighting for VLA pretraining (RoboCasa GR1, RoboTwin 2.0) | [Paper](https://arxiv.org/abs/2606.17200) |
| EgoAction | 2026-05 | CVPR 2026 | CVPR 2026 EPIC-KITCHENS action detection challenge pipeline | [Paper](https://arxiv.org/abs/2605.24496) |
| EgoAdapt | 2026-05 | CVPR 2026 | CVPR 2026 HD-EPIC VQA challenge inference-time adaptation pipeline | [Paper](https://arxiv.org/abs/2605.24500) |
| FROST-STA | 2026-05 | CVPR 2026 EgoVis | Frozen dense-feature Ego4D short-term object-interaction anticipation submission | [Paper](https://arxiv.org/abs/2606.00694) |
| JFAA | 2026-05 | CVPR 2026 EgoVis | JEPA-based EPIC-KITCHENS-100 action-anticipation challenge submission | [Paper](https://arxiv.org/abs/2605.20904) |
| Mamba Ego Action Recognition | 2026-05 | CVPR 2026 EgoVis | Cross-modal egocentric action recognition using RGB and hand-skeleton streams with Mamba | [Paper](https://arxiv.org/abs/2605.24302) |
| TAP-JEPA | 2026-05 | CVPR 2026 EgoVis | EPIC-KITCHENS-100 action-anticipation runner-up using frozen V-JEPA 2.1 features | [Paper](https://arxiv.org/abs/2606.00662) |
| VISTA | 2026-05 | CVPR 2026 EgoVis | V-JEPA plus StillFast temporal anticipator for Ego4D STA at EgoVis 2026 | [Paper](https://arxiv.org/abs/2605.20901) |
| WristCompass | 2026-05 | arXiv | Learns ego-camera orientation from hand/camera kinematic coupling in manipulation video | [Paper](https://arxiv.org/abs/2605.30671) |
| Zero-Shot Ego Object ReID | 2026-05 | arXiv | SAM3-feature fusion for zero-shot object re-identification in egocentric kitchen videos | [Paper](https://arxiv.org/abs/2605.26383) |
| EgoRelight | 2026-05 | arXiv | HMD-based egocentric human capture and illumination recovery for relightable avatars | [Paper](https://arxiv.org/abs/2605.28401) |
| StableHand | 2026-05 | arXiv | Quality-aware flow-matching baseline for world-space dual-hand motion estimation from egocentric video | [Project](https://huajian-zeng.github.io/projects/stablehand/) |
| HumanEgo | 2026-05 | arXiv | Zero-shot robot learning from minutes of human egocentric videos via entity-level hand-object representations and flow-matching policies | [Project](https://humanego-ai.github.io) |
| EgoForce Hand Pose | 2026-05 | SIGGRAPH 2026 | Monocular egocentric 3D hand pose and shape reconstruction across fisheye, perspective, and wide-FOV camera models | [Project](https://dfki-av.github.io/EgoForce) |
| EARL | 2026-05 | ICML 2026 | Analysis-guided RL framework for egocentric interaction reasoning and pixel grounding with coarse-to-fine parsing | [GitHub](https://github.com/yuggiehk/EARL) |
| EgoExo-WM | 2026-05 | arXiv | Converts exocentric video into egocentric world-model training data using body-pose priors | [Project](https://vision.cs.utexas.edu/projects/EgoExo-WM/) |
| MotionGRPO | 2026-05 | ICML 2026 | GRPO-based post-training for full-body 3D motion recovery from head-mounted device signals | [Paper](https://arxiv.org/abs/2605.05680) |
| ActiveGlasses | 2026-04 | arXiv | Learns robot manipulation from smart-glasses ego-centric human demonstrations and transfers active vision to a robot perception arm | [Paper](https://arxiv.org/abs/2604.08534) |
| Personal Point of View 3DGS | 2026-04 | arXiv | Evaluation of dynamic 3D Gaussian splatting for egocentric scene reconstruction | [Paper](https://arxiv.org/abs/2604.23803) |
| VGGT-Segmentor | 2026-04 | arXiv | Geometry-enhanced segmentation across egocentric and exocentric views | [Paper](https://arxiv.org/abs/2604.13596) |
| Gaze-SoM HOI Anticipation | 2026-04 | arXiv | Gaze and set-of-mark prompting in VLLMs for hand-object-interaction anticipation from egocentric video | [Paper](https://arxiv.org/abs/2604.03667) |
| EgoFlow | 2026-04 | arXiv | Gradient-guided flow matching for physically plausible 6DoF object-motion generation from egocentric video | [Paper](https://arxiv.org/abs/2604.01421) |
| UniDex | 2026-03 | arXiv | Robot foundation suite for universal dexterous hand control learned from egocentric human videos | [Paper](https://arxiv.org/abs/2603.22264) |
| PAWS | 2026-03 | arXiv | Articulation extraction from large-scale hand-object interactions in egocentric video | [Paper](https://arxiv.org/abs/2603.25539) |
| Static Scene Reconstruction from Dynamic Egocentric Videos | 2026-03 | arXiv | Mask-aware 3D reconstruction pipeline for long-form dynamic egocentric video | [Paper](https://arxiv.org/abs/2603.22450) |
| EgoHOI World Model | 2026-03 | arXiv | Physics-informed egocentric world model that synthesizes contact-consistent hand-object interactions from action signals alone | [Paper](https://arxiv.org/abs/2603.13615) |
| STAformer++ Affordance-Aware Anticipation | 2026-02 | arXiv | Integrates temporal attention, scene affordance memory, and interaction hotspots for short-term object-interaction anticipation on Ego4D and EPIC-KITCHENS | [Paper](https://arxiv.org/abs/2602.14837) |
| Neck-Mounted Gaze (GLC) | 2026-02 | arXiv | Transformer gaze estimator for a shoulder-level neck-mounted camera with out-of-bound classification and multi-view co-learning | [Paper](https://arxiv.org/abs/2602.11669) |
| EgoPush | 2026-02 | arXiv | End-to-end egocentric multi-object rearrangement for mobile robots from a single first-person camera, with zero-shot sim-to-real | [Paper](https://arxiv.org/abs/2602.18071) |
| DeltaDorsal | 2026-01 | arXiv | Dorsal hand-skin deformation features for robust egocentric hand pose under self-occlusion (~18% lower joint-angle error) | [GitHub](https://github.com/hilab-open-source/deltadorsal) |
| DexWM | 2025-12 | CVPR 2026 | Dexterous interaction world model from finger keypoints in 900+ hours of egocentric human and robot video | [Paper](https://arxiv.org/abs/2512.13644) |
| WholeBodyVLA | 2025-12 | ICLR 2026 | Unified latent VLA learning latent actions from action-free egocentric videos for whole-body humanoid loco-manipulation | [GitHub](https://github.com/OpenDriveLab/WholebodyVLA) |
| Uni-Hand | 2025-11 | T-PAMI 2026 | Universal egocentric hand motion forecasting for 2D/3D wrist and finger waypoints with code and data | [GitHub](https://github.com/IRMVLab/UniHand) |
| SFHand / EgoHaFL | 2025-11 | arXiv | Streaming language-guided 3D hand forecasting plus synchronized 3D hand-pose and language-instruction data | [Paper](https://arxiv.org/abs/2511.18127) |
| EgoCogNav | 2025-11 | arXiv | Cognition-aware egocentric navigation forecasting trajectory and head motion from perceived path uncertainty (CEN dataset) | [Paper](https://arxiv.org/abs/2511.17581) |
| In-N-On | 2025-11 | arXiv | Scales egocentric manipulation with 1,000+ hours in-the-wild human video (PHSD) to train the Human0 flow-matching policy | [Paper](https://arxiv.org/abs/2511.15704) |
| NS-iHOS / WISH | 2025-09 | arXiv | Weakly supervised in-hand object segmentation from egocentric narrations, distilled for inference without narration | [Paper](https://arxiv.org/abs/2509.26004) |
| INSIGHT | 2025-08 | AAAI 2026 | Intention-guided cognitive reasoning for long-term action anticipation using hand-object cues and verb-noun dependencies | [Paper](https://arxiv.org/abs/2508.01742) |
| ECHO | 2025-08 | arXiv | Recovers human pose, object motion, and contact dynamics from sparse smart-glasses and wrist-tracker signals | [Paper](https://arxiv.org/abs/2508.21556) |
| Ego 6DoF Object Trajectories | 2025-06 | CVPR 2025 | Generates 6DoF object manipulation trajectories from action descriptions in egocentric vision, evaluated with HOT3D | [Paper](https://arxiv.org/abs/2506.03605) |
| H2R | 2025-05 | arXiv | Human-to-robot data augmentation that converts egocentric human videos into robot-centric pre-training data | [Paper](https://arxiv.org/abs/2505.11920) |
| MEgoHand | 2025-05 | arXiv | Multimodal egocentric hand-object motion generator (VLM + flow-matching) over 3.35M RGB-D frames, 24K interactions, 1.2K objects | [Paper](https://arxiv.org/abs/2505.16602) |
| EgoZero | 2025-05 | arXiv | Trains robot manipulation policies from Project Aria smart-glasses human demos with zero robot training data | [Paper](https://arxiv.org/abs/2505.20290) |
| Ego4o | 2025-04 | arXiv | Omni-modal egocentric human motion capture from headset/glasses/phone/watch inputs, sparse IMUs, and motion-language descriptions | [Paper](https://arxiv.org/abs/2504.08449) |
| EgoH4 | 2025-04 | arXiv | Diffusion transformer forecasting both-hand 3D trajectories and poses from egocentric video, including out-of-frame hands (Ego-Exo4D) | [Paper](https://arxiv.org/abs/2504.08654) |
| Fish2Mesh | 2025-03 | arXiv | Fisheye-aware transformer for 3D human mesh recovery from egocentric vision with weak supervision from third-person cameras | [Paper](https://arxiv.org/abs/2503.06089) |
| EgoSplat | 2025-03 | arXiv | Open-vocabulary egocentric scene understanding with language-embedded 3D Gaussian splatting (Aria Digital Twin) | [Paper](https://arxiv.org/abs/2503.11345) |
| mmEgoHand | 2025-01 | arXiv | Head-mounted millimeter-wave radar and IMU system for egocentric hand pose estimation and gesture recognition | [Paper](https://arxiv.org/abs/2501.13805) |
| ObjectRelator | 2024-11 | ICCV 2025 Highlight | Cross-view ego-exo object relation and correspondence model with multimodal fusion and self-supervised alignment | [Paper](https://arxiv.org/abs/2411.19083) |
| TouchInsight | 2024-10 | UIST 2024 | Detects touch moment, finger, and location on arbitrary physical surfaces from egocentric hand tracking | [Paper](https://arxiv.org/abs/2410.05940) |
| EgoZAR | 2024-09 | arXiv | Zone-aware egocentric action-recognition method improving cross-domain transfer with activity-centric zone priors | [Project](https://gabrielegoletto.github.io/EgoZAR/) |
| 3D-Aware Ego Instance Tracking | 2024-08 | arXiv | 3D-aware instance segmentation and tracking that lifts 2D masks with scene geometry to survive motion and occlusion (EPIC Fields) | [Paper](https://arxiv.org/abs/2408.09860) |
| EgoChoir | 2024-05 | NeurIPS 2024 | Infers 3D contact and object affordance from egocentric video, head motion, and 3D object cues | [Project](https://yyvhang.github.io/EgoChoir/) |
| Diff-IP2D | 2024-05 | arXiv | Non-autoregressive diffusion forecasting of 2D hand trajectories and object affordances with camera-egomotion conditioning | [GitHub](https://github.com/IRMVLab/Diff-IP2D) |
| EffHandEgoNet | 2024-04 | FG 2024 | Egocentric 2D hand pose and action-recognition method for smart-glasses RGB input on H2O and FPHA | [Paper](https://arxiv.org/abs/2404.09308) |
| EgoLifter | 2024-03 | ECCV 2024 | Open-world 3D segmentation decomposing natural egocentric video into individual 3D objects via 3D Gaussians and SAM | [GitHub](https://github.com/facebookresearch/egolifter) |
| EgoPoseFormer | 2024-03 | arXiv | Transformer baseline for stereo egocentric 3D human pose estimation | [GitHub](https://github.com/ChenhongyiYang/egoposeformer) |
| Get a Grip | 2023-12 | arXiv | Reconstructs stable hand-object grasps from egocentric video | [Project](https://zhifanzhu.github.io/getagrip) |
| Aria-NeRF | 2023-11 | arXiv | Multimodal egocentric view synthesis for Project Aria-style capture | [Paper](https://arxiv.org/abs/2311.06455) |
| Egocentric Whole-Body MoCap | 2023-11 | arXiv | FisheyeViT plus diffusion refinement for egocentric whole-body motion capture | [Paper](https://arxiv.org/abs/2311.16495) |
| Symbolic Active Object Localization | 2023-10 | EMNLP 2023 | Uses symbolic world knowledge to localize active objects from egocentric vision and task instructions | [Paper](https://arxiv.org/abs/2310.15066) |
| EgoPCA | 2023-09 | ICCV 2023 | Framework for egocentric hand-object interaction understanding using hand/object-centric cues | [Paper](https://arxiv.org/abs/2309.02423) |
| Ego3DPose | 2023-09 | SIGGRAPH Asia 2023 | Captures 3D body cues from binocular egocentric views for pose estimation | [Paper](https://arxiv.org/abs/2309.11962) |
| Open-Vocabulary Egocentric Actions | 2023-08 | NeurIPS 2023 | Open-vocabulary egocentric action recognition for verb-noun action labels | [Project](https://dibschat.github.io/openvocab-egoAR/) |
| Helping Hands | 2023-08 | ICCV 2023 | Object-aware egocentric video-recognition model using hand-object cues | [Paper](https://arxiv.org/abs/2308.07918) |
| EgoPoser | 2023-08 | ECCV 2024 | Real-time egocentric pose estimation from sparse and intermittent HMD/controller observations | [Project](https://siplab.org/projects/EgoPoser) |
| EgoHandTrajPred / USST | 2023-07 | ICCV 2023 | Egocentric 3D hand trajectory forecasting over H2O and EgoPAT3D-style settings | [Project](https://actionlab-cv.github.io/EgoHandTrajPred) |
| AntGPT | 2023-07 | ICLR 2024 | Uses large language models to improve long-term action anticipation from video context | [Paper](https://arxiv.org/abs/2307.16368) |
| AV-EgoGaze Anticipation | 2023-05 | arXiv | Audio-visual model for forecasting future gaze in egocentric video | [Paper](https://arxiv.org/abs/2305.03907) |
| StillFast | 2023-04 | arXiv | End-to-end short-term object interaction anticipation for Ego4D | [Project](https://iplab.dmi.unict.it/stillfast/) |
| EgoViT | 2023-03 | arXiv | Pyramid video transformer with dynamic class-token generation for egocentric action recognition | [Paper](https://arxiv.org/abs/2303.08920) |
| Next Active Object Anticipation | 2023-02 | IEEE Access 2024 | Anticipates next-active-object locations before contact in egocentric video | [Paper](https://arxiv.org/abs/2302.06358) |
| TransFusion | 2023-01 | IEEE TCSVT 2024 | Summarizes past egocentric context in language to improve multimodal object-interaction anticipation | [Paper](https://arxiv.org/abs/2301.09209) |
| Ego-Only | 2023-01 | arXiv | Egocentric action detection without exocentric pretraining transfer | [Paper](https://arxiv.org/abs/2301.01380) |
| EgoSTARK | 2023-01 | arXiv | Adapted long-term tracker baseline for EgoTracks | [Paper](https://arxiv.org/abs/2301.03213) |
| AV-CONV | 2023-12 | arXiv | Audio-visual conversational graph prediction from ego/exo conversation | [Project](https://vjwq.github.io/AV-CONV/) |
| EgoLoc | 2022-12 | ICCV 2023 | Stronger Ego4D visual-query 3D object localization with camera-pose and localization baselines | [Paper](https://arxiv.org/abs/2212.06969) |
| CONE | 2022-11 | ECCV 2022 Workshop | Coarse-to-fine alignment framework for Ego4D Natural Language Queries | [Paper](https://arxiv.org/abs/2211.08776) |
| InternVideo-Ego4D | 2022-11 | Ego4D Workshop 2022 | Pack of champion Ego4D challenge solutions spanning episodic memory, forecasting, hand-object, and audio/social tracks | [Paper](https://arxiv.org/abs/2211.09529) |
| UmeTrack | 2022-10 | SIGGRAPH Asia 2022 | Unified multi-view end-to-end 3D hand tracking for VR headsets and hand-interaction systems | [Paper](https://arxiv.org/abs/2211.00099) |
| I-CVAE LTA | 2022-07 | WACV 2023 | Intention-conditioned variational model for long-term human egocentric action forecasting | [Project](https://evm7.github.io/icvae-page/) |
| SOS Handled Objects | 2022-04 | ECCV 2022 | Self-supervised learning over handled-object sets for egocentric action recognition | [Paper](https://arxiv.org/abs/2204.04796) |
| HOI Forecast / Interaction Hotspots | 2022-04 | CVPR 2022 | Forecasts future hand trajectories and interaction hotspots on next-active objects | [Project](https://stevenlsw.github.io/hoi-forecast) |
| EgoGAN | 2022-03 | arXiv | Generative future hand-mask forecasting from egocentric video | [Paper](https://arxiv.org/abs/2203.11305) |
| Untrimmed Action Anticipation | 2022-02 | arXiv | Reframes egocentric anticipation for untrimmed first-person streams | [Paper](https://arxiv.org/abs/2202.04132) |
| EgoHOS model | 2022-08 | GitHub | Context-aware hand-object segmentation and augmentation pipeline | [GitHub](https://github.com/owenzlz/EgoHOS) |
| E2(GO)MOTION | 2021-12 | CVPR 2022 | Motion-augmented event-stream representation for egocentric action recognition | [Paper](https://arxiv.org/abs/2112.03596) |
| Temporal-Context Ego Action Recognition | 2021-11 | BMVC 2021 | Multimodal transformer that uses surrounding temporal context for egocentric action recognition | [Paper](https://arxiv.org/abs/2111.01024) |
| Exo-to-Ego Video Synthesis | 2021-07 | ACM MM 2021 | Cross-view synthesis model that generates egocentric video from exocentric video | [Paper](https://arxiv.org/abs/2107.03120) |
| KinPoly / Dynamics-Regulated Kinematic Policy | 2021-06 | NeurIPS 2021 | Object-aware kinematic policy for egocentric pose estimation with scene dynamics | [Project](https://zhengyiluo.github.io/projects/kin_poly/) |
| RNA Cross-Domain FPV AV Recognition | 2021-06 | arXiv | Relative Norm Alignment for cross-domain first-person audio-visual action recognition | [Paper](https://arxiv.org/abs/2106.01689) |
| Ego-Topo 3D Map Localization | 2021-05 | ECCV 2022 | Joint egocentric activity recognition and localization on a 3D environment map | [Paper](https://arxiv.org/abs/2105.09544) |
| Ego-Exo representation transfer | 2021-04 | CVPR 2021 | Distillation from third-person video using ego-specific latent signals | [Paper](https://arxiv.org/abs/2104.07905) |
| Egocentric Pose from Human Vision Span | 2021-04 | arXiv | Egocentric body-pose estimation from a wider glasses-like human vision span | [Paper](https://arxiv.org/abs/2104.05167) |
| HPS | 2021-03 | CVPR 2021 | 3D human pose and self-localization in large scenes from body-mounted sensors and a head-mounted camera | [Paper](https://arxiv.org/abs/2103.17265) |
| Indoor Future Person Localization | 2021-03 | IROS 2021 | Future person-location and trajectory prediction from egocentric wearable-camera video | [Paper](https://arxiv.org/abs/2103.04019) |
| Contact Representations for Action Forecasting | 2021-02 | T-PAMI 2021 | Forecasts first-person actions through making/breaking hand-object contact representations | [Paper](https://arxiv.org/abs/2102.00649) |
| Imagination-Based Ego Action Anticipation | 2021-01 | IEEE TIP 2021 | Anticipates egocentric actions by imagining future visual representations | [Paper](https://arxiv.org/abs/2101.04924) |
| RHOI | 2020-12 | arXiv | Reconstructs hand-object interactions in the wild without direct 3D supervision | [Project](https://people.eecs.berkeley.edu/~zhecao/rhoi/) |
| Egocentric 4D Human Body Capture | 2020-11 | arXiv | Reconstructs second-person 3D human meshes from monocular egocentric video and scene grounding | [Paper](https://arxiv.org/abs/2011.13341) |
| SelfPose | 2020-11 | T-PAMI 2020 | 3D egocentric body-pose estimation from downward-looking headset-mounted fisheye cameras | [Paper](https://arxiv.org/abs/2011.01519) |
| Ego-OMG | 2020-06 | arXiv | Object Manipulation Graph representation for activity modeling and near-future action anticipation | [Paper](https://arxiv.org/abs/2006.03201) |
| Unifying Few- and Zero-Shot Ego Action Recognition | 2020-05 | CVPR 2020 EPIC Workshop | Compositional few- and zero-shot egocentric action recognition for EPIC-style verb-noun labels | [Paper](https://arxiv.org/abs/2006.11393) |
| First-Person Motion-Appearance SSL | 2020-02 | ICPR 2020 | Self-supervised joint motion and appearance encoding for first-person action recognition | [Paper](https://arxiv.org/abs/2002.03982) |
| Symbiotic Attention | 2020-02 | AAAI 2020 Oral | Uses privileged hand/object information through symbiotic attention for egocentric action recognition | [Paper](https://arxiv.org/abs/2002.03137) |
| Motor Attention HOI Forecasting | 2019-11 | arXiv | Joint prediction of motor attention and future actions in first-person human-object interaction | [Paper](https://arxiv.org/abs/1911.10967) |
| Seeing and Hearing Egocentric Actions | 2019-10 | ICCV 2019 EPIC Workshop | Audio-visual study and baseline for egocentric human-object action understanding | [Paper](https://arxiv.org/abs/1910.06693) |
| EPIC-Fusion | 2019-08 | ICCV 2019 | Audio-visual temporal-binding model for egocentric action recognition | [Paper](https://arxiv.org/abs/1908.08498) |
| Few-Shot First-Person Action Recognition | 2019-07 | T-PAMI | Domain-specific priors and meta-learning for few-shot first-person action recognition | [Paper](https://arxiv.org/abs/1907.09382) |
| Rolling-Unrolling LSTMs | 2019-05 | ICCV 2019 Oral | Multi-scale LSTM with modality attention for anticipating egocentric actions and interacted objects | [Paper](https://arxiv.org/abs/1905.09035) |
| EPIC-KITCHENS action models | 2019 | GitHub | Public baseline models for EPIC-KITCHENS action recognition | [GitHub](https://github.com/epic-kitchens/action-models) |
| Visual Context Event Segmentation | 2018-08 | ACM MM 2018 | Unsupervised segmentation of egocentric photostreams into contextual events, with EDUB-Seg labels | [Paper](https://arxiv.org/abs/1808.02289) |
| Task-Dependent Gaze Transition | 2018-03 | ECCV 2018 | Learns task-dependent attention transitions for gaze prediction in egocentric video | [Paper](https://arxiv.org/abs/1803.09125) |
| Future Person Localization | 2017-11 | CVPR 2018 | Predicts where people will appear in future frames from a first-person wearable camera | [Paper](https://arxiv.org/abs/1711.11217) |
| First-Person Activity Forecasting | 2016-12 | ICCV 2017 Oral | DARKO online inverse-reinforcement-learning system for forecasting actions and active objects | [Paper](https://arxiv.org/abs/1612.07796) |
| Egocentric FOV Localization | 2015-10 | WACV 2015 | Localizes the camera wearer's first-person field of view in overhead/surveillance video | [Paper](https://arxiv.org/abs/1510.02073) |
| First-Person Pose Recognition | 2015-06 | CVPR 2015 | Uses egocentric workspaces and camera geometry for first-person human pose recognition | [Paper](https://openaccess.thecvf.com/content_cvpr_2015/html/Rogez_First-Person_Pose_Recognition_2015_CVPR_paper.html) |

### Practical Tooling

| Tool | Released | Venue | Use |
| :--- | :---: | :---: | :--- |
| [OpenGlass](https://arxiv.org/abs/2606.07431) | 2026-06 | arXiv | Low-power open AI eyewear platform with event-based vision support for on-device smart-glasses research. |
| [EgoKit](https://egokit.chuange.org/) | 2026-05 | arXiv | Low-cost synchronized ego/wrist recording workflow across phones, smart glasses, and XR hosts. |
| [GBAT](https://arxiv.org/abs/2605.22962) | 2026-05 | arXiv | Annotating egocentric eye-tracking and video in child-caregiver interaction studies. |
| [MobileEgo Anywhere](https://arxiv.org/abs/2605.05945) | 2026-05 | arXiv | Commodity-phone infrastructure for hour-plus egocentric trajectories, STERA processing, and long-form VLA data collection. |
| [VisionClaw](https://arxiv.org/abs/2604.03486) | 2026-04 | arXiv | Always-on wearable AI-agent system on Ray-Ban Meta smart glasses, coupling live egocentric perception with speech-driven task execution. |
| [HOMIE-toolkit](https://github.com/Ropedia/HOMIE-toolkit) | 2026-03 | GitHub | Loading and visualizing Xperience-10M HDF5 annotations, calibration, SLAM, hand/body mocap, depth, IMU, and point clouds. |
| [RaycastGrasp](https://arxiv.org/abs/2510.22113) | 2025-10 | ICIR 2025 | Egocentric gaze-guided MR headset interface for robotic object retrieval and manipulation. |
| [AiGet](https://arxiv.org/abs/2501.16240) | 2025-01 | CHI 2025 | Smart-glasses assistant for gaze/context/profile-driven informal learning during everyday moments. |
| [HUX](https://arxiv.org/abs/2407.19492) | 2024-07 | arXiv | Always-on smart-glasses / XR companion concept with gaze, environment context, verbal context, and memory storage. |
| [HOT3D tooling](https://facebookresearch.github.io/hot3d/) | 2024-06 | project page | Loading HOT3D hand/object/camera pose annotations and models. |
| [EgoBlur](https://arxiv.org/abs/2308.13093) | 2023-08 | arXiv | Privacy-preserving blur pipeline and responsible-innovation analysis for Project Aria egocentric capture. |
| [Ego-Exo4D CLI and docs](https://ego-exo4d-data.org/) | 2023-11 | project page | Downloading synchronized ego-exo data and annotations. |
| [EgoObjects API](https://github.com/facebookresearch/EgoObjects) | 2023-09 | arXiv | Working with category and instance-level egocentric object labels. |
| [Project Aria Tools](https://github.com/facebookresearch/projectaria_tools) | 2023-08 | arXiv | Reading Aria VRS, calibration, MPS, trajectory, gaze, and dataset artifacts. |
| [VISOR API](https://github.com/epic-kitchens/VISOR) | 2022-09 | GitHub | Loading dense EPIC-KITCHENS hand/object masks and relations. |
| [HOI4D tooling](https://hoi4d.github.io/) | 2022-03 | project page | Loading RGB-D frames, point clouds, object meshes, and pose/segmentation annotations. |
| [PAL](https://arxiv.org/abs/2105.10735) | 2021-05 | CVPR 2021 EPIC Workshop | Wearable personalized visual-context detection for privacy-preserving intelligence augmentation. |
| [Ego4D CLI and docs](https://ego4d-data.org/) | 2021-10 | project page | Downloading and working with Ego4D data after license approval. |

## Adjacent and Related Resources

These resources are **not first-person/egocentric**, but they are close neighbors that egocentric research routinely builds on or compares against — large robot-learning corpora, multi-view robotic benchmarks, autonomous-driving 4D data, and general long-video reasoning. They are kept out of the main atlas to keep the egocentric scope clean, and are tagged `scope: adjacent` in [`data/resources.yml`](data/resources.yml).

| Resource | Released | Venue | Scale / signal | Why it is adjacent (not egocentric) | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [Seeing Across Views / MV-RoboBench](https://github.com/microsoft/MV-RoboBench) | 2025-10 | ICLR 2026 | 1.7K curated QA items over eight subtasks for multi-view spatial reasoning of VLMs in robotic manipulation (ICLR 2026) | Multi-camera robot scenes, not wearable capture | open |
| [Minerva-Ego](https://github.com/google-deepmind/neptune) | 2025-05 | arXiv | Part of the Neptune / MINERVA long-video reasoning collection over web (YouTube) videos with manual reasoning traces | General long-video reasoning, not first-person capture | open |
| [SEED4D](https://seed4d.github.io/) | 2024-12 | WACV 2025 | Synthetic ego-exo dynamic 4D generator and autonomous-driving dataset (16.8M images, vehicle cameras, LiDAR; WACV 2025) | Vehicle-egocentric driving data, not human/wearable | open |
| [Open X-Embodiment / RT-X](https://robotics-transformer-x.github.io/) | 2023-10 | ICRA 2024 | 1M+ real robot trajectories, 22 robot embodiments, 60 pooled robot datasets, standardized RLDS; [unofficial Hugging Face mirror](https://huggingface.co/datasets/jxu124/OpenX-Embodiment) | Robot-mounted and wrist cameras, not human first-person; pairs with egocentric human-video VLA pretraining | open |

## Surveys, Papers, and Context

Foundational papers and recent surveys for background and citation.

| Resource | Why it matters |
| :--- | :--- |
| [Ego4D: Around the World in 3,000 Hours of Egocentric Video](https://arxiv.org/abs/2110.07058) | Defines the modern large-scale egocentric benchmark suite. |
| [Ego-Exo4D: Understanding Skilled Human Activity from First- and Third-Person Perspectives](https://arxiv.org/abs/2311.18259) | Defines the major synchronized ego-exo activity resource. |
| [Scaling Egocentric Vision: The EPIC-KITCHENS Dataset](https://arxiv.org/abs/1804.02748) and [EPIC-KITCHENS-100](https://arxiv.org/abs/2006.13256) | Core kitchen/action-recognition benchmark lineage. |
| [Egocentric Video-Language Pretraining](https://arxiv.org/abs/2206.01670) | Introduces EgoClip and EgoNCE, a central egocentric VLP recipe. |
| [EgoSchema](https://arxiv.org/abs/2308.09126) | A widely used diagnostic benchmark for very long-form video-language understanding. |
| [HoloAssist](https://arxiv.org/abs/2309.17024) | Important for human-AI assistance and instructor-performer interaction. |
| [Nymeria](https://arxiv.org/abs/2406.09905) | Major egocentric multimodal motion-language dataset from Project Aria. |
| [HOT3D](https://arxiv.org/abs/2406.09598) | Major 3D hand-object tracking dataset for AR/VR. |
| [OpenEgo](https://arxiv.org/abs/2509.05513), [EgoDex](https://arxiv.org/abs/2505.11709), [EgoVerse](https://arxiv.org/abs/2604.07607) | The current frontier for scaling egocentric manipulation data toward robot learning. |
| [Challenges and Trends in Egocentric Vision: A Survey](https://arxiv.org/abs/2503.15275) | Recent comprehensive survey of egocentric tasks, datasets, and open problems. |
| [Bridging Perspectives: Cross-view Collaborative Intelligence with Egocentric-Exocentric Vision](https://arxiv.org/abs/2506.06253) | Survey of ego-exo collaboration and paired-capture research. |

## Workshops and Challenges

Recurring venues and challenge hubs where new egocentric tasks and leaderboards appear.

| Event / hub | Focus |
| :--- | :--- |
| [Ego4D Challenges](https://ego4d-data.org/) | Episodic memory, forecasting, hand-object, social/audio, and other Ego4D tasks. |
| [Ego-Exo4D Challenges](https://ego-exo4d-data.org/) | Cross-view, correspondence, pose, skill, and proficiency tasks. |
| [EPIC-KITCHENS Challenges](https://epic-kitchens.github.io/) | Action recognition, action detection, anticipation, retrieval, and domain adaptation. |
| [HOT3D Challenge](https://facebookresearch.github.io/hot3d/) | 3D hand-object tracking and AR/VR pose estimation. |
| [Project Aria](https://www.projectaria.com/) | Aria datasets, tools, and AR sensing ecosystem. |
| [Joint Egocentric Vision (EgoVis) Workshop](https://egovis.github.io/cvpr26/) | Cross-dataset egocentric vision workshop (CVPR) spanning Ego4D, Ego-Exo4D, EPIC-KITCHENS, HoloAssist, and more. |
| [CVPR / ICCV / ECCV egocentric and embodied AI workshops](https://cvpr.thecvf.com/) | Search annually for "egocentric", "embodied", "ego-exo", "wearable", and "first-person". |

## Watchlist

These entries are promising but should be rechecked before treating them as stable public datasets in a paper or benchmark.

| Resource | Why to track | Current note |
| :--- | :--- | :--- |
| EgoLive | Large real-world egocentric manipulation data for robot learning | Paper claims open-source annotated data; stable full download route needs verification. |
| WiYH | Large manipulation corpus with rich hand/wrist/depth signals | Release and license need verification. |
| OpenEgo | Unified manipulation platform over public ego datasets | Resources announced; verify full release state. |
| EgoVerse | Major 2026 robot-learning egocentric platform | Track dataset portal, tooling, and terms. |
| EgoDex | Large Apple Vision Pro manipulation data | Track official dataset/benchmark release path. |
| UMI family: FastUMI / MV-UMI / UMIGen / YUBI / Hoi! | Rapidly expanding handheld and wrist-view manipulation interfaces | Track public code, HF/GitHub datasets, licenses, and whether claimed releases are complete. |
| EgoIntrospect | Internal-state reasoning from multimodal wearable signals | Release promised; verify when full package is public. |
| EgoBench | Interactive egocentric benchmark for tool-using agents | Track code, environment, and evaluation protocol. |
| EgoAERO / EgoEngine / HumanEgo / EgoGuide / Ego-Pi | Conversion of egocentric videos into robot demonstrations and policies | Track code, dataset artifacts, and robot-transfer evaluation protocols. |
| EgoEMG / EgoEVHands / TouchMoment / EgoFun3D / EgoTactile / EgoPressDiff / EgoForce | 2026 hand/contact/event/3D frontier resources | Track GitHub/HF data release, pressure/contact assets, and license. |
| UCS-Bench / StreamMemBench / ReFocus / Plan Watch Recover | Streaming memory, spatial reasoning, and proactive assistance | Track full data/code releases and raw-video dependencies. |
| EgoProx / BARISTA / TAVIS / EgoPoint-Bench / Ego-METAS | New 2026 evaluation suites with strong task definitions | Track stable leaderboards, splits, and license terms. |
| Causal-Plan-1M / HowToDIV / EgoThink-family / EgoCoT / NoRA / Ego2Web / Pause and Think | Reasoning, planning, safety, and agentic egocentric benchmarks | Confirm URLs, licenses, and raw-video dependencies. |

## Inclusion Rules

1. Prefer official project pages, GitHub repositories, Hugging Face datasets, arXiv pages, or university dataset pages.
2. Keep the public status conservative. If raw video is not clearly available, mark `partial` or `watch`.
3. Separate raw datasets from derived annotations and benchmarks.
4. Record modality, scale, task, license/access friction, and raw-video dependency when known.
5. Keep the main atlas strictly egocentric: human or animal first-person capture, or ego-exo resources where the ego view is central. List related but non-egocentric resources (robot-only datasets, multi-view robotic benchmarks, autonomous-driving data, general long-video reasoning) under [Adjacent and Related Resources](#adjacent-and-related-resources).
6. Keep pure dashcam/autonomous-driving and robot-embodiment data out of the main tables; surface it as context in Adjacent and Related Resources only when it is genuinely useful to egocentric work.
7. Keep figures text-light. Exact resource names and labels should remain in Markdown/SVG so readers can inspect them directly.

## Contributing

Contributions are welcome through pull requests and issues. Please include an official source, a concise description of what the resource contributes, and any known access or license notes.

See [`CONTRIBUTING.md`](CONTRIBUTING.md) for the inclusion policy and style. Automated checks run in CI to keep the README, catalog data, figures, and public exports consistent; contributors do not need to run local scripts before opening a PR.

## Cite This Atlas

If this atlas helps your research or project, a citation or a link back is appreciated. Machine-readable metadata lives in [`CITATION.cff`](CITATION.cff).

```bibtex
@misc{he_awesome_egocentric_atlas,
  author       = {He, Chaoyue},
  title        = {Awesome Egocentric Atlas: Curated Egocentric AI Datasets, Benchmarks, Models, and Tools},
  year         = {2026},
  howpublished = {\url{https://github.com/ChaoYue0307/awesome-egocentric-atlas}}
}
```
