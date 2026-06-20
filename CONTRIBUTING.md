# Contributing to Awesome Egocentric Atlas

Awesome Egocentric Atlas: curated egocentric AI datasets, benchmarks, models, and tools.

Contributions are welcome, but please keep the atlas conservative and reviewable.

## Add a Resource

For each new entry, include:

- Official project page, GitHub, Hugging Face, arXiv, or university dataset page.
- Resource type: `dataset`, `benchmark`, `model`, `toolkit`, `survey`, `challenge`, or `collection`.
- Public status: `open`, `request`, `benchmark`, `partial`, or `watch`.
- Scale and modalities when known.
- Primary tasks.
- Raw-video dependency and license/access notes when relevant.

Update both:

1. `README.md`
2. `data/resources.yml`

Reference docs:

- [docs/maintenance.md](docs/maintenance.md) — the full add → verify → validate workflow and PR checklist.
- [docs/resource_schema.md](docs/resource_schema.md) — every `data/resources.yml` field.
- [docs/status_policy.md](docs/status_policy.md) — how each `status` is decided.
- [docs/taxonomy.md](docs/taxonomy.md) — task/modality vocabulary; add new tokens to [`data/taxonomy.yml`](data/taxonomy.yml).

## Automated Checks

The catalog is machine-checked in CI on every push and pull request. These checks keep the README, [`data/resources.yml`](data/resources.yml), generated figures, CSV/JSON exports, and Hugging Face package consistent.

You do not need to run local scripts before opening a PR. If CI reports a formatting or metadata issue, maintainers can help resolve it during review.

## Inclusion Policy

- Prefer official sources over secondary blog posts.
- Mark a resource `watch` if a paper says data will be released but the public download is not clearly available.
- Mark a resource `partial` if only annotations, code, or a subset are public.
- Do not inflate scale numbers. Use the numbers reported by the official paper/page and keep wording approximate when releases differ by version.
- Keep pure autonomous-driving dashcam datasets out of the main atlas unless the work is explicitly framed as egocentric/wearable/embodied rather than vehicle-only.

## Style

- Use concise task labels.
- Keep tables scannable.
- Avoid marketing language.
- Keep figures text-free or nearly text-free; exact resource names should be written in Markdown/SVG.

## Code of Conduct

By participating, you agree to uphold the [Code of Conduct](CODE_OF_CONDUCT.md).
