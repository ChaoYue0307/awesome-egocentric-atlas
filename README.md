<p align="center">
  <img src="assets/awesome-egocentric-atlas-cover.png" alt="Awesome Egocentric Atlas cover" width="100%">
</p>

<h1 align="center">Awesome Egocentric Atlas</h1>

<p align="center">
  <img src="assets/awesome-egocentric-logo.png" alt="Awesome Egocentric Atlas logo" width="118">
</p>

<p align="center">
  <strong>Datasets, benchmarks, models, and tools for egocentric AI.</strong>
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
  <a href="data/resources.yml"><img alt="resources" src="https://img.shields.io/badge/resources-793-0097A7"></a>
  <a href="README.md#dataset-atlas"><img alt="datasets" src="https://img.shields.io/badge/datasets-vision%20%7C%20robotics%20%7C%20memory-344054"></a>
  <a href="README.md#models-tools-and-baselines"><img alt="models and tools" src="https://img.shields.io/badge/models-and%20tools-F5A623"></a>
  <a href="LICENSE"><img alt="license" src="https://img.shields.io/badge/license-MIT-667085"></a>
  <a href="CONTRIBUTING.md"><img alt="PRs welcome" src="https://img.shields.io/badge/PRs-welcome-22A06B"></a>
</p>

**Awesome Egocentric Atlas** is a practical catalog of egocentric (first-person) datasets, benchmarks, models, and tools for egocentric vision, embodied AI and robotics, vision-language-action, world models, long-context memory, AR/VR, and hand-object interaction. Every entry shows its public-access status, so you can tell at a glance what you can download today and what is still just a paper.

