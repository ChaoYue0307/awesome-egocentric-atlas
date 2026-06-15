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

_Snapshot date: 2026-06-15._

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
   and the snapshot/row dates here.
4. Run `ruby scripts/validate_catalog.rb`.
