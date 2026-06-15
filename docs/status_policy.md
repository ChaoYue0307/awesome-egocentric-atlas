# Status Policy

Every resource carries one `status`. Status describes **public availability**,
not quality or importance. When in doubt, choose the more conservative status
(`watch` or `partial` over `open`).

| Status | Use when | Typical evidence |
|---|---|---|
| `open` | Raw data, annotations, or code can be obtained today without approval, **or** access is application-based but clearly documented and routinely granted. | A working download link, a public Hugging Face/Zenodo/GitHub release, or a documented sign-up that anyone can complete. |
| `request` | A real project exists, but access needs a license, form, approval, or institutional agreement. | A license agreement page, an access request form, or an email-the-authors process. |
| `benchmark` | The resource is primarily an evaluation suite, challenge, or label set over existing video rather than a new raw dataset. | A leaderboard/challenge page or QA/label release that depends on another dataset's raw video. |
| `partial` | Only a subset, annotations, code, or sample is public; full raw data, license, or long-term hosting is unclear. | A released sample or annotation set but no full raw-video download, or an ambiguous mirror. |
| `watch` | Recent or important resource whose release state is not yet verified. | A paper that promises data, a project page with "coming soon", or a link that is not yet a stable download. |

## Decision guide

1. **Can you download usable data or code right now (or via a clearly documented
   application)?** → likely `open`.
2. **Does access require a license/form/approval?** → `request`.
3. **Is it mainly a benchmark/challenge/label set over someone else's video?** →
   `benchmark`.
4. **Is only part of it public, or is hosting/license unclear?** → `partial`.
5. **Is it announced but not yet verifiably available?** → `watch`.

## Examples

- **EPIC-KITCHENS-100** — public download and annotations → `open`.
- **Ego4D** — public project, but downloads need a signed license → `request`.
- **EgoSchema** — QA over Ego4D clips, used mainly for evaluation → `benchmark`.
- **EgoLife** — EgoLifeQA is released but full capture/license is unclear → `partial`.
- **EgoDex** — strong paper, but the official release path is unconfirmed → `watch`.

## Re-checking

When you confirm a status (or notice it changed), update the resource's
`status` and `verified_at` in [`data/resources.yml`](../data/resources.yml), and
the relevant row in [access_matrix.md](access_matrix.md). A resource should not
sit at `watch` indefinitely — promote it to `open`/`request`/`partial` once its
release is verified, or note in `release_note` what is still missing.