**Updated:** 2026-07-20.
**Scope:** the main atlas is **human or animal first-person capture** from head, glasses, headset, body, wrist, handheld, or synchronized ego-exo rigs (where the ego view is central). Related but non-egocentric resources — robot-only datasets, multi-view robotic benchmarks, autonomous-driving 4D data, and general long-video reasoning — are listed separately under [Adjacent and Related Resources](#adjacent-and-related-resources) rather than in the main tables.

<p align="center">
  <img src="assets/awesome-egocentric-atlas-map.png" alt="Awesome Egocentric Atlas catalog overview" width="100%">
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
| 793 egocentric resources | 202 datasets, 134 benchmarks, 412 models, and 40 toolkits, plus 2 collection hubs — across vision, robotics, memory, and AR. 147 related non-egocentric resources are listed separately. |
| 6 research areas | Foundation video, procedure/action, hands and 3D, memory/reasoning, robotics/VLA, and AR/wearable sensing. |
| 5 access states | `open`, `request`, `benchmark`, `partial`, and `watch` keep availability visible before you plan experiments. |
| Machine-checked catalog | [`data/resources.yml`](data/resources.yml) is the source for type, year, status, URL, tasks, and provenance — and CI keeps the public artifacts in sync. |
| Reader-first tables | Each entry is short enough to scan, then links out to the official page, paper, code, or dataset portal. |

<p align="center">
  <img src="assets/awesome-egocentric-timeline.png" alt="Egocentric resources by era" width="100%">
</p>

## Milestones

Representative works to read first, from early egocentric activity datasets to recent models and large-scale corpora.

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

| Area | What to compare | Canonical anchors |
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
| [RetailSMV](https://arxiv.org/abs/2607.00310) | 2026-06 | arXiv | 32,105 captioned synchronized retail clips from five supermarkets with staff-perspective egocentric and exocentric views | Retail world-model adaptation and ego/exo viewpoint comparison | watch |
| [EgoCS-400K](https://arxiv.org/abs/2606.18180) | 2026-06 | arXiv | 400K+ first-person Counter-Strike gameplay videos (10K hours, 13 maps) with aligned actions, player state, camera motion, and game events | Action-conditioned interactive world models from first-person gameplay | watch |
| [HumanNet](https://arxiv.org/abs/2605.06747) | 2026-05 | arXiv | 1M-hour human-centric video corpus spanning first-person and third-person views, with captions, motion descriptions, hand/body signals, and a reported 1K-hour egocentric subset for VLA-style validation | Large-scale human-video pretraining, interaction understanding, and human-to-robot transfer | watch |
| [EgoInteract](https://arxiv.org/abs/2605.18214) | 2026-05 | arXiv | Controllable egocentric-video simulator and synthetic dataset with dense spatial and temporal annotations | Synthetic temporal segmentation, next-active-object detection, anticipation, and EHOI | watch |
| [PRISM](https://dreamvu.ai/prism) | 2026-03 | arXiv | Paper reports 270K multi-view retail SFT samples; the gated PRISM-100K release provides 100K samples, 25,173 ego/exo videos, 21 task types, and about 772 GB | Embodied VLM spatial, physical, and action reasoning in retail settings | request |
| [Ego-1K](https://huggingface.co/datasets/facebook/ego-1k) | 2026-03 | CVPR 2026 | Nearly 1,000 synchronized multiview egocentric videos from a custom 12-camera plus VR-headset rig | Dynamic 3D/4D scene understanding and novel view synthesis from ego rigs | open |
| [EgoCrowds / CrowdEraser](https://arxiv.org/abs/2603.29036) | 2026-03 | arXiv | Semi-synthetic paired crowded/empty clips from real egocentric walking-tour video; CrowdEraser diffusion removes crowds for humanless walkthroughs | First-person walking-tour video editing and environment modeling | watch |
| [Xperience-10M](https://huggingface.co/datasets/ropedia-ai/xperience-10m) | 2026-03 | Hugging Face | Ropedia release on Hugging Face; 10M experiences, 10K hours, six video streams, audio, stereo depth, camera pose, hand/body mocap, IMU, hierarchical language, ~1 PB total | Embodied AI, world models, robot learning from human experience, sensor fusion, 3D/4D understanding | request |
| [Xperience-10M Sample](https://huggingface.co/datasets/ropedia-ai/xperience-10m-sample) | 2026-03 | Hugging Face | Public sample episode for Xperience-10M with six rows on Hugging Face and `cc-by-nc-4.0` terms | Loader testing, demos, task-suite prototyping, annotation inspection | open |
| [Egocentric-100K](https://huggingface.co/datasets/builddotai/Egocentric-100K) | 2025-12 | Hugging Face | 100,405-hour manual-labor egocentric video corpus with 10.8B frames, 2.01M clips, intrinsics, and WebDataset shards | Industrial/manual-labor pretraining, robot learning, and active manipulation density analysis | request |
| [Egocentric-10K](https://huggingface.co/datasets/builddotai/Egocentric-10K) | 2025-11 | Hugging Face | 10,000-hour factory-only egocentric video corpus with 1.08B frames, intrinsics, and WebDataset-style shards | Industrial egocentric pretraining and active-manipulation density analysis | request |
| [Voxel51 Egocentric-10K Subset](https://huggingface.co/datasets/Voxel51/Egocentric_10K_subset) | 2025-11 | Hugging Face | Open FiftyOne package for a Factory 51 subset of Egocentric-10K, with the card reporting 416 1080p head-mounted industrial clips | Lightweight inspection, prototyping, and visualization of Egocentric-10K-style factory footage | open |
| [Look and Tell](https://arxiv.org/abs/2510.22672) | 2025-10 | NeurIPS 2025 Workshop | 25 participants, Project Aria plus stationary cameras, gaze/speech/video, 3D reconstructions | Referential communication across ego and exo viewpoints | watch |
| [EgoBlind](https://arxiv.org/abs/2503.08221) | 2025-03 | NeurIPS 2025 D&B | 1,392 first-person videos from blind and visually impaired users, 5,311 questions posed or verified by blind users | Assistive egocentric VideoQA for blind users | watch |
| [HD-EPIC](https://arxiv.org/abs/2502.04144) | 2025-02 | CVPR 2025 | 41 hours, 9 kitchens, dense fine-grained labels, 3D fixture annotations, audio events, VQA | Detailed kitchen understanding, VQA, 3D-aware ego reasoning, audio-event recognition | open |
| [EgoVid-5M](https://egovid.github.io/) | 2024-11 | NeurIPS 2025 | 5M curated egocentric clips at 1080p with fine-grained kinematic and high-level text action annotations (NeurIPS 2025) | Egocentric video generation and action-conditioned world models | open |
| [Ego-Exo4D](https://ego-exo4d-data.org/) | 2023-11 | CVPR 2024 | 1,286 hours, 740 participants, synchronized first- and third-person views, audio, gaze, IMU, 3D point clouds, language commentary | Skilled activity, ego-exo transfer, cross-view translation, pose, proficiency, robotics | request |
| [HoloAssist](https://holoassist.github.io/) | 2023-09 | ICCV 2023 | 166 hours, 350 instructor-performer pairs, 7 synchronized streams from mixed-reality headsets | Interactive assistance, mistake detection, intervention prediction, procedural collaboration | open |
| [EgoObjects](https://github.com/facebookresearch/EgoObjects) | 2023-09 | ICCV 2023 | Pilot release with 9K+ videos, 250 participants, 50+ countries, 650K annotations, 368 categories | Category and instance-level egocentric object understanding, continual object detection | open |
| [EgoCom / Ego audio-visual correspondence](http://vision.cs.utexas.edu/projects/ego_av_corr/) | 2023-07 | CVPR 2024 | Egocentric video with spatial audio for conversation and audio-visual correspondence tasks | Active speaker detection, spatial audio denoising, conversational graph reasoning | open |
| [Assembly101](https://assembly-101.github.io/) | 2022-03 | CVPR 2022 | 4,321 videos, 8 static plus 4 egocentric views, 100K coarse and 1M fine action segments, 18M 3D hand poses | Procedural action, anticipation, mistake detection, cross-view transfer | open |
| [Ego4D](https://ego4d-data.org/) | 2021-10 | CVPR 2022 | 3,670+ hours from 900+ camera wearers, multiple countries, video/audio/gaze/stereo/3D/narrations depending on subset | Long-form ego video, episodic memory, social, hand-object, forecasting, audio-visual tasks | request |
| [EasyCom](https://arxiv.org/abs/2107.04174) | 2021-07 | arXiv | AR glasses egocentric multi-channel audio and wide-FOV RGB for noisy conversations | Speech enhancement, source localization, conversation assistance | open |
| [EPIC-KITCHENS-100](https://epic-kitchens.github.io/) | 2020-06 | IJCV 2022 | 100 hours, 20M frames, 90K actions, 45 kitchens, narrations and dense action labels | Kitchen action recognition, anticipation, action detection, retrieval | open |
| [From Third Person to First Person](https://arxiv.org/abs/1812.00104) | 2018-12 | CVPR 2019 | Ego/exo video synthesis and retrieval datasets plus baselines for bridging third-person social video to first-person views | Cross-view synthesis, retrieval, and ego-exo transfer | watch |
| [EPIC-KITCHENS](https://epic-kitchens.github.io/) | 2018-04 | ECCV 2018 | 55 hours / 11.5M frames from 32 kitchens with narrations, 39.6K action segments, and object boxes | Original large-scale kitchen action recognition and anticipation benchmark | open |

### Robotics, Manipulation, and VLA

Egocentric human-manipulation and wrist-camera data aimed at vision-language-action models and human-to-robot transfer.

| Resource | Released | Venue | Scale / signal | Best for | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [Let the Body Follow](https://arxiv.org/abs/2607.16095) | 2026-07 | arXiv | Coupled egocentric TIAGo teleoperation maps head and arm motion to coordinated torso and mobile-base control, reducing explicit controls and user workload | Whole-body mobile-manipulator teleoperation and HRI | watch |
| [EgoHTR](https://egohtr.github.io/) | 2026-07 | arXiv | 55 scene-aligned 4D human-terrain sequences across seven environments, totaling 1.37 hours and about 150K frames from eight participants, with multiview and mocap ground truth | Scene-aware human-motion reconstruction and humanoid terrain traversal | watch |
| [Open-AoE](https://huggingface.co/datasets/inclusionAI/OpenAoE-2000h) | 2026-07 | Hugging Face | Public nano and tiny tiers provide 2,821 smartphone first-person clips and about 103 hours with video, metric SLAM trajectories, MANO hands, and atomic actions; 2,000 hours remains a roadmap | Large-scale hand-motion, camera-trajectory, and manipulation pretraining | partial |
| [SenseXperience Raw MCAP Sample](https://huggingface.co/datasets/io-intelligence/SenseXperience_WristCam_SampleData) | 2026-07 | Hugging Face | 12 public raw ROS 2 MCAP episodes with four synchronized cameras, head IMU near 120 Hz, calibration, metadata, and recorder diagnostics | Raw multimodal capture-pipeline and sensor-synchronization testing | open |
| [Ego Data by Object](https://huggingface.co/datasets/Kavin60606/ego-data-by-object) | 2026-07 | Hugging Face | 4,110 pick-and-place episodes over 51 object labels with egocentric RGB and HDF5 hand/body transforms, intrinsics, task attributes, and descriptions; source licensing is unclear | Object-conditioned hand tracking and imitation-data experiments | partial |
| [EgoExo-Wreck](https://huggingface.co/datasets/WreckVegas/EgoExo-Wreck) | 2026-07 | Hugging Face | Commercial card reports 150+ synchronized ego-exo hours of object destruction, debris handling, cleanup, and reset; only a gated 1 GB evaluation sample is hosted | Physics-rich HOI, state-change, world-model, and cleanup demonstrations | request |
| [Verbose Industrial Egocentric Sample Series](https://huggingface.co/VerboseTechLabs) | 2026-07 | Hugging Face | Six open industrial sample repositories with 53 first-person clips, 4.86 hours, and about 17.0 GB across textile, metal, electronics assembly, skilled work, and manufacturing operations | Compact industrial action and human-demonstration experiments | open |
| [Verbose Cooking and Chopping Egocentric Video](https://huggingface.co/datasets/VerboseTechLabs/cooking-chopping-egocentric) | 2026-07 | Hugging Face | 11 head- or chest-mounted kitchen clips totaling 101.7 minutes in a public 6.09 GB ZIP, with audio and clip metadata across cooking and chopping | Open kitchen action, procedure, and hand-object video experiments | open |
| [Verbose Household Cleaning Egocentric Video](https://huggingface.co/datasets/VerboseTechLabs/household-cleaning-egocentric) | 2026-07 | Hugging Face | 12 head- or chest-mounted 1080p/30 fps cleaning clips totaling 104.3 minutes in a public 5.74 GB ZIP, with audio and three sub-activity labels | Open domestic-action and assistive-robotics video experiments | open |
| [Flikforge Egocentric Household Tasks](https://huggingface.co/datasets/FlikforgeInc/egocentric-household-tasks) | 2026-07 | Hugging Face | Card claims about 100 rights-cleared household clips with dense customizable annotations, but the repository currently has no media or annotation files and its LICENSE is empty | Monitoring a prospective commercial household-demonstration sample release | watch |
| [AgenticFocus](https://arxiv.org/abs/2607.08857) | 2026-07 | arXiv | Restores occluded object geometry and full-hand motion from ordinary first-person human videos, then retargets and composites robot-aligned observations, actions, and states | Mixed-reality human-to-humanoid demonstration synthesis | watch |
| [Hub Egocentric GoPro RGB+IMU](https://huggingface.co/datasets/Hubdata/egocentric-gopro-rgb-imu) | 2026-07 | Hugging Face | 19 GoPro HERO13 manipulation clips totaling 3.72 hours, with RGB, approximately 200 Hz GPMF IMU, sensor sidecars, and MCAP | High-rate visual-inertial human-demonstration prototyping | partial |
| [Hub Egocentric iPhone RGB+IMU](https://huggingface.co/datasets/Hubdata/egocentric-iphone-rgb-imu) | 2026-07 | Hugging Face | 12 iPhone manipulation clips totaling 2.96 hours, with 1080p RGB, CoreMotion/ARKit IMU and attitude, intrinsics, sidecars, and MCAP | Smartphone RGB-IMU synchronization and sensor-fusion experiments | partial |
| [Hub Egocentric Stereo RGB-D](https://huggingface.co/datasets/Hubdata/egocentric-stereo-rgbd) | 2026-07 | Hugging Face | 9 ZED X Mini clips with stereo RGB, metric depth, IMU, 6DoF VIO, calibration, MCAP, and per-clip LeRobot v3.0 packages | RGB-D/VIO pipelines and multimodal imitation-learning loaders | partial |
| [Hub Egocentric iPhone RGB](https://huggingface.co/datasets/Hubdata/egocentric-iphone-rgb) | 2026-07 | Hugging Face | 40 household-manipulation clips totaling 1.60 hours, delivered as 1080p H.264 RGB without IMU, depth, pose, or robot actions | Lightweight first-person manipulation-video baselines | partial |
| [Datoric Residential Egocentric Video](https://huggingface.co/datasets/Datoric/egocentric-residential-video-100000h) | 2026-07 | Hugging Face | Commercial card claims 100,000 hours of 1080p+ household first-person video from Brazilian homes with task, action, object, HOI, and completion-state annotations; public files are specification/sample metadata | Reviewing large-scale household capture specifications and requesting production data | request |
| [Datoric Industrial Egocentric Video](https://huggingface.co/datasets/Datoric/industrial-egocentric-video-50000h) | 2026-07 | Hugging Face | Commercial card claims 50,000 hours of workplace first-person video across logistics, inspection, assembly, and cleaning; public files are specification/sample metadata | Reviewing industrial capture specifications and requesting production data | request |
| [EgoWAM](https://gatech-rl2.github.io/egowam.github.io/) | 2026-07 | arXiv | Controlled human-robot WAM co-training study comparing pixel, DINO, and 3D-flow targets on three real bimanual tasks, with up to 4x OOD gains reported for DINO | Human-to-robot world-representation transfer | watch |
| [USA Egocentric](https://huggingface.co/datasets/Grably/usa-egocentric) | 2026-07 | Hugging Face | Three iPhone kitchen-manipulation episodes with RGB videos, camera trajectories, hand outputs, action segments, object/contact tracks, and quality reports | Open manipulation-pipeline debugging and VLA annotation prototyping | open |
| [RynnWorld-4D](https://arxiv.org/abs/2607.06559) | 2026-07 | arXiv | 4D embodied world model over future RGB, depth, and optical flow; reports Rynn4DDataset 1.0 with 254.4M+ frames across egocentric human and robotic manipulation videos | Robot manipulation world modeling and action-conditioned 4D prediction | watch |
| [RynnWorld-Teleop](https://arxiv.org/abs/2607.06558) | 2026-07 | arXiv | Digital-teleoperation world model driven by operator hand-pose streams to synthesize egocentric videos and action labels | Scalable bimanual robot data generation from human pose streams | watch |
| [LingBot-VLA 2.0](https://arxiv.org/abs/2607.06403) | 2026-07 | arXiv | VLA update trained with around 60K hours, including 10K hours of egocentric human videos and 50K hours of robot trajectories | Whole-body VLA pretraining and practical robot deployment | watch |
| [LingBot-Video](https://arxiv.org/abs/2607.07675) | 2026-07 | arXiv | MoE DiT video foundation model for embodied intelligence, adding robot-oriented manipulation/navigation and egocentric-perspective footage plus physically grounded rewards | Embodied video pretraining and robot/world-model generation | watch |
| [LIME](https://arxiv.org/abs/2607.02417) | 2026-07 | arXiv | Intent-aware camera-motion generator mined from egocentric video, pairing language intents with relative SE(3) target poses | Active camera control and next-view prediction for embodied agents | watch |
| [H-Tac / TTP](https://arxiv.org/abs/2607.01067) | 2026-07 | arXiv | 160-hour egocentric human tactile-action dataset with 300+ tasks and 135K episodes, plus transferable tactile pretraining | Contact-rich dexterous manipulation from human tactile demonstrations | watch |
| [HomER v2](https://huggingface.co/datasets/toloka/homer-v2) | 2026-06 | Hugging Face | 765 public first-person household videos totaling 99.60 hours from 420 participants across 49 countries and 10 activity categories | Diverse everyday activity, hand-object interaction, video-language, and robot-learning research | open |
| [Ego-Tactile Manipulation](https://huggingface.co/datasets/OpenGraphLabs-Research/ego-tactile-manipulation) | 2026-06 | Hugging Face | 72 public episodes totaling 1.28 hours and 138,629 frames with 1080p ego video, 160-channel dual-hand pressure, head/wrist IMU, and contact-derived action segments | Open tactile-grounded manipulation, contact, and action-segmentation research | open |
| [EgoSteer](https://egosteer.github.io/) | 2026-06 | arXiv | Open full-stack dexterous VLA system using 9.6K hours of curated egocentric human video, with EgoSmith, a robot stack, and two released 3B checkpoints | Steerable dexterous manipulation and human-video-to-robot pretraining | open |
| [Poseidon First-Person Task Video Samples](https://huggingface.co/datasets/psdn-ai/first-person-task-video-samples) | 2026-06 | Hugging Face | Five auto-gated 1080p clips totaling 174 seconds across kitchen, gardening, maintenance, fine-motor, and cleaning tasks | Reviewing task diversity, hand-object visibility, and capture quality | request |
| [WT-UMI](https://arxiv.org/abs/2606.13232) | 2026-06 | arXiv | Wearable whole-body tactile UMI interface aligning human demonstrations and teleoperation through tactile images, contact forces, and end-effector poses | Contact-aware humanoid whole-body manipulation | watch |
| [Human-as-Humanoid](https://zgc-embodyai.github.io/Human-as-Humanoid) | 2026-06 | arXiv | Synchronized ego-exo human videos converted through motion recovery, IK, and FK-aware supervision into 60-DoF humanoid action chunks | Zero-shot humanoid VLA learning from human demonstrations | watch |
| [UMI-Bench 1.0](https://arxiv.org/abs/2606.10382) | 2026-06 | arXiv | Local-first real-robot evaluation protocol dedicated to UMI-style data collection, deployment, reset, logging, and task-factor analysis | Reproducible UMI policy benchmarking | watch |
| [VISTA UMI](https://arxiv.org/abs/2606.04708) | 2026-06 | arXiv | Adapts UMI data for VLA training with wrist-fisheye UMI-VQA visual grounding plus physics-based trajectory validation | Making UMI demonstrations usable for VLAs | watch |
| [Pose6DAug](https://arxiv.org/abs/2606.20118) | 2026-06 | arXiv | Physically plausible multi-view object-swapping augmentation for VLA policies under occlusion and egocentric viewpoints | Robust manipulation data augmentation | watch |
| [MotionWAM](https://arxiv.org/abs/2606.09215) | 2026-06 | arXiv | Real-time humanoid world-action model driven by a single egocentric camera and unified whole-body motion tokens | Humanoid loco-manipulation from egocentric perception | watch |
| [OSCAR](https://arxiv.org/abs/2606.04463) | 2026-06 | arXiv | Omni-embodiment action-conditioned video world model trained across robotics and egocentric human datasets | Robot policy evaluation and cross-embodiment world modeling | watch |
| [Mem-World](https://arxiv.org/abs/2606.18960) | 2026-06 | arXiv | Wrist-view-centered 4D surfel memory for persistent action-conditioned manipulation world models | Long-horizon wrist-camera world modeling | watch |
| [PAIWorld](https://arxiv.org/abs/2606.18375) | 2026-06 | arXiv | 3D-consistent multi-view world foundation model across egocentric, eye-to-hand, and wrist cameras | Multi-view robotic world modeling | watch |
| [Qwen-RobotManip](https://arxiv.org/abs/2606.17846) | 2026-06 | arXiv | 38,100-hour manipulation pretraining corpus converting egocentric hand demonstrations into robot trajectories across 15 platforms | Scalable VLA robot manipulation | watch |
| [CAIP](https://arxiv.org/abs/2606.17256) | 2026-06 | arXiv | Contrastive action-image pretraining from 32,041 hours of egocentric human video with 3D hand-keypoint action proxies | Action-centric visual pretraining for robotics | watch |
| [YUBI](https://arxiv.org/abs/2606.10244) | 2026-06 | arXiv | Reported 8,434 hours, 1.20M episodes, and 119 tasks from a finger-aligned UMI-style bimanual interface | Scalable bimanual dexterous data collection | watch |
| [HumanoidUMI](https://arxiv.org/abs/2606.27239) | 2026-06 | arXiv | VR-assisted egocentric data capture for whole-body humanoid imitation, using sparse human keypoint trajectories and wrist-view observations for whole-body transfer | Whole-body humanoid transfer from egocentric human demonstrations | watch |
| [BRIDGE State-Gated Experts](https://arxiv.org/abs/2606.26603) | 2026-06 | arXiv | Combines handheld UMI demonstrations with targeted teleoperated segments through state-gated diffusion-policy experts | Contact-rich manipulation with mixed UMI and teleoperation supervision | watch |
| [ForceBand](https://forceband-emg.github.io) | 2026-06 | arXiv | 10-hour wrist-worn sEMG, egocentric video, IMU, and fingertip-force dataset for force-enriched demonstrations | Force-aware human demonstration collection for robot policies | watch |
| [EgoEngine](https://egoengine.github.io/) | 2026-06 | arXiv | Converts egocentric human manipulation videos into high-fidelity robot observation videos and executable robot action trajectories | Human-to-robot data generation, dexterous imitation | watch |
| [EgoAERO](https://arxiv.org/abs/2606.08057) | 2026-06 | arXiv | Asset-free conversion from a single egocentric RGB-D demonstration; introduces EgoDex-R in the paper | Single-demo dexterous robot learning | watch |
| [1M-HUGs / HUG](https://grasping.io/) | 2026-06 | arXiv | 1M frames / 27.8 hours of smart-glasses human grasps over 6,707 object instances, plus HUG-Bench with 90 unseen objects | Human grasp modeling and zero-shot robot grasping | open |
| [HALOMI](https://arxiv.org/abs/2606.18772) | 2026-06 | arXiv | Extends UMI-style demonstration collection with egocentric head/wrist observations and head-hand trajectories for humanoid loco-manipulation | Active-perception humanoid manipulation from human demonstrations | watch |
| [HumanoidArena](https://arxiv.org/abs/2606.17833) | 2026-06 | arXiv | Benchmark for egocentric hierarchical whole-body learning across seven leg-critical humanoid-object and humanoid-scene interaction tasks | Whole-body humanoid control from egocentric perception | watch |
| [Luel IMU Egocentric 250k](https://huggingface.co/datasets/Luel-ai/imu-egocentric-250k) | 2026-05 | Hugging Face | Commercial card reports 250K hours and 46,340 tasks; the gated Hub repository exposes a verifiable 10-clip, 30-minute sample plus the full task taxonomy | Reviewing industrial RGB-IMU capture scope and requesting the proprietary full corpus | request |
| [RoboX-EgoTask](https://huggingface.co/datasets/RoboXTechnologies/RoboX-EgoTask) | 2026-05 | Hugging Face | 17 public RGB-D task clips from five recordings with hand signals, camera pose, IMU, action segments, trajectories, segmentation, and quality reports | Open multimodal hand-object interaction and human-demonstration prototyping | open |
| [SenseXperience UMI Human Demonstrations](https://huggingface.co/datasets/ICRA-WBCD/IO-AI-SenseXperience-UMI) | 2026-05 | Hugging Face | 1,051 public human-demonstration episodes, 220,963 frames, and 92 tasks with six synchronized head, wrist, depth, and gripper views plus 7-DoF poses in LeRobot format | Open human-to-robot transfer, bimanual manipulation, and VLA data | open |
| [tau0-WM](https://arxiv.org/abs/2606.01027) | 2026-05 | arXiv | Unified video-action world model trained on real-robot teleoperation, UMI-style interaction, egocentric human video, and rollout/failure data | Future-aware robot action generation and action-conditioned simulation | watch |
| [SABER](https://arxiv.org/abs/2605.09613) | 2026-05 | arXiv | 100+ hours of in-store retail egocentric action capture paired with 360-degree exocentric context | Retail-domain VLA adaptation and manipulation data scaling | watch |
| [Qwen-VLA](https://arxiv.org/abs/2605.30280) | 2026-05 | arXiv | Unified VLA model trained over manipulation trajectories, egocentric human demonstrations, simulation, navigation, and trajectory supervision | General embodied action modeling | watch |
| [Gaze2Act](https://arxiv.org/abs/2605.30282) | 2026-05 | arXiv | Maps first-person gaze into robot perspective for target specification in interactive manipulation | Gaze-conditioned VLA manipulation | watch |
| [DeMiAn](https://arxiv.org/abs/2605.17077) | 2026-05 | arXiv | Dense multi-aspect language re-annotation over 1M robot clips and 50K EgoVerse human-egocentric videos | Language-dense robot policy learning | watch |
| [Grid Egocentric Residential Samples](https://huggingface.co/datasets/aryan56789gridai/grid-egocentric-residential-samples) | 2026-05 | Hugging Face | Public first-person residential manipulation preview pack with full-length 1080p household task videos | Household VLA capture-quality review and imitation-learning samples | open |
| [Industrial Workplace Egocentric FHD Samples](https://huggingface.co/datasets/TrainThemAI/Industrial-Workplace-Egocentric-FHD-Samples) | 2026-05 | Hugging Face | 21 rights-cleared head-mounted workplace clips with paired JSON metadata across factory, construction, services, retail, transit, and food-service domains | Industrial and vocational human-demonstration samples for VLA/WAM prototyping | open |
| [UniDataPro Egocentric Video Preview](https://huggingface.co/datasets/UniDataPro/egocentric-video) | 2026-05 | Hugging Face | Commercial preview card for a claimed 4,050-hour VR-headset/Zed first-person robotics collection; public files expose a sample video, CSV, and tracking text | Market scan and modality reference for large-scale egocentric robotics capture | partial |
| [Lo6yu Egocentric RGB-D + EMG/IMU](https://huggingface.co/datasets/Lo6yu/egocentric_dataset) | 2026-05 | Hugging Face | Eight household activity packages with RGB-D, wrist EMG/IMU, hand keypoints, masks, contact, per-finger force, semantic segments, and training-ready exports | Multimodal contact-aware imitation learning and sensor-fusion robot data | open |
| [Egocentric Adjust Bottle LeRobot](https://huggingface.co/datasets/suz22/egocentric_adjust_bottle) | 2026-05 | Hugging Face | LeRobot-format human_mano adjust-bottle task with 500 episodes and 36,897 frames across image, text, timeseries, and video exports | Loader tests and small-scale LeRobot manipulation policy prototyping | open |
| [Low-Resolution Active Perception BC](https://arxiv.org/abs/2605.14106) | 2026-05 | arXiv | Behavior cloning with low-resolution wrist-mounted egocentric RGB for object finding and grasp triggering | Active perception under low compute | watch |
| [EgoSPT / SPOT](https://arxiv.org/abs/2605.20085) | 2026-05 | arXiv | Egocentric spatially prompted manipulation trajectories with first-frame object/target grounding and 3D end-effector motion | Spatially grounded manipulation trajectory prediction | watch |
| [Mobile UMI](https://arxiv.org/abs/2605.20894) | 2026-05 | arXiv | Robot-free mobile manipulation capture with chest-centric context, wrist-centric interaction, decoupled kinematics, and latency-aware diffusion policy | Mobile manipulation from portable demonstrations | watch |
| [BifrostUMI](https://arxiv.org/abs/2605.03452) | 2026-05 | arXiv | VR-device robot-free demonstrations with sparse keypoint trajectories, wrist-mounted visual data, and humanoid retargeting | Humanoid whole-body demonstration collection | watch |
| [UniT](https://arxiv.org/abs/2604.19734) | 2026-04 | arXiv | Unified latent action tokenizer anchoring massive egocentric human data to humanoid policy learning and world modeling | Human-to-humanoid transfer | watch |
| [XRZero-G0](https://github.com/X-Square-Robot/XRZero-G0) | 2026-04 | arXiv | VR and dual-gripper robot-free collection system with a reported 2,000-hour dataset and data-mixing study | Scalable robot-free manipulation data collection | watch |
| [EgoVerse](https://egoverse.ai/) | 2026-04 | arXiv | 1,362 hours, 80K episodes, 1,965 tasks, 240 scenes, 2,087 demonstrators | Human demonstration scaling for robot learning and VLA | watch |
| [RoboX Egocentric Collection](https://huggingface.co/datasets/RoboXTechnologies/RoboX-Egocentric-Collection-v0.2) | 2026-04 | Hugging Face | 7,342 auto-gated first-person clips across grasping, daily activities, scene capture, and navigation with metadata, hand keypoints, object tracks, action segments, IMU, and camera pose | Multi-task robotics imitation data and navigation/manipulation benchmark prototyping | request |
| [EgoLive](https://arxiv.org/abs/2604.23570) | 2026-04 | arXiv | Large-scale real-world task-oriented egocentric routines for robot manipulation | Home service, retail, and real-world work-task manipulation | watch |
| [GazeVLA](https://gazevla.github.io/) | 2026-04 | arXiv | VLA policy that pretrains on large-scale egocentric human data to capture gaze, intention, and action before robot fine-tuning | Gaze- and intent-aware robot manipulation | watch |
| [WARPED](https://arxiv.org/abs/2604.10809) | 2026-04 | arXiv | Wrist-aligned rendering converts monocular egocentric human demonstrations into robot policy observations with 3D Gaussian Splatting | Cross-embodiment imitation from human ego video | watch |
| [UMI-3D](https://umi-3d.github.io/) | 2026-04 | arXiv | Extends UMI with wrist LiDAR, LiDAR-centric SLAM, synchronized sensing, and spatiotemporal calibration for robust 3D demonstration capture | 3D-aware UMI data collection | watch |
| [OmniUMI](https://arxiv.org/abs/2604.10647) | 2026-04 | arXiv | Adds RGB, depth, trajectory, tactile sensing, grasp force, and external wrench signals to a human-aligned UMI-style handheld system | Contact-rich multimodal UMI demonstrations | watch |
| [HRDexDB](https://arxiv.org/abs/2604.14944) | 2026-04 | arXiv | 1.4K human/robot grasping trials, tactile, multiview video, egocentric video streams | Cross-domain dexterous grasp learning | watch |
| [UMI-Underwater](https://umi-under-water.github.io/) | 2026-03 | arXiv | Transfers on-land handheld human demonstrations to underwater grasping through depth-based affordance representations | Underwater manipulation without underwater teleoperation | watch |
| [HoMMI](https://hommi-robot.github.io/) | 2026-03 | arXiv | Whole-body mobile manipulation interface augmenting UMI with egocentric sensing, relaxed head actions, and cross-embodiment hand-eye policy design | Robot-free mobile manipulation demonstrations | watch |
| [Ego-Exo Manufacturing](https://huggingface.co/datasets/third-origin/ego-exo-manufacturing) | 2026-03 | Hugging Face | Gated 275-hour shoe-manufacturing corpus with 40 synchronized ego-exo groups, 80 standalone ego sessions, 137 exo sessions, and procedure/proficiency/mistake annotations | Industrial ego-exo learning, skill assessment, and procedural modeling | request |
| [OBayData Egocentric Dexterous Manipulation Demo](https://huggingface.co/datasets/obaydata/egocentric-dexterous-manipulation-demo) | 2026-03 | Hugging Face | 500 train and 100 test first-person manipulation sessions with head and wrist videos, 3D hand joints, camera extrinsics, action labels, and language annotations | Quality review and prototyping for dexterous human-demonstration pipelines | open |
| [Seesaw Video Subset](https://huggingface.co/datasets/SeesawVideos/Video_Subset) | 2026-02 | Hugging Face | 763 gated LeRobot-compatible indoor episodes, including 243 ego and 520 exo views, 321,178 frames, four room settings, and smartphone AR camera pose | Ego-exo robot learning, action recognition, and data-conversion experiments | request |
| [CoMe-VLA](https://arxiv.org/abs/2602.04600) | 2026-02 | arXiv | Cognitive and memory-aware VLA that learns active-perception strategies from large-scale egocentric human data | Non-Markovian active perception and manipulation | watch |
| [EgoAVFlow](https://arxiv.org/abs/2602.22461) | 2026-02 | arXiv | Learns manipulation and active camera control from egocentric human videos through shared 3D flow | Active-vision robot policy transfer | watch |
| [EgoHumanoid](https://arxiv.org/abs/2602.10106) | 2026-02 | arXiv | Co-trains humanoid VLA policies from robot-free egocentric human demonstrations and limited robot data | Humanoid loco-manipulation | watch |
| [EgoActor](https://arxiv.org/abs/2602.04515) | 2026-02 | arXiv | Grounds high-level instructions into spatially aware egocentric humanoid actions | Humanoid task planning and action grounding | watch |
| [AoE: Always-on Egocentric](https://arxiv.org/abs/2602.23893) | 2026-02 | arXiv | Always-on egocentric human-video collection pipeline and corpus for embodied AI | Scaling human-video data for robot learning | watch |
| [EgoScale](https://arxiv.org/abs/2602.16710) | 2026-02 | arXiv | 20,854 hours of action-labeled egocentric human video with a human-to-robot two-stage transfer recipe and a log-linear data-scaling law | Scaling dexterous manipulation from human video | watch |
| [Manus Egocentric Sample](https://huggingface.co/datasets/OpenGraphLabs-Research/manus-egocentric-sample) | 2026-01 | Hugging Face | 20 LeRobot-format manipulation episodes with egocentric RGB/depth, Manus glove tracking, IMU, timeseries, and videos | Open egocentric manipulation loader tests and sensor-fusion policy prototyping | open |
| [HoyerChou Egocentric Bimanual Videos](https://huggingface.co/datasets/HoyerChou/EgocentricVideos) | 2026-01 | Hugging Face | YOTO/YOTO++ release with three raw first-person bimanual videos, 119 segmented demos, 241 rows, MANO hand meshes, 3D keypoints, calibration, and camera/world transforms | One-shot bimanual manipulation and hand-trajectory extraction from human video | open |
| [Egocentric Specialties](https://huggingface.co/datasets/ThisIsPepper/EgocentricSpecialties) | 2026-01 | Hugging Face | Auto-gated skilled-jewelry manufacturing data card describing synchronized egocentric and top-down footage for diamond setting and specialty workflows | Skilled industrial manipulation and fine-grained manufacturing demonstrations | request |
| [X-Humanoid](https://arxiv.org/abs/2512.04537) | 2025-12 | arXiv | Applies human-to-humanoid video translation to 60 hours of Ego-Exo4D, releasing 3.6M robotized humanoid frames | Humanoid video/world-model data generation | watch |
| [DreamTacVLA](https://arxiv.org/abs/2512.23864) | 2025-12 | arXiv | Grounds VLA policies in contact physics using tactile images, wrist-camera local vision, and third-person macro vision | Contact-rich VLA manipulation | watch |
| [TacThru-UMI](https://arxiv.org/abs/2512.09851) | 2025-12 | arXiv | See-through-skin tactile-visual sensing plus a UMI-style imitation-learning framework for multimodal manipulation | Tactile-visual robot policy learning | watch |
| [Mitty](https://arxiv.org/abs/2512.17253) | 2025-12 | arXiv | Diffusion Transformer for translating human demonstrations into robot-execution videos, with synthesis from large egocentric datasets | Human-to-robot video generation | watch |
| [World in Your Hands / WiYH](https://arxiv.org/abs/2512.24310) | 2025-12 | arXiv | Reported 1,000-hour egocentric manipulation ecosystem with multiview/depth/hand/wrist signals | VLA, manipulation representation learning | watch |
| [Hoi!](https://arxiv.org/abs/2512.04884) | 2025-12 | arXiv | 3,048 force-grounded articulated-manipulation sequences over human, wrist-camera, UMI, and Hoi-gripper embodiments | Force/contact-grounded cross-view manipulation | watch |
| [METIS](https://arxiv.org/abs/2511.17366) | 2025-11 | arXiv | Dexterous VLA pretrained on multi-source egocentric human and robotic data unified under one action space | Dexterous egocentric-VLA pretraining | watch |
| [Let Me Show You / RfV](https://arxiv.org/abs/2511.05199) | 2025-11 | IROS 2025 | Retrieves egocentric human demonstrations and extracts affordance masks plus hand trajectories for robot policies | Retrieval-from-video robot manipulation | watch |
| [UMIGen](https://arxiv.org/abs/2511.09302) | 2025-11 | arXiv | Cloud-UMI plus visibility-aware egocentric point-cloud generation | 3D-aware cross-embodiment imitation learning | watch |
| [EgoMI](https://arxiv.org/abs/2511.00153) | 2025-10 | arXiv | Egocentric manipulation interface capturing synchronized end-effector and active-head trajectories for semi-humanoid robots | Active-vision whole-body manipulation | watch |
| [FARM](https://tactile-farm.github.io) | 2025-10 | arXiv | Force-aware diffusion policy using a modified tactile UMI gripper and matched actuated deployment gripper | Force- and tactile-grounded manipulation | watch |
| [UMI-on-Air](https://arxiv.org/abs/2510.02614) | 2025-10 | arXiv | Embodiment-aware diffusion policy adapting handheld UMI demonstrations to aerial manipulators | UMI transfer under embodiment dynamics | watch |
| [EmbodiSwap](https://arxiv.org/abs/2510.03706) | 2025-10 | arXiv | Photorealistic robot overlays over ego-centric human video for synthetic robot imitation datasets | Zero-shot human-video-to-robot imitation | watch |
| [Hand-VLA Pretraining](https://arxiv.org/abs/2510.21571) | 2025-10 | arXiv | Converts unscripted real-life egocentric hand videos into 1M VLA-aligned action-language episodes | Robot pretraining from human activity video | watch |
| [ActiveUMI](https://arxiv.org/abs/2510.01607) | 2025-10 | arXiv | Portable VR/UMI-style system capturing active egocentric perception for bimanual manipulation | Active-perception UMI-style data collection | watch |
| [FastUMI-100K](https://huggingface.co/datasets/IPEC-COMMUNITY/FastUMI_100k_lerobot) | 2025-10 | arXiv | 100K+ UMI-style trajectories across 54 tasks in LeRobot format with multi-view wrist fisheye images | Large-scale UMI-style robot policy training | open |
| [BiNoMaP](https://hnuzhy.github.io/projects/BiNoMaP/) | 2025-09 | arXiv | Category-level bimanual non-prehensile primitives learned from egocentric hand trajectories and transferred across two dual-arm platforms | Contact-rich bimanual skill extraction from human demonstrations | watch |
| [EMMA](https://arxiv.org/abs/2509.04443) | 2025-09 | IEEE RA-L 2025 | Co-trains egocentric human mobile-manipulation data with static robot data to avoid mobile teleoperation bottlenecks | Scalable mobile manipulation from human data | watch |
| [OpenEgo](https://arxiv.org/abs/2509.05513) | 2025-09 | arXiv | 1,107 hours unified across six public egocentric datasets, 290 manipulation tasks, hand-pose/action primitives | Standardized dexterous manipulation pretraining and evaluation | watch |
| [MV-UMI](https://arxiv.org/abs/2509.18757) | 2025-09 | arXiv | Multi-view UMI adds third-person context to wrist egocentric observations | Broad-scene context for cross-embodiment manipulation | watch |
| [InterVLA](https://arxiv.org/abs/2508.04681) | 2025-08 | ICCV 2025 | 11.4 hours and 1.2M frames with 2 ego and 5 exo views, human/object motions, and verbal commands | Vision-language-action and motion estimation | watch |
| [EgoVLA](https://rchalyang.github.io/EgoVLA/) | 2025-07 | arXiv | VLA training from egocentric human videos plus robot fine-tuning | Human-video-to-robot policy transfer | watch |
| [EgoDex](https://arxiv.org/abs/2505.11709) | 2025-05 | ICLR 2026 | 829 hours of Apple Vision Pro egocentric video, 194 tabletop tasks, 3D hand/finger tracking | Dexterous manipulation, imitation learning, human-to-robot hand trajectory prediction | watch |
| [TASTE-Rob](https://arxiv.org/abs/2503.11423) | 2025-03 | CVPR 2025 | 100,856 task-oriented ego-centric hand-object interaction videos aligned with language instructions | Video generation and robot imitation learning | watch |
| [Kaiwu](https://arxiv.org/abs/2503.05231) | 2025-03 | IEEE RA-L 2025 | 11,664 synchronized assembling-action instances with first-person video, gaze, hand motion, pressure, audio, EMG, mocap, and robot streams | Multimodal robot learning and HRI | watch |
| [Humanoid-VLA](https://arxiv.org/abs/2502.14795) | 2025-02 | arXiv | Combines language, egocentric scene perception, and motion control for universal humanoid control | Humanoid VLA and motion generation | watch |
| [Immersive Social Interaction with VR and LLM-Assisted Humanoids](https://arxiv.org/abs/2607.07430) | 2024-11 | Humanoids 2024 Workshop | Apple Vision Pro teleoperation with egocentric robot feedback, voice locomotion, wrist/finger retargeting, and RGB, gaze, command, joint-state, and hand-motion recording on a Unitree H1 | Immersive humanoid teleoperation and multimodal demonstration capture | watch |
| [EgoMimic](https://arxiv.org/abs/2410.24221) | 2024-10 | ICRA 2025 | Project Aria human videos with 3D hand tracking and robot co-training for unified imitation learning | Human-to-robot imitation from ego video | watch |
| [FastUMI](https://arxiv.org/abs/2409.19499) | 2024-09 | arXiv | UMI redesign reporting 10K+ real-world trajectories across 22 everyday tasks | Faster hardware-independent UMI-style collection | watch |
| [R+X](https://arxiv.org/abs/2407.12957) | 2024-07 | ICRA 2025 | Retrieves executable skills from long unlabeled first-person videos of everyday human tasks | Robot imitation from everyday first-person video | watch |
| [UMI on Legs](https://umi-on-legs.github.io) | 2024-07 | arXiv | Combines handheld UMI task demonstrations with simulation-trained whole-body controllers for quadruped manipulation | Mobile cross-embodiment UMI transfer | watch |
| [EgoPAT3D / EgoPAT3Dv2](https://arxiv.org/abs/2403.05046) | 2024-03 | ICRA 2024 | 1M+ RGB-D/IMU frames in the original task; v2 expands egocentric 3D action-target prediction | Human-robot interaction, 3D target anticipation, manipulation safety | open |
| [Universal Manipulation Interface / UMI](https://umi-gripper.github.io/) | 2024-02 | RSS 2024 | Hand-held GoPro gripper interface and policy stack for in-the-wild robot teaching | Wrist-view robot-free demonstrations and cross-embodiment policy transfer | open |
| [Dobb-E / HoNY](https://dobb-e.com/) | 2023-11 | arXiv | 13 hours, 22 homes, 5,620 trajectories, and 1.5M RGB-D frames collected with an iPhone-based Stick | Household robot learning from handheld in-home demonstrations | partial |
| [VIP](https://arxiv.org/abs/2210.00030) | 2022-09 | ICLR 2023 | Value-Implicit Pre-Training learns visual rewards and representations from Ego4D human video for few-shot robot manipulation | Ego4D-to-robot reward learning | open |
| [R3M](https://arxiv.org/abs/2203.12601) | 2022-03 | CoRL 2022 | Robot-manipulation visual representation pretrained on Ego4D with time-contrastive and video-language objectives | Ego4D-to-robot representation learning | open |

### Hands, Objects, Pose, Tracking, and 3D

Fine-grained hand, object, contact, and 3D-pose datasets, including emerging event-camera and EMG sensing.

| Resource | Released | Venue | Scale / signal | Best for | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [EgoExoMoCap](https://arxiv.org/abs/2607.15868) | 2026-07 | ECCV 2026 | Distributed mocap from two or more smart-glasses wearers, fusing head/wrist tracking with context-aware image features on two in-the-wild datasets | Lightweight ego-exo body-motion reconstruction | watch |
| [Exo2EgoPose](https://arxiv.org/abs/2607.15890) | 2026-07 | ACM MM 2026 | Vision-language-guided egocentric 3D hand-pose forecasting using reconstructed exocentric demonstrations, evaluated on AssemblyHands, Ego-Exo4D, EgoMe-pose, and CALVIN | Hand forecasting and human-to-robot transfer | watch |
| [EgoObjects-Camera](https://huggingface.co/datasets/KangLiao/EgoObjects-Camera) | 2026-07 | Hugging Face | Public camera-parameter annotations for 241,554 EgoObjects images across 49 shards, including roll, pitch, vertical field of view, and radial distortion; reuse terms are undeclared | Camera-aware egocentric modeling and dataset analysis | partial |
| [TSR-Ego](https://arxiv.org/abs/2607.09169) | 2026-07 | arXiv | Causal temporal stereo refinement with fisheye deformable cross-attention for online egocentric 3D body pose on UnrealEgo2 and UnrealEgo-RW | Head-mounted stereo pose recovery under occlusion and truncation | watch |
| [CI-HOI / DEHOI](https://arxiv.org/abs/2607.08514) | 2026-07 | arXiv | Cue-isolated HOI evaluation and inpainted testbed that separate hand and object evidence to expose contextual shortcuts in egocentric VLMs | Diagnosing hand- versus object-centric action understanding | watch |
| [Whareformer](https://jacobchalk.github.io/Whareformer/) | 2026-07 | ECCV 2026 | First learned OSNOM tracker, trained on 56 videos and tested on 260 long EPIC-KITCHENS-100, IT3DEgo, and HD-EPIC videos; MIT code, weights, features, and training data are live | Long-term 3D object tracking through occlusion and out-of-view periods | open |
| [HandsOnWorld](https://arxiv.org/abs/2607.02075) | 2026-07 | arXiv | Camera-disentangled hand-controlled egocentric video generation with EgoVid-Pro: 103K clips and roughly 12M frames of protagonist-only hand trajectories | Unconstrained egocentric HOI video generation | watch |
| [SAGE Action-Gaze](https://arxiv.org/abs/2607.04017) | 2026-07 | arXiv | Unified action-gaze recognition and anticipation framework linking HOI, gaze, egocentric close-up views, and exocentric context | Joint gaze/action anticipation for human behavior understanding | watch |
| [Ego3DLM / Ego-Human Motion Prediction](https://arxiv.org/abs/2607.07001) | 2026-07 | ECCV 2026 | 3D-aware LLM that jointly predicts past/future human pose and narration from egocentric video, three-point tracking, and scene features on Nymeria | Scene-grounded egocentric human-motion forecasting | watch |
| [Humanola Egocentric Hand-Pose Sample](https://huggingface.co/datasets/humanola-inc/egocentric-sample) | 2026-07 | Hugging Face | LeRobot v2.1 sample with 9 episodes, 48,272 frames, four synchronized cameras, 200 Hz IMU, 3D hands, poses, overlays, and Rerun logs | Open hand-pose and sensor-fusion loader tests for manipulation pipelines | open |
| [InterPet4D](https://huggingface.co/datasets/ohicarip/interpet4d) | 2026-06 | Hugging Face | 6.8M-frame human-dog capture; public 10.7 GB v1 provides 227 headset clips with audio and aligned SMPL, MANO, pet skeleton, SMAL, and MERT features | Multimodal 4D human-pet interaction, motion generation, and pose analysis | open |
| [ViDiHand](https://vidihand.github.io) | 2026-06 | arXiv | 4D two-hand motion reconstruction from full-frame egocentric video using video-diffusion representations; evaluated on ARCTIC, HOT3D, and HOI4D | Egocentric hand-motion reconstruction without detector/test-time optimization | watch |
| [HT-Bench / HandTouch](https://arxiv.org/abs/2606.19161) | 2026-06 | arXiv | 10M RGB frames and 7.8M tactile frames across 226 dexterous full-hand tasks | Vision-tactile representation learning for dexterous manipulation | watch |
| [EPIC-Contact / HOPformer](https://sid2697.github.io/epic-contact/) | 2026-06 | ECCV 2026 | 2.3K EPIC-KITCHENS clips and 62.3K frames with dense 3D hand-object contact, posed meshes, code, dataset, and checkpoints | In-the-wild egocentric 3D hand-object pose and contact estimation | open |
| [GhostHandEgoNet](https://doi.org/10.1142/s0218001426550116) | 2026-06 | IJPRAI 2026 | Lightweight egocentric hand-pose and hygiene-monitoring pipeline with 2.56M parameters for embedded deployment | Egocentric hand pose under occlusion and clinical hand-hygiene monitoring | watch |
| [Hand-4DGS](https://jeongminb.github.io/hand-4dgs/) | 2026-06 | arXiv | Feed-forward 4D hand reconstruction from egocentric video with 3D Gaussian Splatting, evaluated on H2O and ARCTIC | Fast egocentric 4D hand reconstruction | watch |
| [A multimodal RGB/events FPV hand dataset](https://arxiv.org/abs/2606.10790) | 2026-06 | arXiv | Synthetic event-based first-person hand detection from EgoHands plus v2e | Event/RGB hand detection benchmarking | watch |
| [SIGNIQ Egocentric Hand-Pose Sample](https://huggingface.co/datasets/jackji/signiq-egocentric-handpose-sample) | 2026-06 | Hugging Face | Five short head-mounted GoPro manipulation clips with Label Studio import metadata for hand-pose and action-segment annotation | Hand-pose annotation and manipulation-labeling workflow tests | open |
| [Leveraging Synthetic Data for Egocentric HOI Detection](https://doi.org/10.1007/s11263-026-02838-8) | 2026-05 | IJCV 2026 | Synthetic-data augmentation study for hand-object interaction detection on VISOR, EgoHOS, and ENIGMA-51 | HOI detection when real labels are scarce | watch |
| [Causal-Inspired Fourier Egocentric Action Recognition](https://doi.org/10.1109/tcsvt.2026.3653125) | 2026-05 | IEEE TCSVT 2026 | Causal-inspired Fourier representation learning for wearable IMUs and egocentric action recognition | Wearable-sensor action recognition | watch |
| [EgoSMPLX](https://github.com/naso06/EgoSMPLX) | 2026-05 | arXiv | Prior-guided whole-body human mesh recovery from monocular head-mounted egocentric images, with released code and annotations | Egocentric whole-body mesh recovery | watch |
| [DexGloveHOI](https://arxiv.org/abs/2605.21714) | 2026-05 | arXiv | 100K+ synchronized egocentric vision and on-glove IMU samples with marker-based mocap 3D hand-pose ground truth across dexterous daily manipulation | Vision-IMU fusion for 3D hand tracking | watch |
| [EggHand](https://jyoun9.github.io/EggHand/) | 2026-05 | CVPR 2026 Findings | Multimodal foundation model for egocentric hand-pose forecasting over EgoExo4D-style video-language and action signals | Hand-pose forecasting and VLA action decoding | watch |
| [Map-Mono-Ego](https://arxiv.org/abs/2605.20889) | 2026-05 | ICIP 2026 | Map-grounded global human-pose estimation from monocular egocentric video, with AIST-Living paired ego video and scanned environments | Scene-aware egocentric body-pose localization | watch |
| [EgoForce Motion](https://arxiv.org/abs/2605.13041) | 2026-05 | arXiv | Online full-body motion reconstruction from sparse egocentric observations using diffusion forcing | Real-time egocentric body-motion reconstruction | watch |
| [EgoEMG](https://arxiv.org/abs/2605.05712) | 2026-05 | arXiv | 41 participants, bilateral EMG, IMU, RGB, external RGB-D, mocap hand labels | EMG plus egocentric vision hand pose estimation | watch |
| [EgoTouch / TouchAnything](https://jianyi2004.github.io/TouchAnything-Website/) | 2026-05 | arXiv | 302 tasks, 4,530 episodes with egocentric + dual wrist cameras, bimanual 3D hand pose, and dense tactile pressure maps | Tactile estimation and contact modeling from egocentric video | watch |
| [EgoEVHands](https://github.com/ZJUWang01/EgoEV-HandPose) | 2026-05 | arXiv | Stereo event-camera egocentric hand dataset with 5,419 sequences and 3D/2D keypoints | Event-based bimanual hand pose and gesture recognition | watch |
| [TouchMoment](https://arxiv.org/abs/2604.12343) | 2026-04 | CVPR 2026 Findings | 4,021 egocentric videos, 8,456 annotated hand-object contact moments | Precise contact moment detection | watch |
| [TAIHRI](https://github.com/Tencent/TAIHRI) | 2026-04 | arXiv | Task-aware VLM for localizing task-relevant 3D human keypoints in close-range egocentric HRI | Metric-scale human keypoints for robot interaction | watch |
| [MASS](https://arxiv.org/abs/2604.08943) | 2026-04 | arXiv | Deformable surfel splatting for high-fidelity 3D hand reconstruction and rendering from egocentric monocular video | Egocentric hand reconstruction and rendering | watch |
| [E-3DPSM](https://arxiv.org/abs/2604.08543) | 2026-04 | arXiv | Event-driven continuous pose state machine for real-time egocentric 3D human-pose estimation from head-mounted devices | Event-based egocentric body-pose estimation | watch |
| [EgoFun3D](https://arxiv.org/abs/2604.11038) | 2026-04 | arXiv | 271 egocentric videos with 3D geometry, part segmentation, articulation and function-template annotations | Interactive 3D object modeling from ego video | watch |
| [FunRec](https://arxiv.org/abs/2604.05621) | 2026-04 | CVPR 2026 | Functional 3D digital-twin reconstruction from in-the-wild egocentric RGB-D interaction videos with articulated parts and kinematics | Interactive scene reconstruction for simulation and robot learning | watch |
| [DP-DeGauss](https://arxiv.org/abs/2604.07986) | 2026-04 | ICASSP 2026 | Dynamic probabilistic Gaussian decomposition for egocentric 4D scene reconstruction, separating background, hands, and objects | First-person 4D interaction reconstruction | watch |
| [Towards Egocentric 3D Hand Pose Estimation in Unseen Domains](https://doi.org/10.1109/wacv61042.2026.00560) | 2026-03 | WACV 2026 | Egocentric 3D hand-pose estimation study focused on unseen-domain generalization | Robust first-person hand tracking outside training domains | watch |
| [Controllable Egocentric Video Generation](https://arxiv.org/abs/2603.11755) | 2026-03 | ECCV 2026 | Occlusion-aware sparse 3D hand-joint control for realistic egocentric hand-object video generation, with a 1M-clip annotation pipeline | Controllable egocentric HOI video generation and world models | watch |
| [SHOW3D](https://huggingface.co/datasets/facebook/show3d-dataset) | 2026-03 | CVPR 2026 | Open 20-hour, 2,137-scene release from 38 participants with eight exo and two Quest 3 ego views, 3D hand/object annotations, shape, and text | In-the-wild 3D hand-object reconstruction | open |
| [EgoXtreme](https://arxiv.org/abs/2603.25135) | 2026-03 | CVPR 2026 | Smart-glasses egocentric 6D object-pose dataset across industrial, sports, and rescue scenes with extreme motion blur, dynamic lighting, and occlusion | Robust 6D object pose under extreme egocentric conditions | watch |
| [AG-EgoPose](https://arxiv.org/abs/2603.25175) | 2026-03 | arXiv | Attention-guided egocentric 3D human-pose estimation from fisheye camera input with dual motion/spatial streams | Fisheye egocentric 3D pose estimation | watch |
| [FEEL](https://huggingface.co/datasets/FeelAuthors/FEEL-Benchmark) | 2026-03 | arXiv | Open 26-trial, 700-episode benchmark with 39,497 Aria frames and synchronized gaze, hand, IMU, and Paxini grasp-force totals; the paper reports a larger full collection | Contact-rich physical action and hand-object understanding | open |
| [Person Identification from Egocentric HOI](https://doi.org/10.1007/s42486-025-00215-x) | 2026-02 | CCF TPCI 2026 | Uses 3D hand pose from egocentric human-object interactions as a person-identification signal | Identity and behavior analysis from first-person hand-object motion | watch |
| [WHOLE](https://arxiv.org/abs/2602.22209) | 2026-02 | arXiv | Joint world-grounded hand-object motion reconstruction from egocentric video using a generative HOI prior | Holistic hand-object pose recovery | watch |
| [AirGlove](https://arxiv.org/abs/2602.05159) | 2026-02 | ICASSP 2026 | Egocentric 3D hand-tracking evaluation for gloved hands and sensing-glove appearance shifts | Gloved-hand tracking for teleoperation | watch |
| [Eva-3M / EvaPose](https://arxiv.org/abs/2602.23618) | 2026-02 | CVPR 2026 | 3.0M+ egocentric HPE frames, including 435K keypoint-visibility labels, plus visibility-aware pose estimation | Visibility-aware egocentric human pose | watch |
| [WristPP](https://zhenqis123.github.io/WristPP/) | 2026-02 | CHI 2026 submission | Wrist-worn wide-FOV RGB system with a 133K-frame pose-pressure dataset from 20 subjects | Mobile hand pose and pressure interaction | watch |
| [Egocentric Affordance Dataset](https://huggingface.co/datasets/Kavin60606/egocentric-affordance-dataset) | 2026-02 | Hugging Face | 48,400 egocentric frames across household, workshop, factory, gardening, and healthcare scenes with Qwen3-VL affordance labels | Affordance and HOI supervision for embodied VLMs and robot learning | open |
| [Industrial Egocentric HOI Detection](https://doi.org/10.1007/978-3-032-11317-7_38) | 2026-01 | ICIAP 2025 Workshops | Real-time egocentric hand-object interaction detection for industrial workflows | Industrial first-person HOI monitoring | watch |
| [EgoGrasp](https://arxiv.org/abs/2601.01050) | 2026-01 | arXiv | World-space open-vocabulary hand-object interaction reconstruction from dynamic egoview videos | HOI reconstruction in world coordinates | watch |
| [GlovEgo-HOI](https://doi.org/10.5220/0014466400004084) | 2026 | VISAPP 2026 | Synthetic-to-real egocentric HOI detection for gloved industrial hand-object scenarios | Industrial HOI detection under gloves and domain shift | watch |
| [OpenTouch](https://opentouch-tactile.github.io/) | 2025-12 | arXiv | 5.1 hours of synchronized egocentric video-touch-pose data, 2,900 curated clips, text annotations, and retrieval/classification benchmarks | Full-hand tactile grounding for real-world interaction | watch |
| [ROHIT](https://arxiv.org/abs/2512.07394) | 2025-12 | arXiv | Reconstructs objects along hand-interaction timelines from HOT3D and EPIC-KITCHENS stable-grasp clips | Object pose propagation through hand contact | watch |
| [EvHand-FPV](https://arxiv.org/abs/2509.13883) | 2025-09 | arXiv | Event-based first-person 3D hand-tracking dataset and lightweight wrist-ROI tracking framework | Low-power FPV hand tracking | watch |
| [THOR](https://arxiv.org/abs/2507.06442) | 2025-07 | arXiv | Thermal-guided adaptive RGB sampling for wearable hand-object monitoring, using about 3% of RGB frames while preserving activity segments | Low-power longitudinal hand-object activity recognition | watch |
| [Egocentric HOI Detection](https://arxiv.org/abs/2506.14189) | 2025-06 | Expert Systems with Applications | New benchmark and method for detecting hand-object interactions in egocentric video | Egocentric hand-object interaction detection | open |
| [EgoBrain](https://arxiv.org/abs/2506.01353) | 2025-06 | arXiv | Synchronized EEG and egocentric video for human action understanding | Brain-signal plus first-person action understanding | watch |
| [EventEgoHands](https://arxiv.org/abs/2505.19169) | 2025-05 | ICIP 2025 | Event-based egocentric 3D hand mesh reconstruction benchmark over N-HOT3D | Low-light and motion-blur hand reconstruction | watch |
| [EgoEvGesture](https://arxiv.org/abs/2503.12419) | 2025-03 | arXiv | First large-scale egocentric event-camera gesture-recognition dataset with a head-motion-robust 7M-param model (62.7% unseen-subject accuracy) | Event-camera egocentric gesture recognition | watch |
| [EgoCast](https://arxiv.org/abs/2412.02903) | 2024-12 | WACV 2025 | 3D pose forecasting from egocentric video and proprioceptive data on Ego-Exo4D / Aria Digital Twin | Future body-pose forecasting | watch |
| [Ego3DT](https://arxiv.org/abs/2410.08530) | 2024-10 | ACM MM 2024 | Zero-shot 3D reconstruction and tracking of all objects in ego-centric videos | 3D object tracking in first person | watch |
| [EgoPressure](https://yiming-zhao.github.io/EgoPressure/) | 2024-09 | CVPR 2025 | 5.0 hours, 21 participants, a moving egocentric camera plus 7 stationary RGB-D cameras, hand pose meshes, and fine-grained per-contact touch pressure (CVPR 2025) | Hand pressure and pose from egocentric vision | open |
| [AFF-ttention / STAformer](https://arxiv.org/abs/2406.01194) | 2024-06 | ECCV 2024 | Affordance- and attention-aware short-term object-interaction anticipation from egocentric video | Short-term active-object anticipation | watch |
| [HOT3D](https://facebookresearch.github.io/hot3d/) | 2024-06 | CVPR 2025 | 833+ minutes, 3.7M+ images, Aria and Quest 3, gaze, point clouds, 3D hand/object/camera poses | 3D hand-object tracking for AR/VR manipulation | open |
| [EMAG](https://arxiv.org/abs/2405.20030) | 2024-05 | ECCV 2024 HANDS Workshop | Ego-motion-aware 2D hand forecasting for egocentric videos | Hand trajectory anticipation | watch |
| [UnrealEgo2 / UnrealEgo-RW](https://arxiv.org/abs/2401.00889) | 2024-01 | CVPR 2024 | Expanded stereo egocentric pose datasets from synthetic and real-world capture | Stereo egocentric human pose estimation | watch |
| [POV-Surgery](https://batfacewayne.github.io/POV_Surgery_io/) | 2023-07 | MICCAI 2023 | Egocentric surgical video for hand and tool pose estimation during operating-room activities | Surgical hand-tool pose and interaction understanding | open |
| [EgoHumans](https://arxiv.org/abs/2305.16487) | 2023-05 | ICCV 2023 | 125K+ egocentric images for in-the-wild multi-human tracking, 2D/3D pose, and mesh recovery | Egocentric multi-human perception and tracking | partial |
| [AssemblyHands](https://arxiv.org/abs/2304.12301) | 2023-04 | CVPR 2023 | 3.0M 3D hand-pose annotations from Assembly101, including 490K egocentric images | Egocentric 3D hand pose and pose-aware action recognition | benchmark |
| [EgoTracks](https://arxiv.org/abs/2301.03213) | 2023-01 | NeurIPS 2023 | Long-term egocentric visual object tracking annotations from Ego4D | Tracking, re-detection, embodied object persistence | open |
| [EgoGTA / EgoPW-Scene](https://arxiv.org/abs/2212.11684) | 2022-12 | CVPR 2023 | Synthetic EgoGTA plus EgoPW-based in-the-wild scene-aware pose data | Scene-aware egocentric 3D human pose estimation | partial |
| [EgoHOS](https://github.com/owenzlz/EgoHOS) | 2022-08 | ECCV 2022 | 11,243 egocentric images with detailed hand/object/contact segmentation | Hand-object segmentation and contact-aware foreground modeling | open |
| [UnrealEgo](https://4dqv.mpi-inf.mpg.de/UnrealEgo/) | 2022-08 | ECCV 2022 | Synthetic stereo eyeglass egocentric dataset with 3D human pose | Robust egocentric 3D human motion capture | open |
| [Ego2HandsPose](https://arxiv.org/abs/2206.04927) | 2022-06 | WACV 2024 | Extension of Ego2Hands with 3D global hand pose annotations | Two-hand RGB 3D pose in global coordinates | open |
| [ARCTIC](https://arctic.is.tue.mpg.de/) | 2022-04 | CVPR 2023 | 2.1M frames with bimanual hand/object meshes, articulated objects, and contact | Dexterous bimanual manipulation, contact, reconstruction | request |
| [GIMO](https://github.com/y-zheng18/GIMO) | 2022-04 | ECCV 2022 | Ego-centric views, gaze, scene scans, and high-quality body pose sequences | Gaze-informed human motion prediction in scene context | open |
| [HOI4D](https://hoi4d.github.io/) | 2022-03 | CVPR 2022 | 2.4M RGB-D egocentric frames, 4,000+ sequences, 800 objects, 16 categories, 610 rooms | 4D human-object interaction, segmentation, object pose tracking, action segmentation | open |
| [EgoBody](https://sanweiliti.github.io/egobody/egobody.html) | 2021-12 | ECCV 2022 | HoloLens2 egocentric RGB/depth/eye/head/hand data with 3D body pose and shape | Egocentric human pose, shape, motion, social interaction | open |
| [TREK-150](https://machinelearning.uniud.it/datasets/trek150/) | 2021-08 | project page | 150 egocentric tracking sequences derived from EPIC-KITCHENS | Single-object tracking in egocentric video | open |
| [H2O: Two Hands and Objects](https://arxiv.org/abs/2104.11181) | 2021-04 | ICCV 2021 | Synchronized multi-view RGB-D, two-hand 3D pose, 6D object pose, object meshes, camera poses | First-person two-hand interaction recognition and pose-aware HOI | open |
| [Ego2Hands](https://arxiv.org/abs/2011.07252) | 2020-11 | arXiv | Large-scale composited RGB egocentric two-hand segmentation/detection | Robust unconstrained hand segmentation | open |
| [xR-EgoPose](https://github.com/facebookresearch/xR-EgoPose) | 2019-07 | GitHub | Synthetic egocentric body pose data for XR headset viewpoints | 3D human pose from head-mounted cameras | open |
| [You2Me](https://arxiv.org/abs/1904.09882) | 2019-04 | CVPR 2020 | Infers second-person body pose in egocentric video from first- and second-person interaction cues | Social interaction and body-pose inference | watch |
| [H+O](https://arxiv.org/abs/1904.05349) | 2019-04 | CVPR 2019 Oral | Unified egocentric RGB model for 3D hand pose, object pose, interactions, objects, and actions | 3D hand-object pose and interaction recognition | watch |
| [EgoReID Dataset](https://arxiv.org/abs/1812.09570) | 2018-12 | arXiv | 900 identities, about 10.2K tracks, 176K detections from mobile first-person cameras with sensor metadata | Person re-identification from first-person video | watch |
| [EgoYouTubeHands / HandOverFace](https://arxiv.org/abs/1803.03317) | 2018-03 | CVPR 2018 | In-the-wild egocentric hand-segmentation study built around EgoYouTubeHands, HandOverFace, EGTEA, and EgoHands-style supervision | Hand detection and segmentation beyond lab capture | watch |
| [FPHA / First-Person Hand Action](https://guiggh.github.io/publications/first-person-hands/) | 2017-04 | CVPR 2018 | 100K+ RGB-D frames, 45 action classes, 26 objects, 3D hand/object poses | 3D hand pose and first-person hand action recognition | open |
| [EgoGesture](https://ieeexplore.ieee.org/document/8299578/) | 2017-01 | IEEE TMM 2018 | 24K+ gesture samples, 3M RGB-D frames, 50 subjects, 83 static and dynamic gestures across six scenes | First-person gesture recognition for wearable interaction | open |
| [Left/Right Hand Segmentation](https://arxiv.org/abs/1607.06264) | 2016-07 | CVIU 2016 | Classic first-person method that separates left/right hands and handles hand-to-hand occlusion with temporal superpixels | Hand segmentation and wearable interaction | watch |
| [EgoHands](http://vision.soic.indiana.edu/projects/egohands/) | 2015-12 | ICCV 2015 | 48 Google Glass videos, 4,800 annotated hand images | Hand detection and segmentation | open |
| [BEOID](https://dimadamen.github.io/BEOID/) | 2014-09 | BMVC 2014 | Gaze-tracked egocentric video of 8 users interacting with objects across 6 everyday locations (kitchen, workspace, printer, corridor, gym) | Discovering task-relevant objects and interaction modes | open |

### Daily Life, Memory, Assistance, and QA

Long-horizon daily-life capture and the question-answering benchmarks that probe memory, reasoning, and assistance.

| Resource | Released | Venue | Scale / signal | Best for | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [Vinci2 / EgoServe](https://sitonggong.github.io/EgoServe-page/) | 2026-07 | ECCV 2026 | 3,000+ proactive-service instances across 11 categories and four memory horizons, with public annotations and the training-free EgoMemo agent | Deciding when an egocentric assistant should intervene and grounding its response in memory | open |
| [VEGAS](https://arxiv.org/abs/2607.08489) | 2026-07 | arXiv | Training-free gaze-aware caption metric plus egocentric activities and instructional slides paired with synchronized gaze and reference captions | Human-attention-aligned caption evaluation and retrieval | watch |
| [CoMind](https://comind.ethz.ch/) | 2026-07 | ECCV 2026 | Dual-view collaborative-cooking dataset with two synchronized head-mounted cameras, two exo views, audio, gaze, 3D scene/object scans, and social/interaction annotations; download is marked coming soon | Social reasoning, joint attention, handover prediction, and collaborative assistance | watch |
| [Imprint](https://arxiv.org/abs/2607.00696) | 2026-07 | arXiv | Online interaction-centric memory compression for seven-day egocentric QA on EgoLifeQA | Scalable long-horizon memory retrieval | watch |
| [EgoGapBench](https://github.com/jhCOR/EgoGapBench) | 2026-07 | arXiv | Diagnostic benchmark for whether models select actions from the camera-wearer's perspective in multi-agent scenes | Egocentric perspective and action-selection evaluation | open |
| [EgoSafetyBench](https://arxiv.org/abs/2607.00218) | 2026-06 | arXiv | 1,200 egocentric robot-view safety scenarios with half-second labels and misleading in-scene text controls | Streaming VLM safety-guard evaluation | watch |
| [BinaryTracking / GangnamLoop](https://github.com/ndb796/BinaryTracking) | 2026-06 | arXiv | Spatial QA and navigation benchmark for long egocentric robot routes, with GangnamLoop route data and the BinTrack implementation | Open spatial memory and navigation QA | open |
| [Egocentric Pedestrian Crossing Intention](https://arxiv.org/abs/2606.09142) | 2026-06 | arXiv | VLM-based VQA formulation for predicting pedestrian crossing intention from short egocentric traffic-safety clips | Wearable traffic-safety intent reasoning | watch |
| [Face-vs-Body HRI Tracking](https://arxiv.org/abs/2606.03694) | 2026-06 | arXiv | Custom-annotated egocentric HRI dataset from a social robot, comparing face and body tracking under occlusion and engagement changes | Social-robot engagement tracking | watch |
| [VL-MemKnG / WalkieKnowledgeT+](https://arxiv.org/abs/2606.17183) | 2026-06 | arXiv | Hybrid spatio-temporal knowledge graph plus segment memory for QA over long egocentric navigation trajectories | Navigation memory, long-horizon evidence retrieval, spatial QA | watch |
| [V-RAGBench / CARVE](https://arxiv.org/abs/2606.13141) | 2026-06 | arXiv | Query, evidence-chunk, answer triplets for decoupled retrieval/generation evaluation in long egocentric video RAG | Retrieval-augmented long-video QA | watch |
| [OVO-S-Bench](https://arxiv.org/abs/2606.03890) | 2026-06 | arXiv | 1,680 spatial-reasoning questions over 348 continuous egocentric videos with query timestamps and evidence intervals | Streaming spatial intelligence, tracking, simulation, and allocentric mapping | watch |
| [Astra](https://arxiv.org/abs/2606.06476) | 2026-06 | arXiv | Agentic VLM spatial reasoning with a view-consistent world simulator that supplies imagined novel-view evidence from limited egocentric observations | World-model-augmented spatial reasoning | watch |
| [VLESA](https://github.com/HanjiangHu/VLESA) | 2026-06 | arXiv | Goal-conditioned safety annotations over egocentric human-activity video for safety-aware assistance | Safety monitoring and situated activity assistance | open |
| [Causal-Plan-1M](https://arxiv.org/abs/2606.01810) | 2026-06 | arXiv | Reported million-scale corpus of explicit causal reasoning traces over egocentric videos | Causal and planning-oriented ego reasoning | watch |
| [NoRA](https://arxiv.org/abs/2606.04806) | 2026-06 | arXiv | 1,420 first-person video clips for normative action reasoning with fact-reason-action support graphs | Grounded reasonableness and safety-oriented action generation | watch |
| [Pause and Think](https://arxiv.org/abs/2606.00616) | 2026-06 | arXiv | Reasoning-centric training data and benchmark for video-grounded assistive action suggestions | Scene-grounded assistance, planning, and temporal consistency | watch |
| [SuperMemory-VQA](https://arxiv.org/abs/2606.00825) | 2026-06 | arXiv | 52.9 hours of AI-glasses activity with RGB, audio, gaze, IMU, SLAM, and 4,853 human-verified QA pairs across object/location/intent/scene memory | Long-horizon memory for AR assistants | watch |
| [EgoMonth](https://huggingface.co/datasets/anonymous-egomonth/egomonth-dataset) | 2026-05 | Hugging Face | 1,443 long-horizon memory QA records with event/object/place annotations and eight public sample videos; the full 20-120-day corpus uses external research access | Month-scale episodic memory, spatial reasoning, and personal QA | partial |
| [VISTA Daily Assistance](https://arxiv.org/abs/2605.10579) | 2026-05 | arXiv | Generative egocentric-video framework for reactive and proactive daily-assistance scenarios | Synthetic training/evaluation for assistants | watch |
| [EgoMemReason](https://arxiv.org/abs/2605.09874) | 2026-05 | arXiv | 500 questions over week-long egocentric video with entity, event, and behavior memory types | Memory-driven reasoning across sparse evidence over hours or days | watch |
| [EgoBench](https://arxiv.org/abs/2605.27820) | 2026-05 | arXiv | 1,045 egocentric-video-grounded interactive tasks with tools and simulated users | Tool-using multimodal agents with dynamic interaction | watch |
| [EyeCue](https://github.com/langzhang2000/EyeCue) | 2026-05 | arXiv | Gaze-empowered egocentric video model plus CogDrive annotations for driver cognitive-distraction detection | Gaze-context reasoning for safety and internal-state inference | watch |
| [Minerva-Ego](https://github.com/google-deepmind/neptune) | 2026-05 | arXiv | Complex egocentric visual-reasoning benchmark with multi-step multimodal questions, dense reasoning traces, and spatiotemporal object masks | Grounded multi-step egocentric reasoning | open |
| [EgoPro-Bench](https://arxiv.org/abs/2605.07299) | 2026-05 | arXiv | Personalized proactive-interaction benchmark with 2,400 evaluation videos, 12K+ training videos, and 12 domains | Streaming intent prediction and proactive assistance timing | watch |
| [Pro2Assist](https://arxiv.org/abs/2605.04227) | 2026-05 | arXiv | Continuous step-aware proactive assistance with multimodal egocentric perception and an AR-glasses testbed | Real-time step-aware assistance | watch |
| [Personal Visual Context Learning / Personal-VCL-Bench](https://vision.cs.utexas.edu/projects/PersonalVCL/) | 2026-05 | arXiv | Smart-glasses benchmark for using wearer-specific visual context at prompt time over continuous first-person streams | Personalized visual memory for wearable assistants | watch |
| [AwareLLM](https://arxiv.org/abs/2605.09625) | 2026-05 | arXiv | Proactive assistant using egocentric vision, pupillometry, gaze, posture, heart activity, and LLM reasoning | Personalized productivity and cognitive-state-aware assistance | watch |
| [GazeMind / CogLoad-Bench](https://arxiv.org/abs/2605.05790) | 2026-05 | arXiv | Gaze-guided LLM agent and cognitive-load benchmark for smart glasses, reporting 152 participants, 40+ hours, and 10K+ annotations | Cognitive-load-aware assistance | watch |
| [Dietary Behavior Change Receptivity](https://arxiv.org/abs/2605.27950) | 2026-05 | arXiv | Pilot AIM-2 wearable-camera study using egocentric eating images to infer receptivity for just-in-time dietary interventions | Nutrition and health-oriented lifelogging | watch |
| [EgoBabyVLM](https://arxiv.org/abs/2605.19130) | 2026-05 | arXiv | Benchmarking cross-modal learning from naturalistic infant and adult egocentric video, including Machine-DevBench and challenge tracks | Developmental egocentric VLM learning | watch |
| [EgoIntrospect](https://ego-introspect.github.io/) | 2026-05 | arXiv | 180 hours from 60 subjects with synchronized video, audio, gaze, motion, physiological signals | Internal-state reasoning, affect, intent, cognitive memory for wearable assistants | watch |
| [EgoExoMem](https://arxiv.org/abs/2605.18734) | 2026-05 | arXiv | 2.6K MCQs across synchronized ego-exo videos | Cross-view memory reasoning | watch |
| [EgoCoT-Bench](https://dstardust.github.io/EgoCoT/) | 2026-05 | arXiv | 3,172 verifiable QA pairs over 351 videos with operation-centric rationale annotations | Grounded chain-of-thought and evidence consistency | open |
| [EgoStream](https://arxiv.org/abs/2605.31557) | 2026-05 | arXiv | 2,250 questions across seven memory dimensions with Answer Validity Windows, expanded to 8,528 recall-conditioned evaluations over streams up to 45.3 hours | Diagnosing streaming episodic memory | watch |
| [MyEgo](https://github.com/Ryougetsu3606/MyEgo) | 2026-04 | CVPR 2026 | 541 long videos and 5K personalized questions about the camera wearer, belongings, activities, and past | Personalized ego-grounding and long-range memory QA | open |
| [EgoEsportsQA](https://arxiv.org/abs/2604.12320) | 2026-04 | arXiv | 1,745 QA pairs from professional first-person shooter matches across three games | High-speed first-person perception and tactical reasoning in virtual environments | watch |
| [EgoEverything](https://arxiv.org/abs/2604.08342) | 2026-04 | arXiv | 5,000+ MCQ pairs over 100+ hours, with gaze-attention-inspired question generation for AR | Human-behavior-inspired long-context egocentric understanding | watch |
| [LifeDialBench / EgoMem](https://arxiv.org/abs/2604.11182) | 2026-04 | arXiv | Real egocentric video plus synthetic lifelog conversations | Online temporal-causality evaluation for continuous lifelog memory systems | watch |
| [EgoScreen-Emotion / ESE](https://arxiv.org/abs/2604.15823) | 2026-04 | arXiv | 224 egocentric screen-view movie trailers with 28,667 confidence-aware emotion keyframe annotations | Emotion understanding from realistic first-person viewing | watch |
| [Gaze-to-Guidance Assistants](https://arxiv.org/abs/2604.08062) | 2026-04 | arXiv | Gaze-grounded multimodal LLM assistance study using egocentric video and gaze overlays to infer reading difficulty | Cognitive-need-aware wearable assistance | watch |
| [EgoTL](https://arxiv.org/abs/2604.09535) | 2026-04 | arXiv | Think-aloud (say-before-act) egocentric capture with word-level spoken reasoning and metric-scale spatial annotations over 100+ household tasks | Long-horizon reasoning for VLMs and world models | watch |
| [EgoSelf](https://abie-e.github.io/egoself_project/) | 2026-04 | arXiv | Personalized egocentric assistant framework with graph memory | Personalization from long-term egocentric interaction memory | watch |
| [MA-EgoQA](https://ma-egoqa.github.io/) | 2026-03 | arXiv | 1.7K questions over multiple long-horizon egocentric streams | Multi-agent egocentric memory reasoning | open |
| [Ego2Web](https://arxiv.org/abs/2603.22529) | 2026-03 | CVPR 2026 | Egocentric videos paired with web tasks requiring physical-scene understanding and online execution | Web agents grounded in first-person physical context | watch |
| [Egocentric Co-Pilot](https://arxiv.org/abs/2603.01104) | 2026-03 | WWW 2026 | Web-native smart-glasses agent framework with temporal reasoning, context compression, speech/gaze intent, and streaming WebRTC/WebSocket pipelines | Assistive always-on egocentric web agents | watch |
| [LifeEval](https://arxiv.org/abs/2603.00490) | 2026-03 | arXiv | 4,075 QA pairs over continuous first-person streams for real-time task-oriented human-AI collaboration in daily life | Daily-life multimodal assistance evaluation | watch |
| [Gesture-Based Egocentric Video QA](https://arxiv.org/abs/2603.12533) | 2026-03 | CVPR 2026 | Egocentric video QA grounded in the camera wearer's pointing and deictic gestures | Gesture-grounded referential QA | watch |
| [EgoIntent](https://arxiv.org/abs/2603.12147) | 2026-03 | arXiv | 3,014 steps over 15 daily-life scenarios for local intent (What), global intent (Why), and next-step plan (Next) | Step-level intent and anticipatory assistance | watch |
| [SAW-Bench](https://huggingface.co/datasets/ucsbai/SAW-Bench) | 2026-02 | ICML 2026 | Open 3.30 GB benchmark with 786 Ray-Ban Meta smart-glasses videos and 2,071 QA pairs across six situated-awareness tasks | First-person situated spatial reasoning | open |
| [EgoGraph](https://arxiv.org/abs/2602.23709) | 2026-02 | arXiv | Dynamic temporal knowledge graph framework evaluated on EgoLifeQA and EgoR1-bench | Training-free ultra-long egocentric video memory | watch |
| [EgoSound](https://arxiv.org/abs/2602.14122) | 2026-02 | CVPR 2026 | 7,315 validated QA pairs across 900 Ego4D/EgoBlind videos | Sound perception, spatial localization, causal audio-visual reasoning | watch |
| [SuperGlasses](https://arxiv.org/abs/2602.22683) | 2026-02 | CVPR 2026 Findings | Evaluates VLMs as intelligent agents for AI smart glasses across realistic wearable assistant tasks | Smart-glasses agent evaluation | watch |
| [Gazeify Then Voiceify](https://arxiv.org/abs/2601.19281) | 2026-01 | IUI 2026 | Displayless smart-glasses object referencing via gaze selection, mask generation, voice descriptions, and conversational correction | Gaze-plus-voice physical object grounding | watch |
| [Wearable Product Localization](https://arxiv.org/abs/2601.12486) | 2026-01 | arXiv | Wearable assistive shopping system combining detection, VLM guidance, spatialized sonification, and corrective feedback | Product search and navigation for blind or low-vision users | watch |
| [Egocentric Clinical Intent](https://arxiv.org/abs/2601.06750) | 2026-01 | arXiv | Benchmark for egocentric clinical intent understanding by medical multimodal LLMs over first-person clinical procedure video | Clinical intent reasoning for medical assistants | watch |
| [WearVox](https://arxiv.org/abs/2601.02391) | 2026-01 | arXiv | Egocentric multichannel voice-assistant benchmark for spoken interaction grounded in first-person audio-visual context | Wearable voice-assistant evaluation | watch |
| [Screen Detection from Egocentric Streams](https://doi.org/10.1109/tmm.2026.3660180) | 2026 | IEEE TMM 2026 | Multi-view vision-language approach for detecting screens in egocentric image streams | Wearable screen understanding and assistive scene-text interfaces | watch |
| [Ego-EXTRA](https://fpv-iplab.github.io/Ego-EXTRA/) | 2025-12 | WACV 2026 | 50 hours of expert-trainee procedural assistance dialogue, 15K+ VQA pairs | Egocentric video-language assistants and expert feedback | open |
| [WearVQA](https://arxiv.org/abs/2511.22154) | 2025-11 | NeurIPS 2025 | 2,520 image-question-answer triplets across 7 domains and 10 task types under occluded/low-light/blurry wearable capture (NeurIPS 2025) | Smart-glasses VQA under real wearable conditions | watch |
| [WAGIBench](https://arxiv.org/abs/2510.22443) | 2025-10 | NeurIPS 2025 Spotlight | 29 hours, 348 participants, and 3,477 multimodal recordings for assistive wearable-agent goal inference | Inferring user goals from wearable context | watch |
| [TeleEgo](https://arxiv.org/abs/2510.23981) | 2025-10 | arXiv | Streaming omni-modal benchmark with 3,291 QA items across memory, understanding, and cross-memory reasoning | Real-time egocentric AI assistant evaluation | watch |
| [CIVIL Lifelog Retrieval](https://arxiv.org/abs/2510.04010) | 2025-10 | arXiv | Captioning-integrated visual lifelog retrieval that describes wearable-camera images as first-person experiences before text-query matching | Personal memory search and lifelog retrieval | watch |
| [EgoNight](https://insait-institute.github.io/EgoNight/) | 2025-10 | ICLR 2026 | EgoNight-VQA (3,658 QA / 90 videos / 12 types) plus day-night retrieval and depth, with day-night aligned video | Nighttime / low-light egocentric robustness | open |
| [HUI360](https://hucebot.github.io/hui360/) | 2025-09 | FG 2026 | 99 in-the-wild 360-degree egocentric HRI recordings with public skeleton, mask, box, and interaction annotations; raw videos remain gated | Human-robot interaction understanding, pose, and anticipation from panoramic wearer views | partial |
| [EgoMemory](https://openreview.net/forum?id=T0em4hJCQb) | 2025-09 | OpenReview | 165,795 user-specific object annotations over 245 videos from 45 participants | Memory-augmented personalized retrieval | watch |
| [HowToDIV](https://arxiv.org/abs/2508.11192) | 2025-08 | arXiv | 507 conversations, 6,636 QA pairs, 24 hours of egocentric instructional task-assistance video clips | Instructional dialogue and procedural video reasoning | watch |
| [EgoTrigger / HME-QA](https://arxiv.org/abs/2508.01915) | 2025-08 | ISMAR 2025 / TVCG | Audio-driven smart-glasses capture strategy plus 340 first-person HME-QA pairs from full-length Ego4D videos | Energy-efficient memory assistance and audio-triggered capture | watch |
| [EgoCross](https://github.com/MyUniverse0726/EgoCross) | 2025-08 | AAAI 2026 | About 1,000 QA pairs over surgery, industry, extreme sports, and animal-perspective clips | Cross-domain egocentric QA generalization | watch |
| [ProMemAssist](https://arxiv.org/abs/2507.21378) | 2025-07 | UIST 2025 | Smart-glasses proactive assistance via real-time working-memory modeling from multimodal wearable signals | Timely proactive assistance | watch |
| [EgoPrivacy](https://arxiv.org/abs/2506.12258) | 2025-06 | ICML 2025 | Benchmark for privacy leakage from first-person cameras across demographic, individual, and situational inference | Privacy risk evaluation for ego video | watch |
| [EASG-Bench](https://github.com/fpv-iplab/EASG-bench) | 2025-06 | ICCV 2025 Workshop | Egocentric action-scene-graph-based video QA benchmark | Scene graph, temporal order, and relation-aware QA | open |
| [Ego-R1](https://arxiv.org/abs/2506.13654) | 2025-06 | arXiv | Ego-CoTT-25K, Ego-QA-4.4K, and Ego-R1 Bench for tool-augmented ultra-long egocentric QA | Chain-of-tool-thought reasoning over days/week-long videos | watch |
| [ExAct](https://arxiv.org/abs/2506.06277) | 2025-06 | arXiv | Video-language benchmark for expert action analysis and feedback over skilled activity | Expert feedback and skill assessment | open |
| [EgoTextVQA](https://openaccess.thecvf.com/content/CVPR2025/papers/Zhou_EgoTextVQA_Towards_Egocentric_Scene-Text_Aware_Video_Question_Answering_CVPR_2025_paper.pdf) | 2025-06 | CVPR 2025 | Egocentric scene-text-aware video QA across housekeeping and driving scenes (CVPR 2025) | Reading and reasoning over first-person scene text | open |
| [Week-Long First-Person Video Privacy Probe](https://arxiv.org/abs/2504.03857) | 2025-04 | arXiv | 54-hour wearable-camera study of what foundation models infer from week-long first-person video | Personal privacy and lifelogging risk | watch |
| [EgoLog](https://arxiv.org/abs/2504.02624) | 2025-04 | arXiv | Audio-IMU daily-log system for contextual and spatial activity logging with ubiquitous wearables | Fine-grained lifelogging | watch |
| [EgoLife](https://arxiv.org/abs/2503.03803) | 2025-03 | CVPR 2025 | 300 hours from six participants over one week with Meta Aria, third-person references, and EgoLifeQA | Long-term daily-life memory, personalized assistants, ultra-long QA | partial |
| [EgoToM](https://arxiv.org/abs/2503.22152) | 2025-03 | arXiv | Theory-of-mind QA over Ego4D-style egocentric videos | Goals, beliefs, and next-action reasoning for camera wearers | watch |
| [X-LeBench](https://arxiv.org/abs/2501.06835) | 2025-01 | EMNLP 2025 | 432 simulated life logs over Ego4D-like footage, spanning 23 minutes to 16.4 hours | Extremely long egocentric video understanding | watch |
| [VidEgoThink](https://arxiv.org/abs/2410.11623) | 2024-10 | ICLR 2025 | Ego4D-based benchmark for video QA, hierarchy planning, visual grounding, and reward modeling | Embodied egocentric video understanding | benchmark |
| [Egocentric 360 VideoQA for Visual Impairment](https://arxiv.org/abs/2405.19794) | 2024-05 | arXiv | 360-degree egocentric wearable-camera VideoQA dataset for multiple real-world obstacles faced by people with visual impairments | Assistive VideoQA and full-surround wearable perception | watch |
| [EgoThink](https://arxiv.org/abs/2311.15596) | 2023-11 | CVPR 2024 | First-person VQA benchmark covering six capability groups and twelve dimensions | First-person perspective reasoning for VLMs | benchmark |
| [EgoSchema](http://egoschema.github.io/) | 2023-08 | NeurIPS 2023 | 5K+ curated multiple-choice QA pairs over 250+ hours from Ego4D clips | Very long-form video-language understanding | open |
| [EgoTaskQA](https://arxiv.org/abs/2210.03929) | 2022-10 | NeurIPS 2022 | Diagnostic QA benchmark for task dependencies, effects, intents, beliefs, and counterfactuals in ego video | Task-step reasoning and procedural QA | benchmark |
| [AssistQ](https://showlab.github.io/assistq/) | 2022-03 | ECCV 2022 | 531 question-answer samples from 100 newly filmed instructional videos | Assistance-oriented video QA and affordance-centric task completion | open |
| [MMAC Captions](https://arxiv.org/abs/2109.02955) | 2021-09 | ACM MM 2021 | Sensor-augmented egocentric-video captioning data around CMU-MMAC-style multimodal activity streams | Video captioning with RGB, audio, IMU, and text | watch |
| [EgoVQA](https://openaccess.thecvf.com/content_ICCVW_2019/html/EPIC/Fan_EgoVQA_-_An_Egocentric_Video_Question_Answering_Benchmark_Dataset_ICCVW_2019_paper.html) | 2019-10 | ICCV 2019 | 600+ QA pairs over egocentric videos; an early first-person VideoQA benchmark | Classic egocentric VideoQA | open |
| [HARMONIC](https://arxiv.org/abs/1807.11154) | 2018-07 | IJRR 2022 | Assistive eating HRI data with head-mounted ego video, gaze, EMG, joystick, robot state, and third-person stereo views | Intention prediction and shared-autonomy assistance | watch |
| [First-Person Stories](https://arxiv.org/abs/1707.07863) | 2017-07 | ICIAP 2017 Workshop | 45K+ egocentric photo-stream images labeled for lifestyle patterns such as eating, socializing, and sedentary behavior | Lifelogging and daily-life behavior analysis | watch |

### Action, Procedure, Lifelogging, and Classic FPV

Procedural and activity datasets, from modern industrial assembly to the classic first-person-vision benchmarks that started the field.

| Resource | Released | Venue | Scale / signal | Best for | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [Wearable Gait MoCap with Shank-Mounted Ego Cameras](https://doi.org/10.1038/s41597-026-07657-7) | 2026-07 | Scientific Data 2026 | Wearable motion-capture dataset for gait analysis using IMUs and shank-mounted egocentric cameras | Wearable gait analysis and motion-sensor fusion | watch |
| [Poseidon Egocentric Activity Video Samples](https://huggingface.co/datasets/psdn-ai/egocentric-activity-video-samples) | 2026-06 | Hugging Face | Two auto-gated 1080p, 30 fps everyday activity clips with task, scene, technical, feature, and PII metadata | Lightweight activity-footage and capture-quality review | request |
| [OR-Action](https://arxiv.org/abs/2606.13332) | 2026-06 | arXiv | Fine-grained multi-role operating-room action benchmark over public ego-exocentric OR video and scene-graph state changes | Surgical workflow and temporal action understanding | watch |
| [SkillSpotter](https://github.com/eth-siplab/SkillSpotter) | 2026-06 | ECCV 2026 | Pose-aware multi-view skilled-action detection and grading over Ego-Exo4D proficiency demonstrations, transferring to HoloAssist | Ego-exo skill detection, grading, and coaching | open |
| [TimeScribe Egocentric Annotations](https://huggingface.co/datasets/play0718/timescribe-egocentric-annotations) | 2026-06 | Hugging Face | Manual dense-caption annotations for eight egocentric videos with frame-aligned micro-events, Chinese captions, English mirrors where available, source clips, and JSON manifests | Human captioning gold data for hand-action and procedure understanding | request |
| [Egocentric Nursing Competency Assessment](https://arxiv.org/abs/2605.20233) | 2026-05 | CVPR 2026 Workshop | 3.8 hours of egocentric nursing-simulation video with 493 annotated actions tied to instructor-rated competency | Medical skill assessment | watch |
| [IMPACT-HOI](https://github.com/541741106/IMPACT_HOI) | 2026-05 | arXiv | Mixed-initiative tool for constructing onset-anchored HOI event graphs in egocentric procedural video | Structured HOI annotation for robot learning | watch |
| [EgoMAGIC](https://arxiv.org/abs/2604.22036) | 2026-04 | arXiv | 3,355 egocentric field-medicine videos over 50 tasks from a head-mounted stereo camera with audio; 1.95M labels, 124 objects, action-detection challenge (Zenodo) | Field-medicine perception, action and object detection | open |
| [PIE-V](https://arxiv.org/abs/2604.15134) | 2026-04 | arXiv | Mistake-aware procedural egocentric-video benchmark injecting plausible mistakes and recovery corrections across Ego-Exo4D scenarios | Procedural mistake detection and recovery reasoning | watch |
| [IMPACT](https://arxiv.org/abs/2604.10409) | 2026-04 | arXiv | Ego-exo RGB-D industrial assembly dataset with bimanual, state, and anomaly annotations | Industrial assembly, procedural state tracking, anomaly recovery | watch |
| [ENIGMA-360](https://arxiv.org/abs/2603.09741) | 2026-03 | arXiv | Ego-exo dataset for human behavior understanding in industrial scenarios with 360-degree and egocentric capture | Industrial ego-exo behavior understanding | watch |
| [SAVA-X](https://arxiv.org/abs/2603.12764) | 2026-03 | CVPR 2026 | Ego-to-exo imitation-error detection over asynchronous, length-mismatched egocentric and exocentric videos, evaluated with EgoMe | Cross-view imitation-error detection | watch |
| [Motion Focus Recognition](https://arxiv.org/abs/2601.07154) | 2026-01 | arXiv | Real-time motion-focus recognition for fast-moving egocentric video using camera-pose foundation-model features and sliding-batch inference | Sports/fast-motion FPV intent and edge analysis | watch |
| [SmartSeg](https://doi.org/10.1016/j.pmcj.2026.102223) | 2026 | Pervasive and Mobile Computing 2026 | Non-parametric temporal segmentation method for wearable-camera video streams | Lifelog event segmentation and procedure understanding | watch |
| [PEDESTRIAN](https://arxiv.org/abs/2512.19190) | 2025-12 | arXiv | 340 first-person pavement videos covering 29 urban sidewalk obstacle types, with deep-learning detection baselines | Pedestrian-safety obstacle detection from first-person video | watch |
| [Mistake Attribution / MATT](https://arxiv.org/abs/2511.20525) | 2025-11 | CVPR 2026 | Fine-grained mistake attribution over EPIC-KITCHENS-M and Ego4D-M with semantic, temporal, and spatial labels | Procedural mistake understanding | watch |
| [SkillSight](https://arxiv.org/abs/2511.19629) | 2025-11 | arXiv | First-person skill assessment using video+gaze teacher models distilled to a low-power gaze-only student | Gaze-based skill learning | watch |
| [IndEgo](https://huggingface.co/datasets/FraunhoferIPK/IndEgo) | 2025-11 | NeurIPS 2025 | ~197h egocentric (plus ~97h exocentric) industrial collaborative work over assembly, logistics, inspection, and repair; gaze, narration, sound, motion, hand pose, point clouds | Industrial egocentric assistants and procedure understanding | open |
| [EgoEMS](https://arxiv.org/abs/2511.09894) | 2025-11 | AAAI 2026 | High-fidelity multimodal egocentric data for cognitive assistance in emergency medical services, capturing time-critical team actions | Real-time medical procedural assistance | watch |
| [EgoExOR](https://arxiv.org/abs/2505.24287) | 2025-05 | arXiv | Ego-exo operating-room dataset with wearable RGB/gaze/hand/audio, RGB-D cameras, ultrasound, and scene graphs | Surgical activity understanding | watch |
| [Physical Activity VLM Annotation](https://arxiv.org/abs/2505.03374) | 2025-05 | arXiv | VLM and discriminative-model study for reducing annotation burden in free-living wearable-camera physical-activity datasets | Health-oriented activity labeling from lifelog images | watch |
| [LSC-ADL](https://arxiv.org/abs/2504.02060) | 2025-04 | ACM MM 2025 | ADL annotations over lifelogging data generated with clustering plus human review | Activity-aware lifelog retrieval | open |
| [EgoSurgery](https://github.com/Fujiry0/EgoSurgery) | 2025-03 | Healthcare Technology Letters | EgoSurgery-Phase (surgical phase recognition) and EgoSurgery-HTS (pixel-wise hand-tool segmentation of 14 tools) from egocentric open-surgery video (MICCAI 2024) | Surgical phase, hand, and tool understanding | open |
| [EgoMe](https://arxiv.org/abs/2501.19061) | 2025-01 | arXiv | Real-world following-me dataset pairing exocentric demonstrations with egocentric imitation across everyday tasks | Egocentric imitation and cross-view following | watch |
| [Audio-Narrated FPV Domain Generalization](https://arxiv.org/abs/2409.09611) | 2024-09 | arXiv | Multimodal first-person action-recognition framework using audio narrations and audio-visual consistency to improve ARGO1M domain generalization | Robust first-person action recognition across environments | watch |
| [PARSE-Ego4D](https://arxiv.org/abs/2407.09503) | 2024-06 | arXiv | Ego4D personal action recommendation annotations with 18K+ candidate suggestions and human preference evaluation | Action recommendations for assistants | watch |
| [Object-Aware Egocentric Online Action Detection](https://arxiv.org/abs/2406.01079) | 2024-06 | CVPR 2024 EgoVis Workshop | Object-aware streaming action detection module for first-person video, validated on EPIC-KITCHENS-100 | Online action detection | watch |
| [EgoExo-Fitness](https://github.com/iSEE-Laboratory/EgoExo-Fitness) | 2024-06 | ECCV 2024 | Synchronized ego and exo fitness videos with keypoint verification, execution comments, and quality scores (ECCV 2024) | Ego-exo full-body action quality and skill assessment | open |
| [AIM-2 Food Ingestion Environment](https://arxiv.org/abs/2405.07827) | 2024-05 | arXiv | Two-stage transfer-learning method for recognizing food-ingestion environment from AIM-2 egocentric wearable-camera images | Nutrition and free-living dietary context recognition | watch |
| [EgoPack / Backpack Full of Skills](https://arxiv.org/abs/2403.03037) | 2024-03 | CVPR 2024 | Multi-task egocentric video understanding with portable task perspectives across downstream skills | Multi-skill egocentric understanding | watch |
| [EgoExoLearn](https://github.com/OpenGVLab/EgoExoLearn) | 2024-03 | CVPR 2024 | 120 hours of egocentric plus demonstration videos with gaze and annotations | Bridging asynchronous ego and exo procedural activity | open |
| [Visual Experience Dataset / VEDB](http://tamaraberg.com/visualexperience/) | 2024-02 | Journal of Vision | 240+ hours egocentric video with gaze/head tracking in classic literature | Lifelogging, attention modeling, visual experience statistics | partial |
| [CaptainCook4D](https://arxiv.org/abs/2312.14556) | 2023-12 | NeurIPS 2024 Datasets and Benchmarks | Procedural-activity dataset for understanding execution errors, later reused in multimodal temporal-action-segmentation work | Procedural errors and mistake-aware activity understanding | watch |
| [IndustReal](https://arxiv.org/abs/2310.17323) | 2023-10 | WACV 2024 | Industrial-like egocentric procedure-step recognition dataset with execution errors | Industrial procedure recognition and error handling | watch |
| [EGOFALLS](https://arxiv.org/abs/2309.04579) | 2023-09 | ICPR 2024 | Visual-audio egocentric dataset and benchmark for fall detection | Wearable fall detection and safety monitoring | watch |
| [WEAR](https://mariusbock.github.io/wear/) | 2023-04 | IMWUT 2024 | 22 participants, 18 outdoor workouts, synchronized egocentric video and 3D acceleration across 11 locations (IMWUT 2024) | Vision-plus-inertial outdoor activity recognition | open |
| [FT-HID](https://github.com/ENDLICHERE/FT-HID) | 2022-09 | GitHub | 90K+ RGB-D first- and third-person human interaction samples from 109 subjects | FPV/TPV aligned human interaction analysis | open |
| [EgoProceL](https://sid2697.github.io/egoprocel/) | 2022-07 | ECCV 2022 | 62 hours, 130 subjects, 16 procedural tasks | Key-step localization and procedure learning from ego videos | open |
| [KrishnaCam / OAK](https://oakdata.github.io/) | 2021-08 | ICCV 2021 | Long-running Google Glass daily-life stream; OAK adds 17.5 hours of object annotations | Continual object detection, summarization, personal visual memory | partial |
| [Home Action Genome / HOMAGE](https://homeactiongenome.org/) | 2021-05 | CVPR 2021 | 27 participants, synchronized ego and third-person views, 12 sensor types, hierarchical activity/action labels | Compositional multi-view home activity understanding | open |
| [MECCANO](https://iplab.dmi.unict.it/MECCANO/) | 2020-10 | WACV 2021 | Industrial-like motorbike model assembly with RGB/depth/gaze variants | EHOI, active object detection, anticipation, industrial procedures | open |
| [EgoK360](https://egok360.github.io/) | 2020-10 | ICIP 2020 | First-person 360-degree activity videos | 360-degree egocentric activity recognition | partial |
| [LEMMA](https://arxiv.org/abs/2007.15781) | 2020-07 | ECCV 2020 | Multi-view multi-agent multi-task daily activities across 14 kitchens/living rooms with dense atomic-action and HOI labels (ECCV 2020) | Multi-agent compositional activity understanding | open |
| [EGO-CH](https://arxiv.org/abs/2002.00899) | 2020-02 | Pattern Recognition Letters 2020 | 27+ hours, 70 subjects, two cultural sites, 26 environments, 200+ points of interest | Cultural heritage visitor behavior, localization, retrieval, preference prediction | partial |
| [Charades-Ego](https://prior.allenai.org/projects/charades) | 2018-04 | CVPR 2018 | 68.8 hours paired first-person and third-person videos, 68K+ activity instances | Ego-exo domain transfer, action recognition, localization, captioning | open |
| [GTEA](https://cbs.ic.gatech.edu/fpv/) | 2018-01 | project page | Early first-person cooking/activity dataset | Classic ego action recognition and object interaction | open |
| [GTEA Gaze / EGTEA Gaze+](https://cbs.ic.gatech.edu/fpv/) | 2018-01 | project page | Meal-prep egocentric videos with gaze and action annotations | Gaze-aware action recognition and hand-object attention | open |
| [Ego2Top](https://arxiv.org/abs/1607.06986) | 2016-07 | ECCV 2016 | 50 top-view videos, 188 egocentric videos, 166K frames, and 100K body detections | Matching camera wearers across egocentric and overhead views | watch |
| [Ego-Engagement](https://arxiv.org/abs/1604.00906) | 2016-04 | ECCV 2016 | Egocentric video dataset and model for whether the wearer is engaged with people or objects | Engagement, attention, and object/person interaction cues | watch |
| [Wrist-mounted ADL](https://arxiv.org/abs/1511.06783) | 2015-11 | CVPR 2016 | Synchronized head and wrist wearable-camera daily activities | Comparing head- versus wrist-mounted first-person views | open |
| [Ego-Object Discovery / EDUB](https://arxiv.org/abs/1504.01639) | 2015-04 | arXiv | 4,912 egocentric daily-life photo-stream images from four users for unsupervised object discovery | Lifelog object discovery and detection | open |
| [HUJI EgoSeg](https://www.vision.huji.ac.il/egoseg/) | 2014-06 | project page | Long egocentric videos for temporal segmentation | Egocentric event segmentation | partial |
| [DogCentric](https://robotics.ait.kyushu-u.ac.jp/dog-centric-activity-dataset/) | 2014-01 | project page | Dog-mounted first-person activity videos | Animal egocentric activity recognition | open |
| [JPL First-Person Interaction](https://ieeexplore.ieee.org/document/6909626) | 2013-01 | IEEE | First-person videos of people interacting with a humanoid observer | Human interaction recognition from first person | partial |
| [First-Person Social Interactions](http://ai.stanford.edu/~alireza/publication/CVPR12.pdf) | 2012-06 | CVPR 2012 | Day-long head-mounted video of 8 subjects at a theme park, annotated for social interactions, roles, attention, and turn-taking | First egocentric social-interaction dataset | open |
| [ADL Dataset](https://www.csc.kth.se/cvap/actions/) | 2012-06 | project page | Unscripted daily activity recordings with activity/object/hand annotations in classic literature | Daily living action recognition and object interaction | partial |
| [UT Ego](http://vision.cs.utexas.edu/projects/egocentric/) | 2012-06 | project page | Long daily egocentric videos in classic summarization work | Temporal segmentation and summarization | partial |
| [CMU-MMAC](http://kitchen.cs.cmu.edu/) | 2009-06 | CMU tech report 2009 | Multimodal kitchen-activity database: head-mounted egocentric video plus body IMUs, motion capture, and audio for 43 subjects cooking 5 recipes | One of the first egocentric activity datasets | open |

### Project Aria, AR/VR, and 3D Scene Resources

AR-glasses and headset data with gaze, SLAM, and digital-twin annotations for scene-level perception.

| Resource | Released | Venue | Scale / signal | Best for | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [Ego6D Nymeria Features](https://huggingface.co/datasets/po03087/ego6d_rag) | 2026-07 | Hugging Face | Public Nymeria-derived 3D scene voxels, 20 Hz head 6-DoF windows over 149 scenes, and world-frame SMPL body pose over 148 scenes; terms are research-only and incomplete | Joint 3D scene, localization, and body-pose experiments | partial |
| [HeadRoom](https://arxiv.org/abs/2607.08083) | 2026-07 | arXiv | Edge smart-glasses pipeline estimates visual and auditory channel availability from egocentric video/audio; a 25-participant study tests adaptive notification routing | Perceptual-load-aware wearable assistance | watch |
| [Future-Privileged Causal Ego Gaze](https://arxiv.org/abs/2607.01437) | 2026-07 | arXiv | Causal egocentric gaze-estimation study showing future-aware training improves online models on EGTEA Gaze+ and Ego4D | Real-time gaze modeling for AR/wearables | watch |
| [AmbientEye](https://arxiv.org/abs/2606.03774) | 2026-06 | arXiv | Passive-IR smart-glasses pupil-segmentation dataset for natural ambient illumination without active IR lighting | Energy-efficient eye tracking for all-day AR | watch |
| [Single-View Mesh Rotation Stress Test](https://arxiv.org/abs/2606.22987) | 2026-06 | arXiv | Controlled camera-rotation stress test for single-view mesh reconstruction on Aria Digital Twin and Franka wrist-camera sequences | Robust 3D reconstruction under ego/wrist camera motion | watch |
| [EPIC Efficient Egocentric Perception](https://arxiv.org/abs/2606.15859) | 2026-06 | arXiv | Smart-AR-glasses perception framework using gaze, pose, and inertial signals to reduce high-resolution egocentric memory and energy cost | Efficient always-on AR perception | watch |
| [EgoTraj](https://github.com/yehiahmad/EgoTraj) | 2026-05 | arXiv | 75 Meta Quest Pro navigation sequences with RGB, head pose, gaze, scene labels | Egocentric human trajectory prediction and assistive navigation | open |
| [RoSHI](https://arxiv.org/abs/2604.07331) | 2026-04 | arXiv | Wearable suit fusing sparse IMUs with Project Aria to estimate global 3D pose and body shape for in-the-wild human data | Robot-oriented human data capture | watch |
| [GIST](https://arxiv.org/abs/2604.15495) | 2026-04 | arXiv | Semantic-topology pipeline converting mobile point clouds into lightweight maps for search, localization, zone classification, and egocentric routing instructions | Assistive navigation in cluttered real spaces | watch |
| [VueBuds](https://arxiv.org/abs/2603.29095) | 2026-03 | arXiv | Camera-integrated wireless earbuds streaming low-power binocular views to on-device VLMs | Earbud-scale wearable visual intelligence | watch |
| [Pandora Articulated 3D Scene Graphs](https://arxiv.org/abs/2603.28732) | 2026-03 | BMVC 2025 | Recovers articulated 3D scene graphs from Project Aria egocentric exploration for robot mapping | Articulation-aware scene graphs | watch |
| [EgoPoseVR](https://huggingface.co/datasets/AplusX/EgoPoseVR) | 2026-02 | IEEE VR 2026 / IEEE TVCG | Open 388 GB synthetic RGB-D/HMD corpus with 18,235 motion clips, seven VR scenes, SMPL body parameters, and pose labels | Sensor-free full-body VR pose estimation | open |
| [ARGaze](https://arxiv.org/abs/2602.05132) | 2026-02 | arXiv | Autoregressive transformer for causal online gaze estimation from first-person video and bounded recent gaze context | Streaming gaze estimation for AR/wearables | watch |
| [EgoCampus](https://arxiv.org/abs/2512.07668) | 2025-12 | arXiv | Egocentric pedestrian eye-gaze dataset and model over campus walking routes with synchronized first-person video and gaze | Pedestrian gaze and trajectory prediction | watch |
| [Eyes on Target](https://arxiv.org/abs/2511.01237) | 2025-11 | RAAI 2025 | Depth-aware gaze-guided object detection for egocentric video | Gaze-aware object perception | watch |
| [egoEMOTION](https://arxiv.org/abs/2510.22129) | 2025-10 | NeurIPS 2025 | 50+ hours from 43 participants with Project Aria video, gaze, PPG, IMU, emotion, and personality labels | Affect and personality from wearable capture | watch |
| [Aria Gen 2 Pilot Dataset](https://www.projectaria.com/datasets/) | 2025-10 | arXiv | Incremental multimodal daily-activity release captured with Aria Gen 2 glasses across cleaning, cooking, eating, playing, and outdoor walking | Aria Gen 2 wearable sensing | open |
| [LookOut / Aria Navigation Dataset](https://arxiv.org/abs/2508.14466) | 2025-08 | ICCV 2025 | 4 hours of Project Aria real-world navigation recordings for future 6D head-pose trajectory prediction | Humanoid and assistive egocentric navigation | watch |
| [Aria STDR](https://arxiv.org/abs/2507.16330) | 2025-07 | arXiv | Project Aria egocentric scene-text dataset studying lighting, distance, resolution, and gaze-guided OCR | Scene text recognition under wearable capture | watch |
| [Photoreal Scene Reconstruction from an Egocentric Device](https://www.projectaria.com/photoreal-reconstruction/) | 2025-06 | SIGGRAPH 2025 | Project Aria egocentric-device reconstruction study improving pose and exposure treatment for pixel-accurate photoreal HDR scene reconstruction | Photoreal AR scene reconstruction | watch |
| [Egocentric Event-Based Ping Pong](https://arxiv.org/abs/2506.07860) | 2025-06 | CVPRW 2025 | Event-camera first-person table-tennis system and dataset for high-speed ball trajectory prediction under low latency and motion blur | Event-based wearable sports perception | watch |
| [Reading in the Wild](https://www.projectaria.com/datasets/reading-in-the-wild/) | 2025-05 | NeurIPS 2025 | 100 hours of Project Aria reading/non-reading video with RGB, gaze, head pose, and reading-type labels | Reading recognition for always-on smart glasses | watch |
| [Digital Twin Catalog / DTC](https://www.projectaria.com/datasets/dtc/) | 2025-04 | CVPR 2025 | 2,000 scanned objects with DSLR and egocentric AR-glasses image sequences | Digital-twin object reconstruction and evaluation | open |
| [Head+Cane Camera Navigation](https://arxiv.org/abs/2504.19345) | 2025-04 | arXiv | Synchronized head- and cane-mounted camera comparison for blind last-mile navigation, SLAM, and 3D reconstruction across five real environments | Hybrid wearable/cane sensing for assistive navigation | watch |
| [egoPPG](https://arxiv.org/abs/2502.20879) | 2025-02 | ICCV 2025 | Heart-rate estimation from eye-tracking cameras in egocentric systems to add physiological-state awareness to downstream wearer-behavior tasks | Physiology-aware egocentric perception | watch |
| [HEADS-UP](https://arxiv.org/abs/2409.20324) | 2024-09 | arXiv | Head-mounted egocentric dataset for pedestrian trajectory prediction and collision-risk assessment in blind-assistance systems | Trajectory prediction for blind assistance | watch |
| [Smart-Glasses Engagement Prediction](https://arxiv.org/abs/2409.09135) | 2024-09 | arXiv | 34-participant smart-glasses dyadic-conversation dataset with self-reported engagement ratings and LLM multimodal-transcript fusion | Social interaction and engagement reasoning from wearable capture | watch |
| [Nymeria](https://www.projectaria.com/datasets/nymeria/) | 2024-06 | ECCV 2024 | 300 hours, 264 participants, 50 locations, Aria, motion, language, observer view | Egocentric motion, language grounding, body tracking, daily activity | open |
| [Aria Everyday Activities / AEA](https://www.projectaria.com/datasets/aea/) | 2024-02 | arXiv | 143 daily activity sequences across five indoor locations with trajectories, point clouds, gaze, speech | Everyday AR perception, scene reconstruction, prompted segmentation | open |
| [SANPO](https://arxiv.org/abs/2309.12172) | 2023-09 | WACV 2025 | Scene understanding, accessibility, and human navigation data for egocentric navigation and spatial assistance | Navigation and assistive scene understanding | watch |
| [Project Aria Datasets](https://www.projectaria.com/datasets/) | 2023-08 | arXiv | Official portal for Aria-based datasets and tooling | AR glasses, wearable sensing, scene reconstruction, gaze, SLAM | open |
| [Aria Digital Twin / ADT](https://www.projectaria.com/datasets/adt/) | 2023-06 | arXiv | 200 real-world activity sequences, raw Aria streams, 6DoF poses, object poses, depth, segmentation, synthetic renderings | Egocentric 3D machine perception and digital-twin evaluation | open |

## Benchmarks and Derived Annotations

Evaluation suites and label sets built on top of the raw datasets above.

| Benchmark | Released | Venue | Built on | Tasks | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [VIABench](https://github.com/MCG-NJU/VIABench) | 2026-07 | arXiv | First-person videos recorded or shared by blind and visually impaired people | Proactive navigation reminders, assistive VideoQA, and vision-guided interaction in streaming and offline settings | watch |
| [EgoProceVQA](https://z1oong.github.io/EgoProceVQA/) | 2026-07 | arXiv | 1,272 clips from CaptainCook4D, EPIC-Tent, Assembly101, and EgoOops | 3,600 QA pairs over 31 procedures and six key-step question types, plus EgoProceGen and EgoProceAgent | watch |
| [EgoPolice](https://arxiv.org/abs/2607.06468) | 2026-07 | arXiv | Public police body-worn camera footage | Second-by-second high-stakes action labels, action classification, and multiple-choice QA over egocentric police-civilian interactions | watch |
| [S-EMBER](https://arxiv.org/abs/2607.02689) | 2026-07 | arXiv | Ray-Ban Meta smart-glasses video | 3,141 videos, 388 hours, and 9,448 QA pairs for streaming episodic-memory retrieval with temporal evidence | watch |
| [R3D-Bench / R3D](https://arxiv.org/abs/2607.02921) | 2026-07 | arXiv | Aria Digital Twin | 3,033 quantitative 3D spatial-reasoning questions over 57 posed egocentric RGB-D video sequences plus a tool-calling baseline | watch |
| [EgoInertia-MI](https://arxiv.org/abs/2607.03934) | 2026-07 | arXiv | Synchronized egocentric video and wearable IMU | Motor-impairment assessment across 19 simulated upper- and lower-body activities and severity levels | watch |
| [LongEgoRefer](https://github.com/shunya-kato/LongEgoRefer) | 2026-07 | ECCV 2026 | Ego4D | 1,498 long-form video referring expressions with average 45-minute videos, sparse object occurrences, and spatio-temporal grounding | open |
| [SG-Ego / GLEN](https://francescapistilli.github.io/GLEN) | 2026-07 | arXiv | Ego4D | Spatio-temporal scene-graph annotations, graph-text/action alignment, and activity-driven graph-edit forecasting | watch |
| [NormAct](https://arxiv.org/abs/2606.27826) | 2026-06 | arXiv | Egocentric embodied-planning scenes | Hidden social-norm compliance, goal achievement, and task-success evaluation for embodied planners | watch |
| [BinaryTracking / GangnamLoop](https://github.com/ndb796/BinaryTracking) | 2026-06 | arXiv | Long egocentric robot routes | Spatial QA, metric coordinate retrieval, and navigation with an open BinTrack implementation | open |
| [UMI-Bench 1.0](https://arxiv.org/abs/2606.10382) | 2026-06 | arXiv | UMI-style tabletop manipulation | Local-first real-robot benchmark protocol for UMI policy deployment and task-factor analysis | watch |
| [EgoSAT](https://arxiv.org/abs/2606.24422) | 2026-06 | arXiv | Streaming first-person interaction clips | Egocentric long-horizon interaction QA and decision-level alignment in real-time video streams | watch |
| [NetraLink Assistive AI](https://arxiv.org/abs/2606.25084) | 2026-06 | arXiv | Head-mounted GoPro assistive scenarios | Object recognition, scene-text QA, and multilingual visual reading for wearable MLLMs | watch |
| [VEGA / VEGA-Bench](https://arxiv.org/abs/2606.18426) | 2026-06 | arXiv | In-the-wild egocentric navigation video with monocular geometry | 250K scenes and about 5M navigation goals for obstacle-aware VLA evaluation | watch |
| [UCS-Bench / DirectMe](https://github.com/cocowy1/UCS-Bench) | 2026-06 | ICML 2026 | 170+ hours of egocentric observations | 8.1K+ timestamped questions for continual spatial intelligence and streaming spatial memory | open |
| [StreamMemBench](https://arxiv.org/abs/2606.14571) | 2026-06 | arXiv | EgoLife egocentric streams | Initial/follow-up task sequences testing evidence recall, feedback incorporation, and future assistance | watch |
| [V-RAGBench / CARVE](https://arxiv.org/abs/2606.13141) | 2026-06 | arXiv | Long egocentric video chunks | Decoupled retrieval and generation evaluation for VideoRAG over evidence chunks | watch |
| [VL-MemKnG / WalkieKnowledgeT+](https://arxiv.org/abs/2606.17183) | 2026-06 | arXiv | Long egocentric navigation trajectories | Temporally distributed spatial-memory QA with hybrid graph and segment retrieval | watch |
| [OVO-S-Bench](https://arxiv.org/abs/2606.03890) | 2026-06 | arXiv | Continuous egocentric streams | Hierarchical spatial intelligence across perception, tracking, simulation, and allocentric mapping | watch |
| [SpatialWorld](https://arxiv.org/abs/2606.09669) | 2026-06 | arXiv | Interactive real-world spatial tasks under vision-only partial observability | Egocentric evidence gathering and spatial-agent evaluation | watch |
| [HumanoidArena](https://arxiv.org/abs/2606.17833) | 2026-06 | arXiv | Egocentric humanoid-control tasks | Hierarchical whole-body learning from egocentric perception | watch |
| [Plan, Watch, Recover / EgoProactive](https://arxiv.org/abs/2606.04970) | 2026-06 | arXiv | EgoProactive plus Pro2Bench over five established benchmarks | Proactive procedural assistance, out-of-plan detection, and recovery guidance | watch |
| [Wearable AI Dataset](https://huggingface.co/datasets/facebook/wearable-ai) | 2026-05 | ECCV 2026 Workshop | 2,100 gated head-mounted videos split evenly across EgoConv, EgoLongQA, and EgoProactive | Conversational QA, long-video QA, and streaming proactive-assistant evaluation with a bundled starter kit | request |
| [PCSR-Bench](https://arxiv.org/abs/2605.12413) | 2026-05 | arXiv | 2,600 omnidirectional indoor images | 84,373 perspective-conditioned spatial-reasoning questions, including egocentric rotation and limited-FOV visibility | watch |
| [EgoBench](https://arxiv.org/abs/2605.27820) | 2026-05 | arXiv | Egocentric video tasks | Interactive multimodal tool-using agents | watch |
| [Minerva-Ego](https://github.com/google-deepmind/neptune) | 2026-05 | arXiv | Egocentric videos with dense reasoning traces and object masks | Multi-step egocentric visual reasoning | open |
| [EgoPro-Bench](https://arxiv.org/abs/2605.07299) | 2026-05 | arXiv | Personalized egocentric video streams | Proactive interaction, intent timing, and personalized assistance | watch |
| [EgoBabyVLM](https://arxiv.org/abs/2605.19130) | 2026-05 | arXiv | Naturalistic infant and adult egocentric videos | Developmental cross-modal VLM evaluation | watch |
| [Beyond Motion Primitives](https://arxiv.org/abs/2605.27464) | 2026-05 | arXiv | Ego4D | Head-mounted IMU benchmark for behavioral activity recognition on smart glasses | watch |
| [Ego-METAS](https://maria-sanvil.github.io/Ego-METAS-website/) | 2026-05 | arXiv | EgoExo4D, CMU-MMAC, CaptainCook4D | Online multimodal, energy-aware temporal action segmentation across RGB, audio, gaze, IMU, and monochrome streams | watch |
| [EgoProx](https://arxiv.org/abs/2605.24456) | 2026-05 | CVPR 2026 | Egocentric 3D proximity QA | Intention, exploration, exploitation, and chain-of-actions spatial reasoning for MLLMs | watch |
| [BARISTA](https://arxiv.org/abs/2605.12074) | 2026-05 | arXiv | 185 coffee-preparation videos | Scene graphs, masks, tracks, boxes, hand-object interactions, activities, and process-step reasoning | watch |
| [TAVIS](https://arxiv.org/abs/2605.07943) | 2026-05 | arXiv | IsaacLab active-vision imitation tasks | Headcam vs fixed-cam evaluation, wrist/head active vision, and anticipatory-gaze metric | watch |
| [MM-Conv](https://arxiv.org/abs/2605.21796) | 2026-05 | arXiv | 6.7 hours of egocentric VR interaction | Referential communication with speech, motion, gaze, and 3D scenes | watch |
| [EgoExoMem](https://arxiv.org/abs/2605.18734) | 2026-05 | arXiv | Synchronized ego-exo videos | Cross-view memory QA | watch |
| [EgoMemReason](https://arxiv.org/abs/2605.09874) | 2026-05 | arXiv | Week-long egocentric video | Entity, event, and behavior memory reasoning | watch |
| [Personal Visual Context Learning / Personal-VCL-Bench](https://vision.cs.utexas.edu/projects/PersonalVCL/) | 2026-05 | arXiv | Continuous smart-glasses streams | Prompt-time wearer-specific visual-context learning for personalized LMM assistants | watch |
| [GazeMind / CogLoad-Bench](https://arxiv.org/abs/2605.05790) | 2026-05 | arXiv | Smart-glasses gaze and cognitive-load annotations | Gaze-guided LLM agent evaluation for personalized cognitive-load assessment | watch |
| [VIGIL](https://arxiv.org/abs/2605.08747) | 2026-05 | arXiv | Egocentric RGB embodied-agent episodes | Terminal-commitment scoring that separates world completion from success reporting | watch |
| [Ego2World](https://arxiv.org/abs/2605.13335) | 2026-05 | arXiv | HD-EPIC | Executable symbolic worlds from egocentric cooking video for belief-state planning | watch |
| [EgoLink 2026](https://ego-link.github.io/challenge2026/) | 2026-04 | ACM MM 2026 | E3 plus public challenge videos and labels | Egocentric social reasoning, emotion/intent/causality QA, and interactive tool-using agents | open |
| [SpaMEM](https://huggingface.co/datasets/mill-ct-liao/SpaMEM) | 2026-04 | arXiv | Procedural embodied environments | Dynamic spatial-memory updates from action-conditioned egocentric observations | watch |
| [WhissleAI Egocentric Activity Sample](https://huggingface.co/datasets/WhissleAI/egocentric-activity-sample) | 2026-04 | Hugging Face | 19 public first-person clips | Ego4D-style narrations, NLQ, moment annotations, FHO actions, metadata, and taxonomy for prototyping | open |
| [EgoPoint-Bench](https://arxiv.org/abs/2604.21461) | 2026-04 | ACL 2026 | Simulated and real egocentric pointing samples | 11K+ QA items for referential reasoning and pointing-grounded object disambiguation | watch |
| [PIE-V](https://arxiv.org/abs/2604.15134) | 2026-04 | arXiv | Ego-Exo4D-style procedural scenarios | Mistake-aware procedural-video evaluation with recovery corrections | watch |
| [ReFocus / EM-QnF](https://nsubedi11.github.io/refocus) | 2026-04 | CVPR 2026 | Egocentric episodic-memory NLQ with user feedback | Interactive feedback refinement for ambiguous memory queries | watch |
| [EgoEsportsQA](https://arxiv.org/abs/2604.12320) | 2026-04 | arXiv | First-person esports video | Fast virtual first-person perception and reasoning | watch |
| [Audio Hallucination in Egocentric Video](https://arxiv.org/abs/2604.23860) | 2026-04 | ICASSP 2026 | Egocentric audio-visual video | 300 videos / 1,000 sound-focused questions probing audio hallucination in AV-LLMs | watch |
| [EXPLORE-Bench](https://arxiv.org/abs/2603.09731) | 2026-03 | arXiv | Real first-person videos | Egocentric long-horizon scene-state prediction and reasoning | watch |
| [LifeEval](https://arxiv.org/abs/2603.00490) | 2026-03 | arXiv | Continuous first-person streams | Real-time task-oriented human-AI collaboration in daily life | watch |
| [SAVA-X](https://arxiv.org/abs/2603.12764) | 2026-03 | CVPR 2026 | EgoMe and asynchronous ego/exo video pairs | Ego-to-exo imitation-error detection | watch |
| [HOI-Synth](https://fpv-iplab.github.io/HOI-Synth/) | 2026-03 | arXiv | VISOR, EgoHOS, and ENIGMA-51 with synthetic hand-object interaction annotations | Synthetic HOI detection and benchmarking under synthetic augmentation | watch |
| [MA-EgoQA](https://ma-egoqa.github.io/) | 2026-03 | arXiv | Multi-agent egocentric streams | Social, task coordination, theory-of-mind, temporal, environment QA | open |
| [Ropedia Xperience-10M Task Suite](https://huggingface.co/spaces/cy0307/ropedia-xperience-10m-task-suite) | 2026-03 | Hugging Face | Xperience-10M Sample | 12 embodied-AI task contracts, sample baselines, and evaluation protocol | open |
| [Kriya-Egocentric-100K](https://huggingface.co/datasets/ankk98/kriya-egocentric-100k) | 2026-03 | Hugging Face | Egocentric-100K preview subset | Action100M-style hierarchical temporal action trees and LLM-generated action descriptions | open |
| [EgoAVU](https://github.com/facebookresearch/EgoAVU) | 2026-02 | CVPR 2026 | Egocentric audio-visual narrations | EgoAVU-Instruct (3M QAs) and EgoAVU-Bench (3K QAs) for audio-visual understanding (CVPR 2026 highlight) | open |
| [SAW-Bench](https://huggingface.co/datasets/ucsbai/SAW-Bench) | 2026-02 | ICML 2026 | Ray-Ban Meta smart-glasses video | Observer-centric situated awareness and physically grounded spatial reasoning | open |
| [Ego4OOD](https://arxiv.org/abs/2601.17056) | 2026-01 | arXiv | Egocentric video action recognition | Covariate-shift benchmark for egocentric domain generalization | watch |
| [Sanpo-D](https://arxiv.org/abs/2601.18100) | 2026-01 | arXiv | Sanpo egocentric navigation video | Spatial-conditioned reasoning over long first-person videos with fine-grained spatial re-annotation | watch |
| [Egocentric-100K Evaluation](https://huggingface.co/datasets/builddotai/Egocentric-100K-Evaluation) | 2025-12 | Hugging Face | Egocentric-100K, Ego4D, EPIC-KITCHENS-100 | 30K-frame comparison of hand visibility and active manipulation density | open |
| [Know-Show](https://github.com/LUNAProject22/Know-Show) | 2025-12 | arXiv | Charades, Action Genome, Ego4D | Spatio-temporal grounded reasoning with joint answer and evidence localization | watch |
| [Egocentric-10K Evaluation](https://huggingface.co/datasets/builddotai/Egocentric-10K-Evaluation) | 2025-11 | Hugging Face | Egocentric-10K, Ego4D, EPIC-KITCHENS-100 | 30K-frame comparison of hand visibility and active manipulation density with published labeling prompts | open |
| [CS3 Collision Sound Source Segmentation](https://krantiparida.github.io/projects/cs3.html) | 2025-11 | arXiv | EPIC-CS3 and Ego4D-CS3 | Audio-conditioned segmentation of objects responsible for collision sounds in egocentric video | watch |
| [EgoExo-Con](https://arxiv.org/abs/2510.26113) | 2025-10 | arXiv | Synchronized ego-exo videos | View-invariant temporal verification and grounding; introduces View-GRPO | watch |
| [LaMAria](https://lamaria.ethz.ch) | 2025-09 | ICCV 2025 | Glasses-like wearable capture | City-scale egocentric visual-inertial SLAM with centimeter ground truth | open |
| [EgoIllusion](https://arxiv.org/abs/2508.12687) | 2025-08 | EMNLP 2025 | Egocentric video | Hallucination benchmark probing fabricated objects, actions, and sounds in multimodal models | watch |
| [EgoCross](https://github.com/MyUniverse0726/EgoCross) | 2025-08 | AAAI 2026 | Cross-domain ego clips | Surgery, industry, extreme sports, animal-perspective QA | watch |
| [EgoExoBench](https://arxiv.org/abs/2507.18342) | 2025-07 | arXiv | Public ego-exo video datasets | 7,300+ QA pairs over semantic alignment, viewpoint association, and temporal reasoning | watch |
| [EASG-Bench](https://github.com/fpv-iplab/EASG-bench) | 2025-06 | ICCV 2025 Workshop | Egocentric action scene graphs | Relation and temporal QA | open |
| [HD-EPIC VQA Challenge](https://arxiv.org/abs/2502.04144) | 2025-02 | CVPR 2025 | HD-EPIC | Recipe, ingredient, nutrition, fine-grained action, 3D perception, object motion, gaze | benchmark |
| [EFM3D](https://arxiv.org/abs/2406.10224) | 2024-06 | arXiv | Project Aria egocentric 3D data | 3D object detection and surface regression for egocentric foundation models | watch |
| [Ego4D-OSCA](https://arxiv.org/abs/2405.12789) | 2024-05 | arXiv | Ego4D | Object-state-change anticipation annotations and visual-language baseline for procedural video | watch |
| [EgoHOIBench / EgoNCE++](https://github.com/xuboshen/EgoNCEpp) | 2024-05 | ICLR 2025 | Multiple egocentric HOI sources | Open-vocabulary hand-object interaction understanding | open |
| [EgoPlan-Bench](https://github.com/ChenYi99/EgoPlan) | 2023-12 | IJCV | Egocentric planning tasks | Multimodal LLM planning over human-level egocentric scenarios | open |
| [Ego-Exo4D Benchmarks](https://ego-exo4d-data.org/) | 2023-11 | project page | Ego-Exo4D | Fine-grained activity, proficiency, cross-view translation, 3D pose, object correspondence | benchmark |
| [Egocentric Pedestrian Trajectory Benchmark](https://arxiv.org/abs/2310.10424) | 2023-10 | ICRA 2024 | Egocentric pedestrian video | Trajectory prediction with scale- and motion-aware evaluation | watch |
| [EPIC-Aff / Multi-label Affordance Mapping](https://arxiv.org/abs/2309.02120) | 2023-09 | ICCV 2023 | EPIC-KITCHENS | Metric, spatial, multi-label affordance annotations for interaction-grounded segmentation and navigation maps | benchmark |
| [RefEgo](https://github.com/shuheikurita/RefEgo) | 2023-08 | ICCV 2023 | Ego4D | 12K+ clips / 41 hours for first-person referring-expression comprehension and referred-object tracking | open |
| [EgoSchema](http://egoschema.github.io/) | 2023-08 | NeurIPS 2023 | Ego4D | Very-long-form multiple-choice video QA | open |
| [EgoAdapt 2023](https://arxiv.org/abs/2307.05784) | 2023-07 | arXiv | Ego4D | Real-world online adaptation benchmark over 50 user streams and 2,740 action labels | benchmark |
| [EPIC-Fields](https://epic-kitchens.github.io/epic-fields/) | 2023-06 | NeurIPS 2023 | EPIC-KITCHENS | 3D fields and scene-level spatial reasoning over kitchen video | open |
| [MMG-Ego4D](https://github.com/facebookresearch/MMG_Ego4D) | 2023-05 | CVPR 2023 | Ego4D | Missing-modality and cross-modal zero-shot generalization benchmark over video, audio, and IMU | benchmark |
| [Fine-Grained Affordance Annotation](https://arxiv.org/abs/2302.03292) | 2023-02 | WACV 2023 | Egocentric HOI videos | Fine-grained affordance labels for hand-object interaction | watch |
| [EPIC-Sounds](https://epic-kitchens.github.io/epic-sounds/) | 2023-02 | ICASSP 2023 | EPIC-KITCHENS | Audio event recognition in egocentric kitchen video | open |
| [VISOR](https://epic-kitchens.github.io/VISOR/) | 2022-09 | NeurIPS 2022 | EPIC-KITCHENS | Manual and dense masks, hand/object segmentation, active object relations | open |
| [EgoClip / EgoMCQ](https://github.com/showlab/EgoVLP) | 2022-06 | NeurIPS 2022 | Ego4D | 3.8M clip-text pairs and MCQ development benchmark for egocentric VLP | open |
| [AssistSR](https://arxiv.org/abs/2111.15050) | 2021-11 | EMNLP 2021 | Instructional daily-item video segments | Task-oriented question-driven video segment retrieval for personal assistants | watch |
| [Ego4D Benchmarks](https://ego4d-data.org/) | 2021-10 | project page | Ego4D | Natural Language Query, Moment Query, episodic memory, state change, long-term anticipation, social/audio, hand-object | benchmark |
| [TREK-150](https://machinelearning.uniud.it/datasets/trek150/) | 2021-08 | project page | EPIC-KITCHENS | Egocentric single-object tracking | open |
| [EPIC-KITCHENS Challenges](https://epic-kitchens.github.io/) | 2018-04 | project page | EPIC-KITCHENS / EPIC-KITCHENS-100 | Recognition, detection, anticipation, retrieval, domain adaptation | benchmark |

## Models, Tools, and Baselines

Open models, baselines, and loaders you can build on directly.

### Egocentric Foundation Models and Assistants

| Resource | Released | Venue | What it contributes | Link |
| :--- | :---: | :---: | :--- | :---: |
| Ego Scene Augmentation (ESA) | 2026-07 | arXiv | Explicit ego-element graph that fuses visual-foundation-model signals for spatially structured scene understanding and stronger indoor/outdoor EgoTextVQA | [GitHub](https://github.com/Chikit-WONG/spatialGraph) |
| Worldscape-MoE | 2026-07 | arXiv | MoE diffusion world model sharing dynamics across camera trajectories, robot actions, and egocentric hand-joint control; code and weights are announced but not yet released | [Project](https://worldscape-moe.com/) |
| UNIEGO | 2026-06 | arXiv | Unified egocentric encoder distilled from nine teachers spanning ego-exo views, RGB, depth, skeleton, and foundation-model representations | [Paper](https://arxiv.org/abs/2606.20559) |
| ActiveMimic | 2026-06 | arXiv | Egocentric human-video pretraining with active-perception signals for manipulation and VLA transfer | [Paper](https://arxiv.org/abs/2606.06194) |
| Wh0 | 2026-06 | arXiv | World-model framework that synthesizes realistic hand-object manipulation sequences to bootstrap scalable egocentric data and policy learning | [Paper](https://arxiv.org/abs/2606.22136) |
| VLESA | 2026-06 | arXiv | Goal-conditioned safety-assistance evaluation and baseline for monitoring human activities from egocentric video | [GitHub](https://github.com/HanjiangHu/VLESA) |
| Continual Child-View Learning | 2026-06 | arXiv | Chronological multimodal learning from a child's egocentric video and speech stream | [Paper](https://arxiv.org/abs/2606.05115) |
| Objects Before Words | 2026-06 | arXiv | Object-first language grounding from child-view egocentric video | [Paper](https://arxiv.org/abs/2606.12985) |
| Watch Remember Reason | 2026-06 | arXiv | Human-view long-video understanding framework for MLLM watching, memory, and reasoning | [Paper](https://arxiv.org/abs/2606.07433) |
| World Action Models | 2026-05 | arXiv | Survey and taxonomy linking VLA, world models, portable human demonstrations, simulation, and internet-scale egocentric video | [Paper](https://arxiv.org/abs/2605.12090) |
| Pro2Assist | 2026-05 | arXiv | Continuous step-aware proactive assistance framework with multimodal egocentric perception and AR-glasses evaluation | [Paper](https://arxiv.org/abs/2605.04227) |
| T-REN | 2026-04 | arXiv | Text-aligned region-token encoder that reduces long-video token counts and improves Ego4D video object localization | [GitHub](https://github.com/savya08/T-REN) |
| V-JEPA 2.1 | 2026-03 | arXiv | Dense self-supervised video representation model with strong Ego4D STA, EPIC-KITCHENS anticipation, and robot-grasping transfer results | [Paper](https://arxiv.org/abs/2603.14482) |
| EgoViT Object SSL | 2026-03 | CVPR 2026 | Self-supervised object representation learning from continuous, uncurated first-person video | [Paper](https://arxiv.org/abs/2603.13912) |
| RynnBrain | 2026-02 | arXiv | Open embodied foundation model family with variants for egocentric understanding, localization, physical reasoning, planning, navigation, and VLA | [Paper](https://arxiv.org/abs/2602.14979) |
| Central Vision SSL | 2026-02 | arXiv | Ego4D-derived gaze-centered crops and temporal-slowness SSL for object representation learning from human-like visual experience | [GitHub](https://github.com/t9s9/central-vision-ssl) |
| PhysBrain | 2025-12 | arXiv | Uses human egocentric data to bridge vision-language models toward physical intelligence and embodied control | [Paper](https://arxiv.org/abs/2512.16793) |
| EgoM2P | 2025-06 | ICCV 2025 | Egocentric multimodal multitask pretraining over RGB, depth, gaze, and camera pose | [Paper](https://arxiv.org/abs/2506.07886) |
| Exo2Ego / Ego-ExoClip | 2025-03 | AAAI 2026 | Transfers exocentric MLLM knowledge into egocentric video understanding with 1.1M synchronized ego-exo clip-text pairs and EgoIT instruction tuning | [Paper](https://arxiv.org/abs/2503.09143) |
| GazeLLM | 2025-03 | Augmented Humans 2025 | Uses gaze-focused first-person regions to reduce MLLM video processing while preserving task comprehension | [Paper](https://arxiv.org/abs/2504.00221) |
| EgoHOD | 2025-03 | ICLR 2025 | Fine-grained hand-object-dynamics pretraining for egocentric representations (ICLR 2025) | [GitHub](https://github.com/InternRobotics/EgoHOD) |
| EgoSpeak | 2025-02 | NAACL 2025 Findings | Real-time speech-initiation prediction for egocentric conversational agents over first-person RGB streaming video | [Paper](https://arxiv.org/abs/2502.14892) |
| PRVQL | 2025-02 | ICCV 2025 | Progressive knowledge-guided refinement for egocentric visual query localization under appearance change and clutter | [Paper](https://arxiv.org/abs/2502.07707) |
| Human Gaze Object-Centered Learning | 2025-01 | arXiv | Gaze-inspired central visual amplification for object-centered representation learning from Ego4D-scale egocentric experience | [Paper](https://arxiv.org/abs/2501.02966) |
| GEM Ego-Vision World Model | 2024-12 | CVPR 2025 | Generalizable ego-vision world model trained on 4,000+ hours for RGB/depth generation and ego-trajectory control | [Paper](https://arxiv.org/abs/2412.11198) |
| Vinci | 2024-12 | IMWUT 2025 | Real-time, always-on egocentric assistant with historical-context QA, planning, and visual demos | [GitHub](https://github.com/OpenGVLab/vinci) |
| Ego-VPA | 2024-07 | WACV 2025 | Parameter-efficient adaptation for egocentric video-language foundation models with sparse basis prompts | [Paper](https://arxiv.org/abs/2407.19520) |
| EgoVideo | 2024-06 | CVPR 2024 | Egocentric video foundation model with slow-fast adaptation; multi-track Ego4D / EPIC challenge winner | [GitHub](https://github.com/OpenGVLab/EgoVideo) |
| AlanaVLM | 2024-06 | EMNLP 2024 | Embodied-AI foundation model for egocentric video understanding | [Paper](https://arxiv.org/abs/2406.13807) |
| Missing Modality Token / MMT | 2024-01 | CVPRW 2025 | Missing-modality modeling for multimodal egocentric action recognition and moment localization on Ego4D, EPIC-KITCHENS, and EPIC-Sounds | [Paper](https://arxiv.org/abs/2401.11470) |
| EgoDistill | 2023-01 | tech report | Distills heavy egocentric clip features into efficient models using head-motion signals | [Project](https://vision.cs.utexas.edu/projects/egodistill/) |
| EgoT2 / Egocentric Video Task Translation | 2022-12 | CVPR 2023 Highlight | Task-translation framework that transfers supervision between egocentric video tasks | [Project](https://vision.cs.utexas.edu/projects/egot2/) |

### Video-Language and Long-Video Models

| Resource | Released | Venue | What it contributes | Link |
| :--- | :---: | :---: | :--- | :---: |
| VideoTreeSearch | 2026-07 | arXiv | Self-correcting temporal-tree agent for grounded long-video QA, with MIT-licensed inference/SFT/RL code, an 8B checkpoint, and released Haystack-Ego4D trajectories/evaluation data | [GitHub](https://github.com/CeeZh/VTS) |
| OmniView-Space | 2026-07 | arXiv | Tool-guided egocentric spatial reasoning with query-aligned visual cognitive maps, textual spatial graphs, and ego-frame rewards | [Paper](https://arxiv.org/abs/2607.00881) |
| CGGS | 2026-07 | arXiv | Text-to-3D ego-centric scene generation with consistency-augmented 2D priors, point-track/depth layout decoration, and geometric Gaussian refinement | [Paper](https://arxiv.org/abs/2607.03819) |
| Egocentric Scene Graphs / EgoSG | 2026-06 | arXiv | Converts long-form egocentric videos into temporally grounded scene graphs for compact HD-EPIC VQA reasoning | [Paper](https://arxiv.org/abs/2606.25842) |
| Low-Latency Doubly-Correct VLMs | 2026-06 | arXiv | Rationale-informed pruning for efficient egocentric VLMs while preserving both answer correctness and evidence grounding | [Paper](https://arxiv.org/abs/2606.25160) |
| DR-MV3D | 2026-06 | arXiv | Dense-reward multi-view 3D VQA pipeline with global-map construction, view planning, and egocentric grounding | [Paper](https://arxiv.org/abs/2606.23557) |
| Temporal Action Graphs for Ego VLMs | 2026-06 | arXiv | Converts egocentric videos into narratives and temporal action graphs for in-context action recognition with open-weight VLMs | [Paper](https://arxiv.org/abs/2606.15417) |
| ReRe Cross-View Revisiting | 2026-06 | ICML 2026 | Training-free spatial reasoning that revisits egocentric conclusions through synthesized complementary novel-view videos | [Project](https://zhenjiemao.github.io/ReRe/) |
| CASTLE KG Retrieval | 2026-06 | CVPR 2026 EgoVis | Agentic long-context video understanding with video knowledge graphs and hierarchical retrieval for the CASTLE challenge | [Paper](https://arxiv.org/abs/2606.01933) |
| AnchorWorld | 2026-06 | arXiv | Embodied egocentric world simulation with view-based evolution customization | [Paper](https://arxiv.org/abs/2606.07326) |
| Understanding-Enhanced Ego Mistake Detection | 2026-06 | arXiv | Small/large-model collaboration for detecting incorrect procedural actions in egocentric video, with a Qwen3-VL Embedding reasoning branch | [Paper](https://arxiv.org/abs/2606.02120) |
| FlexLAM | 2026-06 | arXiv | Variable-length latent actions for action-free video interfaces, improving scarce-label alignment and Ego4D transition reconstruction | [Paper](https://arxiv.org/abs/2606.19408) |
| VisualClaw | 2026-06 | arXiv | Real-time personalized multimodal agent with streaming-frame filtering, skill evolution, and VisualClawArena workspace evaluation | [Paper](https://arxiv.org/abs/2606.16295) |
| FlowNar | 2026-05 | ICML 2026 | Scalable streaming narration with bounded visual memory, evaluated on long-form Ego4D, Ego-Exo4D, and EPIC-KITCHENS-100-style narration | [GitHub](https://github.com/zeyun-zhong/FlowNar) |
| E3C Video Generation | 2026-05 | arXiv | Controllable egocentric video diffusion with 3D environmental memory and ego-exo human-pose control | [Project](https://e3c-videogen.github.io/) |
| CASTLE2026 Team WDL | 2026-05 | CVPR 2026 EgoVis | Evidence-aware multimodal reasoning pipeline for long-form CASTLE egocentric QA | [Paper](https://arxiv.org/abs/2606.00712) |
| CuriosAI CASTLE | 2026-05 | CVPR 2026 EgoVis | Search-verify-answer CASTLE challenge pipeline using timelines, transcripts, and VLM captions | [Paper](https://arxiv.org/abs/2605.27800) |
| MARS CASTLE | 2026-05 | CVPR 2026 EgoVis | Multimodal agentic reasoning with source selection for CASTLE challenge QA | [Paper](https://arxiv.org/abs/2605.18176) |
| OSGNet + MLLM Reranking | 2026-05 | CVPR 2026 EgoVis | Champion Ego4D Episodic Memory Challenge solution for NLQ and GoalStep using MLLM reranking over OSGNet candidates | [GitHub](https://github.com/iLearn-Lab/CVPR25-OSGNet) |
| OmniEgo-R2 | 2026-05 | CVPR 2026 EgoVis | Routed reasoning framework for EgoCross; second place in both Source-Limited and Open-Source tracks | [GitHub](https://github.com/Lee-zixu/OmniEgo-R2) |
| Being-H0.7 | 2026-05 | arXiv | Latent world-action model from egocentric videos for future-aware reasoning and VLA policy learning | [Paper](https://arxiv.org/abs/2605.00078) |
| Reflective Dialogue EgoCross | 2026-05 | CVPR 2026 EgoVis | Inference-time Teacher/Solver reflective dialogue for EgoCross support-set adaptation without fine-tuning | [Paper](https://arxiv.org/abs/2605.27885) |
| EgoCross Domain-Wise Inference | 2026-05 | CVPR 2026 EgoVis | Nearly training-free source-limited inference strategy for EgoCross domain shift | [Paper](https://arxiv.org/abs/2606.00829) |
| HD-EPIC Semantic-Visual Evidence | 2026-05 | CVPR 2026 EgoVis | HD-EPIC VQA challenge solution separating semantic and visual evidence | [Paper](https://arxiv.org/abs/2605.29402) |
| HiERO-StepG | 2026-05 | CVPR 2026 EgoVis | Hierarchical activity-understanding solution for the Ego4D Step Grounding Challenge | [Paper](https://arxiv.org/abs/2605.31227) |
| TempRet | 2026-05 | CVPR 2026 EgoVis | Temporal enhancement and reranking for EPIC-KITCHENS-100 multi-instance retrieval | [Paper](https://arxiv.org/abs/2605.24470) |
| Trajectory-Conditioned Egocentric Prediction | 2026-05 | arXiv | Future ego-view prediction conditioned on camera trajectory to disambiguate action outcomes | [Paper](https://arxiv.org/abs/2605.20388) |
| EventPrune | 2026-05 | arXiv | Event-camera-guided visual-token pruning for efficient first-person dynamic spatial reasoning | [Paper](https://arxiv.org/abs/2605.19506) |
| SpatioRoute | 2026-05 | arXiv | Question-aware prompt routing for zero-shot egocentric spatial QA without fine-tuning or 3D input | [Paper](https://arxiv.org/abs/2605.18209) |
| MAGIC-Video | 2026-05 | arXiv | Multimodal memory graph plus narrative-chain retrieval for ultra-long egocentric video reasoning | [GitHub](https://github.com/lijiazheng0917/MAGIC-video) |
| SpaceMind++ | 2026-05 | arXiv | Builds allocentric cognitive maps from RGB video to support spatially consistent reasoning over fragmented egocentric observations | [Paper](https://arxiv.org/abs/2605.09449) |
| EgoSim | 2026-04 | arXiv | Closed-loop egocentric world simulator with 3D grounding and dynamic state updates for multi-stage interaction generation | [Paper](https://arxiv.org/abs/2604.01001) |
| World2VLM | 2026-04 | arXiv | Distills world-model imagination into VLMs for dynamic spatial reasoning under egocentric motion | [Paper](https://arxiv.org/abs/2604.26934) |
| EgoMotion | 2026-04 | arXiv | Hierarchical reasoning + diffusion for egocentric vision-language motion generation | [Paper](https://arxiv.org/abs/2604.19105) |
| Ego-InBetween | 2026-04 | CVPR 2026 | Generates object state transitions in ego-centric videos from action instructions | [Paper](https://arxiv.org/abs/2604.17749) |
| EgoTSR | 2026-04 | arXiv | Curriculum-based task-oriented egocentric spatiotemporal reasoning with a reported 46M-sample EgoTSR-Data training set | [Paper](https://arxiv.org/abs/2604.10517) |
| Syn2Seq Exo-to-Ego | 2026-04 | arXiv | Sequential exo-to-ego video generation from synchronized third-person views and camera poses | [Paper](https://arxiv.org/abs/2604.13793) |
| UniversalVTG | 2026-04 | arXiv | Lightweight cross-dataset foundation model for video temporal grounding | [Paper](https://arxiv.org/abs/2604.08522) |
| V-Nutri | 2026-04 | CVPR 2026 MetaFood Workshop | Dish-level nutrition estimation from egocentric cooking videos | [Paper](https://arxiv.org/abs/2604.11913) |
| LOME | 2026-03 | arXiv | Action-conditioned egocentric world model generating photorealistic human-object interactions from image, text, and per-frame actions | [Paper](https://arxiv.org/abs/2603.27449) |
| Temporal-Aware Ego VLM | 2026-03 | arXiv | Training scheme that incentivizes temporal awareness in egocentric video-understanding models | [Paper](https://arxiv.org/abs/2603.27184) |
| EgoForge | 2026-03 | arXiv | Goal-directed egocentric world simulator that rolls out first-person video from a single image and a high-level instruction | [Paper](https://arxiv.org/abs/2603.20169) |
| EgoReasoner | 2026-03 | arXiv | Task-adaptive structured thinking for egocentric 4D spatial and object reasoning | [Paper](https://arxiv.org/abs/2603.06561) |
| Gaze-Regularized VLMs | 2026-03 | arXiv | Gaze-conditioned VLM training for ego-centric behavior understanding | [Paper](https://arxiv.org/abs/2603.23190) |
| Recurrent Reasoning VLM | 2026-03 | CVPR 2026 | Recurrent VLM reasoning for long-horizon embodied task-progress estimation | [Paper](https://arxiv.org/abs/2603.17312) |
| Ropedia Xperience-10M Task Baselines | 2026-03 | Hugging Face | Public Xperience-10M sample task definitions, baselines, metrics, and scale-up evaluation notes | [Hugging Face](https://huggingface.co/cy0307/ropedia-xperience-10m-task-baselines) |
| EgoMAS | 2026-03 | arXiv | Shared-memory baseline for multi-agent egocentric video QA | [Project](https://ma-egoqa.github.io/) |
| DreamDojo | 2026-02 | ICML 2026 | Generalist robot world model pretrained on 44K hours of egocentric human video with continuous latent actions, distilled to real time | [GitHub](https://github.com/NVIDIA/DreamDojo) |
| Hand2World | 2026-02 | arXiv | Autoregressive egocentric world model generating first-person interaction video from free-space hand gestures | [Paper](https://arxiv.org/abs/2602.09600) |
| Edge Episodic Memory QA | 2026-02 | VISAPP 2026 | On-device dual-thread MLLM for real-time egocentric episodic-memory QA (QAEgo4D-Closed) on the edge | [Paper](https://arxiv.org/abs/2602.22455) |
| EgoGraph | 2026-02 | arXiv | Training-free temporal knowledge graph for ultra-long egocentric video understanding | [Paper](https://arxiv.org/abs/2602.23709) |
| EGAgent | 2026-01 | arXiv | Entity-scene-graph agent for very-long egocentric video understanding over all-day wearable streams | [GitHub](https://github.com/facebookresearch/egagent) |
| Walk through Paintings | 2026-01 | arXiv | Egocentric world models from internet priors that generate first-person scene walkthroughs | [Paper](https://arxiv.org/abs/2601.15284) |
| Event-VStream | 2026-01 | arXiv | Event-driven long-video stream understanding for real-time video-language systems | [Paper](https://arxiv.org/abs/2601.15655) |
| EgoHandICL | 2026-01 | ICLR 2026 | First-person hand-object in-context learning from multimodal egocentric context and synthetic exemplars | [Paper](https://arxiv.org/abs/2601.19850) |
| HD-EPIC VQA T-CoT | 2026-01 | CVPR 2025 EgoVis | HD-EPIC VQA solution with temporal chain-of-thought prompting and Qwen2.5-VL adaptation | [Paper](https://arxiv.org/abs/2601.10228) |
| Robust Egocentric Visual Attention | 2026-01 | arXiv | Language-guided scene-context model for egocentric visual attention prediction | [Paper](https://arxiv.org/abs/2601.01818) |
| The N-Body Problem | 2025-12 | arXiv | Predicts feasible multi-person parallel execution plans from a single EPIC-KITCHENS or HD-EPIC egocentric video | [Paper](https://arxiv.org/abs/2512.11393) |
| EgoVITA | 2025-11 | ECCV 2026 | Plan-then-verify egocentric video reasoning with visual-grounding and cross-perspective consistency rewards | [Paper](https://arxiv.org/abs/2511.18242) |
| EgoControl | 2025-11 | arXiv | Pose-controllable egocentric video diffusion conditioned on sequences of 3D full-body poses | [Paper](https://arxiv.org/abs/2511.18173) |
| EAGLE VQL | 2025-11 | AAAI 2026 | Episodic appearance- and geometry-aware memory for unified 2D/3D visual query localization in egocentric video | [Paper](https://arxiv.org/abs/2511.08007) |
| TimeSearch-R | 2025-11 | arXiv | Reinforcement-learned temporal search with self-verification for Haystack-Ego4D and long-video understanding | [GitHub](https://github.com/Time-Search/TimeSearch-R) |
| DMC3 Ego VideoQA | 2025-10 | ACM MM 2025 | Counterfactual contrastive construction for egocentric VideoQA across event descriptions and hand-object interaction cues | [Paper](https://arxiv.org/abs/2510.20285) |
| EgoThinker | 2025-10 | NeurIPS 2025 | Egocentric reasoning model with spatio-temporal chain-of-thought and RL fine-tuning | [Paper](https://arxiv.org/abs/2510.23569) |
| HieraMamba | 2025-10 | CVPR 2026 | Hierarchical Anchor-Mamba pooling for long-video temporal grounding, preserving fine temporal structure on Ego4D NLQ-style queries | [Project](https://vision.cs.utexas.edu/projects/hieramamba/) |
| EgoPrompt | 2025-08 | ACM MM 2025 | Prompt-learning framework for egocentric action recognition that models verb-noun semantic and contextual relationships | [Paper](https://arxiv.org/abs/2508.03266) |
| EgoTwin | 2025-08 | arXiv | Joint first-person video and human-motion generation with head-centric motion alignment | [Paper](https://arxiv.org/abs/2508.13013) |
| Ego-PM | 2025-08 | arXiv | Egocentric predictive model that jointly forecasts future actions and video frames conditioned on hand trajectories | [Paper](https://arxiv.org/abs/2508.19852) |
| GazeNLQ | 2025-06 | CVPR 2025 Ego4D Challenge | Gaze-augmented Ego4D Natural Language Queries localization from estimated wearer attention | [Paper](https://arxiv.org/abs/2506.05782) |
| EgoWorld | 2025-06 | ICLR 2026 | Reconstructs egocentric views from exocentric point clouds, 3D hand poses, and text for cross-view world generation | [Project](https://redorangeyellowy.github.io/EgoWorld/) |
| EgoVLM | 2025-06 | arXiv | GRPO-style policy optimization over Qwen2.5-VL-3B for egocentric video reasoning | [Paper](https://arxiv.org/abs/2506.03097) |
| Ego-R1 | 2025-06 | arXiv | Chain-of-tool-thought framework and training data for ultra-long egocentric video QA | [Paper](https://arxiv.org/abs/2506.13654) |
| HiERO | 2025-05 | ICCV 2025 | Weakly supervised hierarchical activity-thread representations for EgoMCQ, EgoNLQ, and procedure learning | [Paper](https://arxiv.org/abs/2505.12911) |
| OSGNet | 2025-05 | CVPR 2025 | Object-shot enhanced grounding for egocentric temporal grounding / moment queries (CVPR 2025) | [GitHub](https://github.com/Yisen-Feng/OSGNet) |
| EgoExo-Gen | 2025-04 | ICLR 2025 | Predicts future ego-centric video from exocentric video, first ego frame, text instructions, and hand-object masks | [Paper](https://arxiv.org/abs/2504.11732) |
| EgoDTM | 2025-03 | arXiv | Depth- and text-aware egocentric VLP for 3D-aware representations | [GitHub](https://github.com/xuboshen/EgoDTM) |
| EgoLife / EgoButler / EgoGPT / EgoRAG | 2025-03 | arXiv | Omni-modal egocentric assistant system with retrieval over long life recordings | [Paper](https://arxiv.org/abs/2503.03803) |
| EgoAgent | 2025-02 | ICCV 2025 | Joint predictive agent model for perception, future-state prediction, and action in egocentric worlds | [Paper](https://arxiv.org/abs/2502.05857) |
| Embodied VideoAgent | 2024-12 | ICCV 2025 | Builds persistent 3D scene memory from egocentric video plus depth/pose sensors for dynamic scene reasoning and planning | [Project](https://embodied-videoagent.github.io/) |
| ESOM / OVQ2D | 2024-11 | WACV 2026 | Online visual query localization with compact egocentric streaming object memory | [Paper](https://arxiv.org/abs/2411.16934) |
| MM-Ego | 2024-10 | ICLR 2025 | Egocentric multimodal LLM with Memory Pointer Prompting and a 7M-sample egocentric QA data engine (EgoMemoria benchmark) | [Paper](https://arxiv.org/abs/2410.07177) |
| AMEGO | 2024-09 | ECCV 2024 | Active-memory representation from a single long egocentric video for fast multi-query answering (ECCV 2024) | [Project](https://gabrielegoletto.github.io/AMEGO/) |
| EgoNCE++ | 2024-05 | ICLR 2025 | Open-vocabulary HOI benchmark and asymmetric contrastive objective | [GitHub](https://github.com/xuboshen/EgoNCEpp) |
| SoundingActions | 2024-04 | CVPR 2024 | Self-supervised audio-language-vision embedding that learns how actions sound from narrated egocentric videos | [Project](https://vision.cs.utexas.edu/projects/soundingactions) |
| Video ReCap | 2024-02 | CVPR 2024 | Recursive captioning for hour-long videos plus Ego4D-HCap long-range summaries | [Project](https://sites.google.com/view/vidrecap) |
| EgoInstructor | 2024-01 | CVPR 2024 | Retrieval-augmented egocentric captioning via cross-view retrieval of third-person clips (CVPR 2024) | [Project](https://jazzcharles.github.io/Egoinstructor/) |
| GroundVQA | 2023-12 | CVPR 2024 | Unified temporal grounding and open/closed QA for long egocentric videos | [GitHub](https://github.com/Becomebright/GroundVQA) |
| LifelongMemory | 2023-12 | arXiv | LLM-based long-form egocentric memory system for answering queries over a camera wearer's past | [Paper](https://arxiv.org/abs/2312.05269) |
| LEGO | 2023-12 | ECCV 2024 | Visual-instruction-tuned egocentric action-frame generation | [Paper](https://arxiv.org/abs/2312.03849) |
| Action Scene Graphs | 2023-12 | CVPR 2024 | Temporally evolving action scene graphs for long-form egocentric video understanding | [Paper](https://arxiv.org/abs/2312.03391) |
| LEAP | 2023-11 | arXiv | LLM generation of egocentric action programs with sub-actions, preconditions, postconditions, and object references | [Paper](https://arxiv.org/abs/2312.00055) |
| PALM | 2023-11 | ECCV 2024 | Predicts future actions through language models for long-term action anticipation | [Paper](https://arxiv.org/abs/2311.17944) |
| Exo2EgoDVC | 2023-11 | WACV 2025 | Dense video captioning for egocentric procedural activities using web instructional videos | [Project](https://tkhkaeio.github.io/projects/25-egodvc/) |
| CliMer Temporal Grounding | 2023-10 | BMVC 2023 | Learns temporal sentence grounding from narrated Ego4D/EPIC videos using clip merging and rough narration timestamps | [GitHub](https://github.com/keflanagan/CliMer) |
| Encode-Store-Retrieve | 2023-08 | ISMAR 2024 | Language-encoded egocentric memory pipeline for storing and retrieving human-perception events | [Paper](https://arxiv.org/abs/2308.05822) |
| EgoVLPv2 | 2023-07 | ICCV 2023 | Egocentric video-language pretraining with fusion in the backbone | [Project](https://shramanpramanick.github.io/EgoVLPv2/) |
| VQLoC | 2023-06 | NeurIPS 2023 | Single-stage visual query localization with joint query-frame and frame-frame correspondences for long egocentric video | [Project](https://hwjiang1510.github.io/VQLoC/) |
| EgoCOL | 2023-06 | CVPR 2023 Ego4D Challenge | Camera-pose estimation for Ego4D open-world 3D object localization using sparse video/scan pose reconstruction | [GitHub](https://github.com/BCV-Uniandes/EgoCOL) |
| SpotEM | 2023-06 | ICML 2023 | Efficient episodic-memory search that keeps most NLQ accuracy while computing only a small fraction of clip features | [Project](https://vision.cs.utexas.edu/projects/spotem) |
| GroundNLQ | 2023-06 | CVPR 2023 | Two-stage multi-scale grounding for Ego4D Natural Language Queries; CVPR 2023 NLQ champion | [GitHub](https://github.com/houzhijian/GroundNLQ) |
| MINOTAUR | 2023-02 | arXiv | Unified video grounding model for multimodal queries over Ego4D-style grounding tasks | [Paper](https://arxiv.org/abs/2302.08063) |
| NaQ | 2023-01 | CVPR 2023 | Uses narrations as implicit queries to supervise episodic-memory retrieval in long egocentric video | [Paper](https://arxiv.org/abs/2301.00746) |
| LaViLa | 2022-12 | CVPR 2023 | Learns video-language representations from Ego4D narrations and LLM-generated narrations | [Paper](https://arxiv.org/abs/2212.04501) |
| CocoFormer VQL | 2022-11 | Ego4D Challenge 2022 | Proposal-set transformer for Ego4D visual query localization, improving VQ2D/VQ3D object localization | [GitHub](https://github.com/facebookresearch/vq2d_cvpr) |
| Negative Frames Matter | 2022-08 | Ego4D Challenge 2022 | Trains Ego4D VQ2D with noisy negative/background frames and a more efficient object-query training loop | [GitHub](https://github.com/facebookresearch/vq2d_cvpr) |
| EgoEnv | 2022-07 | NeurIPS 2023 Oral | Human-centric environment representations linking egocentric video to the wearer's local surroundings | [Project](https://vision.cs.utexas.edu/projects/ego-env/) |
| EgoVLP / EgoNCE | 2022-06 | NeurIPS 2022 | EgoClip, EgoNCE objective, EgoMCQ, and transfer to Ego4D/EPIC/Charades-Ego tasks | [GitHub](https://github.com/showlab/EgoVLP) |

### Action, Tracking, Pose, and HOI Baselines

| Resource | Released | Venue | What it contributes | Link |
| :--- | :---: | :---: | :--- | :---: |
| Trustworthy Visual Predicates | 2026-06 | arXiv | Reliability framework for contact, grasp, release, support, and other manipulation predicates under visual degradation, evaluated on VISOR/EPIC-KITCHENS, H2O, and ARCTIC | [Paper](https://arxiv.org/abs/2606.08121) |
| FactCheck LTA | 2026-06 | arXiv | Feasibility-aware long-term action anticipation with a multi-agent Observe-Plan-Verify loop over EPIC-KITCHENS-55 and EGTEA Gaze+ | [Paper](https://arxiv.org/abs/2606.14778) |
| TrAction | 2026-06 | arXiv | Sparse 2.5D point-trajectory transformer for action recognition that reduces appearance/background shortcuts on EPIC-KITCHENS-100 | [GitHub](https://github.com/ecker-lab/TrAction) |
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
| HALOMI | 2026-06 | arXiv | Extends UMI-style egocentric collection for humanoid loco-manipulation with active perception from human demonstrations | [Paper](https://arxiv.org/abs/2606.18772) |
| EgoTactile | 2026-06 | ICML 2026 spotlight | Egocentric video to full-hand grasp-pressure benchmark and diffusion/baseline models for everyday-object interactions | [Project](https://egotactile.github.io/) |
| EgoPressDiff | 2026-06 | ICASSP 2026 | Conditional video diffusion for UV-domain egocentric hand-pressure maps using pose, mesh, and depth conditioning | [Project](https://egopressdiff.github.io/) |
| Hand Trajectory Fusion for Ego NLQ | 2026-06 | CVPR 2026 EgoVis | Hand-trajectory encoder and cross-attention fusion for Ego4D Natural Language Query grounding | [Paper](https://arxiv.org/abs/2606.02962) |
| PROSE | 2026-06 | arXiv | Training-free RGB-only egocentric scene registration using VLM-derived object-level 3D scene graphs | [Project](https://rckola.github.io/prose/) |
| ACE-Ego-0 | 2026-06 | arXiv | Unifies egocentric human video with robot/sim data via reliability-aware weighting for VLA pretraining (RoboCasa GR1, RoboTwin 2.0) | [Paper](https://arxiv.org/abs/2606.17200) |
| HumanNet | 2026-05 | arXiv | 1M-hour mixed first-/third-person human-centric corpus with interaction annotations and a 1K-hour egocentric subset used for VLA validation | [Paper](https://arxiv.org/abs/2605.06747) |
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
| HumanEgo | 2026-05 | arXiv | Zero-shot robot learning from minutes of human egocentric video; public code and 122 Aria recordings include raw VRS/MPS plus processed entity-level hand-object supervision | [Project](https://humanego-ai.github.io) |
| EgoSPT / SPOT | 2026-05 | arXiv | Spatially prompted egocentric manipulation trajectory prediction from first-frame object/target grounding | [Paper](https://arxiv.org/abs/2605.20085) |
| EggHand | 2026-05 | CVPR 2026 Findings | Multimodal egocentric hand-pose forecasting using video-language and VLA-style action decoding | [Project](https://jyoun9.github.io/EggHand/) |
| Map-Mono-Ego | 2026-05 | ICIP 2026 | Map-grounded global human-pose estimation from monocular egocentric video and scanned environments | [Paper](https://arxiv.org/abs/2605.20889) |
| EgoForce Hand Pose | 2026-05 | SIGGRAPH 2026 | Monocular egocentric 3D hand pose and shape reconstruction across fisheye, perspective, and wide-FOV camera models | [Project](https://dfki-av.github.io/EgoForce) |
| EARL | 2026-05 | ICML 2026 | Analysis-guided RL framework for egocentric interaction reasoning and pixel grounding with coarse-to-fine parsing | [GitHub](https://github.com/yuggiehk/EARL) |
| EgoExo-WM | 2026-05 | arXiv | Converts exocentric video into egocentric world-model training data using body-pose priors | [Project](https://vision.cs.utexas.edu/projects/EgoExo-WM/) |
| MotionGRPO | 2026-05 | ICML 2026 | GRPO-based post-training for full-body 3D motion recovery from head-mounted device signals | [Paper](https://arxiv.org/abs/2605.05680) |
| ActiveGlasses | 2026-04 | arXiv | Learns robot manipulation from smart-glasses ego-centric human demonstrations and transfers active vision to a robot perception arm | [Paper](https://arxiv.org/abs/2604.08534) |
| GazeVLA | 2026-04 | arXiv | Pretrains on egocentric gaze, intention, and action signals before robot fine-tuning for manipulation | [Project](https://gazevla.github.io/) |
| WARPED | 2026-04 | arXiv | Wrist-aligned rendering turns monocular egocentric human demonstrations into robot policy observations | [Paper](https://arxiv.org/abs/2604.10809) |
| DP-DeGauss | 2026-04 | ICASSP 2026 | Dynamic probabilistic Gaussian decomposition for egocentric 4D scene reconstruction of hands, objects, and background | [Paper](https://arxiv.org/abs/2604.07986) |
| Personal Point of View 3DGS | 2026-04 | CVPR 2026 EgoVis | Evaluation of dynamic 3D Gaussian splatting for egocentric scene reconstruction | [Paper](https://arxiv.org/abs/2604.23803) |
| VGGT-Segmentor | 2026-04 | arXiv | Geometry-enhanced segmentation across egocentric and exocentric views | [Paper](https://arxiv.org/abs/2604.13596) |
| Gaze-SoM HOI Anticipation | 2026-04 | ICPR 2026 | Gaze and set-of-mark prompting in VLLMs for hand-object-interaction anticipation from egocentric video | [Paper](https://arxiv.org/abs/2604.03667) |
| EgoFlow | 2026-04 | CVPR 2026 | Gradient-guided flow matching for physically plausible 6DoF object-motion generation from egocentric video | [Paper](https://arxiv.org/abs/2604.01421) |
| EgoAdapt Speaker Detection | 2026-03 | arXiv | Robust egocentric Talking-to-Me speaker detection under missing modalities, head-orientation ambiguity, and background noise | [Paper](https://arxiv.org/abs/2603.18082) |
| UniDex | 2026-03 | CVPR 2026 | Robot foundation suite for universal dexterous hand control learned from egocentric human videos | [Paper](https://arxiv.org/abs/2603.22264) |
| PAWS | 2026-03 | arXiv | Articulation extraction from large-scale hand-object interactions in egocentric video | [Paper](https://arxiv.org/abs/2603.25539) |
| AG-EgoPose | 2026-03 | arXiv | Attention-guided egocentric 3D human-pose estimation from fisheye camera input | [Paper](https://arxiv.org/abs/2603.25175) |
| Static Scene Reconstruction from Dynamic Egocentric Videos | 2026-03 | arXiv | Mask-aware 3D reconstruction pipeline for long-form dynamic egocentric video | [Paper](https://arxiv.org/abs/2603.22450) |
| EgoHOI World Model | 2026-03 | arXiv | Physics-informed egocentric world model that synthesizes contact-consistent hand-object interactions from action signals alone | [Paper](https://arxiv.org/abs/2603.13615) |
| STAformer++ Affordance-Aware Anticipation | 2026-02 | IEEE TPAMI | Integrates temporal attention, scene affordance memory, and interaction hotspots for short-term object-interaction anticipation on Ego4D and EPIC-KITCHENS | [Paper](https://arxiv.org/abs/2602.14837) |
| Neck-Mounted Gaze (GLC) | 2026-02 | arXiv | Transformer gaze estimator for a shoulder-level neck-mounted camera with out-of-bound classification and multi-view co-learning | [Paper](https://arxiv.org/abs/2602.11669) |
| EgoPush | 2026-02 | arXiv | End-to-end egocentric multi-object rearrangement for mobile robots from a single first-person camera, with zero-shot sim-to-real | [Paper](https://arxiv.org/abs/2602.18071) |
| DeltaDorsal | 2026-01 | CHI 2026 | Dorsal hand-skin deformation features for robust egocentric hand pose under self-occlusion (~18% lower joint-angle error) | [GitHub](https://github.com/hilab-open-source/deltadorsal) |
| DexWM | 2025-12 | CVPR 2026 | Dexterous interaction world model from finger keypoints in 900+ hours of egocentric human and robot video | [Paper](https://arxiv.org/abs/2512.13644) |
| WholeBodyVLA | 2025-12 | ICLR 2026 | Unified latent VLA learning latent actions from action-free egocentric videos for whole-body humanoid loco-manipulation | [GitHub](https://github.com/OpenDriveLab/WholebodyVLA) |
| GateFusion | 2025-12 | WACV 2026 | Hierarchical gated cross-modal fusion for active speaker detection, including unconstrained and egocentric ASD settings such as Ego4D-ASD | [Paper](https://arxiv.org/abs/2512.15707) |
| EgoSpanLift | 2025-11 | NeurIPS 2025 spotlight | Lifts 2D egocentric gaze forecasting into 3D visual-span prediction (SLAM keypoints + 3D U-Net) over a 364.6K-sample benchmark | [Paper](https://arxiv.org/abs/2511.18470) |
| Uni-Hand | 2025-11 | T-PAMI 2026 | Universal egocentric hand motion forecasting for 2D/3D wrist and finger waypoints with code and data | [GitHub](https://github.com/IRMVLab/UniHand) |
| SFHand / EgoHaFL | 2025-11 | arXiv | Streaming language-guided 3D hand forecasting plus synchronized 3D hand-pose and language-instruction data | [Paper](https://arxiv.org/abs/2511.18127) |
| EgoCogNav | 2025-11 | arXiv | Cognition-aware egocentric navigation forecasting trajectory and head motion from perceived path uncertainty (CEN dataset) | [Paper](https://arxiv.org/abs/2511.17581) |
| In-N-On | 2025-11 | arXiv | Scales egocentric manipulation with 1,000+ hours in-the-wild human video (PHSD) to train the Human0 flow-matching policy | [Paper](https://arxiv.org/abs/2511.15704) |
| NS-iHOS / WISH | 2025-09 | arXiv | Weakly supervised in-hand object segmentation from egocentric narrations, distilled for inference without narration | [Paper](https://arxiv.org/abs/2509.26004) |
| INSIGHT | 2025-08 | AAAI 2026 | Intention-guided cognitive reasoning for long-term action anticipation using hand-object cues and verb-noun dependencies | [Paper](https://arxiv.org/abs/2508.01742) |
| ECHO | 2025-08 | arXiv | Recovers human pose, object motion, and contact dynamics from sparse smart-glasses and wrist-tracker signals | [Paper](https://arxiv.org/abs/2508.21556) |
| Ego 6DoF Object Trajectories | 2025-06 | CVPR 2025 | Generates 6DoF object manipulation trajectories from action descriptions in egocentric vision, evaluated with HOT3D | [Paper](https://arxiv.org/abs/2506.03605) |
| EgoAdapt Efficient Perception | 2025-06 | arXiv | Adaptive multisensory distillation for efficient action, speaker, and behavior anticipation across EPIC-KITCHENS, EasyCom, and AEA | [Paper](https://arxiv.org/abs/2506.21080) |
| EVA02-AT | 2025-06 | arXiv | Egocentric video-language model family with spatial-temporal rotary positions and symmetric multi-similarity optimization | [GitHub](https://github.com/xqwang14/EVA02-AT) |
| H2R | 2025-05 | arXiv | Human-to-robot data augmentation that converts egocentric human videos into robot-centric pre-training data | [Paper](https://arxiv.org/abs/2505.11920) |
| MEgoHand | 2025-05 | arXiv | Multimodal egocentric hand-object motion generator (VLM + flow-matching) over 3.35M RGB-D frames, 24K interactions, 1.2K objects | [Paper](https://arxiv.org/abs/2505.16602) |
| EgoZero | 2025-05 | arXiv | Trains robot manipulation policies from Project Aria smart-glasses human demos with zero robot training data | [Paper](https://arxiv.org/abs/2505.20290) |
| Ego4o | 2025-04 | CVPR 2025 | Omni-modal egocentric human motion capture from headset/glasses/phone/watch inputs, sparse IMUs, and motion-language descriptions | [Paper](https://arxiv.org/abs/2504.08449) |
| EgoH4 | 2025-04 | arXiv | Diffusion transformer forecasting both-hand 3D trajectories and poses from egocentric video, including out-of-frame hands (Ego-Exo4D) | [Paper](https://arxiv.org/abs/2504.08654) |
| Fish2Mesh | 2025-03 | ICCV 2025 | Fisheye-aware transformer for 3D human mesh recovery from egocentric vision with weak supervision from third-person cameras | [Paper](https://arxiv.org/abs/2503.06089) |
| EgoSplat | 2025-03 | arXiv | Open-vocabulary egocentric scene understanding with language-embedded 3D Gaussian splatting (Aria Digital Twin) | [Paper](https://arxiv.org/abs/2503.11345) |
| mmEgoHand | 2025-01 | arXiv | Head-mounted millimeter-wave radar and IMU system for egocentric hand pose estimation and gesture recognition | [Paper](https://arxiv.org/abs/2501.13805) |
| ObjectRelator | 2024-11 | ICCV 2025 Highlight | Cross-view ego-exo object relation and correspondence model with multimodal fusion and self-supervised alignment | [Paper](https://arxiv.org/abs/2411.19083) |
| TouchInsight | 2024-10 | UIST 2024 | Detects touch moment, finger, and location on arbitrary physical surfaces from egocentric hand tracking | [Paper](https://arxiv.org/abs/2410.05940) |
| EgoZAR | 2024-09 | Pattern Recognition Letters | Zone-aware egocentric action-recognition method improving cross-domain transfer with activity-centric zone priors | [Project](https://gabrielegoletto.github.io/EgoZAR/) |
| 3D-Aware Ego Instance Tracking | 2024-08 | ACCV 2024 | 3D-aware instance segmentation and tracking that lifts 2D masks with scene geometry to survive motion and occlusion (EPIC Fields) | [Paper](https://arxiv.org/abs/2408.09860) |
| EgoChoir | 2024-05 | NeurIPS 2024 | Infers 3D contact and object affordance from egocentric video, head motion, and 3D object cues | [Project](https://yyvhang.github.io/EgoChoir/) |
| Diff-IP2D | 2024-05 | IROS 2025 | Non-autoregressive diffusion forecasting of 2D hand trajectories and object affordances with camera-egomotion conditioning | [GitHub](https://github.com/IRMVLab/Diff-IP2D) |
| Spatial Cognition / LMK | 2024-04 | arXiv | Tracks active objects out of sight by lifting, matching, and preserving 3D object tracks across long EPIC-KITCHENS videos | [Paper](https://arxiv.org/abs/2404.05072) |
| EffHandEgoNet | 2024-04 | FG 2024 | Egocentric 2D hand pose and action-recognition method for smart-glasses RGB input on H2O and FPHA | [Paper](https://arxiv.org/abs/2404.09308) |
| EgoLifter | 2024-03 | ECCV 2024 | Open-world 3D segmentation decomposing natural egocentric video into individual 3D objects via 3D Gaussians and SAM | [GitHub](https://github.com/facebookresearch/egolifter) |
| X-MIC | 2024-03 | ECCV 2024 | Cross-modal instance conditioning for egocentric action generalization across EPIC-KITCHENS, Ego4D, and EGTEA | [GitHub](https://github.com/annusha/xmic) |
| EgoPoseFormer | 2024-03 | ECCV 2024 | Transformer baseline for stereo egocentric 3D human pose estimation | [GitHub](https://github.com/ChenhongyiYang/egoposeformer) |
| GPT4Ego | 2024-01 | arXiv | Fine-grained concept-description prompting for zero-shot egocentric action recognition | [Paper](https://arxiv.org/abs/2401.10039) |
| Get a Grip | 2023-12 | arXiv | Reconstructs stable hand-object grasps from egocentric video | [Project](https://zhifanzhu.github.io/getagrip) |
| AV-CONV | 2023-12 | CVPR 2024 | Audio-visual conversational graph prediction from ego/exo conversation | [Project](https://vjwq.github.io/AV-CONV/) |
| Aria-NeRF | 2023-11 | arXiv | Multimodal egocentric view synthesis for Project Aria-style capture | [Paper](https://arxiv.org/abs/2311.06455) |
| Egocentric Whole-Body MoCap | 2023-11 | CVPR 2024 | FisheyeViT plus diffusion refinement for egocentric whole-body motion capture | [Paper](https://arxiv.org/abs/2311.16495) |
| Object-Centric LTA | 2023-10 | WACV 2024 | Uses object prompts and visual-language pretrained features for long-term action anticipation on Ego4D and EGTEA Gaze+ | [Paper](https://arxiv.org/abs/2311.00180) |
| Symbolic Active Object Localization | 2023-10 | EMNLP 2023 | Uses symbolic world knowledge to localize active objects from egocentric vision and task instructions | [Paper](https://arxiv.org/abs/2310.15066) |
| EgoPCA | 2023-09 | ICCV 2023 | Framework for egocentric hand-object interaction understanding using hand/object-centric cues | [Paper](https://arxiv.org/abs/2309.02423) |
| Ego3DPose | 2023-09 | SIGGRAPH Asia 2023 | Captures 3D body cues from binocular egocentric views for pose estimation | [Paper](https://arxiv.org/abs/2309.11962) |
| Open-Vocabulary Egocentric Actions | 2023-08 | NeurIPS 2023 | Open-vocabulary egocentric action recognition for verb-noun action labels | [Project](https://dibschat.github.io/openvocab-egoAR/) |
| Helping Hands | 2023-08 | ICCV 2023 | Object-aware egocentric video-recognition model using hand-object cues | [Paper](https://arxiv.org/abs/2308.07918) |
| EgoPoser | 2023-08 | ECCV 2024 | Real-time egocentric pose estimation from sparse and intermittent HMD/controller observations | [Project](https://siplab.org/projects/EgoPoser) |
| EgoHandTrajPred / USST | 2023-07 | ICCV 2023 | Egocentric 3D hand trajectory forecasting over H2O and EgoPAT3D-style settings | [Project](https://actionlab-cv.github.io/EgoHandTrajPred) |
| AntGPT | 2023-07 | ICLR 2024 | Uses large language models to improve long-term action anticipation from video context | [Paper](https://arxiv.org/abs/2307.16368) |
| AV-EgoGaze Anticipation | 2023-05 | ECCV 2024 | Audio-visual model for forecasting future gaze in egocentric video | [Paper](https://arxiv.org/abs/2305.03907) |
| StillFast | 2023-04 | CVPRW 2023 | End-to-end short-term object interaction anticipation for Ego4D | [Project](https://iplab.dmi.unict.it/stillfast/) |
| EgoViT | 2023-03 | arXiv | Pyramid video transformer with dynamic class-token generation for egocentric action recognition | [Paper](https://arxiv.org/abs/2303.08920) |
| Next Active Object Anticipation | 2023-02 | IEEE Access 2024 | Anticipates next-active-object locations before contact in egocentric video | [Paper](https://arxiv.org/abs/2302.06358) |
| TransFusion | 2023-01 | IEEE TCSVT 2024 | Summarizes past egocentric context in language to improve multimodal object-interaction anticipation | [Paper](https://arxiv.org/abs/2301.09209) |
| Ego-Only | 2023-01 | ICCV 2023 | Egocentric action detection without exocentric pretraining transfer | [Paper](https://arxiv.org/abs/2301.01380) |
| EgoSTARK | 2023-01 | NeurIPS 2023 | Adapted long-term tracker baseline for EgoTracks | [Paper](https://arxiv.org/abs/2301.03213) |
| EgoLoc | 2022-12 | ICCV 2023 | Stronger Ego4D visual-query 3D object localization with camera-pose and localization baselines | [Paper](https://arxiv.org/abs/2212.06969) |
| CONE | 2022-11 | ECCV 2022 Workshop | Coarse-to-fine alignment framework for Ego4D Natural Language Queries | [Paper](https://arxiv.org/abs/2211.08776) |
| InternVideo-Ego4D | 2022-11 | Ego4D Workshop 2022 | Pack of champion Ego4D challenge solutions spanning episodic memory, forecasting, hand-object, and audio/social tracks | [Paper](https://arxiv.org/abs/2211.09529) |
| UmeTrack | 2022-10 | SIGGRAPH Asia 2022 | Unified multi-view end-to-end 3D hand tracking for VR headsets and hand-interaction systems | [Paper](https://arxiv.org/abs/2211.00099) |
| EgoHOS model | 2022-08 | GitHub | Context-aware hand-object segmentation and augmentation pipeline | [GitHub](https://github.com/owenzlz/EgoHOS) |
| I-CVAE LTA | 2022-07 | WACV 2023 | Intention-conditioned variational model for long-term human egocentric action forecasting | [Project](https://evm7.github.io/icvae-page/) |
| SOS Handled Objects | 2022-04 | ECCV 2022 | Self-supervised learning over handled-object sets for egocentric action recognition | [Paper](https://arxiv.org/abs/2204.04796) |
| HOI Forecast / Interaction Hotspots | 2022-04 | CVPR 2022 | Forecasts future hand trajectories and interaction hotspots on next-active objects | [Project](https://stevenlsw.github.io/hoi-forecast) |
| EgoGAN | 2022-03 | ECCV 2022 | Generative future hand-mask forecasting from egocentric video | [Paper](https://arxiv.org/abs/2203.11305) |
| Untrimmed Action Anticipation | 2022-02 | ICIAP 2022 | Reframes egocentric anticipation for untrimmed first-person streams | [Paper](https://arxiv.org/abs/2202.04132) |
| OWL | 2022-02 | CVPRW 2023 | Audiovisual temporal context model for egocentric action localization on EPIC-KITCHENS and HOMAGE | [Paper](https://arxiv.org/abs/2202.04947) |
| Hand-Object Interaction Reasoning | 2022-01 | AVSS 2022 | Transformer interaction unit for reasoning over acting hands, the other hand, and interacted objects in egocentric video | [Paper](https://arxiv.org/abs/2201.04906) |
| E2(GO)MOTION | 2021-12 | CVPR 2022 | Motion-augmented event-stream representation for egocentric action recognition | [Paper](https://arxiv.org/abs/2112.03596) |
| Human Hands as Probes | 2021-12 | CVPR 2022 | Uses hand observations in EPIC-KITCHENS to learn interactive object states, interaction regions, and grasp affordances | [Paper](https://arxiv.org/abs/2112.09120) |
| Temporal-Context Ego Action Recognition | 2021-11 | BMVC 2021 | Multimodal transformer that uses surrounding temporal context for egocentric action recognition | [Paper](https://arxiv.org/abs/2111.01024) |
| NeuralDiff | 2021-10 | 3DV 2021 | Neural rendering factorization for segmenting moving 3D objects from dynamic egocentric video | [Paper](https://arxiv.org/abs/2110.09936) |
| Head-Motion SSL | 2021-10 | ICCV 2021 EPIC Workshop | Self-supervised representation learning by matching egocentric video clips with AR/VR head-motion IMU signals | [Paper](https://arxiv.org/abs/2110.01680) |
| Exo-to-Ego Video Synthesis | 2021-07 | ACM MM 2021 | Cross-view synthesis model that generates egocentric video from exocentric video | [Paper](https://arxiv.org/abs/2107.03120) |
| KinPoly / Dynamics-Regulated Kinematic Policy | 2021-06 | NeurIPS 2021 | Object-aware kinematic policy for egocentric pose estimation with scene dynamics | [Project](https://zhengyiluo.github.io/projects/kin_poly/) |
| RNA Cross-Domain FPV AV Recognition | 2021-06 | arXiv | Relative Norm Alignment for cross-domain first-person audio-visual action recognition | [Paper](https://arxiv.org/abs/2106.01689) |
| Ego-Topo 3D Map Localization | 2021-05 | ECCV 2022 | Joint egocentric activity recognition and localization on a 3D environment map | [Paper](https://arxiv.org/abs/2105.09544) |
| Ego-Exo representation transfer | 2021-04 | CVPR 2021 | Distillation from third-person video using ego-specific latent signals | [Paper](https://arxiv.org/abs/2104.07905) |
| Egocentric Pose from Human Vision Span | 2021-04 | ICCV 2021 | Egocentric body-pose estimation from a wider glasses-like human vision span | [Paper](https://arxiv.org/abs/2104.05167) |
| HPS | 2021-03 | CVPR 2021 | 3D human pose and self-localization in large scenes from body-mounted sensors and a head-mounted camera | [Paper](https://arxiv.org/abs/2103.17265) |
| Indoor Future Person Localization | 2021-03 | IROS 2021 | Future person-location and trajectory prediction from egocentric wearable-camera video | [Paper](https://arxiv.org/abs/2103.04019) |
| Contact Representations for Action Forecasting | 2021-02 | T-PAMI 2021 | Forecasts first-person actions through making/breaking hand-object contact representations | [Paper](https://arxiv.org/abs/2102.00649) |
| Imagination-Based Ego Action Anticipation | 2021-01 | IEEE TIP 2021 | Anticipates egocentric actions by imagining future visual representations | [Paper](https://arxiv.org/abs/2101.04924) |
| RHOI | 2020-12 | ICCV 2021 | Reconstructs hand-object interactions in the wild without direct 3D supervision | [Project](https://people.eecs.berkeley.edu/~zhecao/rhoi/) |
| Egocentric 4D Human Body Capture | 2020-11 | 3DV 2021 | Reconstructs second-person 3D human meshes from monocular egocentric video and scene grounding | [Paper](https://arxiv.org/abs/2011.13341) |
| SelfPose | 2020-11 | T-PAMI 2020 | 3D egocentric body-pose estimation from downward-looking headset-mounted fisheye cameras | [Paper](https://arxiv.org/abs/2011.01519) |
| Ego-OMG | 2020-06 | arXiv | Object Manipulation Graph representation for activity modeling and near-future action anticipation | [Paper](https://arxiv.org/abs/2006.03201) |
| In the Eye of the Beholder | 2020-05 | IEEE TPAMI | Studies how gaze and wearer attention support action understanding in first-person video | [Paper](https://arxiv.org/abs/2006.00626) |
| Unifying Few- and Zero-Shot Ego Action Recognition | 2020-05 | CVPR 2020 EPIC Workshop | Compositional few- and zero-shot egocentric action recognition for EPIC-style verb-noun labels | [Paper](https://arxiv.org/abs/2006.11393) |
| First-Person Motion-Appearance SSL | 2020-02 | ICPR 2020 | Self-supervised joint motion and appearance encoding for first-person action recognition | [Paper](https://arxiv.org/abs/2002.03982) |
| Symbiotic Attention | 2020-02 | AAAI 2020 Oral | Uses privileged hand/object information through symbiotic attention for egocentric action recognition | [Paper](https://arxiv.org/abs/2002.03137) |
| EGO-TOPO Environment Affordances | 2020-01 | CVPR 2020 | Builds topological maps of interaction opportunities from egocentric video | [Paper](https://arxiv.org/abs/2001.04583) |
| Hands in Egocentric Vision Survey | 2019-12 | IEEE TPAMI | Focused survey of hand localization, interpretation, applications, and major hand-annotated egocentric datasets | [Paper](https://arxiv.org/abs/1912.10867) |
| Motor Attention HOI Forecasting | 2019-11 | arXiv | Joint prediction of motor attention and future actions in first-person human-object interaction | [Paper](https://arxiv.org/abs/1911.10967) |
| Seeing and Hearing Egocentric Actions | 2019-10 | ICCV 2019 EPIC Workshop | Audio-visual study and baseline for egocentric human-object action understanding | [Paper](https://arxiv.org/abs/1910.06693) |
| EPIC-Fusion | 2019-08 | ICCV 2019 | Audio-visual temporal-binding model for egocentric action recognition | [Paper](https://arxiv.org/abs/1908.08498) |
| Few-Shot First-Person Action Recognition | 2019-07 | T-PAMI | Domain-specific priors and meta-learning for few-shot first-person action recognition | [Paper](https://arxiv.org/abs/1907.09382) |
| Rolling-Unrolling LSTMs | 2019-05 | ICCV 2019 Oral | Multi-scale LSTM with modality attention for anticipating egocentric actions and interacted objects | [Paper](https://arxiv.org/abs/1905.09035) |
| EPIC-KITCHENS action models | 2019-01 | GitHub | Public baseline models for EPIC-KITCHENS action recognition | [GitHub](https://github.com/epic-kitchens/action-models) |
| Visual Context Event Segmentation | 2018-08 | ACM MM 2018 | Unsupervised segmentation of egocentric photostreams into contextual events, with EDUB-Seg labels | [Paper](https://arxiv.org/abs/1808.02289) |
| Task-Dependent Gaze Transition | 2018-03 | ECCV 2018 | Learns task-dependent attention transitions for gaze prediction in egocentric video | [Paper](https://arxiv.org/abs/1803.09125) |
| Future Person Localization | 2017-11 | CVPR 2018 | Predicts where people will appear in future frames from a first-person wearable camera | [Paper](https://arxiv.org/abs/1711.11217) |
| First-Person Activity Forecasting | 2016-12 | ICCV 2017 Oral | DARKO online inverse-reinforcement-learning system for forecasting actions and active objects | [Paper](https://arxiv.org/abs/1612.07796) |
| Unsupervised Important Objects | 2016-11 | ICCV 2017 | Detects important first-person objects without wearer labels using cross-pathway visual/spatial supervision | [Paper](https://arxiv.org/abs/1611.05335) |
| Ego-Surfing | 2016-06 | IEEE TPAMI | Localizes a person in first-person videos using ego-motion signature correlation across wearable-camera views | [Paper](https://arxiv.org/abs/1606.04637) |
| First-Person Pose Recognition | 2015-06 | CVPR 2015 | Uses egocentric workspaces and camera geometry for first-person human pose recognition | [Paper](https://openaccess.thecvf.com/content_cvpr_2015/html/Rogez_First-Person_Pose_Recognition_2015_CVPR_paper.html) |
| Egocentric FOV Localization | 2015-01 | WACV 2015 | Localizes the camera wearer's first-person field of view in overhead/surveillance video | [Paper](https://arxiv.org/abs/1510.02073) |

### Practical Tooling

| Tool | Released | Venue | Use |
| :--- | :---: | :---: | :--- |
| [LightMem-Ego](https://github.com/zjunlp/LightMem-Ego) | 2026-07 | arXiv | MIT-licensed streaming visual-audio memory for smartphones and Rokid AI glasses, with hierarchical retrieval for object finding, conversation recall, summaries, routines, and evidence-grounded answers. |
| [OpenGlass Visual Assistance](https://github.com/OpenSQZ/OpenGlass) | 2026-07 | ACL 2026 System Demonstrations | Local-first ESP32 smart-glasses sensing with nearby-device MLLM inference, speech output, and public evaluation assets. |
| [OpenGlass Event Eyewear](https://arxiv.org/abs/2606.07431) | 2026-06 | arXiv | Low-power open AI eyewear platform with event-based vision support for on-device smart-glasses research. |
| [EgoKit](https://egokit.chuange.org/) | 2026-05 | arXiv | Low-cost synchronized ego/wrist recording workflow across phones, smart glasses, and XR hosts. |
| [GBAT](https://arxiv.org/abs/2605.22962) | 2026-05 | arXiv | Annotating egocentric eye-tracking and video in child-caregiver interaction studies. |
| [MobileEgo Anywhere](https://arxiv.org/abs/2605.05945) | 2026-05 | arXiv | Commodity-phone STERA tooling plus a gated 200-hour, 584-session release with 10M frames, pose, IMU, MANO hands, language, and about 1.6 TB of data. |
| [VisionClaw](https://arxiv.org/abs/2604.03486) | 2026-04 | arXiv | Always-on wearable AI-agent system on Ray-Ban Meta smart glasses, coupling live egocentric perception with speech-driven task execution. |
| [HOMIE-toolkit](https://github.com/Ropedia/HOMIE-toolkit) | 2026-03 | GitHub | Loading and visualizing Xperience-10M HDF5 annotations, calibration, SLAM, hand/body mocap, depth, IMU, and point clouds. |
| [RaycastGrasp](https://arxiv.org/abs/2510.22113) | 2025-10 | ICIR 2025 | Egocentric gaze-guided MR headset interface for robotic object retrieval and manipulation. |
| [AiGet](https://arxiv.org/abs/2501.16240) | 2025-01 | CHI 2025 | Smart-glasses assistant for gaze/context/profile-driven informal learning during everyday moments. |
| [HUX](https://arxiv.org/abs/2407.19492) | 2024-07 | arXiv | Always-on smart-glasses / XR companion concept with gaze, environment context, verbal context, and memory storage. |
| [HOT3D tooling](https://facebookresearch.github.io/hot3d/) | 2024-06 | project page | Loading HOT3D hand/object/camera pose annotations and models. |
| [Ego-Exo4D CLI and docs](https://ego-exo4d-data.org/) | 2023-11 | project page | Downloading synchronized ego-exo data and annotations. |
| [EgoObjects API](https://github.com/facebookresearch/EgoObjects) | 2023-09 | ICCV 2023 | Working with category and instance-level egocentric object labels. |
| [EgoBlur](https://arxiv.org/abs/2308.13093) | 2023-08 | arXiv | Privacy-preserving blur pipeline and responsible-innovation analysis for Project Aria egocentric capture. |
| [Project Aria Tools](https://github.com/facebookresearch/projectaria_tools) | 2023-08 | arXiv | Reading Aria VRS, calibration, MPS, trajectory, gaze, and dataset artifacts. |
| [VISOR API](https://github.com/epic-kitchens/VISOR) | 2022-09 | GitHub | Loading dense EPIC-KITCHENS hand/object masks and relations. |
| [HOI4D tooling](https://hoi4d.github.io/) | 2022-03 | project page | Loading RGB-D frames, point clouds, object meshes, and pose/segmentation annotations. |
| [Ego4D CLI and docs](https://ego4d-data.org/) | 2021-10 | project page | Downloading and working with Ego4D data after license approval. |
| [PAL](https://arxiv.org/abs/2105.10735) | 2021-05 | CVPR 2021 EPIC Workshop | Wearable personalized visual-context detection for privacy-preserving intelligence augmentation. |

## Adjacent and Related Resources

These resources are **not first-person/egocentric**, but they are close neighbors that egocentric research routinely builds on or compares against — large robot-learning corpora, multi-view robotic benchmarks, autonomous-driving 4D data, and general long-video reasoning. They are kept out of the main atlas to keep the egocentric scope clean, and are tagged `scope: adjacent` in [`data/resources.yml`](data/resources.yml).

| Resource | Released | Venue | Scale / signal | Why it is adjacent (not egocentric) | Status |
| :--- | :---: | :---: | :--- | :--- | :---: |
| [AWM Navigation Pretraining Corpus](https://huggingface.co/datasets/Yangyihui/awm-nav-pretrain) | 2026-07 | Hugging Face | Public 198.1 GB corpus with 23,076 indoor/outdoor robot-view clips and paired Gemini-generated spatial/action labels; source-derived reuse terms are incomplete | Robot navigation observations rather than human wearable capture | partial |
| [Think at 5 Hz, Act at 20 Hz](https://arxiv.org/abs/2607.15621) | 2026-07 | arXiv | Asynchronous driving VLA with a frozen 7B reasoner and fast action expert, raising CARLA route completion from 37.0 to 94.0 at fresh 20 Hz control | Autonomous-driving camera input rather than human wearable capture | watch |
| [IMBench](https://imbench.org/) | 2026-07 | RSS 2026 SemRob Workshop | Open benchmark with 35 tasks, seven categories, and 14K trajectories integrating physical reasoning with executable manipulation | Robot-manipulation benchmark rather than human wearable capture | open |
| [AC-VLA](https://arxiv.org/abs/2607.15714) | 2026-07 | arXiv | Compositional VLA training with instruction decomposition, trajectory alignment, and wrist-view masking; reports about 28% absolute LIBERO-OOD improvement | Robot VLA method rather than a human first-person resource | watch |
| [SkillNav](https://arxiv.org/abs/2607.15758) | 2026-07 | arXiv | Training-free object-goal navigation skills written into a curiosity map, reaching 43.2 SPL and 75.9% success on HM3D v0.2 | Robot navigation observations rather than human wearable capture | watch |
| [Orbis 2](https://lmb-freiburg.github.io/orbis2.github.io/) | 2026-07 | arXiv | Hierarchical driving world model that separates long-horizon scene structure from detailed generation; code and checkpoints remain coming soon | Autonomous-driving world model rather than human wearable capture | watch |
| [Data and Learning Where it Matters](https://arxiv.org/abs/2607.15982) | 2026-07 | arXiv | Targeted collection and offline RL for contact-critical segments averages 96% success across four real tasks from 2-2.5 hours of data | Robot contact-rich manipulation rather than human wearable capture | watch |
| [MotionForesight](https://motionforesight.github.io/) | 2026-07 | arXiv | Forecasts future object-centered 3D scene flow by repurposing frozen video and tracking priors trained on 40K monocular human-object videos | General monocular interaction video without a wearable-capture requirement | watch |
| [VTM-Nav](https://arxiv.org/abs/2607.14514) | 2026-07 | arXiv | Training-free object-goal navigation with persistent visual-topological room/object memory, coarse-to-fine retrieval, and a conservative execution guard | Robot navigation memory rather than human wearable capture | watch |
| [SafeRelBench](https://arxiv.org/abs/2607.14543) | 2026-07 | arXiv | 507 household-agent evaluations testing support, containment, and proximity constraints before risk-prone actions | Robot-agent spatial-safety evaluation rather than human wearable capture | watch |
| [SoftNav](https://arxiv.org/abs/2607.14586) | 2026-07 | IROS 2026 | Continuous 3D soft tokens ground a frozen VLM in detected objects and frontiers using about 1,200 samples and 17M trainable parameters | Robot object-goal navigation rather than human wearable capture | watch |
| [Representation-Aligned Tactile Grounding](https://arxiv.org/abs/2607.14609) | 2026-07 | arXiv | Latent tactile predictor aligns intermediate VLA features with future contact consequences without reconstructing noisy raw tactile signals | Robot tactile-VLA learning rather than human wearable capture | watch |
| [Action QFormer](https://arxiv.org/abs/2607.14635) | 2026-07 | arXiv | Instruction-conditioned query interface reorganizes inherited multimodal features before action generation, with large reported sim-to-real gains | Robot navigation VLA architecture rather than human wearable capture | watch |
| [Reflex](https://arxiv.org/abs/2607.14695) | 2026-07 | ICML 2026 | Streaming flow-matching VLA runtime reports 2.58x speedup, stable 50 Hz control, and up to 54% lower reaction latency | Robot VLA inference framework rather than human wearable capture | watch |
| [FoMoVLA](https://liauto-research.github.io/FoMoVLA/) | 2026-07 | arXiv | Future-feature foresight and sparse 2D trajectories jointly supervise target states and motion paths for continuous policies | Robot VLA foresight method rather than human wearable capture | watch |
| [LifelongVLA](https://arxiv.org/abs/2607.14852) | 2026-07 | arXiv | Continual VLA learning separates reusable shared knowledge from task-specific experts while controlling forgetting | Robot continual-learning method rather than human wearable capture | watch |
| [Steering Robustness into World Action Models](https://arxiv.org/abs/2607.14943) | 2026-07 | arXiv | Robustness-oriented WAM training uses uncertainty-aware perturbations and corrective trajectories to improve recovery under distribution shift | Robot world-action-model training rather than human wearable capture | watch |
| [AeroAct](https://arxiv.org/abs/2607.14997) | 2026-07 | arXiv | Vision-language-action policy couples aerial perception, language-conditioned planning, and low-level flight control | Aerial-robot VLA rather than human wearable capture | watch |
| [DriftWorld](https://driftworld.github.io/) | 2026-07 | arXiv | Driving world model explicitly represents scene dynamics and controllable ego motion for long-horizon generation | Autonomous-driving world modeling rather than human wearable capture | watch |
| [BadWAM](https://arxiv.org/abs/2607.15207) | 2026-07 | arXiv | Benchmark and attack framework studies backdoors in world-action models across visual triggers and action outcomes | Robot WAM security rather than human wearable capture | watch |
| [RoboTTT](https://research.nvidia.com/labs/gear/robott/) | 2026-07 | arXiv | One-shot human-video imitation combines online test-time training with world-model supervision, reporting five-minute learning of a 10-stage assembly task | Human-video robot adaptation without a released wearable-video corpus | watch |
| [PhysClaw-0](https://open-gigaai.github.io/PhysClaw/) | 2026-07 | arXiv | Open collect-verify-reset system that stores and reuses language corrections, reducing human working time to 16% and raising single-attempt success from 12.5% to 47.5% | Robot autonomous-data-collection toolkit rather than human wearable capture | open |
| [Industrial Dexterity Benchmark](https://arxiv.org/abs/2607.14021) | 2026-07 | arXiv | Industrial hardware boards plus DAG-ROS and AG-iDP3 for cable, harness, and gearbox tasks; best cable setup reaches 78% versus 36% for single-camera RGB | Industrial robot benchmark rather than human wearable capture | watch |
| [GigaWorld-Policy-0.5](https://open-gigaai.github.io/giga-world-policy/) | 2026-07 | arXiv | Open action-centered WAM with mixed world/action training, MoT experts, AutoResearch, and 85 ms RTX 4090 inference without future-video decoding | Robot world-action model rather than human wearable video | open |
| [VSI-Super-Wild](https://vsi-super-wild.github.io/) | 2026-07 | ECCV 2026 | 6,980 human-verified spatial QA pairs over 442 continuous panoramic videos totaling 284.52 hours; public 2.67 TB data lacks explicit reuse terms | Panoramic YouTube-derived video rather than wearer capture | partial |
| [REAL / REAL-Bench](https://github.com/InternRobotics/REAL) | 2026-07 | ECCV 2026 | Open mobile-manipulation framework and 241-task benchmark reporting 56.9% interactive and 78.3% physical-robot success, with code and 3.92 GB of data | Robot-only open-world manipulation rather than human wearable capture | open |
| [UESF-Bench / SeekFollow-VLA](https://arxiv.org/abs/2607.13621) | 2026-07 | arXiv | Unified language-guided human seeking and following with semantic exploration, delayed identity grounding, phase switching, and recovery | Robot-agent human search/following rather than human wearable video | watch |
| [JOP-VLN](https://qingrongh.github.io/JOP-VLN) | 2026-07 | IROS 2026 | Joint imitation, DAgger, and reinforcement learning reaches 69.9% success on R2R and 68.0% on RxR | Navigation-agent observations rather than human wearable capture | watch |
| [Reverse to Advance](https://arxiv.org/abs/2607.13455) | 2026-07 | arXiv | Trains difficult manipulation from easier reversed rollouts using automated collection, temporal inversion, kinematic filtering, critic filtering, and iterative refinement | Robot manipulation data collection rather than human first-person data | watch |
| [Anchor-Align](https://anchoralignvla.github.io/) | 2026-07 | arXiv | Representation anchoring plus language-action alignment improves physical xArm success from 28% to 54% and 37% to 60%; linked code currently returns 404 | Robot-camera VLA finetuning rather than human wearable capture | watch |
| [JITOMA / JITOMA-Bench](https://arxiv.org/abs/2607.13245) | 2026-07 | arXiv | Just-in-time scene-graph growth activates task-relevant memory anchors to curb long-horizon perceptual saturation, graph size, and caption latency | Robot scene-graph memory rather than human wearable video | watch |
| [WANDA / Worlds in One Demo](https://wanda.lecar-lab.org/) | 2026-07 | arXiv | Public 16,922-episode, roughly 248-hour synthetic mobile-manipulation set expands one real demonstration per task across generated 3D worlds | Synthetic robot trajectories rather than human wearable capture | open |
| [GPUSimBench](https://arxiv.org/abs/2607.13059) | 2026-07 | IROS 2026 | Tests Isaac Lab and Genesis for real-to-sim physical consistency, parallel throughput and memory, plus run-to-run and inter-environment nondeterminism | Robot-simulator infrastructure benchmark without human capture | watch |
| [HRIBench (Interaction-Centric VLA)](https://arxiv.org/abs/2607.13056) | 2026-07 | arXiv | 13 role-conditioned tasks and 650+ episodes assess intent, synchronization, responsiveness, protocol, and safety across instructor, collaborator, and intruder roles | Robot-view collaboration benchmark rather than human wearable capture | watch |
| [DenseReward](https://arxiv.org/abs/2607.13033) | 2026-07 | arXiv | Dense frame-level vision-language rewards trained with automatically synthesized physical failures for manipulation, MPC, and RL; the claimed release page currently returns 404 | Robot-camera reward learning rather than human wearable capture | watch |
| [FlowWAM](https://flow-wam.github.io/) | 2026-07 | arXiv | Open optical-flow world-action model reporting 92.94%/92.14% RoboTwin Clean/Random success and a 63.71 WorldArena EWMScore, with code, checkpoints, and flow data | Robot-only manipulation and world modeling rather than human wearable capture | open |
| [ChunkFlow](https://arxiv.org/abs/2607.12992) | 2026-07 | arXiv | Continuity-consistent chunked-policy learning with editable overlap zones, seam and derivative losses, robust history training, and AWAC adaptation | Robot-policy stability method without a human first-person resource | watch |
| [ExToken](https://arxiv.org/abs/2607.12931) | 2026-07 | arXiv | Reinforcement fine-tuning that conditions VLA exploration on demonstration-derived behavioral tokens and learns a deployment-time token selector | Robot VLA exploration method rather than egocentric human data | watch |
| [Hy-Embodied-VLM-1.0](https://github.com/Tencent-Hunyuan/HY-Embodied) | 2026-07 | arXiv | Open approximately 30B MoE embodied VLM activating about 3B parameters per token; evaluated on 38 benchmarks with first-place results on 19 among compared similarly sized models | General physical-world agent model rather than a human wearable resource | open |
| [Jetson-PI](https://github.com/PKU-SEC-Lab/Jetson-PI) | 2026-07 | arXiv | Open foresight-aligned asynchronous VLA stack reporting 8.66x higher control frequency than naive PyTorch, 5.41x over vla.cpp, and +14.8% average success over VLASH | Onboard robot-control runtime rather than human first-person capture | open |
| [TrustVLA](https://arxiv.org/abs/2607.12571) | 2026-07 | arXiv | Retraining-free VLA backdoor defense using evidence-evolution monitoring, counterfactual trigger localization, and localized inpainting | Robot VLA security method rather than an egocentric data resource | watch |
| [Self-in-Space / SIS-Bench](https://choucisan.github.io/publications/self-in-space/) | 2026-07 | ACM MM 2026 | Open 4,856-question benchmark over 1,646 UAV videos and 13 tasks, plus 54,298 training examples, code, and a motion-aware adapter | Agent-centered UAV onboard video rather than human wearable capture | open |
| [VistaVLA](https://arxiv.org/abs/2607.12356) | 2026-07 | arXiv | 3D-Gaussian-grounded VLA reporting 99% context-token reduction, +22.8% success across seven real tasks, and +30.0% OOD over VLA-Adapter | Multi-view robot manipulation rather than human wearable video | watch |
| [Efficient VLA Inference via Temporal Redundancy Reduction](https://arxiv.org/abs/2607.12287) | 2026-07 | arXiv | Dynamic visual-token updates plus two-step diffusion action sampling report more than 2x speedup and up to 98% success across LIBERO, RoboTwin, and real robots | Robot VLA inference optimization rather than a first-person resource | watch |
| [REGRIND](https://yunhaifeng.com/REGRIND) | 2026-07 | arXiv | Single-demonstration retargeting plus residual RL for scissors and screwdriver use on LEAP and WUJI hands; linked code repository is currently unavailable | Human hand-object references and robot control, but no wearable-video release | watch |
| [E-VQA / ST-Evidence](https://github.com/SalesforceAIResearch/EVQA) | 2026-07 | ECCV 2026 | Open benchmark for answers with temporal segments and tracked object masklets, plus 160K instruction examples and released 3B/7B models | General video QA and evidence grounding rather than egocentric video | open |
| [Xiaomi-Robotics-U0](https://arxiv.org/abs/2607.11643) | 2026-07 | arXiv | 38B embodied-synthesis model for multi-view scenes, embodiment transfer, editing, and video; the claimed release URL currently returns 404 | Robot and embodied-scene generation rather than human wearable capture | watch |
| [World Action Models to Embodied Brains Roadmap](https://arxiv.org/abs/2607.11689) | 2026-07 | arXiv | Roadmap spanning WAM representations, standardization, physical harnesses, shared contracts, and closed-loop post-training | Broad physical-intelligence position paper rather than an egocentric resource | watch |
| [DA-Nav / ReDA](https://arxiv.org/abs/2607.11638) | 2026-07 | arXiv | Direction-aware city-scale VLN and recovery data, reporting 56.16% unseen-city success and kilometer-scale robot trials | Robot-agent egocentric navigation, not human wearable capture | watch |
| [Robot-Centric Pointmaps](https://davian-robotics.github.io/pointmap/) | 2026-07 | arXiv | Robot-frame per-pixel XYZ improves pi0.5 by 7.6 points and SmolVLA by 4.2 on RoboCasa, with larger gains under unseen real-camera viewpoints | Robot-camera VLA representation rather than human first-person data | watch |
| [TeleDexter](https://bigai-dex.github.io/blog/teledexter/) | 2026-07 | arXiv | Hand-object co-tracking controller reporting 75.2% average success across seven tasks and two dexterous hands, with demonstrations used for behavior cloning | Robot teleoperation from human references, not a released wearable-video resource | watch |
| [WALA](https://liujiahao2077.github.io/WALA.github.io) | 2026-07 | arXiv | Executable latent actions from labeled demonstrations and action-free videos using DINOv3 feature deltas, depth, and latent world modeling | General robot-policy learning; code is still marked coming soon and no egocentric corpus is released | watch |
| [SLVMBench](https://arxiv.org/abs/2607.11312) | 2026-07 | arXiv | 2,261 questions over 1,220 videos test learning a tutorial embedded in a 2-3-hour stream and applying it to an ongoing task | General long-video skill memory rather than first-person-centered data | watch |
| [Lumo-2](https://arxiv.org/abs/2607.11270) | 2026-07 | arXiv | Latent WAM with staged action-dynamics-vision-language alignment for scalable, OOD, long-horizon, and dexterous robot learning | Robot-centered WAM/VLA method without a wearable-video release | watch |
| [AdvNav](https://arxiv.org/abs/2607.11063) | 2026-07 | ACM MM 2026 | Black-box adversarial attack on first-person VLN observations with 49.70%-87.30% reported attack success against HAMT and MapGPT | Navigation-agent views rather than human wearable video | watch |
| [yyyyywv/egocentric](https://huggingface.co/datasets/yyyyywv/egocentric) | 2026-07 | Hugging Face | 32.8 GB, 1,019 robot episodes, and 994,459 frames across seven task groups from eye/head and wrist cameras; downloadable but the card omits provenance and capture documentation | Robot-mounted cameras and action/state streams rather than human wearable capture | partial |
| [TactiDex](https://tactidex.github.io/) | 2026-07 | arXiv | Human-demonstration benchmark aligning whole-hand tactile pressure, hand kinematics, object 6D states, language, and task phases, plus tactile-guided single/bimanual robot transfer | Tactile-glove and motion-capture demonstrations, not human wearable video | watch |
| [DemoBridge](https://gitlab.kuleuven.be/u0123974/demo-bridge/) | 2026-07 | RSS 2026 RoboData Workshop | Apache-2.0 toolkit that converts single-view stereo hand demonstrations into collision-aware, physics-validated robot trajectories | Human-hand retargeting without explicitly egocentric capture | open |
| [PhysV2A](https://arxiv.org/abs/2607.09365) | 2026-07 | arXiv | Converts video-derived 6D object motion into feasible robot trajectories using grasp-conditioned reachability checks and semantic-mask-constrained refinement | Generic video-to-robot transfer rather than human wearable capture | watch |
| [ACE-Brain-0.5](https://huggingface.co/ACE-Brain/ACE-Brain-0.5-8B) | 2026-07 | arXiv | Public Qwen3-VL-derived 8B-class checkpoint unifying spatial perception, planning, robot action generation, progress monitoring, and self-improvement across 15 benchmarks; no model license is declared | Robot-centric embodied foundation model with egocentric spatial reasoning, not human wearable capture | partial |
| [DexVerse](https://ycyao216.github.io/DexVerse.site/) | 2026-07 | arXiv | 100-task dexterous-manipulation benchmark across three arms and six hands, with VR teleoperation and 3,180 reported demonstrations; core BSD-3-Clause suite is live while full data/tooling remain pending | Robot simulation and teleoperation benchmark, not a human wearable-video corpus | partial |
| [FabriVLA](https://arxiv.org/abs/2607.08575) | 2026-07 | arXiv | Compact 1B VLA with InternVL3.5 and a flow-matching action head, reporting 90.0% tier-average success on Meta-World MT50 | Simulation-focused robot VLA, not human egocentric capture | watch |
| [Harness VLA](https://arxiv.org/abs/2607.08448) | 2026-07 | arXiv | Memory-guided agentic harness composing a frozen VLA with retryable contact primitives and fixed analytic primitives across LIBERO-Pro, RoboCasa365, and RoboTwin C2R | Robot VLA planning harness, not a first-person resource | watch |
| [AnyDexRT](https://chenxi-wang.github.io/projects/anydexrt/) | 2026-07 | arXiv | Calibration-free hand retargeting with self-supervised fingertip correspondence, few-shot human guidance, and contact-aware pinch refinement | Human-hand teleoperation method, not egocentric video data | watch |
| [TFP](https://arxiv.org/abs/2607.08283) | 2026-07 | RSS 2026 SemRob Workshop | Event-sensitive memory-action fusion for a 3.3B VLA, evaluated on LIBERO, LIBERO-plus, and MIKASA ShellGameTouch | Robot VLA memory method without wearable capture | watch |
| [LingBot-VA 2.0](https://arxiv.org/abs/2607.08639) | 2026-07 | arXiv | Native video-action model with a semantic tokenizer, causal pretraining, sparse MoE backbone, and asynchronous closed-loop inference | Robot video-action foundation model, not human first-person data | watch |
| [LEEVLA](https://arxiv.org/abs/2607.08182) | 2026-07 | arXiv | Task-aware VLA using drift-guided visual prioritization and structured latent feature-flow generation; the linked repository does not yet match the paper | Robot VLA architecture without human wearable capture | watch |
| [Video-Action Generalization Gap / Temporal Ratio](https://umishra.me/temporal-ratio/) | 2026-07 | arXiv | Diagnostic Temporal Ratio and adaptive inference guidance for compositional generalization in video-action models on LIBERO and real robot tasks | Robot video-action analysis, not a human first-person resource | watch |
| [GIRAF](https://arxiv.org/abs/2607.07880) | 2026-07 | CVPR 2026 HuMoGen Workshop | Text-conditioned full-body interaction generation with articulated objects, object-centric contact representations, and contact augmentation | Generated third-person human-object motion, not wearable capture | watch |
| [LingBot-World 2.0](https://arxiv.org/abs/2607.07534) | 2026-07 | arXiv | Interactive world simulator with unbounded interaction horizon, 720p/60 FPS real-time distillation, richer action/event controls, and 14B/1.3B models | General interactive world simulator, not human first-person capture | watch |
| [RoboDojo](https://arxiv.org/abs/2607.04434) | 2026-07 | arXiv | Unified sim-and-real robot manipulation benchmark with 42 simulation tasks, 18 real tasks, remote evaluation, 30 integrated policies, and a leaderboard | Robot-policy benchmark, not human wearable capture | watch |
| [LaMem-VLA](https://arxiv.org/abs/2607.07608) | 2026-07 | arXiv | Latent-memory-native VLA framework that reconstructs short- and long-term history into latent memory tokens for long-horizon manipulation | Robot VLA memory architecture, not a human first-person resource | watch |
| [TouchWorld](https://arxiv.org/abs/2607.07287) | 2026-07 | arXiv | Predictive-and-reactive tactile foundation model separating vision-language planning, tactile world prediction, action generation, and residual refinement | Robot tactile manipulation method, not wearable capture | watch |
| [WAM-TTT](https://arxiv.org/abs/2607.06988) | 2026-07 | arXiv | Test-time training framework steering frozen WAMs from unlabeled human videos through adaptive memory and paired human-robot meta-training | Human-video-to-robot WAM method, not a human wearable dataset | watch |
| [EAGOR](https://arxiv.org/abs/2607.06165) | 2026-07 | arXiv | Training-free spherical-belief framework for 360-degree directional reasoning on HOS, OSR-Bench, and legged-robot navigation | Embodied 360-camera robot/agent reasoning, not human wearable capture | watch |
| [VLA Models Review](https://arxiv.org/abs/2607.06706) | 2026-07 | arXiv | Survey of 183 VLA contributions from 2017-2026 across architectures, training recipes, bimanual coordination, UAVs, memory, and world models | Robot/UAV VLA survey, not an egocentric resource | watch |
| [NativeMEM](https://arxiv.org/abs/2607.06678) | 2026-07 | arXiv | VLA memory compression that turns each historical camera frame into a single memory token for low-latency long-horizon manipulation | Robot VLA memory method, not human wearable capture | watch |
| [Lift3D-VLA](https://arxiv.org/abs/2607.06564) | 2026-07 | arXiv | 3D geometry- and dynamics-aware VLA with point-cloud reasoning, geometry-centric masked autoencoding, and 22 sim / 8 real tasks | Robot-only 3D VLA method, not human first-person data | watch |
| [Pelican-VLA 0.5](https://arxiv.org/abs/2607.06655) | 2026-07 | arXiv | Unified VLA report combining vision-language understanding, future-frame generation, action prediction, and reasoning-slot attention | Robot VLA architecture, not human wearable capture | watch |
| [ActionCache](https://arxiv.org/abs/2607.06370) | 2026-07 | arXiv | Training-free cache/refinement method accelerating flow-matching VLA action heads by reusing intermediate actions with compact multimodal keys | Robot VLA inference method, not a first-person resource | watch |
| [Smooth Operator / SBR](https://arxiv.org/abs/2607.07491) | 2026-07 | arXiv | Sampling-based hand retargeter for low-jitter real-time teleoperation, evaluated in simulation and an 18-participant manipulation study | Teleoperation/retargeting method, not a first-person dataset | watch |
| [LongVQUBench](https://arxiv.org/abs/2607.01086) | 2026-07 | ECCV 2026 | 1,200+ long videos and 1,500 questions for video-quality reasoning, spanning movies, documentaries, surveillance, egocentric recordings, and animation | Broad long-video quality benchmark with egocentric recordings as one slice, not centered on wearable capture | watch |
| [TAP VLA](https://arxiv.org/abs/2607.02466) | 2026-07 | ICML 2026 | Task-agnostic VLA pretraining learns motor priors from unlabeled robot interaction data before language grounding | Robot/VLA pretraining, not human wearable capture | watch |
| [The Moving Eye](https://arxiv.org/abs/2607.02322) | 2026-07 | IROS 2026 | Hybrid dynamic data collection with one robot arm acting as a moving environmental camera while the other manipulates | Robot camera/viewpoint generalization, not human first-person capture | watch |
| [Bridge-WA](https://hcplab-sysu.github.io/BRIDGE-WA) | 2026-07 | arXiv | World-action framework distilling future-change tokens, change maps, and motion-flow maps into a VLA action transformer | Robot world-action model, not wearable capture | watch |
| [VLA-Corrector](https://arxiv.org/abs/2607.01804) | 2026-07 | arXiv | Lightweight detect-and-correct inference for action-chunked VLA policies using visual feature evolution | Robot VLA correction method, not human wearable capture | watch |
| [Embodied.cpp](https://arxiv.org/abs/2607.02501) | 2026-07 | arXiv | Portable C++ runtime for VLA/WAM inference on heterogeneous robots with adapters, head plugins, and robot deployment layers | Embodied robot runtime, not a human first-person resource | watch |
| [EVA-Client](https://arxiv.org/abs/2607.02646) | 2026-07 | arXiv | Unified real-robot client for policy deployment, data collection, evaluation, rollout logging, and comparison views | Robot policy client and evaluator, not wearable capture | watch |
| [InternVLA-A1.5](https://arxiv.org/abs/2607.04988) | 2026-07 | arXiv | Robot VLA with native VLM backbone, continuous action expert, subtask/VQA supervision, and latent foresight tokens | Robot-only VLA architecture, not human first-person data | watch |
| [SIEVE](https://arxiv.org/abs/2607.06442) | 2026-07 | arXiv | Structure-aware selection of VLA demonstrations by reusable primitives, composition patterns, and medoid trajectories | Robot demonstration-selection method, not egocentric capture | watch |
| [SVA / Look Before You Leap](https://arxiv.org/abs/2607.03751) | 2026-07 | arXiv | Distills tree-search rollouts into an action evaluator for frozen VLA policies at test time | Robot VLA action-evaluation method, not wearable capture | watch |
| [WorldOdysseyBench](https://arxiv.org/abs/2606.31672) | 2026-06 | arXiv | 600+ first/third-person interactive world-model test cases with 10-60s WASD interaction and action, vision, physics, and memory metrics | General interactive world-model benchmark, not human wearable capture | watch |
| [Qwen-RobotNav](https://arxiv.org/abs/2606.18112) | 2026-06 | arXiv | Qwen-branded navigation model trained on 15.6M samples with task modes and controllable visual-history observation parameters | Robot/agent navigation model, not human wearable capture | watch |
| [Qwen-RobotWorld](https://arxiv.org/abs/2606.17030) | 2026-06 | arXiv | Language-conditioned embodied video world model with an 8.6M video-text EWK corpus over 20+ embodiments and 500+ action categories | Robot, navigation, driving, and human-to-robot world modeling rather than human first-person capture | watch |
| [FutureNav](https://arxiv.org/abs/2606.30367) | 2026-06 | arXiv | Unified world-action modeling for vision-and-language navigation with action, dynamics, and future spatial-state objectives | Navigation-agent WAM, not human wearable capture | watch |
| [ZR-0](https://github.com/RUCKBReasoning/ZR-0) | 2026-06 | arXiv | 2.6B VLA trained with dense embodied chain-of-thought supervision over ProcCorpus-60M for cross-embodiment manipulation | Robot VLA pretraining, not a human first-person dataset | watch |
| [VLK](https://vision-language-kinematics.github.io/) | 2026-06 | arXiv | 48K synthetic humanoid loco-manipulation trajectories with rendered egocentric observations, instructions, and whole-body kinematics | Synthetic humanoid supervision, not real human wearable capture | watch |
| [HUMEMBR](https://arxiv.org/abs/2606.30404) | 2026-06 | IROS 2026 | Human-centered long-term memory for embodied robot QA and routine-conditioned navigation | Robot memory/navigation system, not an egocentric capture resource | watch |
| [RhinoVLA](https://arxiv.org/abs/2606.07383) | 2026-06 | arXiv | Edge-deployable VLA using a token-efficient Qwen3-VL backbone, Action Expert, View Registry, and hardware-aware execution | Robot-only VLA deployment system, not wearable capture | watch |
| [OpenEAI-Platform](https://arxiv.org/abs/2606.03392) | 2026-06 | arXiv | OpenEAI-Arm plus OpenEAI-VLA built on Qwen3-VL-4B and a Diffusion Transformer action head | Robot-arm hardware/software platform, not human first-person data | watch |
| [SAGE-Nav](https://arxiv.org/abs/2606.25497) | 2026-06 | arXiv | LLM-planned object-goal navigation with dynamic scene graphs and egocentric robot observations | Robot object-navigation method, not human wearable capture | watch |
| [USS](https://arescheah.github.io/uss-project-page/) | 2026-06 | arXiv | Unified spatial-semantic prompting for embodied visual tracking with text, point, box, and mask prompts | Robot/agent tracking method, not human first-person capture | watch |
| [RoboAtlas](https://arxiv.org/abs/2606.26046) | 2026-06 | arXiv | Contextual Active SLAM with OpenRoboVox semantic mapping and egocentric VLM reasoning | Robot active-SLAM/navigation system, not human wearable capture | watch |
| [iCrowdNav](https://arxiv.org/abs/2606.26047) | 2026-06 | arXiv | Intention-aware crowd navigation from egocentric robot observations and human-pose interaction encoding | Robot crowd-navigation method, not human wearable capture | watch |
| [Cloak](https://arxiv.org/abs/2606.22836) | 2026-06 | arXiv | Masks the robot end-effector from wrist-camera VLA observations for zero-shot cross-embodiment transfer | Wrist-camera robot VLA method, not human first-person capture | watch |
| [OpenHLM](https://openhlm-project.github.io/) | 2026-06 | arXiv | Whole-body humanoid loco-manipulation recipe with teleoperation, VLA design, and HuMI co-training | Robot-centered humanoid VLA recipe, not human wearable capture | watch |
| [UniviewVLA](https://arxiv.org/abs/2606.21501) | 2026-06 | arXiv | Multiview VLA with world modeling for occlusion-aware robot manipulation from agent and wrist cameras | Robot VLA/world-modeling method, not human first-person capture | watch |
| [ContactWorld](https://arxiv.org/abs/2606.13877) | 2026-06 | arXiv | Vision-tactile world-model benchmark over 12 contact-rich manipulation tasks with wrist/front views, point clouds, and tactile force fields | Robot contact-rich manipulation benchmark, not human wearable capture | watch |
| [3DG-VLN / UAV-VLN-FOV](https://github.com/xuefanfu/3DG-VLN) | 2026-06 | arXiv | 2,717 target-visible UAV trajectories with high-resolution egocentric observations and 3D waypoint labels | Aerial-agent navigation benchmark, not human wearable capture | watch |
| [NavWAM](https://arxiv.org/abs/2606.13494) | 2026-06 | arXiv | Navigation world-action model predicting future egocentric visual observations and action sequences for goal-conditioned visual navigation | Robot visual-navigation world model, not human wearable capture | watch |
| [IntentNav](https://arxiv.org/abs/2606.08029) | 2026-06 | arXiv | Spatial-visual object-navigation policy learned from human demonstrations with frontier probing and spatial memory | Object-navigation work from human demonstrations, not a human wearable resource | watch |
| [AlloSpatial](https://arxiv.org/abs/2606.08952) | 2026-06 | arXiv | Agentic spatial-reasoning harness that converts local egocentric observations into allocentric spatial representations | General spatial-reasoning framework, not a wearable capture dataset | watch |
| [World-Language-Action Model](https://arxiv.org/abs/2606.05979) | 2026-06 | arXiv | Unified model predicting subtasks, subgoal images, and robot actions while learning from egocentric videos and robot trajectories | Broader embodied model using egocentric video among robot data, not centered on human wearable capture | watch |
| [ManiSplat](https://arxiv.org/abs/2606.10645) | 2026-06 | arXiv | Manipulation trajectory synthesis from monocular video using decoupled 3D Gaussian Splatting | Monocular manipulation synthesis; first-person human capture not confirmed | watch |
| [DexFuture](https://arxiv.org/abs/2606.05699) | 2026-06 | arXiv | Hierarchical future-state visuomotor targeting for bimanual dexterous tool use | Robot dexterity method, not human first-person data | watch |
| [GRAIL](https://arxiv.org/abs/2606.05160) | 2026-06 | arXiv | Digital-twin pipeline generating humanoid loco-manipulation demonstrations from 3D assets and video priors | Humanoid demonstration generation, not a human wearable dataset | watch |
| [DataLadder](https://arxiv.org/abs/2606.16776) | 2026-06 | arXiv | Simulation-enabled interconversion toolchain for robot trials, demonstrations, synthetic data, and evaluation assets | Embodied-data tooling rather than egocentric capture | watch |
| [EgoInfinity](https://huggingface.co/datasets/Rice-RobotPI-Lab/egoinfinity) | 2026-06 | arXiv | Public 46 GB preview with 104 Action100M clips and retargeted trajectories for four robot embodiments; the full web-scale engine is not released | Human-video-to-robot data engine, not centered on wearable first-person capture | partial |
| [LUCID](https://lucid-robot.github.io/) | 2026-06 | arXiv | Embodiment-agnostic intent model learned from unstructured human videos, paired with simulation-trained dexterous robot control | Unstructured human-video-to-robot transfer; source videos are not confirmed as egocentric wearable capture | watch |
| [Dexterous Point Policy](https://arxiv.org/abs/2606.10614) | 2026-06 | arXiv | Transfers raw human videos into dexterous hand policies through task-relevant 3D keypoints for hands and objects | Human demonstration video transfer, not confirmed first-person capture | watch |
| [TopoRetarget](https://arxiv.org/abs/2606.16272) | 2026-06 | arXiv | Interaction-preserving retargeting from human hand-object demonstrations to dexterous robot-hand references | Human hand-object retargeting method, not confirmed wearable first-person capture | watch |
| [WARP Retarget](https://warp-retarget.github.io/) | 2026-06 | arXiv | Whole-body-aware retargeting from offline human demonstrations into mobile-manipulator trajectories | Offline human-demonstration retargeting, not confirmed wearable first-person capture | watch |
| [V2P-Manip](https://arxiv.org/abs/2606.16436) | 2026-06 | arXiv | Learns dexterous manipulation from monocular human videos through 3D assets, trajectory estimation, physical refinement, and policy learning | Monocular human-video-to-robot work, not confirmed wearable capture | watch |
| [SeeTraceAct](https://arxiv.org/abs/2606.02745) | 2026-06 | arXiv | Demo-conditioned VLA with visibility-aware future end-effector traces and RoboCasa-DC cross-embodiment demonstration episodes | Robot VLA conditioned on demonstrations, not a human wearable dataset | watch |
| [What Matters When Cotraining Robot Manipulation Policies on Everyday Human Videos?](https://arxiv.org/abs/2606.06627) | 2026-06 | arXiv | 532 everyday human videos with 28 hours of high-quality hand labels for studying robot-policy cotraining under limited robot data | Everyday human-video transfer study, not scoped as egocentric capture | watch |
| [LARA](https://arxiv.org/abs/2606.07100) | 2026-06 | arXiv | Latent Action Representation Alignment for jointly optimizing latent action models and VLAs from unlabeled human videos | Human-video-to-VLA method, not itself an egocentric dataset | watch |
| [Video2Sim2Real](https://arxiv.org/abs/2606.08828) | 2026-06 | arXiv | Reconstructs a simulator-ready digital twin and robot/object motion priors from a single human manipulation video | Single-human-video robot skill acquisition, not confirmed first-person wearable data | watch |
| [HOWTransfer](https://arxiv.org/abs/2606.10743) | 2026-06 | arXiv | Localizes hand-object contact in human video demonstrations and retargets wrist trajectories into robot-executable motions | Hand-centric human-video-to-robot transfer, not confirmed egocentric wearable capture | watch |
| [Retrieve, Don't Retrain](https://arxiv.org/abs/2606.15631) | 2026-06 | arXiv | Retrieval-augmented VLA adaptation using pool-side demonstrations such as human-hand videos instead of per-task retraining | Robot VLA adaptation with human-hand video pools, not centered on first-person data | watch |
| [SERF](https://arxiv.org/abs/2606.12956) | 2026-06 | arXiv | Spatiotemporal environment and robot feature map updated from egocentric observations and proprioception for long-horizon mobile manipulation | Robot-centric policy work using egocentric observations, not human wearable capture | watch |
| [ImageWAM](https://arxiv.org/abs/2606.19531) | 2026-06 | arXiv | World-action model that uses image editing instead of dense video generation for robot action prediction | Robot WAM comparison point, not a human first-person resource | watch |
| [CHORD](https://nvidia-isaac.github.io/video_to_data/chord/) | 2026-06 | arXiv | NVIDIA contact-wrench-guided dexterous RL with 4,739 simulation tasks, 82.12% success over 1,831 evaluated tasks, whole-body transfer, and real-hardware results | Motion-capture and third-person human demonstrations rather than a wearable-video release; code remains forthcoming | watch |
| [JAXenstein](https://arxiv.org/abs/2605.19926) | 2026-05 | arXiv | JAX Wolfenstein 3D renderer for fast reinforcement-learning experiments in visual first-person tasks | Virtual first-person RL environment, not real egocentric capture | watch |
| [ACWM-Phys](https://arxiv.org/abs/2605.08567) | 2026-05 | arXiv | Controllable action-conditioned world-model benchmark for rigid, kinematic, deformable, and particle dynamics | Simulator benchmark for physical interaction, not human first-person capture | watch |
| [SpatialBench](https://ropedia.github.io/SpatialBench/) | 2026-05 | arXiv | Broad spatial foundation-model benchmark across viewpoints, scene domains, input densities, and hardware constraints | Useful context for egocentric spatial reasoning, but not centered on human wearable capture | watch |
| [LEXI-SG](https://ori-drs.github.io/lexisg-web/) | 2026-05 | arXiv | Monocular RGB open-vocabulary 3D scene-graph mapping validated on self-collected egocentric office sequences | Robot/agent mapping work, not centered on human wearable capture | watch |
| [EgoDyn-Bench](https://huggingface.co/datasets/TUM-AVS/EgoDyn-Bench-ECCV2026) | 2026-04 | ECCV 2026 | Public 1,000-clip physics-grounded driving benchmark with about 14K oracle-labelled QA pairs, dynamics arrays, and a 49-model reference leaderboard | Autonomous-driving ego-motion video rather than human or animal wearable capture | open |
| [DenseStep2M](https://huggingface.co/datasets/mingjige/DenseStep2M) | 2026-04 | arXiv | About 100K instructional videos and 2M dense procedural steps from automated long-video annotation | General instructional-video corpus with egocentric transfer tests, not first-person centered | watch |
| [StarVLA](https://arxiv.org/abs/2604.05014) | 2026-04 | arXiv | Modular VLA codebase supporting swappable VLM backbones such as Qwen-VL and world-model backbones such as Cosmos | VLA tooling for comparisons, not human first-person capture | watch |
| [VLA-Arena](https://arxiv.org/abs/2512.22539) | 2025-12 | ICML 2026 | Open-source VLA benchmark with 170 structured tasks and decoupled task, language, and visual perturbation axes | Robot VLA benchmark, not a human wearable/egocentric dataset | watch |
| [VLSA / AEGIS](https://arxiv.org/abs/2512.11891) | 2025-12 | IROS 2026 | Plug-and-play safety constraint layer for VLA policies plus SafeLIBERO safety-critical manipulation benchmark | Robot VLA safety architecture, not human wearable capture | watch |
| [MM-Nav](https://pku-epic.github.io/MM-Nav-Web/) | 2025-10 | arXiv | Multi-view VLA navigation model with 360-degree observations and synthetic expert data for reaching, squeezing, and avoiding | Robot/synthetic visual navigation rather than human wearable capture | watch |
| [Seeing Across Views / MV-RoboBench](https://github.com/microsoft/MV-RoboBench) | 2025-10 | ICLR 2026 | 1.7K curated QA items over eight subtasks for multi-view spatial reasoning of VLMs in robotic manipulation (ICLR 2026) | Multi-camera robot scenes, not wearable capture | open |
| [RoboPearls](https://arxiv.org/abs/2506.22756) | 2025-06 | arXiv | Editable 3D Gaussian video simulation for robot manipulation, evaluated on RLBench, COLOSSEUM, Ego4D, Open X-Embodiment, and real robots | Robot simulation/editing tool, not a human egocentric dataset | watch |
| [NORA](https://arxiv.org/abs/2504.19854) | 2025-04 | arXiv | 3B generalist VLA using Qwen2.5-VL-3B and 970K real-world robot demonstrations | Robot-only demonstrations and observations, not human wearable capture | watch |
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
| [OpenEgo](https://arxiv.org/abs/2509.05513), [EgoDex](https://arxiv.org/abs/2505.11709), [EgoVerse](https://arxiv.org/abs/2604.07607) | Recent large-scale egocentric manipulation data for robot learning. |
| [Challenges and Trends in Egocentric Vision: A Survey](https://arxiv.org/abs/2503.15275) | Recent comprehensive survey of egocentric tasks, datasets, and open problems. |
| [Bridging Perspectives: Cross-view Collaborative Intelligence with Egocentric-Exocentric Vision](https://arxiv.org/abs/2506.06253) | Survey of ego-exo collaboration and paired-capture research. |
| [World Action Models](https://arxiv.org/abs/2605.12090) | Systematizes WAMs across VLA, world models, portable human demonstrations, simulation, and internet-scale egocentric video. |

## Workshops and Challenges

Recurring venues and challenge hubs where new egocentric tasks and leaderboards appear.

| Event / hub | Focus |
| :--- | :--- |
| [EgoLink 2026](https://ego-link.github.io/challenge2026/) | ACM MM 2026 grand challenge for egocentric social reasoning and interactive tool-using agents, with public labels, code, leaderboard, 4,030 MCQs, and 1,055 evaluation videos. |
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
| EgoLive | 2026-04 | arXiv |
| WiYH | Large manipulation corpus with rich hand/wrist/depth signals | Release and license need verification. |
| OpenEgo | 2025-09 | arXiv |
| EgoVerse | 2026-04 | arXiv |
| EgoDex | 2025-05 | ICLR 2026 |
| UMI family: FastUMI / MV-UMI / UMIGen / YUBI / Hoi! | Rapidly expanding handheld and wrist-view manipulation interfaces | Track public code, HF/GitHub datasets, licenses, and whether claimed releases are complete. |
| EgoIntrospect | 2026-05 | arXiv |
| EgoBench | 2026-05 | arXiv |
| EgoAERO / EgoEngine / HumanEgo / EgoGuide / Ego-Pi | Conversion of egocentric videos into robot demonstrations and policies | Track code, dataset artifacts, and robot-transfer evaluation protocols. |
| EgoEMG / EgoEVHands / TouchMoment / EgoFun3D / EgoTactile / EgoPressDiff / EgoForce | 2026 hand/contact/event/3D resources | Track GitHub/HF data release, pressure/contact assets, and license. |
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
  title        = {Awesome Egocentric Atlas: Egocentric AI Datasets, Benchmarks, Models, and Tools},
  year         = {2026},
  howpublished = {\url{https://github.com/ChaoYue0307/awesome-egocentric-atlas}}
}
```
