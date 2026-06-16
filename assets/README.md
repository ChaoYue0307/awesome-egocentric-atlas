# Assets

## `awesome-egocentric-atlas-cover.png`

Cover image provenance: created with the built-in ChatGPT image tool for Awesome Egocentric Atlas: curated egocentric AI datasets, benchmarks, models, and tools.

Prompt:

```text
Use case: infographic-diagram
Asset type: GitHub README cover image
Brief: polished wide hero illustration for "Awesome Egocentric Atlas: curated egocentric AI datasets, benchmarks, models, and tools."
Scene/backdrop: clean light technical workspace with a subtle world-map grid and dataset-network lines.
Subject: first-person / wearable-camera perspective shown through transparent AR glasses; visible hands interacting with everyday objects; nearby visual motifs for robotics manipulation, video-language reasoning, memory QA, hand-object tracking, and ego-exo multi-view capture.
Style/medium: modern editorial technical illustration, crisp semi-flat 3D look, high detail but uncluttered.
Composition/framing: wide 16:9 banner, central AR-glasses / first-person viewpoint, balanced negative space at top for Markdown heading overlay if needed.
Lighting/mood: bright, precise, research-grade, calm and premium.
Color palette: white, graphite, cyan, teal, amber accents; avoid one-note purple/blue dominance.
Constraints: no logos, no watermarks, no readable text, no fake UI text, no brand names.
```

## `awesome-egocentric-logo.png`

Logo provenance: created with the built-in ChatGPT image tool as a square mark for Awesome Egocentric Atlas, then chroma-keyed to transparency and resized to `512 x 512` for site and README use. The original generated source is kept as `awesome-egocentric-logo-source.png`.

Prompt summary: a polished circular atlas mark combining wearable first-person glasses, a map/grid, route nodes, and teal/amber research accents; no readable text, no watermark, and a flat chroma-key background for transparent export.

## SVG figures

`awesome-egocentric-atlas-map.svg`, `awesome-egocentric-reader-route.svg`, and `awesome-egocentric-task-matrix.svg` are hand-authored overview figures used in the README. They keep exact labels deterministic and reviewable in Git.

Visual system (shared across all five figures):

- White-to-teal gradient backgrounds with a faint dot-grid texture and amber accents.
- A `1280`-unit-wide viewBox at a generous scale, so the figures render large and legible at GitHub's full content width; soft drop shadows and consistent rounded containers.
- System font stack for GitHub readability, with a larger shared type scale (kicker, title, label, body, small) sized for on-page readability.
- Teal / amber / slate accent badges and arrow markers to show flow and grouping.
- Short labels inside figures; full resource details stay in Markdown tables and `data/resources.yml`.

### Data-driven figures

- `awesome-egocentric-timeline.svg` — resources grouped into five eras (`<=2018`, `2019-2021`, `2022-2023`, `2024-2025`, `2026 (H1)`), drawn as a bar chart with a trend line through the bar tops to make the rise explicit. Bar heights come from the egocentric `year` counts in `data/resources.yml`; the latest era is amber and counts only the first half of 2026 (January to June), labelled accordingly.
- `awesome-egocentric-access-funnel.svg` — the egocentric resources by `status` (`open`, `watch`, `partial`, `benchmark`, `request`) as a tapering funnel, so readers see how much is usable today versus still unverified. Bar widths and counts come from the catalog.

When the catalog changes materially, refresh these two figures' numbers so they stay in sync with `data/resources.yml` (recompute counts, then update the bar geometry and labels).

Each figure is plain, well-formed SVG with no external assets, so it stays diffable and renders identically wherever GitHub serves it.
