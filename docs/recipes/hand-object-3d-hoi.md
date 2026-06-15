# Hand-Object 3D HOI

## Goal
Model hands, objects, contact, and 3D pose from first-person video — for AR/VR
manipulation, dexterous robot learning, or fine-grained interaction understanding.

## Start with
- [HOT3D](https://facebookresearch.github.io/hot3d/) (Aria + Quest 3, 3D hand/object/camera poses).
- [HOI4D](https://hoi4d.github.io/) (2.4M RGB-D frames, category-level 4D HOI).
- [H2O](https://arxiv.org/abs/2104.11181) (two hands + objects, 6D pose, meshes).
- [ARCTIC](https://arctic.is.tue.mpg.de/) (bimanual, articulated objects, contact).

## Add if you need
- Hand-object segmentation: [EgoHOS](https://github.com/owenzlz/EgoHOS),
  [VISOR](https://epic-kitchens.github.io/VISOR/).
- First-person hand action / pose: [FPHA](https://guiggh.github.io/publications/first-person-hands/),
  [Ego2HandsPose](https://arxiv.org/abs/2206.04927).
- In-the-wild capture: [SHOW3D](https://arxiv.org/abs/2603.28760).
- Contact / pressure: [EgoTouch / TouchAnything](https://jianyi2004.github.io/TouchAnything-Website/).
- Emerging sensors: [EgoEMG](https://arxiv.org/abs/2605.05712),
  [EgoEVHands](https://github.com/ZJUWang01/EgoEV-HandPose) (event cameras).

## Benchmarks
HOT3D Challenge (3D hand-object tracking), HOI4D tasks, ARCTIC, and
[EgoHOIBench / EgoNCE++](https://github.com/xuboshen/EgoNCEpp) for open-vocabulary HOI.
Choose by what you predict: poses/meshes (HOT3D/ARCTIC), category-level 4D
(HOI4D), or contact (ARCTIC, EgoTouch).

## Baselines / tools
- [HOT3D tooling](https://facebookresearch.github.io/hot3d/) and
  [HOI4D tooling](https://hoi4d.github.io/) for loading poses/meshes/point clouds.
- [EgoHOS model](https://github.com/owenzlz/EgoHOS) for hand-object segmentation.
- [Project Aria Tools](https://github.com/facebookresearch/projectaria_tools) for Aria streams/calibration.

## Minimum viable experiment
1. Pick HOT3D (poses) or HOI4D (segmentation/4D) and its official metric.
2. Reproduce a provided baseline on the standard split.
3. Add your component (e.g., a temporal smoother or contact head).
4. Report the official metric plus a contact/occlusion breakdown.

## Common pitfalls
- Synthetic vs. real domain gaps (UnrealEgo, EgoGTA) — report which you trained on.
- Occlusion and motion blur dominate egocentric HOI; bin metrics by occlusion.
- 6DoF object pose needs correct camera intrinsics/extrinsics — verify calibration.
- Mesh/contact licenses (e.g., ARCTIC is `request`) — confirm before redistribution.

## Reporting checklist
- [ ] Dataset, split, and calibration source.
- [ ] Metric matches the official protocol (e.g., MPJPE, contact F1, AUC).
- [ ] Real vs. synthetic training data stated.
- [ ] Occlusion/blur breakdown reported.
- [ ] License/access of any redistributed annotations.
