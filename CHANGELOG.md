# Changelog

All notable changes to the Awesome Egocentric Atlas. Counts refer to egocentric
resources (resources tagged `scope: adjacent` are listed separately).

## Catalog expansion - 2026-10-29

- Added 34 resources across human demonstrations, tactile and event sensing,
  proactive memory, safety and spatial benchmarks, world models, annotation
  pipelines, and surveys: 33 egocentric resources and one robot-only adjacent
  release. See the [resource guide](docs/updates/2026-10-29.md) for creators,
  release channels, and access notes.
- Rechecked Open-AoE, EgoHTR, EgoWearBench, SG-Ego / GLEN, and VIABench against
  their current official releases. Distinguished released subsets, gated files,
  annotation-only packages, missing evaluation code, and future release plans.
- Added capture/annotation and evaluation guides, with source dependencies,
  privacy considerations, split leakage checks, and reporting checklists.
- Made creator and publisher names searchable on the site; added direct paper,
  data, code, and checkpoint links plus expandable release notes.
- Preserved provenance and access fields in JSON/CSV exports. Separated the
  latest catalog revision date from the last broad audit and individual checks.
- Added regression tests for exports and date semantics. Refreshed generated
  catalog statistics, figures, translated entry pages, and mirror artifacts.
- Removed stale raster overrides so the site displays the current generated
  SVG statistics; fixed mobile alignment of source links and release notes.

## Selected updates — 2026-10-29

- Added GenRobot's Gen-HumanEgo, Reka AI's processed RekaDaily-10k release, EgoBrain-Mini, and the CapMem benchmark, including access, provenance, and annotation notes.
- Updated RekaDaily-10k raw release figures from its dataset card.
- Clarified that access states are last-checked summaries and may describe code or annotations rather than complete video.

## v1.0.0 — 2026-06-20

First tagged release. **269 egocentric resources** (102 datasets, 69 benchmarks,
84 models, 13 toolkits, 1 collection).

### Added
- **Milestones:** a curated "landmark works" layer — flagged with `milestone:` in the
  catalog and generated into both the README and the interactive site (translated in
  all 8 languages) — from CMU-MMAC (2009) and GTEA through Ego4D, EgoSchema, EgoVLA,
  and EgoScale's data-scaling law.
- **Discoverability:** schema.org `DataCatalog` / `Dataset` JSON-LD and a complete
  set of social-meta tags (canonical, Open Graph, Twitter cards) generated into
  the site `<head>` by `build_artifacts.rb` and enforced by `--check`. Surfaces the
  atlas to Google Dataset Search and rich link previews.
- **Licenses:** `license` + `license_url` for the most-used open datasets
  (EPIC-KITCHENS-100, HOI4D, HOT3D, Aria Digital Twin, Aria Everyday Activities,
  Nymeria); licenses now render on the interactive site and in the JSON-LD.
- **Hugging Face card:** a `load_dataset` usage snippet and per-column descriptions.
- **Maintenance CI:** a weekly external link-check and a monthly catalog-freshness
  report — both open issues rather than failing builds.
- **Site UX:** shareable URL state for filters/search (`?kind=…&status=…&q=…&lane=…`),
  restored on load, plus `prefers-reduced-motion` support.
- **History:** the field's earliest works — CMU-MMAC (2009), First-Person Social
  Interactions (CVPR 2012), BEOID (BMVC 2014) — and an "Origins" note tracing
  egocentric vision to Steve Mann and the first IEEE Workshop on Egocentric Vision
  (CVPR 2009).

### Changed
- README tables sorted newest-first with consistent column alignment.
- Timeline / access-funnel / atlas-map figures rescaled for headroom and re-rendered.

## Growth log (pre-1.0)

- Added the 2026-H1 model/world-model wave incl. ACE-Ego-0, EgoScale, WholeBodyVLA,
  EgoSim, Hand2World, LOME, In-N-On, EgoZero, and 3D/scene works (EgoLifter, EgoSplat,
  LaMAria) — catalog grew 237 → 243 → 252 → 259 → 266 → 269.
- Fixed overlap/squeeze/out-of-bound issues across all figures and the site layout.
- Added a release year-month and venue column for every resource.
- Added an 8-language switcher (English, 中文, Español, Français, Deutsch, 日本語,
  한국어, Português) to the site and README landing pages.
- Separated non-egocentric "Adjacent and Related Resources" from the core catalog.
- Published the GitHub Pages site and the Hugging Face dataset mirror.
