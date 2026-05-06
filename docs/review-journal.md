# Review Journal

The review surface for `drift-ui-canvas-trail` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its frontend apps focus without claiming live deployment or external usage.

## Cases

- `baseline`: `view drift`, score 226, lane `ship`
- `stress`: `state pressure`, score 137, lane `watch`
- `edge`: `layout risk`, score 175, lane `ship`
- `recovery`: `interaction cost`, score 188, lane `ship`
- `stale`: `view drift`, score 213, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
