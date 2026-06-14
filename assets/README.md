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

## SVG figures

`awesome-egocentric-atlas-map.svg`, `awesome-egocentric-reader-route.svg`, and `awesome-egocentric-task-matrix.svg` are hand-authored overview figures used in the README. They keep exact labels deterministic and reviewable in Git.

Visual system (shared across all three figures):

- White-to-teal gradient backgrounds with a faint dot-grid texture and amber accents.
- A `1200`-unit-wide viewBox grid, soft drop shadows, and consistent `16–18px` corner radii.
- System font stack for GitHub readability, with a shared type scale (kicker, title, label, body, small).
- Teal / amber / slate accent badges and arrow markers to show flow and grouping.
- Short labels inside figures; full resource details stay in Markdown tables and `data/resources.yml`.

Each figure is plain, well-formed SVG with no external assets, so it stays diffable and renders identically wherever GitHub serves it.
