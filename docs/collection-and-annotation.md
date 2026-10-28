# Capture and Annotation

Choose a capture setup from the supervision your experiment needs, not the
largest advertised corpus. A head-camera video, a calibrated RGB-D recording,
and an action-aligned demonstration provide different evidence.

## Choose the recording setup

| Goal | Signals to preserve | Sources and tools to inspect |
| :--- | :--- | :--- |
| Daily-life recognition and memory | Continuous video, original timestamps, session boundaries, participant-disjoint splits | [Ego4D](https://ego4d-data.org/), [NextMe-800](https://huggingface.co/datasets/mmm8383/NextMe-800), [Eidon POV](https://huggingface.co/buckets/eidon-ai/egocentric-pov) |
| Hand-object manipulation | Head and wrist views, intrinsics/extrinsics, depth, hand/object coordinate conventions | [Open-AoE](https://github.com/ant-research/Open-AoE), [EgoViz-120](https://huggingface.co/datasets/humaidtech/EgoViz-120), [HOT3D](https://facebookresearch.github.io/hot3d/) |
| Contact-sensitive learning | Synchronized tactile values, calibration, sensor layout, force/contact validity | [TouchScale](https://huggingface.co/datasets/2077AIDataFoundation/TouchScale), [EgoTactile](https://egotactile.github.io/) |
| Body motion and localization | IMU timing, tracking confidence, coordinate transforms, floor/scene references | [Project Aria tools](https://github.com/facebookresearch/projectaria_tools), [SlugTrails](https://github.com/Head-inthe-Cloud/SlugTrails), [Eidon Tracker](https://github.com/Eidon-AI/eidon-tracker) |
| Fast hand motion | Event-stream timestamps, polarity, synchronized pose labels and RGB when available | [EventEgoHands++](https://github.com/ryhara/EventEgoHandsV2) |
| Human-to-robot transfer | Human kinematics, retargeting assumptions, action units, latency and robot observations | [HuRo](https://github.com/3587jjh/HuRo), [MINT / EgoPipeline](https://github.com/wuji-technology/wuji-ego-mint), [HOMIE-toolkit](https://github.com/Ropedia/HOMIE-toolkit) |

## A release-ready recording

1. **Define the unit.** Give each participant, session, episode, camera and
   annotation version a stable ID. Multiple camera streams and derived clips
   from one episode are not independent recordings.
2. **Preserve time.** Retain device timestamps, clock conversions, frame indices,
   dropouts and synchronization offsets. Check drift over the full session;
   matching nominal frame rates does not establish alignment.
3. **Document geometry.** Publish calibration and units, handedness, camera-to-body
   transforms, and the convention used for poses and rotations. Include a small
   visualization that can expose a transposed transform or an axis inversion.
4. **Track annotation origin.** Distinguish human labels, motion capture, sensor
   measurements, model predictions and retargeted actions. Record model versions,
   confidence, failures and any manual corrections.
5. **Audit quality.** Inspect occlusion, blur, duplicate frames, sensor gaps,
   out-of-order timestamps and implausible trajectories. Report rejection rates
   by participant/task, not just a single aggregate quality score.
6. **Publish a manifest.** Include checksums, file sizes, split membership, source
   dependencies, a minimal sample and a loader that validates shapes and units.
   A Hugging Face Storage Bucket is not necessarily a `load_dataset` package.

## Reusable processing tools

- [Argus](https://github.com/Pantheon-Industries-Inc/argus) provides human/robot
  data-quality inspection and annotation workflows. Derived quality scores are
  diagnostics, not independent ground-truth labels.
- [MINT / EgoPipeline](https://github.com/wuji-technology/wuji-ego-mint) predicts
  world-space camera and hand trajectories. Its public annotations do not
  redistribute the underlying video, and MANO has separate terms.
- [HuRo](https://github.com/3587jjh/HuRo) provides a robotization pipeline for
  human video. Availability of pipeline code does not imply that the advertised
  full derived dataset is downloadable.
- [Eidon Sim](https://github.com/Eidon-AI/eidon-sim) supports synchronized
  kinematics playback. The associated capture ecosystem is archived and its
  former mobile backend is shut down; assess tools independently of that service.

## Privacy and release boundaries

Wearable recordings can expose bystanders, private rooms, screens, voices and
location routines. Establish consent and permitted uses before collection;
review sensitive content before release; document access controls, redaction,
retention, and a deletion/contact route. Face blurring alone does not remove
all identifying information. Public download access is not evidence of consent
for a new downstream use.

Keep code, raw media, annotations, checkpoints and third-party assets under
explicitly identified terms. For a derived collection, retain source IDs and
source-license dependencies rather than applying a new blanket license to the
entire package. The atlas's MIT license does not license any linked dataset.

Continue with the [evaluation guide](evaluation-guide.md) and
[access matrix](access_matrix.md).
