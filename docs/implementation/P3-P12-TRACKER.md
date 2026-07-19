# BattleLuck P3-P12 Implementation Tracker

Branch: `agent/p3-p12-implementation`

This file is the authoritative completion checklist. A phase is not complete until implementation, migration, validation, tests, Release build, and relevant live-server verification are complete.

## Safety rules

- Keep target framework `net6.0`.
- Do not deploy automatically.
- Do not add a second owner for a mutable domain.
- Harmony captures events only. Runtime mutation goes through validated executors on the main thread.
- Never guess prefab GUIDs.
- Existing player rollback remains authoritative.
- Do not delete legacy controllers until every caller and required behavior has migrated.

## P3: Unified event definitions

- [ ] Audit existing event sources and precedence.
- [ ] Canonicalize `config/BattleLuck/events/<eventId>.json`.
- [ ] Migrate zones, rules, phases, triggers, timers, waves, actions, sequences, scoring, completion, cleanup, and rollback.
- [ ] Reject duplicate event IDs and zone hashes.
- [ ] Validate every action, kit, prefab, NPC, ability, and sequence reference.
- [ ] Add atomic save, structured diff preview, and targeted reload.
- [ ] Add migration and schema tests.

## P4: Zones

- [ ] Use one runtime `ZoneRegistry`.
- [ ] Keep `ZoneDetectionSystem` as the sole detector.
- [ ] Keep `SessionController` as the participation owner.
- [ ] Rebuild mappings after targeted reload.
- [ ] Add entry, exit, duplicate-hash, and reload tests.

## P5: ActionCatalog

- [ ] Discover real action executors.
- [ ] Map each action ID to exactly one executor.
- [ ] Record parameters, permission, risk, approval, requirements, side effects, verification, cleanup, rollback, and availability.
- [ ] Exclude unavailable actions from AI context.
- [ ] Add catalog-to-executor consistency tests.

## P6: Unified datasets

- [ ] Use one authoritative file per domain.
- [ ] Add schemas and verified/unavailable status.
- [ ] Remove duplicated one-file-per-record patterns only after migration.
- [ ] Add dataset validation tests.

## P7: Player event transactions

- [ ] Use one in-memory snapshot per active participant.
- [ ] Apply kits and temporary loadouts atomically.
- [ ] Restore through the existing rollback implementation only.
- [ ] Delete snapshots only after verified restoration.
- [ ] Test leave, elimination, cancellation, failure, and event end.

## P8: Unified spawning

- [ ] Inventory every caller of `SpawnController`, `NpcControlService`, `WaveController`, and boss-specific controllers.
- [ ] Define one spawn request and ownership model.
- [ ] Migrate NPC, VBlood, boss, group, and wave spawning.
- [ ] Preserve post-spawn fixes, tracking, respawn, cleanup, and verification.
- [ ] Delete duplicate controllers only after migration tests pass.

## P9: Building sequences

- [ ] Use one building-tile dataset.
- [ ] Implement generic placement and removal executors.
- [ ] Add sequence preview and validation.
- [ ] Track session, sequence, step, owner, zone, and creation time.
- [ ] Remove owned entities only.
- [ ] Add placement and cleanup tests.

## P10: ProjectMAI loop

- [ ] Implement Observe → Context → Intent → Validate → Approve → Execute → Verify → Continue/Stop.
- [ ] Enforce iteration, action, duration, wait, and retry limits.
- [ ] Allow one mutating loop per requester or session.
- [ ] Prevent direct ECS mutation from AI code.
- [ ] Keep approval and cancellation state in memory.
- [ ] Add deterministic planner, executor, verifier, and cancellation tests.

## P11: Teaching and knowledge

- [ ] Provide read-only grounded explanations for events, actions, zones, kits, abilities, sequences, runtime state, and validation failures.
- [ ] Ensure teaching mode cannot mutate files or runtime.
- [ ] Add grounding and non-mutation tests.

## P12: Verification and release gate

- [ ] Duplicate-architecture searches pass.
- [ ] `dotnet restore` passes.
- [ ] `dotnet build .\BattleLuck.csproj -c Release --no-incremental` passes.
- [ ] `git diff --check` passes.
- [ ] Unit and integration tests pass.
- [ ] Native and AI chat live tests pass.
- [ ] Event lifecycle and rollback live tests pass.
- [ ] Spawn and wave cleanup live tests pass.
- [ ] Building ownership cleanup live tests pass.
- [ ] Plugin unload and restart tests pass.
- [ ] No automatic deployment occurred.

## Completion policy

No task is marked complete from a proposed diff or an AI statement. Completion requires committed code and recorded passing evidence.
