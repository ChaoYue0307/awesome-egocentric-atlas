# AR-Glasses and Wearable Sensing

## Goal
Work with AR-glasses / headset streams — RGB, gaze, IMU, SLAM, audio, and
3D scene context — for scene understanding, localization, digital twins, and
assistive perception.

## Start with
- [Project Aria Datasets](https://www.projectaria.com/datasets/) (portal + tooling).
- [Aria Digital Twin / ADT](https://www.projectaria.com/datasets/adt/) (6DoF, object poses, depth, segmentation).
- [Aria Everyday Activities / AEA](https://www.projectaria.com/datasets/aea/) (trajectories, point clouds, gaze, speech).
- [Nymeria](https://www.projectaria.com/datasets/nymeria/) (motion + language at scale).

## Add if you need
- Digital-twin objects: [Digital Twin Catalog / DTC](https://www.projectaria.com/datasets/dtc/).
- Navigation / trajectory: [EgoTraj](https://github.com/yehiahmad/EgoTraj).
- Internal-state / physiological: [EgoIntrospect](https://ego-introspect.github.io/),
  [EgoBrain](https://arxiv.org/abs/2506.01353).
- Robustness: [EgoNight](https://insait-institute.github.io/EgoNight/) (low-light).
- Long-context AR QA: [EgoEverything](https://arxiv.org/abs/2604.08342).

## Benchmarks
ADT machine-perception tasks, AEA scene reconstruction / prompted segmentation,
Nymeria motion-language grounding, and EgoNight for day→night robustness.

## Baselines / tools
- [Project Aria Tools](https://github.com/facebookresearch/projectaria_tools) for
  VRS, calibration, MPS, trajectory, and gaze.
- Aria MPS outputs (SLAM trajectory, point cloud, eye gaze) as ready-made inputs.

## Minimum viable experiment
1. Load one ADT or AEA sequence with Project Aria Tools.
2. Reproduce a provided perception task (e.g., 6DoF object pose or segmentation).
3. Add gaze or IMU as an extra input and measure the change.
4. Report the official metric with and without the extra modality.

## Common pitfalls
- Aria uses fisheye + rolling shutter; undistort/sync before feeding standard models.
- Gaze and IMU are time-series — align timestamps to frames carefully.
- Project Aria datasets have their own license; confirm terms before redistribution.
- Synthetic renderings (ADT) differ from real streams — do not mix without noting it.

## Reporting checklist
- [ ] Dataset, sequence(s), and Aria/MPS version.
- [ ] Calibration / undistortion and time-sync described.
- [ ] Modalities used (RGB, gaze, IMU, SLAM, audio) listed.
- [ ] Real vs. synthetic data stated.
- [ ] License/terms for any shared artifacts.
