# Audio and Social Egocentric Understanding

## Goal
Use sound together with first-person video for conversation, active-speaker
detection, sound localization, and socially aware assistance — where audio is a
first-class signal, not an afterthought.

## Start with
- [Ego4D](https://ego4d-data.org/) audio-visual / social tasks (Looking-At-Me, Talking-To-Me).
- [EasyCom](https://arxiv.org/abs/2107.04174) (AR-glasses multi-channel audio + wide-FOV RGB).
- [EgoCom / audio-visual correspondence](http://vision.cs.utexas.edu/projects/ego_av_corr/).

## Add if you need
- Sound-focused QA: [EgoSound](https://arxiv.org/abs/2602.14122).
- Audio-event recognition: [EPIC-Sounds](https://epic-kitchens.github.io/epic-sounds/).
- Reliability / hallucination: [Audio Hallucination in Egocentric Video](https://arxiv.org/abs/2604.23860).
- Conversational graphs: [AV-CONV](https://vjwq.github.io/AV-CONV/).

## Benchmarks
Ego4D AV (LAM/TTM), EPIC-Sounds, EgoSound, and the audio-hallucination probe.
Pick a detection/localization task (LAM/TTM, EPIC-Sounds) and a reasoning task
(EgoSound) so you test perception and inference separately.

## Baselines / tools
- [AV-CONV](https://vjwq.github.io/AV-CONV/) (audio-visual conversational graph prediction).
- Ego4D social baselines for LAM/TTM.
- Standard AV-LLMs as zero-shot baselines for sound-focused QA.

## Minimum viable experiment
1. Start from EgoSound or Ego4D TTM.
2. Run a video-only model and an audio+video model on the same split.
3. Add an audio-hallucination check: does the model infer sounds that are visible
   but not audible?
4. Report task accuracy plus a hallucination rate.

## Common pitfalls
- Spatial/multi-channel audio needs the array geometry — mono downmix loses cues.
- Models often "hear with their eyes" (infer sound from visuals) — test for it.
- Audio-video sync errors silently hurt localization — verify alignment.
- Privacy: egocentric audio captures bystanders; respect dataset terms.

## Reporting checklist
- [ ] Audio format (mono / stereo / multi-channel) and sampling rate.
- [ ] Audio+video vs. video-only baselines.
- [ ] Hallucination / reliability check included.
- [ ] Sync and array-geometry handling described.
- [ ] Dataset privacy/usage terms respected.
