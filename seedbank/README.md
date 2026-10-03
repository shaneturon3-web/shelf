# Skill Seedbank

This is the single holding area for harvested skill candidates that are not yet installed or
promoted. A seed is evidence-backed material, not an active skill.

Rules:

1. Preserve the source reference and extraction record.
2. Keep one owner and one job per seed.
3. Do not install directly from this directory.
4. Promote only after a bounded test shows that the candidate changes a future decision, route,
   transformation, or stop condition.
5. Record promotion, rejection, merge, or return-to-seed status here.

The seedbank is deliberately separate from `~/.codex/skills/`, plugin caches, and account-
registered plugins.

## Lifecycle

`captured → classified → test-ready → promoted | merged | rejected | dormant`

Promotion creates a plugin package with Plugin Creator. The seed remains in the ledger as
provenance; it is never silently deleted.
