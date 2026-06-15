# Maintenance

How to keep the atlas accurate, consistent, and reviewable. The catalog is
machine-checked, so most mistakes are caught by the validator before review.

## Add a resource

1. **Confirm it is in scope.** Human or animal first-person capture, or ego-exo
   where the ego view is central. Robot-only / multi-view-robotic / driving /
   general long-video belong in **Adjacent and Related Resources** (`scope: adjacent`).
2. **Find an official source.** Project page, GitHub, Hugging Face, arXiv,
   OpenReview, university page, Zenodo, or an official challenge page. No blog reposts.
3. **Add the YAML entry** in [`data/resources.yml`](../data/resources.yml) using
   [resource_schema.md](resource_schema.md). Reuse task/modality tokens from
   [taxonomy.md](taxonomy.md); add new tokens to [`data/taxonomy.yml`](../data/taxonomy.yml).
4. **Add the README row** in the matching section, keeping the table format.
5. Set `verified_at` to today.

## Verify access status

- Apply [status_policy.md](status_policy.md). Prefer the conservative status.
- Do not infer licenses — if you cannot confirm one, write `unknown` (in the
  access matrix) and leave `license` off the YAML entry.
- Record what is missing in `release_note` for `watch`/`partial` entries.

## Update the README

- New resource → add a table row.
- Changed status/scale → edit the row and the YAML in the same PR.
- New section/figure → add it to the **Contents** list.

## Update the YAML

- Keep `name` identical to the README.
- Names must be unique; check the duplicate guard if the validator complains.

## Update badge and date

- The headline `resources-<N>` badge counts **egocentric** resources (scope is
  not `adjacent`). Update it when that count changes.
- Bump the `Updated:` line in `README.md` **and** `meta.last_major_audit` in
  `data/resources.yml` together — the validator checks they match.

## Run the validator

```bash
ruby scripts/validate_catalog.rb
```

Fix every error. Warnings (e.g., a new task token not yet in the taxonomy) are
non-fatal but should be resolved in the same PR by updating `data/taxonomy.yml`.

## PR checklist

- [ ] Resource is in scope (egocentric, or correctly marked `scope: adjacent`).
- [ ] Official source linked; `status` is conservative.
- [ ] Scale numbers match the official source (not inflated).
- [ ] Both `README.md` and `data/resources.yml` updated; `name` matches.
- [ ] New task/modality tokens added to `data/taxonomy.yml`.
- [ ] Badge count and `Updated`/`last_major_audit` date updated if needed.
- [ ] `ruby scripts/validate_catalog.rb` passes with no errors.
