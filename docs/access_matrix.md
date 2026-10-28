# Access Matrix

A per-resource snapshot of what is actually available, to help you plan
experiments before committing to a dataset. Columns:

- **Data** — is raw video/sensor data downloadable, and how (open / gated / derived).
- **Annotation** — are labels/annotations public.
- **Code** — is loader/baseline code public.
- **Leaderboard** — is there a public leaderboard or challenge server.
- **License** — license or access terms (confirm on the official page).
- **Status** — catalog status (see [status_policy.md](status_policy.md)).
- **Last verified** — when this row was last checked.

> Conventions: `unknown` means not confirmed from an official source — do not
> assume. `gated` means access requires a form, license, or approval. `derived`
> means the data depends on another dataset's raw video. Always re-check the
> official page before relying on a license for a paper.

## Recent release checks

**Checked 2026-10-29.** File-list and documentation checks, not full-corpus
downloads. Creator attribution and detailed caveats are in the
[October resource guide](updates/2026-10-29.md).

| Resource | Public or gated assets | Important boundary | Status |
| :--- | :--- | :--- | :--- |
| [Open-AoE](https://huggingface.co/datasets/inclusionAI/OpenAoE-2000h) | Full 2,000-hour release and code | Custom dataset terms; MANO-related assets have additional conditions | open |
| [EgoHTR](https://huggingface.co/datasets/leggedrobotics/egohtr) | Gated dataset | Code still marked coming soon; privacy/access conditions apply | request |
| [EgoWearBench](https://huggingface.co/datasets/facebook/wearable-ai) | Gated validation data for three tasks | 700 samples per task, not a verified count of unique videos | request |
| [SG-Ego / GLEN](https://huggingface.co/datasets/francescapistilli/sg-ego) | Scene-graph annotations and code | Original video access remains separate | benchmark |
| [VIABench](https://huggingface.co/datasets/MCG-NJU/VIABench) | Benchmark media and annotations | Repository still lacks a verified evaluator | partial |
| [TouchScale](https://huggingface.co/datasets/2077AIDataFoundation/TouchScale) | Gated 100-hour subset | 500 hours is the announced total, not the checked release | partial |
| [ProactEgoMem](https://huggingface.co/datasets/Meikel/ProactEgoMem) | Annotations and evaluation code | Source videos separate; no benchmark training, including dev data | benchmark |
| [APM-Bench](https://huggingface.co/datasets/Jianguo-Huang11/APM-Bench) | Session videos | Evaluation annotations and code remain pending | partial |
| [Ropedia W0](https://github.com/Ropedia/ropedia-w0) | 5B checkpoints and inference code | A14B, post-training and evaluation package remain pending | partial |
| [EgoArgus](https://github.com/NYCU-NLP-Lab/EgoArgus) | Annotations and evaluation code | Release draft explicitly does not yet grant reuse rights | partial |

## Historical reference

**Checked 2026-06-15; not refreshed in the October update.** These rows are
retained as a dated reference and may differ from later catalog checks. Prefer
the newer `verified_at` record in the catalog and the current official source.

| Resource | Data | Annotation | Code | Leaderboard | License | Status | Last verified |
|---|---|---|---|---|---|---|---|
| [Ego4D](https://ego4d-data.org/) | gated (license agreement) | yes | yes (CLI) | yes (challenges) | Ego4D License Agreement | request | 2026-06-15 |
| [Ego-Exo4D](https://ego-exo4d-data.org/) | gated (license agreement) | yes | yes | yes (challenges) | Ego-Exo4D License Agreement | request | 2026-06-15 |
| [EPIC-KITCHENS-100](https://epic-kitchens.github.io/) | open download | yes | yes | yes (challenges) | CC BY-NC 4.0 | open | 2026-06-15 |
| [EgoSchema](http://egoschema.github.io/) | derived (Ego4D clips) | yes (QA) | yes | yes | videos under Ego4D terms; QA license unknown | benchmark | 2026-06-15 |
| [HOT3D](https://facebookresearch.github.io/hot3d/) | open (Project Aria) | yes | yes (tooling) | yes (challenge) | Project Aria dataset license | open | 2026-06-15 |
| [HOI4D](https://hoi4d.github.io/) | open (project page) | yes | yes | unknown | unknown | open | 2026-06-15 |
| [HoloAssist](https://holoassist.github.io/) | open (registration) | yes | yes | unknown | unknown | open | 2026-06-15 |
| [Assembly101](https://assembly-101.github.io/) | gated (request form) | yes | yes | yes (challenges) | unknown | open | 2026-06-15 |
| [Project Aria Datasets](https://www.projectaria.com/datasets/) | open portal | varies by dataset | yes (projectaria_tools) | varies | Project Aria dataset license | open | 2026-06-15 |
| [Xperience-10M](https://huggingface.co/datasets/ropedia-ai/xperience-10m) | gated (controlled non-commercial) | yes (HDF5) | yes (HOMIE-toolkit) | yes (task suite/baselines) | non-commercial (other) | request | 2026-06-15 |
| [EgoVLP](https://github.com/showlab/EgoVLP) | derived (EgoClip over Ego4D) | yes (EgoClip/EgoMCQ) | yes | EgoMCQ (no public server) | code license per repo; data under Ego4D terms | open | 2026-06-15 |
| [LaViLa](https://arxiv.org/abs/2212.04501) | derived (Ego4D narrations) | yes (generated narrations) | yes | no | code license per repo | open | 2026-06-15 |
| [VISOR](https://epic-kitchens.github.io/VISOR/) | open (over EPIC-KITCHENS) | yes (dense masks) | yes | yes (challenge) | CC BY-NC 4.0 | open | 2026-06-15 |
| [EgoObjects](https://github.com/facebookresearch/EgoObjects) | open | yes | yes (API) | unknown | unknown | open | 2026-06-15 |
| [EgoDex](https://arxiv.org/abs/2505.11709) | unknown (release path) | yes (hand tracking) | unknown | no | unknown | watch | 2026-06-15 |
| [EgoVerse](https://egoverse.ai/) | unknown (portal announced) | yes | tooling announced | unknown | unknown | watch | 2026-06-15 |
| [OpenEgo](https://arxiv.org/abs/2509.05513) | unknown (unifies public datasets) | yes (hand pose/primitives) | announced | no | unknown; inherits source-dataset terms | watch | 2026-06-15 |
| [EgoLife](https://arxiv.org/abs/2503.03803) | partial (EgoLifeQA released) | yes | yes | unknown | unknown | partial | 2026-06-15 |
| [Ego-R1](https://arxiv.org/abs/2506.13654) | partial (Ego-CoTT-25K / Ego-QA-4.4K) | yes | yes | Ego-R1 Bench | unknown | watch | 2026-06-15 |
| [EgoBench](https://arxiv.org/abs/2605.27820) | unknown | yes (task definitions) | announced | unknown | unknown | watch | 2026-06-15 |

## How to update this matrix

1. Open the resource's official page and confirm each column from primary sources.
2. Mark anything you cannot confirm as `unknown` — never infer a license.
3. Update the matching `verified_at` field in [`data/resources.yml`](../data/resources.yml)
   and the relevant row date here; leave dates for unchecked rows unchanged.
4. Run `ruby scripts/validate_catalog.rb`.
