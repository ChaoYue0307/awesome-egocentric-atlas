# Assets

## `awesome-egocentric-atlas-cover.png`

Cover image provenance: created with the built-in ChatGPT image tool for Awesome Egocentric Atlas: curated egocentric AI datasets, benchmarks, models, and tools. The current cover is a refined replacement generated on 2026-06-17 for the README first figure, GitHub Pages hero image, and Open Graph preview. It uses a physically correct wearer POV: the smart glasses / wearable camera face outward into the scene.

Prompt:

```text
Use case: infographic-diagram
Asset type: wide 16:9 repository cover image for Awesome Egocentric Atlas
Primary request: create a corrected first-person egocentric hero illustration. The viewer is wearing the smart glasses / wearable camera and looking outward into the world. The glasses must face outside, away from the wearer, not toward the viewer and not held in the hands.
Scene/backdrop: a bright technical research workspace / everyday environment seen from the wearer's point of view. Foreground hands near the bottom interact with everyday objects on a desk. Beyond the hands, clean AR-style panels float in the environment representing first-person video, hand-object interaction, robot manipulation, AR/VR sensing, long-context memory, audio waveforms, and video-language reasoning.
Subject: true wearer POV through smart glasses, with only subtle inner lens edges or a faint HUD-like rim near the image periphery. No full glasses object in the center. No glasses held by hands. Add a subtle atlas globe / map grid and graceful connecting arcs in the world ahead.
Style/medium: high-end editorial 3D illustration with crisp scientific visualization; polished, purposeful, and elegant.
Composition/framing: wide 16:9 landscape, central outward-looking first-person viewpoint, important content inside central 80%, generous margins, clean hero crop. Panels should be large, visual, and uncluttered.
Lighting/mood: luminous, optimistic, precise, scholarly; soft studio light, clean depth, no dark stock-photo atmosphere.
Color palette: balanced teal, warm amber, slate graphite, white, and restrained violet accents, matching a modern research tool.
Constraints: physically correct egocentric POV; wearable glasses/camera faces outward; no glasses facing the viewer; no full glasses floating in the middle; no readable text, no pseudo-text, no letters, no numbers, no tiny labels, no menu text, no watermark, no logos, no faces, no brand marks, no cluttered micro-details, no malformed hands.
```

## `awesome-egocentric-logo.png`

Logo provenance: created with the built-in ChatGPT image tool as a square mark for Awesome Egocentric Atlas, then chroma-keyed to transparency and resized to `512 x 512` for site and README use. The original generated source is kept as `awesome-egocentric-logo-source.png`.

Prompt summary: a polished circular atlas mark combining wearable first-person glasses, a map/grid, route nodes, and teal/amber research accents; no readable text, no watermark, and a flat chroma-key background for transparent export.

## SVG figure sources and PNG exports

`awesome-egocentric-atlas-map.svg`, `awesome-egocentric-reader-route.svg`, and `awesome-egocentric-task-matrix.svg` are hand-authored overview figures used in the README. They keep exact labels deterministic and reviewable in Git.

The README and GitHub Pages site embed high-resolution PNG exports of the SVG figures so downstream renderers show the same text layout everywhere:

- `awesome-egocentric-atlas-map.png` — `5120 x 2920`
- `awesome-egocentric-reader-route.png` — `3840 x 1380`
- `awesome-egocentric-timeline.png` — `3840 x 1680`
- `awesome-egocentric-milestones.png` — `4800 x 13701`
- `awesome-egocentric-task-matrix.png` — `3840 x 2220`
- `awesome-egocentric-access-funnel.png` — `3840 x 1560`

The SVG files remain the editable source of truth; regenerate the PNG exports after changing any SVG figure.

Visual system (shared across the figures):

- White-to-teal gradient backgrounds with a faint dot-grid texture and amber accents.
- A `1280`-unit-wide viewBox at a generous scale, so the figures render large and legible at GitHub's full content width; soft drop shadows and consistent rounded containers.
- System font stack for GitHub readability, with a larger shared type scale (kicker, title, label, body, small) sized for on-page readability.
- Teal / amber / slate accent badges and arrow markers to show flow and grouping.
- Short labels inside figures; full resource details stay in Markdown tables and `data/resources.yml`.

### Data-driven figures

- `awesome-egocentric-timeline.svg` — resources grouped into five eras (`<=2018`, `2019-2021`, `2022-2023`, `2024-2025`, `2026 (H1)`), drawn as a bar chart with a trend line through the bar tops to make the rise explicit. Bar heights come from the egocentric `year` counts in `data/resources.yml`; the latest era is amber and counts only the first half of 2026 (January to June), labelled accordingly.
- `awesome-egocentric-access-funnel.svg` — the egocentric resources by `status` (`open`, `watch`, `partial`, `benchmark`, `request`) as a tapering funnel, so readers see how much is usable today versus still unverified. Bar widths and counts come from the catalog.
- `awesome-egocentric-milestones.svg` — a work-specific milestone poster generated from the `milestone` and `milestone_image` fields in `data/resources.yml`. The factual labels, dates, and categories are vector text, while the visual panels come from the local `milestones/*.png` images and are rendered uncropped.

When the catalog changes materially, refresh these figures so they stay in sync with `data/resources.yml` (recompute counts, then update the bar geometry, labels, and milestone cards).

Each SVG figure is plain, well-formed SVG and stays diffable. Most are fully self-contained; `awesome-egocentric-milestones.svg` intentionally references committed local milestone panels so each representative work can carry a specific visual scene. The matching PNG files are fixed high-resolution exports for README, Pages, and Hugging Face display.

## Milestone panel provenance

`assets/milestones/*.png` were created with the built-in ChatGPT image tool as text-free scene panels for the representative works in the milestone timeline:

- `cmu-mmac.png` — first-person research kitchen activity capture.
- `gtea-gaze.png` — hand-object food preparation with gaze/attention cues.
- `adl-dataset.png` — unscripted apartment daily-living activities with object and hand cues.
- `egohands.png` — Google Glass-style first-person hand segmentation and interaction.
- `epic-kitchens-100.png` — dense kitchen action segments and benchmark panels.
- `ego4d.png` — global-scale multimodal egocentric data graph.
- `project-aria.png` — outward-facing smart-glasses sensing with gaze, SLAM, IMU, and audio.
- `hoi4d.png` — RGB-D / point-cloud 4D hand-object interaction.
- `egovlp.png` — egocentric clips flowing into video-language embeddings.
- `egoschema.png` — long-form first-person video reasoning and temporal memory.
- `ego-exo4d.png` — synchronized first-person and external-camera skilled activity capture.
- `hot3d.png` — 3D hand-object tracking from AR glasses.
- `umi.png` — handheld UMI gripper demonstrations for robot learning.
- `egolife.png` — long-term smart-glasses memory and daily-life assistant reasoning.
- `egovla.png` — human egocentric demonstrations transferring to robot policies.
- `dreamdojo.png` — egocentric human videos distilled into latent-action robot world-model planning.
- `egoscale.png` — data-scaling curve for egocentric VLA pretraining.
- `xperience-10m.png` — petascale multimodal egocentric world-model corpus.
