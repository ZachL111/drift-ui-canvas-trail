# drift-ui-canvas-trail

`drift-ui-canvas-trail` is a focused Lua codebase around develop a Lua command-oriented project for canvas scenarios with framed sample traffic, bounds and ordering tests, and no credentials or hosted services. It is meant to be easy to inspect, run, and extend without a hosted service.

## Drift UI Canvas Trail Walkthrough

I would read the project from the outside in: command, fixture, model, then roadmap. That keeps the frontend apps idea grounded in files that can be checked locally.

## Reason For The Project

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## Data Notes

The examples are meant to be readable before they are exhaustive. They cover enough variation to show how latency and risk can pull a decision below the threshold.

## How It Is Put Together

The core is a scoring model over demand, capacity, latency, risk, and weight. That keeps view models, interaction state, and layout checks in one explicit decision path. The threshold is 168, with risk penalty 5, latency penalty 2, and weight bonus 5. The Lua project keeps the module shape simple and validates behavior through a direct script.

## Capabilities

- Models view models with deterministic scoring and explicit review decisions.
- Uses fixture data to keep interaction state changes visible in code review.
- Includes extended examples for layout checks, including `surge` and `degraded`.
- Documents fixture data tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Command Examples

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Check The Work

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Where Things Live

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Possible Extensions

- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add one more frontend apps fixture that focuses on a malformed or borderline input.

## Tradeoffs

This code is local-first. It makes no claim about deployed usage and avoids credentials, hosted state, and environment-specific setup.

## Getting It Running

Use a normal shell with Lua available on `PATH`. The verifier is written as a PowerShell script because the portfolio was assembled on Windows.
