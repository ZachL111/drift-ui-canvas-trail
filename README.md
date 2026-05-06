# drift-ui-canvas-trail

`drift-ui-canvas-trail` is a compact Lua repository for frontend apps, centered on this goal: Develop a Lua command-oriented project for canvas scenarios with framed sample traffic, bounds and ordering tests, and no credentials or hosted services.

## Use Case

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Drift UI Canvas Trail Review Notes

The first comparison I would make is `view drift` against `state pressure` because it shows where the rule is most opinionated.

## Highlights

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/drift-ui-canvas-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `view drift` and `state pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Lua implementation avoids hidden state so fixture changes are easy to reason about.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The same command runs the local verification path. The highest-scoring domain case is `baseline` at 226, which lands in `ship`. The most cautious case is `stress` at 137, which lands in `watch`.

## Future Work

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
