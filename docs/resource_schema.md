# Resource Schema

Every entry in [`data/resources.yml`](../data/resources.yml) is a YAML mapping.
Only a few fields are required; the rest are optional and added when known. The
validator ([`scripts/validate_catalog.rb`](../scripts/validate_catalog.rb))
enforces the required fields and the format of the optional ones it understands.

## Required fields

| Field | Type | Notes |
|---|---|---|
| `name` | string | Unique across the catalog. Matches the README entry. |
| `kind` | enum | One of `dataset`, `benchmark`, `model`, `toolkit`, `survey`, `challenge`, `collection`. |
| `status` | enum | One of `open`, `request`, `benchmark`, `partial`, `watch`. See [status_policy.md](status_policy.md). |
| `url` | http(s) URL | Primary official link (project page, GitHub, Hugging Face, arXiv, OpenReview, university page, Zenodo). |
| `tasks` | list of strings | Non-empty. Reuse tokens from [taxonomy.md](taxonomy.md) where possible. |

## Common optional fields

| Field | Type | Notes |
|---|---|---|
| `year` | integer | Release/publication year (2000–next year). |
| `scope` | enum | `egocentric` (default if absent) or `adjacent`. |
| `scale` | string | Scale/signal summary. Use numbers from the official source; do not inflate. |
| `modalities` | list of strings | Reuse modality tokens from [taxonomy.md](taxonomy.md). |

## Link fields (validated as http(s) URLs when present)

| Field | Notes |
|---|---|
| `paper` | Paper/arXiv/OpenReview link. |
| `project` | Project or dataset homepage. |
| `code` | Code repository. |
| `data` | Direct data/download link (e.g., Hugging Face, Zenodo DOI). |
| `benchmark` | Benchmark/challenge page. |
| `leaderboard` | Public leaderboard. |
| `mirror` | Unofficial mirror (clearly labeled as such). |
| `access_url` | Access/license request page. |
| `license_url` | Canonical license text. |

## Provenance and access fields (free text unless noted)

| Field | Type | Notes |
|---|---|---|
| `license` | string | License identifier (e.g., `cc-by-nc-4.0`, `mit`, `other`). |
| `access` | string | Access friction note (e.g., "form + approval"). |
| `verified_at` | date `YYYY-MM-DD` | When access/status was last confirmed. |
| `release_note` | string | What is still missing or pending for `watch`/`partial`. |
| `scope_note` | string | Why a resource is in or out of egocentric scope. |
| `modality_notes` | string | Extra modality detail not captured by tokens. |
| `raw_video_dependency` | string | Whether the resource depends on another dataset's raw video. |
| `citation_key` | string | Stable BibTeX-style key. |
| `created_by` | string | Authors/creators. |
| `released_by` | string | Releasing org/channel. |
| `publisher` | string | Hosting platform. |
| `derived_from` | string | Parent dataset this is built on. |

## Minimal example

```yaml
- name: EgoNight
  kind: benchmark
  year: 2025
  status: open
  url: https://insait-institute.github.io/EgoNight/
  paper: https://arxiv.org/abs/2510.06218
  code: https://github.com/dehezhang2/EgoNight
  scale: "EgoNight-VQA (3,658 QA over 90 videos, 12 QA types) plus day-night retrieval and depth"
  modalities: [egocentric-video, qa, depth]
  tasks: [egocentric-vqa, egocentric-depth, retrieval]
  scope_note: "Low-light / nighttime robustness benchmark."
  verified_at: "2026-06-15"
  citation_key: egonight_2025
```

## Validation

```bash
ruby scripts/validate_catalog.rb
```

Errors fail the build (missing required fields, bad enum values, malformed URLs
or dates). Unknown task/modality tokens produce a non-fatal warning so the
vocabulary can be consolidated in [`data/taxonomy.yml`](../data/taxonomy.yml).
