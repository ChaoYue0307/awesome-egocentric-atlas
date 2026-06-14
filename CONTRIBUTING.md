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

## Validate Before You Open a PR

The catalog is machine-checked. Run the validator locally (Ruby 2.6+, no gems needed):

```bash
ruby scripts/validate_catalog.rb
```

It checks the catalog shape, allowed `kind` and `status` values, that every README local link and asset exists, and that the resources count badge and the `Updated` date stay in sync with `data/resources.yml`. The same check runs automatically in CI on every push and pull request, so a green check means your entry is structurally consistent.

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
