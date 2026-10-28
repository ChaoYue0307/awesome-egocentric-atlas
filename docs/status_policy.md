# Status Policy

Every resource carries one `status`. Status describes **public availability**,
not quality or importance. When in doubt, choose the more conservative status
(`watch` or `partial` over `open`).

| Status | Use when | Typical evidence |
|---|---|---|
| `open` | The advertised data, annotations, or code were publicly obtainable at the last check. It does not imply that every associated asset is released or commercially usable. | Public files or a working release/download channel, with the available asset identified in the access notes. |
| `request` | A real project exists, but access needs a license, form, approval, or institutional agreement. | A license agreement page, an access request form, or an email-the-authors process. |
| `benchmark` | The resource is primarily an evaluation suite, challenge, or label set over existing video rather than a new raw dataset. | A leaderboard/challenge page or QA/label release that depends on another dataset's raw video. |
| `partial` | Only a subset, annotations, code, or sample is public; full raw data, license, or long-term hosting is unclear. | A released sample or annotation set but no full raw-video download, or an ambiguous mirror. |
| `watch` | Recent or important resource whose release state is not yet verified. | A paper that promises data, a project page with "coming soon", or a link that is not yet a stable download. |

## Decision guide

1. **No usable release verified?** Use `watch`, even when a paper or demo exists.
2. **A material part of the advertised release is missing, or reuse terms are
   unresolved?** Use `partial` and name the missing assets. A partial release can
   also have gated files; record that in `access`.
3. **The dataset requires a license acceptance, form, or approval?** Use `request`,
   including automatically approved forms.
4. **Public evaluation annotations over separately obtained source videos?** Use
   `benchmark` and identify those dependencies.
5. **The described asset is otherwise publicly obtainable?** Use `open` and state
   whether that means raw data, annotations, code, or weights.

`kind` describes what a resource is; `status` describes its release. A resource
with `kind: benchmark` can therefore have `status: request`, `partial`, or `watch`.
The five labels are a compact summary, not a substitute for asset-level notes.
Older records may retain earlier classifications until their next source check.

## Examples

- **EPIC-KITCHENS-100** — public download and annotations → `open`.
- **Ego4D** — public project, but downloads need a signed license → `request`.
- **EgoSchema** — QA over Ego4D clips, used mainly for evaluation → `benchmark`.
- **EgoLife** — EgoLifeQA is released but full capture/license is unclear → `partial`.
- **TouchScale**: a gated 100-hour release from an advertised 500-hour collection
  at its October 2026 check -> `partial`, with gating recorded separately.
- **EgoVoice**: a paper and project page with a planned November release at its
  October 2026 check -> `watch`.

## Re-checking

When you confirm a status (or notice it changed), update the resource's
`status` and `verified_at` in [`data/resources.yml`](../data/resources.yml), and
the relevant row in [access_matrix.md](access_matrix.md). A resource should not
sit at `watch` indefinitely — promote it to `open`/`request`/`partial` once its
release is verified, or note in `release_note` what is still missing.
